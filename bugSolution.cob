01  WS-AMOUNT PIC 9(5)V99 VALUE 0.00. 
01  WS-AMOUNT-EXT PIC 9(7)V99. 

     MOVE WS-AMOUNT TO WS-AMOUNT-EXT 
     ADD 1 TO WS-AMOUNT-EXT 
     IF WS-AMOUNT-EXT > 99999.99 THEN 
         DISPLAY "ERROR: AMOUNT EXCEEDS MAXIMUM VALUE" 
         MOVE 99999.99 TO WS-AMOUNT 
     ELSE 
         MOVE WS-AMOUNT-EXT TO WS-AMOUNT 
     END-IF.