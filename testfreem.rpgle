**free                                                     
dcl-f tetstpf2 extdesc('KZHANG/TESTPF2') extfile(*extdesc);
dcl-s demofield char(10);                                  
                                                           
read QLIDOBJD;                                             
dow not %eof;                                              
    demofield = ODOBNM;                                    
    dsply demofield;                                       
    read QLIDOBJD;                                         
enddo;                                                     
                                                           
return;                                                    