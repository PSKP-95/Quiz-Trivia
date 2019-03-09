-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2019 at 07:30 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `platina`
--

-- --------------------------------------------------------

--
-- Table structure for table `ca_questions`
--

CREATE TABLE `ca_questions` (
  `qid` int(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `ans` int(1) NOT NULL,
  `explanation` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ca_questions`
--

INSERT INTO `ca_questions` (`qid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `explanation`) VALUES
(1, 'Another word for the CPU is...', 'Executer', 'Microprocessor', 'Microchip', 'decoder', 2, ''),
(2, 'Which of these is not a computer?', 'Aptiva', 'Macintosh', 'Acorn', 'Paseo', 4, ''),
(3, 'Which was an early mainframe computer?', 'ENIAC', 'UNIC', 'BRAINIA', 'FUNTRIA', 1, ''),
(4, 'Which of the following is not a programming language?', ' Basic    ', 'Java', 'Turing ', 'C', 2, ''),
(5, 'How many bits is a byte?', '4', '8', '16', '32', 2, ''),
(6, 'Which of the following operating systems is produced by IBM?', ' OS-2', 'Windows', 'DOS', 'UNIX', 1, ''),
(7, 'What is a GPU?', ' Grouped Processing Unit ', 'Graphics Processing Unit ', ' Graphical Performance Utility', 'Graphical Portable Unit', 2, ''),
(8, 'Compact discs, (according to the original CD specifications) hold how many minutes of music?', ' 74 mins', '56 mins', '60 mins', '90 mins', 1, ''),
(9, 'The base 10 (or decimal - our normal way of counting) number 65535 is represented in hexadecimal as...?', '0xFFFFF   ', '0xFFFFFF   ', '0xFFFF', ' 0xFFFFFF', 2, ''),
(10, ' In what year was the \"@\" chosen for its use in e-mail addresses?', '1976', '1972', '1978', '1984', 2, ''),
(11, '\'.INI\' extension refers usually to what kind of file?', ' Image file ', 'System file', 'Hypertext related file', 'Image Color Matching Profile file', 2, ''),
(12, ' DB\' computer abbreviation usually means ?', 'Database', 'Double Byte', 'Data Block', 'Driver Boot', 1, ''),
(13, 'Hardware devices that are not part of the main computer system and are often added later to the system.', 'Peripheral', ' Clip art ', 'Highlight ', 'Execute', 1, ''),
(14, 'What will be the bias used in a word addressing computer if the number of bits for exponent are 9.', '127', '511', '255', '512', 3, ''),
(15, 'Decreasing response time almost always', 'Improves throughput', 'Decreases throughput', 'No change in throughput   ', 'Throughput is always constant', 1, ''),
(16, 'The address space is 22 bits the memory is 32 bit word addressable what is the memory size', '16MB', '512KB', '4MB', '1GB', 1, ''),
(17, 'In which cycle the memory is read and the contents of memory at the address containedin the PC regtister are loaded into into IR.', 'Execution Cycle ', 'Memory Cycle', 'Fetch Cycle', 'Decode Cycle', 3, ''),
(18, 'Which types of programmers should be aware of instruction set architecture.', 'Application Programmer ', 'System Programmer ', 'HLL programmer', 'none', 2, ''),
(19, 'The part of machine level instruction, which tells the central processor what has to be done, is', 'Operation code', 'Address', 'Locator', 'None of the above', 1, ''),
(20, 'A system program that combines the separately compiled modules of a program into a form suitable for execution', 'assembler', 'linker loader', 'cross compiler', 'load and go', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `ca_score`
--

CREATE TABLE `ca_score` (
  `username` varchar(100) DEFAULT NULL,
  `attempted` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ca_score`
--

INSERT INTO `ca_score` (`username`, `attempted`, `score`) VALUES
('r', 0, 0),
('jineshforever', 0, 0),
('qwerty', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cpp_questions`
--

CREATE TABLE `cpp_questions` (
  `qid` int(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `ans` int(1) NOT NULL,
  `explanation` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cpp_questions`
--

INSERT INTO `cpp_questions` (`qid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `explanation`) VALUES
(2, 'What is the size of wchar_t in C++?', '2', '4', '2 or 4', 'Based on the number of bits in the system', 4, 'Compiler wants to make CPU as more efficient in accessing the next value. '),
(3, 'Pick the odd one out', 'array type', 'character type', 'boolean type', 'integer type', 1, 'Array type is not the basic type and it is constructed using the basic type. '),
(4, 'Which data type is used to represent the absence of parameters?', 'int', 'short', 'void', 'float', 3, 'Because void specifies an empty set of values/parameters. '),
(5, 'What does \\a escape code represent?', 'alert', 'backslash', 'tab', 'form feed', 1, 'Because \\a is used to produce a beep sound. '),
(6, 'Which type is best suited to represent the logical values?', 'integer', 'boolean', 'character', 'all', 2, ' Logical values can be either true or false, so the boolean type is suited for it. '),
(7, 'Identify the user-defined types from the following?', 'enumeration', 'classes', 'both enumeration and classes', 'int', 3, 'They must be defined by the users before use, unlike the other types which are readily available. '),
(8, 'Which of the following statements are true? about int f(float)', 'f is a function taking an argument of type int and returning a floating point number', 'f is a function taking an argument of type float and returning an integer', 'f is a function of type float', 'none of the mentioned', 2, ' The argument that is passed to a function f is of float type and the function finally returns a value that id is of integer type. '),
(9, 'The value 132.54 can be represented using which data type?', 'double', 'void', 'int', 'bool', 1, 'The given value is with decimal points, so float or double can be used. '),
(1, 'When a language has the capability to produce new data type mean, it can be called as', 'overloaded', 'extensible', 'encapsulated', 'reprehensible', 2, 'Extensible is used to add new features to C++. '),
(10, 'Pick the odd one out.', 'integer, character, boolean, floating', 'enumeration, classes', 'integer, enum, void', ' arrays, pointer, classes', 3, 'Option a consists of all fundamental types, option b consists of user-defined types and option d consists of derived types but option c is a mixture. '),
(11, 'Is bool a fundamental data type in C++?', 'Yes', 'No, it is a typedef of unsigned char', ' No, it is an enum of {false, true}', 'No, it is expanded from macros', 1, 'C++ has bool as a fundamental data type. '),
(12, 'Find the odd one out:', ' std::vector<int>', 'std::vector<short>', 'std::vector<long>', 'std::vector<bool>', 4, ' std::vector<bool> is a specialized version of vector, which is used for elements of type bool and optimizes for space. It behaves like the unspecialized version of vector and the storage is not necessarily an array of bool values, but the library implementation may optimize storage so that each value is stored in a single bit. '),
(13, 'What is the value of the bool? bool is_int(789.54)', 'True', 'False', '1', 'None of the mentioned', 2, 'The given number is a double not an integer, so the function returns 0 which is boolean false.'),
(14, ' What happens when a null pointer is converted into bool?', 'an error is flagged', 'bool value evaluates to true', 'bool value evaluates to false', ' the statement is ignored', 3, 'A pointer can be implicitly converted to a bool. A nonzero pointer converts to true and zero valued pointer converts to false.'),
(15, 'Which of the following statements are false?', 'bool can have two values and can be used to express logical expressions', 'bool cannot be used as the type of the result of the function', 'bool can be converted into integers implicitly', 'a bool value can be used in arithmetic expressions', 2, 'None'),
(16, 'a bool value can be used in arithmetic expressions', '0 and all negative values', '0 and -1', '0', '0, all negative values, all positive values except 1', 3, 'The if-statement block is only not executed when the expression evaluates to 0. its just syntactic sugar for a branch-if-zero instruction.'),
(17, 'Which of the two operators ++ and — work for the bool data type in C++?', 'None', '++', '--', '++&--', 2, 'Due to the history of using integer values as booleans, if an integer is used as a boolean, then incrementing will mean that whatever its truth value before the operation, it will have a truth-value of true after it. However, it is not possible to predict the result of — given knowledge only of the truth value of x, as it could result in false.'),
(18, 'Evaluate the following   (false && true) || false || true', '0', '1', 'false', 'None', 2, ''),
(19, 'The operator used for dereferencing or indirection is ____', '*', '&', '->', '->>', 1, ''),
(20, 'Which one of the following is not a possible state for a pointer.', 'hold the address of the specific object', 'point one past the end of an object', 'zero', 'point to a tye', 4, ' A pointer can be in only 3 states a,b and c. ');

-- --------------------------------------------------------

--
-- Table structure for table `cpp_score`
--

CREATE TABLE `cpp_score` (
  `username` varchar(100) DEFAULT NULL,
  `attempted` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cpp_score`
--

INSERT INTO `cpp_score` (`username`, `attempted`, `score`) VALUES
('jineshforever', 0, 0),
('qwerty', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `c_questions`
--

CREATE TABLE `c_questions` (
  `qid` int(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `ans` int(1) NOT NULL,
  `explanation` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_questions`
--

INSERT INTO `c_questions` (`qid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `explanation`) VALUES
(2, 'C99 standard guarantees uniqueness of ____ characters for internal names.', '31', '63', '12', '14', 2, 'ISO C99 compiler may consider only first 63 characters for internal names.'),
(1, 'C99 standard guarantees uniqueness of _____ characters for external names.', '31', '6', '12', '14', 1, 'ISO C99 compiler may consider only first 31 characters for external names.'),
(3, 'Which of the following is not a valid variable name declaration?', 'int __a3;', 'int __3a;', 'int __A3;', 'None of the mentioned', 4, ''),
(4, 'Which of the following is not a valid variable name declaration?', 'int _a3;', ' int a_3;', 'int 3_a;', 'int _3a', 3, ' Variable name cannot start with a digit.'),
(5, ' Why do variable names beginning with the underscore is not encouraged?', 'It is not standardized', 'To avoid conflicts since assemblers and loaders use such names', 'To avoid conflicts since library routines use such names', 'To avoid conflicts with environment variables of an operating system', 3, ''),
(6, 'All keywords in C are in ____________', 'LowerCase letters', 'UpperCase letters', 'CamelCase letters', 'None of the mentioned', 1, ''),
(7, 'Variable name resolution (number of significant characters for the uniqueness of variable) depends on ___________', 'Compiler and linker implementations', 'Assemblers and loaders implementations', 'C language', 'None of the mentioned', 1, 'It depends on the standard to which compiler and linkers are adhering.'),
(8, ' Which of the following is not a valid C variable name?', ' int number;', ' float rate;', 'int variable_count;', 'int $main;', 4, 'Since only underscore and no other special character is allowed in a variable name, it results in an error.'),
(9, 'Which of the following is true for variable names in C?', 'They can contain alphanumeric characters as well as special characters', 'It is not an error to declare a variable to be one of the keywords(like goto, static)', 'Variable names cannot start with a digit', 'Variable can be of any length', 3, 'According to the syntax for C variable name, it cannot start with a digit.'),
(10, ' Which is valid C expression?', 'int my_num = 100,000;', 'int my_num = 100000;', 'int my num = 1000;', 'int $my_num = 10000;', 2, 'Space, comma and $ cannot be used in a variable name.'),
(11, 'Which of the following is not a valid variable name declaration?', 'float PI = 3.14;', 'double PI = 3.14;', 'int PI = 3.14;', '#define PI 3.14', 4, '#define PI 3.14 is a macro preprocessor, it is a textual substitution.'),
(12, 'Which of the following cannot be a variable name in C?', 'volatile', 'true', 'friend', 'export', 1, 'volatile is C keyword.'),
(13, 'What is the built in library function to compare two strings?', 'string_cmp()', 'strcmp()', 'equals()', 'str_compare()', 2, 'strcmp() is the built in function from “string.h” to compare two strings. Returns 0 if both are same strings. Returns -1 if first < second string. Returns 1 first > second.'),
(14, 'The prototype of a function can be used to,', 'Define a function', 'Declare a function', 'erase function', 'None', 2, 'Prototype of a function can be used to declare a function. It is necessary in order to provide information (return type, parameter list and function name, etc) about the function to the compiler.'),
(15, 'Which of the following operator can be used to access value at address stored in a pointer variable?', '*', '#', '&&', '@', 1, 'Pointer operator,\r\n\r\n* (Value Operator) = Gives Value stored at Particular address\r\n\r\n& (Address Operator) = Gives Address of Variable'),
(16, 'What do you mean by: int (*ptr)[10]', 'ptr is an array of pointers to 10 integers', 'ptr is a pointer to an array of 10 integers', 'ptr is an array of 10 integers', 'Invalid statement', 2, 'Explanation: with or without the brackets surrounding the *p, still the declaration says it’s an array of pointer to integers.'),
(17, 'Which statement can print \\n on the screen?', 'printf(\"\\\\n\");', 'printf(\"n\\\");', 'printf(\"n\");', 'printf(\"\\n\");', 1, 'Option A is the correct answer. In C programming language, \\n is the escape sequence for printing a new line character. In printf(\\\\n); statement, \\\\ symbol will be printed as \\ and n will be known as a common symbol.'),
(18, 'What is the built in library function in c  to compare two strings?', 'string_cmp()', 'strcmp()', 'equals()', 'str_compare()', 2, 'strcmp() is the built in function from “string.h” to compare two strings. Returns 0 if both are same strings. Returns -1 if first < second string. Returns 1 first > second.'),
(19, 'What will the function rewind() do?', 'Reposition the file pointer to a character reverse.', 'Reposition the file pointer stream to end of file.', 'Reposition the file pointer to begining of that line.', 'Reposition the file pointer to begining of file.', 4, ' rewind() takes the file pointer to the beginning of the file. so that the next I/O operation will take place at the beginning of the file.\r\nExample: rewind(FilePointer); '),
(20, 'Input/output function prototypes and macros are defined in which header file?', 'conio.h', 'stdlib.h', 'stdio.h', 'dos.h', 3, 'stdio.h, which stands for \"standard input/output header\", is the header in the C standard library that contains macro definitions, constants, and declarations of functions and types used for various standard input and output operations. '),
(21, 'Which standard library function will you use to find the last occurance of a character in a string in C?', 'strnchar()', 'strchar()', 'strrchar()', 'strrchr()', 4, 'strrchr() returns a pointer to the last occurrence of character in a string.');

-- --------------------------------------------------------

--
-- Table structure for table `c_score`
--

CREATE TABLE `c_score` (
  `username` varchar(100) DEFAULT NULL,
  `attempted` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_score`
--

INSERT INTO `c_score` (`username`, `attempted`, `score`) VALUES
('jineshforever', 96, 19),
('qwerty', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ds_questions`
--

CREATE TABLE `ds_questions` (
  `qid` int(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `code` varchar(1000) DEFAULT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `ans` int(1) NOT NULL,
  `explanation` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ds_questions`
--

INSERT INTO `ds_questions` (`qid`, `question`, `code`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `explanation`) VALUES
(1, 'Which of these best describes an array?', NULL, 'A data structure that shows a hierarchical behavior', 'Container of objects of similar types\r\n', 'Container of objects of mixed types\r\n', 'All of the mentioned', 2, ''),
(2, 'How do you initialize an array in C?', NULL, ' int arr[3] = (1,2,3);', 'int arr(3) = {1,2,3};', ' int arr[3] = {1,2,3};', ' int arr[3] = {1,2,3};', 3, ''),
(3, ' How do you instantiate an array in Java?', NULL, 'int arr[] = new int(3);\r\n', 'int arr[];\r\n', 'int arr[] = new int[3];\r\n', 'int arr() = new int(3);', 3, ''),
(4, 'Which of the following is a correct way to declare a multidimensional array in Java?', NULL, 'int[][] arr;\r\n', 'int arr[][];\r\n', 'int []arr[]', 'All of the mentioned', 4, ''),
(5, 'Which of the following concepts make extensive use of arrays?', NULL, 'Binary trees', 'Scheduling of processes\r\n', 'Caching', 'Spatial locality', 4, ''),
(6, 'What are the advantages of arrays?', NULL, 'Easier to store elements of same data type\r\n', 'Used to implement other data structures like stack and queue\r\n', 'Convenient way to represent matrices as a 2D array', 'All of the mentioned', 4, ''),
(7, '. Assuming int is of 4bytes, what is the size of int arr[15];?', NULL, '15', '19', '11', '60', 4, ''),
(8, 'Binary trees can have how many children?', NULL, '2', 'any number', '0 or 1 0r 2', '0 or 1', 3, ''),
(9, 'Disadvantage of using array representation for binary trees is?', NULL, 'difficulty in knowing children nodes of a node', 'difficult in finding the parent of a node', '\r\nhave to know the maximum number of nodes possible before creation of trees\r\n', 'difficult to implement', 3, ''),
(10, 'What must be the ideal size of array if the height of tree is ‘l’?', NULL, ' 2l-1', 'l-1', 'l', '2l', 1, ''),
(11, 'What are the children for node ‘w’ of a complete-binary tree in an array representation?', NULL, '2w and 2w+1', '2+w and 2-w', 'w+1/2 and w/2', 'w-1/2 and w+1/2', 1, ''),
(12, ' What is the parent for a node ‘w’ of a complete binary tree in an array representation when w is not 0?', NULL, 'floor(w-1/2)', 'ceil(w-1/2)\r\n', 'w-1/2', 'w/2', 1, ''),
(13, 'Advantages of linked list representation of binary trees over arrays?\r\n', NULL, 'dynamic size', 'ease of insertion/deletion\r\n', 'ease in randomly accessing a node\r\n', 'both dynamic size and ease in insertion/deletion', 4, ''),
(14, 'How to travel a tree in linkedlist representation?', NULL, 'using post order traversing', 'using pre order traversing\r\n', 'using post order traversing', 'all of the mentioned', 4, ''),
(15, 'A connected planar graph having 6 vertices, 7 edges contains _____________ regions.', NULL, '15', '3', '1', '11', 2, ''),
(16, 'Binary trees can have how many children?', NULL, '2', 'any number', '0 or 1 0r 2', '0 or 1', 3, ''),
(17, 'Disadvantage of using array representation for binary trees is?', NULL, 'difficulty in knowing children nodes of a node', 'difficult in finding the parent of a node', '\r\nhave to know the maximum number of nodes possible before creation of trees\r\n', 'difficult to implement', 3, ''),
(18, 'What must be the ideal size of array if the height of tree is ‘l’?', NULL, ' 2l-1', 'l-1', 'l', '2l', 1, ''),
(19, 'What are the children for node ‘w’ of a complete-binary tree in an array representation?', NULL, '2w and 2w+1', '2+w and 2-w', 'w+1/2 and w/2', 'w-1/2 and w+1/2', 1, ''),
(20, ' What is the parent for a node ‘w’ of a complete binary tree in an array representation when w is not 0?', NULL, 'floor(w-1/2)', 'ceil(w-1/2)\r\n', 'w-1/2', 'w/2', 1, ''),
(21, 'Advantages of linked list representation of binary trees over arrays?\r\n', NULL, 'dynamic size', 'ease of insertion/deletion\r\n', 'ease in randomly accessing a node\r\n', 'both dynamic size and ease in insertion/deletion', 4, ''),
(22, 'How to travel a tree in linkedlist representation?', NULL, 'using post order traversing', 'using pre order traversing\r\n', 'using post order traversing', 'all of the mentioned', 4, ''),
(23, 'Level order traversal of a tree is formed with the help of', NULL, 'breadth first search', 'depth first search', 'dijkstra', 'prims', 1, ''),
(24, 'Why we prefer threaded binary trees?', NULL, 'storage required by stack and queue is more\r\n', 'pointers in most of nodes of a binary tree are NULL', 'difficult to find a successor node\r\n', 'all of the mentioned', 4, ''),
(25, 'Which of the following statements for a simple graph is correct?', NULL, 'Every path is a trail', 'Every trail is a path', 'Every trail is a path as well as every path is a trail', 'None of the mentioned', 1, ''),
(26, 'What is the number of edges present in a complete graph having n vertices?\r\n', NULL, 'n*(n+1))/2', '(n*(n-1))/2', 'n', 'Information given is insufficient', 1, ''),
(27, 'In a simple graph, the number of edges is equal to twice the sum of the degrees of the vertices.', NULL, 'True', 'False', 'Sometimes', 'None', 2, ''),
(28, 'A connected planar graph having 6 vertices, 7 edges contains _____________ regions.', NULL, '15', '3', '1', '11', 2, ''),
(29, 'What will be the output of the following C code?', '        #include <stdio.h>\r\n\r\n        void main()\r\n\r\n        {\r\n\r\n            int k = 4;\r\n\r\n            float k = 4;\r\n\r\n            printf(\"%d\", k)\r\n\r\n        }', 'Compile time error', '4', '4.0000000', '4.4', 1, ' Since the variable k is defined both as integer and as float, it results in an error.\r\nOutput:\r\n$ cc pgm8.c\r\npgm8.c: In function ‘main’:\r\npgm8.c:5: error: conflicting types for ‘k’\r\npgm8.c:4: note: previous definition of ‘k’ was here\r\npgm8.c:6: warning: format ‘%d’ expects type ‘int’, but argument 2 has type ‘double’\r\npgm8.c:7: error: expected ‘;’ before ‘}’ token');

-- --------------------------------------------------------

--
-- Table structure for table `ds_score`
--

CREATE TABLE `ds_score` (
  `username` varchar(100) DEFAULT NULL,
  `attempted` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ds_score`
--

INSERT INTO `ds_score` (`username`, `attempted`, `score`) VALUES
('jineshforever', 178, 54),
('qwerty', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `economics_questions`
--

CREATE TABLE `economics_questions` (
  `qid` int(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `ans` int(1) NOT NULL,
  `explanation` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `economics_questions`
--

INSERT INTO `economics_questions` (`qid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `explanation`) VALUES
(2, 'Receipts in budget can be capital or revenue. Which of these is/are capital receipts?\r\n1. Loan recoveries\r\n2. Provident funds deposits\r\n3. Grants', ' 1 and 2 only', '1 and 3 only', '2 and 3 only', '1, 2 and 3', 1, 'Loan recoveries are the money, which the government had lent out in past, their capital comes back to the government when the borrowers repay them as capital receipts. long-term capital accruals to the government through the Provident Fund (PF), Postal Deposits, various small saving schemes (SSSs) and the government bonds sold to the public (as Indira Vikas Patra, Kisan Vikas Patra, Market Stabilization Bond, etc.) are also capital receipts. Grants are revenue receipts.'),
(3, 'If a government is unable to pass the budget in Lok Sabha, then:', 'a totally new budget is presented.', 'the budget is revised and presented again.', 'the government has to resign.', 'none of the above', 3, 'This is an important point to be noted. Although, UPSC has asked a question on this in 2011, it may still resurface as a part/statement in a question.'),
(4, ' The Economic Survey is complied by:', 'Office of economic advisor.', 'Central Statistical office ( CSO )', 'National Sample Survey Organization (NSSO)', 'Department of economic affairs.', 4, 'The Economic Survey is complied by Department of economic affairs, Ministry of Finance. Office of economic advisor publishes WPI, while CSO publishes IIP and CPI.'),
(1, 'Gross budgetary support means:', 'centre’s contribution to budget', 'expenditure in budget on social schemes', 'assistance provided by the Centre to five year plan.', 'none of the above', 3, 'The Government’s support to the Central plan is called the Gross Budgetary Support. In the recent years the GBS has been slightly more than 50% of the total Central Plan. The share of the GBS in Central Plan has been rising since 2008-09.'),
(5, 'The Trade facilitation agreement (TFA) of the WTO says that farm subsidies cannot be more than 10 percent of the', 'Gross Domestic Product of a country.', 'Value of agricultural production.', 'National income of a country.', 'Value of agricultural exports.', 2, 'TFA runs in a clause that says farm subsidies cannot be more than 10 percent of the value of agricultural production.'),
(6, 'The WTO follows the principle of ‘self selection’. This means :', 'countries decides to which agreement they want to be party.', 'countries decide the rate of tariff and tariff reduction', 'countries themselves decide whether they want to be in developed or developing categories.', 'None of the above', 3, 'There are no WTO definitions of “developed” or “developing” countries. Developing countries in the WTO are designated on the basis of self-selection although this is not necessarily automatically accepted in all WTO bodies.'),
(7, 'The term ‘narrow banking’ is best described as :', 'banks acting only as payment banks', 'banking by non-banking financial companies', 'limited areas of operation by banks', 'banks lending only to risk free sectors', 4, 'A ‘Narrow Bank’ can be defined as the system of banking under which a bank places its funds in risk-free assets with maturity period matching its liability maturity profile, so that there is no problem relating to asset liability mismatch and the quality of assets remains intact without leading to emergence of sub-standard assets. '),
(8, 'Which of the following schemes have been subsumed in the recently approved Ayushman Bharat – National Health Protection Mission (AB-NHPM)?', 'Rashtriya Swasthya Bima Yojana (RSBY) ', ' Senior Citizen Health Insurance Scheme (SCHIS) ', 'National Life Insurance Scheme ', '1 & 2', 4, 'Ayushman Bharat -National Health Protection Mission (AB-NHPM) is a centrally sponsored scheme under Ayushman Bharat Mission. The scheme will provide i'),
(9, 'Which of the following is used to denote broad money? ', 'M1', 'M2', 'M3', 'M4', 3, 'Narrow Money M1 = Currency with the public + Demand Deposits of public in Banks When a third component viz. Post office Savings Deposits is also added'),
(10, 'Which among the following is NOT a subsidiary of RBI? ', 'National Housing Bank ', 'NABARD ', 'Bharatiya Reserve Bank Note Mudran Private Limited ', 'SIDBI', 4, 'RBI has four subsidiaries viz. Deposit Insurance and Credit Guarantee Corporation, DICGC; National Housing Bank; Bharatiya Reserve Bank Note Mudran Private Limited(BRBNMPL) and NABATD'),
(11, 'Which among the following is a qualitative tool of monetary policy? ', 'Bank Rate ', 'Credit Ceiling ', 'Credit rationing ', 'Cash Reserve Ratio', 3, 'The quantitative instruments are Open Market Operations, Liquidity Adjustment Facility (Repo and Reverse Repo), Marginal Standing Facility, SLR, CRR, Bank Rate, Credit Ceiling etc. On the other hand, qualitative instruments are: credit rationing, moral suasion and direct action (by RBI on banks). '),
(12, 'Which among the following closest instrument to Gold ETF? ', ' Debenture', 'G-Sec security ', 'Mutual Fund ', 'Commercial Paper', 3, 'Gold ETFs (Paper Gold) are mutual fund schemes that invest in standard gold bullion (of 99.5% purity). The value of an ETF is based on price of gold. '),
(13, 'Which among the following is NOT a pillar of Basel III? ', 'Minimum capital standards ', 'Supervisory review ', 'Market discipline ', 'Consolidation of assets', 4, 'The Basel III framework is based on 3 components called 3 pillars, which include: Pillar 1 : Minimum capital standards, Pillar 2 : Supervisory revie'),
(14, 'What term is used for maximum capital which the company can raise in its life time? ', 'Authorized Capital ', 'Registered Capital ', 'Nominal Capital ', 'All of them', 4, ''),
(15, 'Which among the following was the first bank purely managed by Indians? ', 'Oudh Commercial Bank ', 'Punjab National Bank', 'Bank of India ', 'Allahabad bank', 2, 'The first Bank with Limited Liability to be managed by Indian Board was Oudh Commercial Bank. It was established in 1881 at Faizabad. This bank failed in 1958. The first bank purely managed by Indians was Punjab National Bank, established in Lahore in 1895'),
(16, 'Inflation Indexed Bonds is pegged to ___?', 'WPI', 'CPI', 'Both WPI and CPI', 'None of the above', 1, ''),
(17, 'Which of the following best defines a floating-rate bond?', 'A bond with a fixed interest rate and has better yield than varying interest rate bond', 'A bond with a fixed interest rate and has lower yield than varying interest rate bond', 'A bond with a varying interest rate and has better yield than fixed interest rate bond', 'A bond with a varying interest rate and has lower yield than fixed interest rate bond', 2, 'Floating rate bonds have variable interest rate and protect investors against a rise in interest rates (which have an inverse relationship with bond prices). They also carry lower yields than fixed notes of the same maturity.'),
(18, 'Who is the father of Economics ? ', 'Max Muller', 'Adam Smith', 'Karl Marx', 'None', 2, ''),
(19, 'Indian Economy is : ', 'Socialistic Economy', 'Gandhian Economy', 'Mixed Economy', 'Free Economy', 3, ''),
(20, ' Mixed economy means an economy where ', 'both agriculture and industry are equally promoted by the state', 'there is co-existence of public sector along with private sector', 'there is importance of small scale industries along with heavy industries', 'economy is controlled by military as well as civilian rulers', 2, ''),
(21, 'India\'s economic planning CANNOT be said to be :', 'indicative', 'imperative', 'limited', 'democratic', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `economics_score`
--

CREATE TABLE `economics_score` (
  `username` varchar(100) DEFAULT NULL,
  `attempted` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `economics_score`
--

INSERT INTO `economics_score` (`username`, `attempted`, `score`) VALUES
('jineshforever', 0, 0),
('qwerty', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `general_science_questions`
--

CREATE TABLE `general_science_questions` (
  `qid` int(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `ans` int(1) NOT NULL,
  `explanation` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_science_questions`
--

INSERT INTO `general_science_questions` (`qid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `explanation`) VALUES
(2, 'Which of the following is a non metal that remains liquid at room temperature?', 'Phosphorous', 'Bromine', 'Chlorine', 'Helium', 2, ''),
(3, 'Which of the following is used in pencils?', 'Graphite', 'Silicon', 'Charcoal', 'Phosphorous', 1, ''),
(4, 'The gas usually filled in the electric bulb is', 'nitrogen', 'hydrogen', 'carbon dioxide', 'oxygen', 1, ''),
(5, 'Washing soda is the common name for', 'Sodium carbonate', 'Calcium bicarbonate', 'Sodium bicarbonate', 'Calcium carbonate', 1, 'Sodium carbonate (also known as washing soda or soda ash), Na2CO3 is a sodium salt of carbonic acid.'),
(6, 'Which of the gas is not known as green house gas?', 'Methane', 'Nitrous oxide', 'Carbon dioxide', 'Hydrogen', 4, 'n order, the most abundant greenhouse gases in Earth\'s atmosphere are:\r\n\r\n* water vapor\r\n* carbon dioxide\r\n* methane\r\n* nitrous oxide\r\n* ozone\r\n* chlorofluorocarbons'),
(7, 'The hardest substance available on earth is', 'Gold', 'Iron', 'Diamond', 'Platinum', 3, ''),
(8, 'The gases used in different types of welding would include', 'oxygen and hydrogen', 'oxygen, hydrogen, acetylene and nitrogen', 'oxygen, acetylene and argon', 'oxygen and acetylene', 4, ''),
(9, 'Heavy water is', 'deuterium oxide', 'PH7', 'rain water', 'tritium oxide', 1, ''),
(10, 'Carbon, diamond and graphite are together called', 'allotropes', 'isomers', 'isomorphs', 'isotopes', 1, ''),
(11, 'Most soluble in water is', 'camphor', 'sulphur', 'common salt', 'sugar', 4, ''),
(12, 'What is laughing gas?', 'Nitrous Oxide', 'Carbon monoxide', 'Sulphur dioxide', 'Hydrogen peroxide', 1, ''),
(13, '	\r\nThe two elements that are frequently used for making transistors are', 'boron and aluminium', 'silicon and germanium', 'iridium and tungsten', 'niobium and columbium', 2, ''),
(14, 'Diamond is an allotropic form of', 'germanium\r\n', 'carbon', 'silicon', 'sulphur', 2, ''),
(15, '	\r\nPermanent hardness of water can be removed by adding', 'chlorine', 'washing soda', 'potassium permanganate', 'bleaching powder', 2, ''),
(16, 'Marsh gas is', 'nitrogen', 'ethane', 'methane', 'hydrogen', 3, ''),
(17, 'Air is a/an', 'compound', 'element', 'electrolyte', 'mixture', 4, ''),
(18, 'Balloons are filled with', 'nitrogen', 'helium', 'oxygen', 'argon', 2, ''),
(19, 'Which metal pollute the air of a big city?', 'Copper', 'Chromium', 'Lead', 'Cadmium', 3, ''),
(20, 'Which of the following is not an isotope of hydrogen?', 'Tritium', 'Deuterium', 'Protium', 'Yttrium', 4, ''),
(1, 'How many elements are present in periodic table?', '118', '119', '120', '121', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `general_science_score`
--

CREATE TABLE `general_science_score` (
  `username` varchar(100) DEFAULT NULL,
  `attempted` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_science_score`
--

INSERT INTO `general_science_score` (`username`, `attempted`, `score`) VALUES
('jineshforever', 14, 6),
('qwerty', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `geography_questions`
--

CREATE TABLE `geography_questions` (
  `qid` int(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `ans` int(1) NOT NULL,
  `explanation` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geography_questions`
--

INSERT INTO `geography_questions` (`qid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `explanation`) VALUES
(14, 'What is the predominant type of Indian agriculture?\r\n', 'Commercial Agriculture', 'Extensive Agriculture', 'plantation agriculture', 'subsistence agriculture', 4, ''),
(13, ' \r\nThe present forest area of India, according to satellite data, is\r\n ', 'increasing', 'decreasing', 'static', 'none', 2, ''),
(11, 'The Salal Project is on the river\r\n', 'Chenab', 'Jhelum', 'Ravi', 'Sutlej', 1, ''),
(12, 'The percentage of earth surface covered by India is\r\n', '2.4', '3.4', '4.4', '5.4', 1, ''),
(9, 'The southernmost point of peninsular India, that is, Kanyakumari, is\r\n', 'north of Tropic of Cancer', 'south of the Equator', 'south of the Capricorn', 'north of the Equator', 4, ''),
(10, 'The Yarlung Zangbo river, in India, is known as\r\n', 'Ganga', 'Indus', 'Brahmaputra', 'Mahanadi', 3, ''),
(7, 'The Paithan (Jayakwadi) Hydro-electric project, completed with the help of Japan, is on the river\r\n', 'Ganga', 'Cauvery', 'Narmada', 'Godavari', 4, ''),
(8, 'The percentage of irrigated land in India is about\r\n', '45', '65', '35', '25', 3, ''),
(15, 'The Radcliffe line is a boundary between\r\n', 'India and Pakistan', 'India and China', 'India and Myanmar', 'India and Afghanistan', 1, ''),
(16, 'The state having a largest area of forest cover in India is\r\n', 'Arunachal Pradesh', 'Haryana', 'Madhya Pradesh', 'Assam', 3, ''),
(17, 'The year ____ is called a Great Divide in the demographic history of India.\r\n', '1901', '1921', '1941', '1951', 2, ''),
(18, 'The only private sector refinery set up by Reliance Petroleum Ltd. is located at\r\n', 'Guwahati', 'Jamnagar', 'Mumbai', 'Chennai', 2, ''),
(19, 'The only state in India that produces saffron is\r\n', 'Assam', 'Himachal Pradesh', 'Jammu Kashmir', 'Meghalaya', 3, ''),
(20, 'The zonal soil type of peninsular India belongs to\r\n', 'red soils', 'yellow soils', 'black soils', 'older alluvium', 1, ''),
(21, 'The northern boundary of the peninsular plateau of Indian runs parallel to the Ganga and the Yamuna from Rajmahal hills to a point near\r\n', 'Allahbad', 'Delhi', 'Gwalior', 'Jaipur', 2, ''),
(22, 'Which of the following food grain crops occupies the largest part of the cropped area in India?\r\n', 'Barley and Maize', 'Jowar and Bajra', 'Rice', 'Wheat', 3, ''),
(23, 'The number of major languages, recognized in the Indian Union as official language, are\r\n', '15', '22', '12', '9', 2, ''),
(24, 'Which of the following union territories of India has the highest density of population per sq km?\r\n', 'Pondicherry', 'Lakshadweep', 'Delhi', 'Punjab', 3, ''),
(25, ' \r\nThe south-west monsoon contributes ____ of the total rain in India.\r\n ', '86', '50', '22', '100', 1, ''),
(26, 'The oldest mountains in India are\r\n', 'Aravlis', 'Vindyas', 'Satpuras', 'Nilgiri', 1, ''),
(1, 'The Homolographic projection has the correct representation of', 'shape', 'area', 'baring', 'distance', 2, ''),
(2, 'The latitudinal differences in pressure delineate a number of major pressure zones, which correspond with', 'zones of climate', 'zones of oceans', 'zones of land', 'zones of cyclonic depressions', 1, ''),
(3, 'The hazards of radiation belts include', 'deterioration of electronic circuits', 'damage of solar cells of spacecraft', 'adverse effect on living organisms', 'all of the above', 4, ''),
(4, 'The great Victoria Desert is located in', 'Canada', 'West Africa', 'Australia', 'America', 3, ''),
(5, 'The intersecting lines drawn on maps and globes are', 'latitude', 'longitude', 'geographic grids', 'none', 3, ''),
(6, 'The iron and steel industries of which of the following countries are almost fully dependent on imported raw materials?', 'Britian', 'Poland', 'Japan', 'Germany', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `geography_score`
--

CREATE TABLE `geography_score` (
  `username` varchar(100) DEFAULT NULL,
  `attempted` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geography_score`
--

INSERT INTO `geography_score` (`username`, `attempted`, `score`) VALUES
('jineshforever', 0, 0),
('qwerty', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `username` varchar(100) NOT NULL,
  `attempted` int(100) NOT NULL,
  `correct` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history_questions`
--

CREATE TABLE `history_questions` (
  `qid` int(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `ans` int(1) NOT NULL,
  `explanation` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_questions`
--

INSERT INTO `history_questions` (`qid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `explanation`) VALUES
(2, 'The General who gave the firing order at Jallianwala Bag was?', 'Curzon ', 'Dyer ', 'Cornwallis', 'Simpson ', 2, ''),
(3, 'Who wrote the book Discovery of India?', 'Bal Gangadhr Tilak', 'Mahatma Gandhi ', 'Jawaharlal Nehru ', 'Sardar Patel ', 3, ''),
(4, 'Who wrote the Indian National Anthem \'Jana Gana Mana\'?', 'Rabindranath Tagore ', 'Bankim Chandra Chatterje', 'Ram Prasad Bismil ', 'Muhammad Iqbal ', 1, ''),
(5, 'Who was the Prime Minister of Britain when India got independence ?', 'Clement Attlee ', 'Winston Churchill ', 'Neville Chamberlain ', 'Stanley Baldwin ', 1, ''),
(6, 'Who was the first Indian to receive Ramon Magsaysay Award? ', 'Baba Amte', 'Jai Prakash Narain ', 'Vinoba Bhave ', 'Lal Bahadur Shastri \r\n', 3, 'Acharya Vinoba Bhave in 1958'),
(7, 'Who was popularly known as the \'Lady with the Lamp\' ?', 'Sarojini Naidu ', 'Florence Nightingale ', 'Sister Nivedita', 'Mother Teresa ', 2, 'Florence and her nurses greatly improved the conditions and many more soldiers survived. She earned the name “The Lady with the Lamp” because she would visit soldiers at night with a small lantern in her hand.'),
(8, 'Who was the author of the book \'Arthshastra\'?', 'Megasthenese', 'Chanakya ', ' Seleucus Nicator', 'Chandragupta ', 2, ''),
(9, 'Who said that the constant \'drain of wealth\' from India was responsible for Indla\'s economic miseries?', 'BC Pal ', 'BP Wadia ', 'Dadabhai Naoroji ', 'GS Arundale ', 3, ''),
(10, 'Who is known as the Father of \'Indian Unrest\'?', 'Bipin Chandra Pal ', 'Bal Gangadhar Tilak ', 'Lala Lajpat Rai ', 'Aurobindo Ghosh \r\n', 2, ''),
(11, 'Who is the author of the book Mudrarakshas?', 'Kalidas ', 'Vishakadatta ', 'Banabhatta', 'Jayadev ', 2, ''),
(12, 'Who is the only person to be honoured with both \'Bharat Ratna\' and \'Nishan-e-Pakistan\', the highest civilian awards of India and Pakistan respectively ?', 'Khan Abdul Gaffar Khan', 'Morarji Desai', 'Maulana Abul Kalam Azad ', 'Mohammed Iqbal', 2, 'Desai was the only Indian national to be conferred with Pakistan\'s highest civilian award, Nishan-e-Pakistan, which was conferred on him by President Ghulam Ishaq Khan in 1990. In 1991 he was awarded Bharat Ratna (Highest Civilian Award of India) along with Sardar Vallabhai Patel and Rajive Gandhi.'),
(13, 'Who founded Banaras Hindu University in Varanasi in the year 1916?', 'S.Radhakrishnan', 'Dayanand Saraswati ', 'Madan Mohan Malaviya ', 'Ram Mohan Roy ', 3, 'He was respectfully addressed as Pandit Madan Mohan Malaviya and also addressed as \'Mahamana\'. Mahamana is most remembered as the founder of Banaras Hindu University (BHU) at Varanasi in 1916, which was created under the B.H.U. Act, 1915.'),
(14, 'Who had got the Konark Sun Temple constructed?', 'Kanishka ', 'Ashoka ', 'Narasimha Deva II ', 'Rajendra Chola', 3, ''),
(15, 'Who introduced the permanent settlement in Bengal?', 'Lord Cornwallis', 'Lord Dalhousie ', 'Lord William Bentick ', 'Lord Curzon ', 4, ''),
(16, 'Who among the following was the last Delhi Sultan? ', 'Ibrahim Lodi ', 'Sikandar Lodi ', 'Bahlol Lodi ', 'Rana Singha ', 1, ''),
(17, 'Who among the following is NOT associated with medicine in ancient India?', 'Charaka', 'Susruta ', 'Bhaskaracharya ', 'Dhanvantri', 3, ''),
(18, 'Which was the first state in the India to be formed on a purely linguistic basis, in 1953?', 'Andhra Pradesh ', 'Tamil Nadu ', 'Bihar', 'West Bengal \r\n', 1, ''),
(19, 'Which one of the following began with the Dandi March?', 'Quit India Movement', 'Non-Cooperation Movement ', 'Civil disobedience Movement ', 'Home rule Movement \r\n', 3, ''),
(20, 'Which of the following Vedas was compiled first?', 'Rigveda ', 'Samaveda', 'Yajurveda ', 'Atharvaveda ', 1, ''),
(1, 'Who was India\'s first President?', 'Maulana Azad', 'Pandit Nehru', 'Mahatma Gandhi', 'Veer Savarkar', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `history_score`
--

CREATE TABLE `history_score` (
  `username` varchar(100) DEFAULT NULL,
  `attempted` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_score`
--

INSERT INTO `history_score` (`username`, `attempted`, `score`) VALUES
('jineshforever', 204, 58),
('jineshforever', 165, 47),
('qwerty', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `java_questions`
--

CREATE TABLE `java_questions` (
  `qid` int(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `ans` int(1) NOT NULL,
  `explanation` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `java_questions`
--

INSERT INTO `java_questions` (`qid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `explanation`) VALUES
(2, 'What is the range of short data type in Java?', '-128 to 127', '-32768 to 32767', '-2147483648 to 2147483647', 'None of the mentioned', 2, 'Short occupies 16 bits in memory. Its range is from -32768 to 32767.'),
(1, 'What is the range of byte data type in Java?', '-128 to 127', '-32768 to 32767', '-2147483648 to 2147483647', 'None of the mentioned', 1, 'Byte occupies 8 bits in memory. Its range is from -128 to 127.'),
(3, 'An expression involving byte, int, and literal numbers is promoted to which of these?', 'int', 'long', 'byte', 'float', 1, 'An expression involving bytes, ints, shorts, literal numbers, the entire expression is promoted to int before any calculation is done.'),
(4, 'Which of these literals can be contained in float data type variable?', '-1.7e+308', '-3.4e+038', '+1.7e+308', '-3.4e+050', 2, 'Range of float data type is -(3.4e38) To +(3.4e38)'),
(5, 'Which of the following is not OOPS concept in Java?', 'Inheritance', 'Encapsulation', 'Polymorphism', 'Compilation', 4, 'There are 4 OOPS concepts in Java. Inheritance, Encapsulation, Polymorphism and Abstraction.'),
(6, 'Which of the following is a type of polymorphism in Java?', 'Compile time polymorphism', 'Execution time polymorphism', 'Multiple polymorphism', 'Multilevel polymorphism', 1, 'There are two types of polymorphism in Java. Compile time polymorphism (overloading) and runtime polymorphism (overriding).'),
(7, 'When does method overloading is determined?', 'At run time', 'At compile time', 'At coding time', 'At execution time', 2, 'Overloading is determined at compile time. Hence, it is also known as compile time polymorphism.'),
(8, 'When Overloading does not occur?', 'More than one method with same name but different method signature and different number or type of parameters', 'More than one method with same name, same signature but different number of signature', 'More than one method with same name, same signature, same number of parameters but different type', 'More than one method with same name, same number of parameters and type but different signature', 4, 'Overloading occurs when more than one method with same name but different constructor and also when same signature but different number of parameters and/or parameter type.'),
(9, 'Which concept of Java is a way of converting real world objects in terms of class?', 'Polymorphism', 'Encapsulation', 'Abstraction', 'Inheritance', 3, ' Abstraction is the concept of defining real world objects in terms of classes or interfaces.'),
(10, 'Which concept of Java is achieved by combining methods and attribute into a class?', 'Encapsulation', 'Inheritance', 'Polymorphism', 'Abstraction', 1, 'Encapsulation is implemented by combining methods and attribute into a class. The class acts like a container of encapsulating properties.'),
(11, 'What is it called if an object has its own lifecycle and there is no owner?', 'Aggregation', 'Composition', 'Encapsulation', 'Association', 4, 'It is a relationship where all objects have their own lifecycle and there is no owner. This occurs where many to many relationships are available, instead of one to one or one to many.'),
(12, 'What is it called where child object gets killed if parent object is killed?', 'Aggregation', 'Composition', 'Encapsulation', 'Association', 2, 'Composition occurs when child object gets killed if parent object gets killed. Aggregation is also known as strong Aggregation.'),
(13, 'What is it called where object has its own lifecycle and child object cannot belong to another parent object?', 'Aggregation', 'Composition', 'Encapsulation', 'Association', 1, 'Aggregation occurs when objects have their own life cycle and child object can associate with only one parent object.'),
(14, 'Method overriding is combination of inheritance and polymorphism?', 'True', 'false', 'Both', 'None', 1, 'In order for method overriding, method with same signature in both superclass and subclass is required with same signature. That satisfies both concepts inheritance and polymorphism.'),
(15, 'Which component is used to compile, debug and execute java program?', 'JVM', 'JDK', 'JIT', 'JRE', 2, 'JDK is a core component of Java Environment and provides all the tools, executables and binaries required to compile, debug and execute a Java Program'),
(16, 'Which component is responsible for converting bytecode into machine specific code?', 'JVM', 'JDK', 'JIT', 'JRE', 1, 'JVM is responsible to converting bytecode to the machine specific code. JVM is also platform dependent and provides core java functions like garbage collection, memory management, security etc.'),
(17, 'Which component is responsible to run java program?', 'JVM', 'JDK', 'JIT', 'JRE', 4, 'JRE is the implementation of JVM, it provides platform to execute java programs.'),
(18, ' Which component is responsible to optimize bytecode to machine code?', 'JVM', 'JDK', 'JIT', 'JRE', 3, 'JIT optimizes bytecode to machine specific language code by compiling similar bytecodes at the same time. This reduces overall time taken for compilation of bytecode to machine specific language.'),
(19, 'Which statement is true about java?', 'Platform independent programming language', 'Platform independent programming language', 'Code dependent programming language', 'Sequence dependent programming language', 1, 'Java is called ‘Platform Independent Language’ as it primarily works on the principle of ‘compile once, run everywhere’.'),
(20, 'Which of the below is invalid identifier with the main method?', 'public', 'static', 'static', 'final', 3, 'main method cannot be private as it is invoked by external method. Other identifier are valid with main method.'),
(21, 'What is the extension of java code files?', '.class', '.java', '.jar', '.js', 2, 'Java files have .java extension.'),
(22, 'What is the extension of compiled java classes?', '.class', '.java', '.js', '.jar', 1, ''),
(23, 'How can we identify whether a compilation unit is class or interface from a .class file?', 'Java source file header', 'Extension of compilation unit', 'We cannot differentiate between class and interface', 'The class or interface name should be postfixed with unit type', 1, ' The Java source file contains a header that declares the type of class or interface, its visibility with respect to other classes, its name and any superclass it may extend, or interface it implements.'),
(24, 'What is use of interpreter?', 'They convert bytecode to machine language code', 'They read high level code and execute them', 'They are intermediated between JIT and JVM', 'It is a synonym for JIT', 2, 'Interpreters read high level language (interprets it) and execute the program. Interpreters are normally not passing through byte-code and jit compilation.');

-- --------------------------------------------------------

--
-- Table structure for table `java_score`
--

CREATE TABLE `java_score` (
  `username` varchar(100) DEFAULT NULL,
  `attempted` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `java_score`
--

INSERT INTO `java_score` (`username`, `attempted`, `score`) VALUES
('jineshforever', 7, 2),
('qwerty', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `latest_tech_questions`
--

CREATE TABLE `latest_tech_questions` (
  `qid` int(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `ans` int(1) NOT NULL,
  `explanation` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latest_tech_questions`
--

INSERT INTO `latest_tech_questions` (`qid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `explanation`) VALUES
(2, 'World\'s first GST calculator was launched by which of the following company?', 'Armani', 'Casio India', 'Tissot', 'Festina', 2, ''),
(3, 'Name the company which has launched the Neighbourly app in Delhi and Bangalore.', 'Microsoft', 'Google', 'Oracle', 'Apple', 2, ''),
(4, 'Which of the following launched a \'Digital Literacy Library\' providing safety tips for users in 6 Indian languages?\r\n\r\n', 'Google', 'Microsoft', 'Apple', 'Facebook', 4, ''),
(5, 'Which of these tops in the Unified Payments Interface (UPI) payments with over 33% of the overall market share?', 'MobiKwik', 'Paytm', 'PhonePe', 'Google Pay', 2, ''),
(6, 'Google launched a new search engine for scientists, data journalists. It is called as', 'GenieKnows', 'Search Encrypt', 'Searchmedica', 'Dataset Search', 4, ''),
(7, '	\r\nWhich among the following rebranded as Google pay to offer Instant Bank Loans?', 'PayPal', 'Payoneer', 'Tez', 'PhonePay', 3, ''),
(8, 'Which app partners with IRCTC app Rail connect to facilitate convenient payments?', 'PayPal', 'PhonePe', 'Freecharge', 'Mobikwik', 2, ''),
(9, 'With which techonlogical giant Prasar Bharati join hands to telecast 2018 Independence Day programme live online?', 'Google', 'Twitter', 'Facebook', 'Instagram', 1, ''),
(10, 'Google has launched a new video-based Q&A app which allows people to answer questions about themselves, then share those answers directly on Google. The name of the app is', 'Lynda', 'Cameos', 'Duolingo', 'Photomath', 2, ''),
(11, 'Google launched the latest version of the Android operating system, It is names as;', 'Pie', 'Glosette', 'Bounty', 'Happy Hippo', 1, ''),
(12, 'The name of World\'s 1st Hindi-Speaking Robot is ', 'Jayanti', 'Rashmi', 'Shakshi', 'Khatoon', 2, ''),
(13, 'Recently, Flipkart and __________ launched a video advertisement platform', 'FreeCharge', 'Voot', 'Hotstar', 'BookMyShow', 3, ''),
(14, 'For which company, the European Union fined $5 Billion for abusing the dominance of its Android mobile operating system?', 'Samsung', 'Microsoft', 'Apple', 'Google', 4, ''),
(15, 'Which telecom operator unveils the internet telephony service \'Wings\'?', 'BSNL', 'Vodafone', 'Airtel', 'Reliance Jio', 1, ''),
(16, 'Which among the following becomes the first for blockchain technology?', 'Surat', 'Pune', 'Chennai', 'Hyderabad', 4, ''),
(17, '	\r\nThis country unveiles the worlds most powerful and smartest scientific supercomputer recently.', 'US', 'India', 'Singapore', 'China', 1, ''),
(18, 'India\'s largest national data centre to come up in _', 'Delhi', 'Bhopal', 'Pune', 'Lucknow', 2, ''),
(19, 'The Internet Intelligence Map is recently introduced by', 'Oracle', 'Google', 'Microsoft', 'IBM', 1, ''),
(20, ' 	\r\nIndia, China, US, Japan and __________ are the top 5 nations in producing e-waste as per the report of ASSOCHAM and NEC.', 'Germany', 'Norway', 'Italy', 'Russia', 1, ''),
(1, 'This firm launched a new swadeshi messaging application called \'Kimbho\' to compete with WhatsApp.', 'ITC', 'Emami', 'Hindustan Unilever', 'Patanjali', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `latest_tech_score`
--

CREATE TABLE `latest_tech_score` (
  `username` varchar(100) DEFAULT NULL,
  `attempted` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latest_tech_score`
--

INSERT INTO `latest_tech_score` (`username`, `attempted`, `score`) VALUES
('jineshforever', 0, 0),
('qwerty', 14, 3);

-- --------------------------------------------------------

--
-- Table structure for table `operating_system_questions`
--

CREATE TABLE `operating_system_questions` (
  `qid` int(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `ans` int(1) NOT NULL,
  `explanation` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operating_system_questions`
--

INSERT INTO `operating_system_questions` (`qid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `explanation`) VALUES
(2, 'What is operating system?', 'collection of programs that manages hardware resources', 'system service provider to the application programs', 'link to interface the hardware and application programs', 'all of the above', 4, ''),
(3, 'To access the services of operating system, the interface is provided by the', 'API', 'Library', 'System Calls', 'Assembly Instructions', 2, ''),
(4, 'Which one of the following error will be handle by the operating system?', 'power failure', 'lack of paper in printer', 'connection failure in the network', 'all of above', 4, ''),
(5, 'The main function of the command interpreter is', 'to get and execute the next user-specified command', 'to provide the interface between the API and application program', 'to handle the files in operating system', 'none', 1, ''),
(6, 'The systems which allows only one process execution at a time, are called', ' uniprogramming systems', 'uniprocessing systems', 'unitasking systems', 'none', 2, ''),
(7, 'In Unix, Which system call creates the new process?', 'fork', 'create', 'new', 'none', 1, ''),
(8, 'A process can be terminated due to', 'normal exit', 'fatal error', 'killed by other process', 'all above', 4, ''),
(9, 'What is the ready state of a process?', 'when process is scheduled to run after some execution', 'when process is unable to run until some task has been completed', 'when process is using the CPU', 'none', 1, ''),
(10, 'A process stack does not contain', 'function parameters', 'local variables', 'return address', 'PID of child process', 4, ''),
(11, 'Which system call returns the process identifier of a terminated child?', 'wait', 'exit', 'fork', 'get', 1, ''),
(12, 'The address of the next instruction to be executed by the current process is provided by the\r\n', 'CPU registers', 'Program counter', 'process stack', 'pipe', 2, ''),
(13, 'Which process can be affected by other processes executing in the system?', 'cooperating process', 'child process', 'parent process', 'init process', 1, ''),
(14, 'If a process is executing in its critical section, then no other processes can be executing in their critical section. This condition is called', 'mutual exclusion\r\n', 'critical exclusion\r\n', 'synchronous exclusion', 'asynchronous exclusion', 1, ''),
(15, 'Which one of the following is a synchronization tool?', 'thread', 'pipe', 'semaphore', 'socket', 3, ''),
(16, 'A semaphore is a shared integer variable', 'that can not drop below zero', '\r\nthat can not be more than zero\r\n', 'that can not drop below one', 'that can not be more than one', 1, ''),
(17, 'Mutual exclusion can be provided by the', 'mutex locks', 'binary semaphores\r\n', 'both mutex locks and binary semaphores', 'none of the mentioned', 3, ''),
(18, 'Process synchronization can be done on', 'hardware level', 'software level', 'both A and B', 'None', 3, ''),
(19, 'A monitor is a module that encapsulates', 'shared data structures\r\n', 'procedures that operate on shared data structure', 'synchronization between concurrent procedure invocation', 'all of the mentioned', 4, ''),
(20, 'What is the reusable resource?', ' that can be used by one process at a time and is not depleted by that use', '\r\nthat can be used by more than one process at a time', 'that can be shared between various threads', 'none of the mentioned', 1, ''),
(21, ' A system is in the safe state if', ' the system can allocate resources to each process in some order and still avoid a deadlock', 'there exist a safe sequence', 'all of the mentioned', 'none of the mentioned', 1, ''),
(1, 'CPU scheduling is the basis of ___________', 'multiprocessor systems\r\n', 'multiprogramming operating systems\r\n', 'larger memory sized systems\r\n', 'none of the mentioned', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `operating_system_score`
--

CREATE TABLE `operating_system_score` (
  `username` varchar(100) DEFAULT NULL,
  `attempted` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operating_system_score`
--

INSERT INTO `operating_system_score` (`username`, `attempted`, `score`) VALUES
('jineshforever', 4, 1),
('qwerty', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `polity_questions`
--

CREATE TABLE `polity_questions` (
  `qid` int(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `ans` int(1) NOT NULL,
  `explanation` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polity_questions`
--

INSERT INTO `polity_questions` (`qid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `explanation`) VALUES
(2, 'Who is the first citizen of India?', 'Prime Minister', 'President', 'Governor', 'Speaker of Loksabha', 2, 'Accrding to Indian constitution, President is the first citizen of country.'),
(3, 'Which of the following Statements is correct regarding the Election Commission of India?', 'It is an independent and statutory body', 'It consists of members having a tenure of six years', 'It acts as court for arbitration of disputes related to granting of recognition to political parties', 'Being all-India body,it is also concerned with elections of Gram Panchayats and State Muncipalities.', 2, 'It consists of members having a tenure of six years'),
(4, 'Which of the following Schedules of the Constitution of India has to be amended to provide for the formation of a new State ?', 'First Schedule', 'Second Schedule', 'Third Schedule', 'Ninth Schedule', 1, 'First Schedule'),
(5, 'The maximum strength of the House pictured by the Constitution of India is ?', '552', '545', '550', '540', 2, 'Under the current laws, the total strength of Lok Sabha is 545, which also includes two seats reserved for members of the Anglo-Indian community.'),
(6, 'Which among the following is the oldest High court?', 'Delhi High Court', 'Bombay High Court', 'Madras High Court', 'Calcutta High Court', 4, 'The Calcutta High Court was set up on July 1, 1862.'),
(7, 'Non- permanent member countries of UN Security Council are elected for a term of ?', ' 6 years', '5 years', '3 years', '2 years', 4, ''),
(8, 'Which one of the following non-government organizations has been working to address the problems of sanitation facing low-caste/class and low-income people in India?', 'Sulabh', ' Swaccha Bharat', ' Nirmal Bharat', ' Clean India', 1, 'Founded in 1970, Sulabh International Social Service Organization is a non-profit voluntary social organization. It was set up by Dr. Bindeshwar Pathak and dedicated to Gandhian ideology of emancipation of scavengers'),
(9, 'In which year was Mandal Commission report implemented?', '1989', '1990', '1991', '1992', 2, ''),
(10, 'There is no provision in the Constitution for the impeachment of the which officer?', 'Vice-President', 'President', 'MP', 'Governor', 1, ''),
(11, 'How many types of emergencies are envisaged by the Constitution?', '1', '2', '3', '4', 3, 'There are three types of emergency which can be proclaimed in India: National Emergency, State Emergency or Presidential Rule in state and Financial Emergency.'),
(12, 'Originally the Constitution recognised how many languages?', '20', '22', '14', '18', 3, ''),
(13, 'Who presided over the first meeting of the Indian Constitution Assembly?\r\n', 'Dr. Rajendra Prasad', 'Sachchidananda Sinha', 'B.R. Ambedkar', 'H.V. Kamath', 2, ''),
(14, 'The Constitution of India was completed on ____\r\n\r\n', 'February 11, 1948', 'November 26, 1949', 'January 26, 1950', 'Novenber 26, 1950', 2, ''),
(15, 'In Indian Polity which one is supreme?\r\n\r\n', 'The Supreme Court', 'The Constitution', 'Religion', 'The Parliament', 2, ''),
(16, '	\r\namong the following is the correct expression of the term ‘Secular’ in India?', 'India has many religions', 'Indians have religious freedom', 'To follow the religion depends upon the will of an individual', 'There is no religion of the State in India', 4, ''),
(17, '	\r\nHow many schedules the Constitution of India contains?\r\n\r\n', '9', '10', '11', '12', 4, ''),
(18, 'which Article of the Constitution of India can the President of India be impeached?', 'Article 61', 'Article 75', 'Article 76', 'Article 356', 1, ''),
(19, 'The number of Union Territories in India is ____\r\n\r\n', '5', '6', '9', '7', 4, ''),
(20, '	\r\nWhich of the following States is a member of the ‘Seven Sisters’?\r\n\r\n', 'West Bengal', 'Tripura', 'Orissa', 'Bihar', 2, ''),
(1, 'Among the following States, which one was formed last?\r\n\r\n', 'Andhra Pradesh', 'Gujarat', 'Karnataka', 'Punjab', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `polity_score`
--

CREATE TABLE `polity_score` (
  `username` varchar(100) DEFAULT NULL,
  `attempted` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polity_score`
--

INSERT INTO `polity_score` (`username`, `attempted`, `score`) VALUES
('jineshforever', 79, 27),
('qwerty', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `qno` int(11) DEFAULT NULL,
  `que` varchar(10000) NOT NULL,
  `opt1` varchar(10000) NOT NULL,
  `opt2` varchar(10000) NOT NULL,
  `opt3` varchar(10000) NOT NULL,
  `opt4` varchar(10000) NOT NULL,
  `ans` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`qno`, `que`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, 'What is the capital of Austraila?', 'Melbourne', 'Sydeny', 'Perth', 'Canbera', 4),
(2, 'How many states are there in USA?', '49', '50', '51', '52', 2),
(0, 'Which is the capital of Andhra Pradesh?', 'Hyderabad', 'Amaravati', 'Vijaywada', 'Cyberabad', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `address`) VALUES
('Pari', 'pari', 'pari'),
('parikshit', 'pskp', 'ke'),
('q', 'ewe', 'qwwe');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `userid` int(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobno` varchar(15) DEFAULT NULL,
  `collegename` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `dppath` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`userid`, `username`, `password`, `fname`, `lname`, `email`, `mobno`, `collegename`, `location`, `status`, `dppath`) VALUES
(6, 'jineshforever', 'qwerty', 'jinesh', 'nadar', 'jineshforever@gmail.com', '9876543210', 'wce', 'sangli', 1, 'uploads/sumant.jpg'),
(5, 'r', 'r', 'r', NULL, 'r@gmail.com', NULL, NULL, NULL, 1, NULL),
(7, 'qwerty', 'qwerty', 'qwerty', NULL, 'qwerty@gmail.com', NULL, NULL, NULL, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ca_questions`
--
ALTER TABLE `ca_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `ca_score`
--
ALTER TABLE `ca_score`
  ADD KEY `username` (`username`);

--
-- Indexes for table `cpp_questions`
--
ALTER TABLE `cpp_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `cpp_score`
--
ALTER TABLE `cpp_score`
  ADD KEY `username` (`username`);

--
-- Indexes for table `c_questions`
--
ALTER TABLE `c_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `ds_questions`
--
ALTER TABLE `ds_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `economics_questions`
--
ALTER TABLE `economics_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `general_science_questions`
--
ALTER TABLE `general_science_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `geography_questions`
--
ALTER TABLE `geography_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `history_questions`
--
ALTER TABLE `history_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `java_questions`
--
ALTER TABLE `java_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `latest_tech_questions`
--
ALTER TABLE `latest_tech_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `operating_system_questions`
--
ALTER TABLE `operating_system_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `polity_questions`
--
ALTER TABLE `polity_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ca_questions`
--
ALTER TABLE `ca_questions`
  MODIFY `qid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cpp_questions`
--
ALTER TABLE `cpp_questions`
  MODIFY `qid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `c_questions`
--
ALTER TABLE `c_questions`
  MODIFY `qid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ds_questions`
--
ALTER TABLE `ds_questions`
  MODIFY `qid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `economics_questions`
--
ALTER TABLE `economics_questions`
  MODIFY `qid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `general_science_questions`
--
ALTER TABLE `general_science_questions`
  MODIFY `qid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `geography_questions`
--
ALTER TABLE `geography_questions`
  MODIFY `qid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `history_questions`
--
ALTER TABLE `history_questions`
  MODIFY `qid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `java_questions`
--
ALTER TABLE `java_questions`
  MODIFY `qid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `latest_tech_questions`
--
ALTER TABLE `latest_tech_questions`
  MODIFY `qid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `operating_system_questions`
--
ALTER TABLE `operating_system_questions`
  MODIFY `qid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `polity_questions`
--
ALTER TABLE `polity_questions`
  MODIFY `qid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `userid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
