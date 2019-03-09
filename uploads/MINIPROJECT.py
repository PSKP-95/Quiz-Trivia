print("importing required libraries...")
import face_recognition as fr
import cv2
import os
import telepot
import datetime
from twilio.rest import Client
print("completed importing libraries")
print()

print("Connecting to the bot...")
bot=telepot.Bot("677920014:AAH14Bl2Z1QBUvvdudQEPp839d7MIag82I8")
cap=cv2.VideoCapture(0)
directory=os.listdir("H:\\Projects\\unknown_photos")
length=len(directory)
i=length-1
print("Connected to bot")
print()

sid="ACf15566b1b3f3dd7d5399f9e958b3268d"
token="ed9cd971fe86deebafa77a747ebe0ab1"

now=datetime.datetime.now()
#cv2.namedWindow("win",cv2.WINDOW_NORMAL)

client=Client(sid,token)
print("Acquiring face encodings...")
#for k in range(1,9):
#    sant=fr.load_image_file("H:\\Projects\\face recognition\\santosh"+str(k)+".jpg")
    
sant=fr.load_image_file("H:\\Projects\\face recognition\\santosh5.jpg")
sant_encode=fr.face_encodings(sant)[0]
sumant=fr.load_image_file("H:\\Projects\\face recognition\\sumant8.jpg")
sumant_encode=fr.face_encodings(sumant)[0]
print("Got all Encodings")
check_encode=[sant_encode,sumant_encode]
name=["santosh","sumant"]
print()
print(name)

def send(frame,j):
    print("Sending msg to bot")
    bot.sendMessage(264855240,"Someone Unknown is at Door")
    client.messages.create(
            to="whatsapp:+919422964800",
            from_="whatsapp:+14155238886",
            body="Someone at your door,please check telegram"
        )
    print("Message Sent")
    print("sending photo")
    bot.sendPhoto(264855240,photo=open("H:\\Projects\\unknown_photos\\Unknown"+str(j)+".jpg","rb"))
    print("Photo Sent")
    print()
    return

def send1(nm):
    print("Sending message to bot")
    bot.sendMessage(264855240,nm+" is in front of your house")
    return

while(True):
    ret,frame=cap.read()
    flag=False
    face_locations=fr.face_locations(frame)
    face_encodings=fr.face_encodings(frame,face_locations)
    
    for (top,right,bottom,left),face_encode in zip(face_locations,face_encodings):
        match=[]
        match=fr.compare_faces(check_encode,face_encode,tolerance=0.5)
        name1="Unknown"

        '''if True in match:
            index=match.index(True)
            name1=name[index]
        cv2.rectangle(frame,(left,top),(right,bottom),(0,0,255),3)
        font=cv2.FONT_HERSHEY_SIMPLEX
        cv2.putText(frame,name1,(left+3,bottom-3),font,1.0,(255,255,255),2)
        cv2.imshow('win',frame)'''
        
        for k in match:
            if(match[k]==True):          
                send1(name[k])
                f=open("H:\\Projects\\log.txt","a")
                f.write(name[k]+" is at home at "+str(now)+"\n")
                f.close()
                       
        if match.count(False)==len(match):
            f=open("H:\\Projects\\log.txt","a")
            f.write("Someone Unknown is at Door    "+str(now)+"\n")
            f.close()
            j=i+1
            if(i==-1):
                cv2.imwrite("H:\\Projects\\unknown_photos\\Unknown"+str(j)+".jpg",frame)
                i=i+1
            previous_img=fr.load_image_file("H:\\Projects\\unknown_photos\\Unknown"+str(i)+".jpg")
            previous_face_locations=fr.face_locations(previous_img)
            previous_encode=fr.face_encodings(previous_img,previous_face_locations)[0]
            match1=fr.compare_faces(previous_encode,face_encodings)
            if not True in match1:
                cv2.imwrite("H:\\Projects\\unknown_photos\\Unknown"+str(j)+".jpg",frame)
                flag=True
                i=i+1
        print(match)
        
    
    if(flag==True):
        send(frame,j)
    
    if(cv2.waitKey(1) & 0xff==ord('q')):
        break

cap.release()
cv2.destroyAllWindows()
f.close()
    
