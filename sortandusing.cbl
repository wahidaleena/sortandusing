IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO.

ENVIRONMENT DIVISION.
   INPUT-OUTPUT SECTION.
   FILE-CONTROL.
      SELECT INFILE ASSIGN TO INN.
      SELECT OUTFILE ASSIGN TO OUT.
      SELECT WORK ASSIGN TO WRK.

DATA DIVISION.
   FILE SECTION.
   FD INFILE.
      01 INPUT-STUDENT.
         05 STUDENT-ID-I PIC 9(5).
         05 STUDENT-NAME-I PIC A(25).
   FD OUTFILE.
      01 OUTPUT-STUDENT.
         05 STUDENT-ID-O PIC 9(5).
         05 STUDENT-NAME-O PIC A(25).
   SD WORK.
      01 WORK-STUDENT.
         05 STUDENT-ID-W PIC 9(5).
         05 STUDENT-NAME-W PIC A(25).

PROCEDURE DIVISION.
   SORT WORK ON ASCENDING KEY STUDENT-ID-O
   USING INFILE GIVING OUTFILE.
   DISPLAY 'Sort Successful'.
STOP RUN.
