org 8400h

jmp start

;�ɷ��������17*17
CanEnter db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		 db 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
		 db 0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0
		 db 0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0
		 db 0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0
		 db 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
		 db 0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,1,0
		 db 0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,1,0
		 db 0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,1,0
		 db 0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,1,0
		 db 0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,1,0
		 db 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
		 db 0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0
		 db 0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0
		 db 0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0
		 db 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
		 db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;�Ƿ���ڶ���17*17
PointEx  db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		 db 0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
		 db 0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0
		 db 0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0
		 db 0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0
		 db 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
		 db 0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,1,0
		 db 0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,1,0
		 db 0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,1,0
		 db 0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,1,0
		 db 0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,1,0
		 db 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
		 db 0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0
		 db 0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0
		 db 0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0
		 db 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
		 db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;���ҵĳԶ���10*10
PacManRight db 0,0,0,0,1,1,0,0,0,0
	   		db 0,0,1,1,1,1,1,1,0,0
	   		db 0,1,1,1,1,1,1,1,1,0
	   		db 0,1,1,1,1,1,1,1,0,0
	   		db 1,1,1,1,1,1,0,0,0,0
	  	    db 1,1,1,1,1,0,0,0,0,0
	   		db 0,1,1,1,1,1,1,1,1,0
	   		db 0,1,1,1,1,1,1,1,1,0
	   		db 0,0,1,1,1,1,1,1,0,0
	   		db 0,0,0,0,1,1,0,0,0,0
;����ĳԶ���10*10
PacManLeft  db 0,0,0,0,1,1,0,0,0,0
	   		db 0,0,1,1,1,1,1,1,0,0
	   		db 0,1,1,1,1,1,1,1,1,0
	   		db 0,0,1,1,1,1,1,1,1,0
	   		db 0,0,0,0,1,1,1,1,1,1
	  	    db 0,0,0,0,0,1,1,1,1,1
	   		db 0,1,1,1,1,1,1,1,1,0
	   		db 0,1,1,1,1,1,1,1,1,0
	   		db 0,0,1,1,1,1,1,1,0,0
	   		db 0,0,0,0,1,1,0,0,0,0
;���ϵĳԶ���10*10
PacManUp    db 0,0,0,0,0,0,0,0,0,0
	   		db 0,0,1,0,0,0,1,1,0,0
	   		db 0,1,1,1,0,0,1,1,1,0
	   		db 0,1,1,1,0,0,1,1,1,0
	   		db 1,1,1,1,1,0,1,1,1,1
	  	    db 1,1,1,1,1,1,1,1,1,1
	   		db 0,1,1,1,1,1,1,1,1,0
	   		db 0,1,1,1,1,1,1,1,1,0
	   		db 0,0,1,1,1,1,1,1,0,0
	   		db 0,0,0,0,1,1,0,0,0,0
;���µĳԶ���10*10
PacManDown  db 0,0,0,0,1,1,0,0,0,0
	   		db 0,0,1,1,1,1,1,1,0,0
	   		db 0,1,1,1,1,1,1,1,1,0
	   		db 0,1,1,1,1,1,1,1,1,0
	   		db 1,1,1,1,1,1,1,1,1,1
	  	    db 1,1,1,1,0,1,1,1,1,1
	   		db 0,1,1,1,0,0,1,1,1,0
	   		db 0,1,1,1,0,0,1,1,1,0
	   		db 0,0,1,1,0,0,0,1,0,0
	   		db 0,0,0,0,0,0,0,0,0,0
;����10*10
Ghost       db 0,0,0,0,1,1,0,0,0,0
			db 0,0,0,1,1,1,1,0,0,0
			db 0,0,1,1,1,1,1,1,0,0
			db 0,0,1,1,1,1,1,1,0,0
			db 0,0,1,1,1,1,1,1,0,0
			db 0,0,1,1,1,1,1,1,0,0
			db 0,1,1,1,1,1,1,1,1,0
			db 0,1,0,1,1,0,1,0,1,0
			db 1,1,0,1,1,0,1,0,1,1
			db 1,1,0,1,1,0,1,0,1,1
;��Ϸ���� 92*14
KO db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
   db 0,0,0,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,0,0,0,1,1,1,0,0,0,1,1,1,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,1,1,1,0,0,0,0,0,1,1,0,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,0,0,
   db 0,0,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,0,0,0,1,1,1,0,0,0,1,1,1,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,1,1,1,0,0,0,0,1,1,1,0,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,0,
   db 0,0,1,1,0,0,0,1,1,0,0,0,0,0,1,1,1,1,0,0,0,1,1,1,0,0,0,1,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,1,1,1,0,0,1,1,1,0,0,0,1,1,1,0,1,1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,1,1,0,
   db 0,1,1,1,0,0,0,1,1,0,0,0,0,0,1,1,1,1,0,0,0,1,1,1,1,0,0,1,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,1,1,1,0,0,0,1,1,1,0,1,1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,
   db 0,1,1,1,0,0,0,1,1,0,0,0,0,1,1,0,1,1,1,0,0,1,1,1,1,0,0,1,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,1,1,1,0,0,1,1,1,1,0,1,1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,
   db 0,1,1,1,0,0,0,0,0,0,0,0,0,1,1,0,1,1,1,0,0,1,1,1,1,0,1,1,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,1,1,1,0,0,1,1,1,0,0,1,1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,1,1,0,
   db 0,1,1,1,0,0,0,0,0,0,0,0,0,1,1,0,1,1,1,0,0,1,1,1,1,0,1,1,1,1,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,1,1,0,0,1,1,1,0,0,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,0,
   db 0,1,1,1,0,1,1,1,1,1,0,0,1,1,1,0,0,1,1,1,0,1,1,0,1,0,1,1,1,1,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,1,1,0,0,1,1,1,0,0,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,0,0,
   db 0,1,1,1,0,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,0,1,1,0,1,1,1,1,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,1,1,0,1,1,1,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1,0,0,1,1,1,0,0,
   db 0,1,1,1,0,0,0,1,1,1,0,0,1,1,1,1,1,1,1,1,0,1,1,0,1,1,1,0,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,1,1,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1,0,0,0,1,1,0,0,
   db 0,1,1,1,0,0,0,1,1,1,0,1,1,1,1,0,0,1,1,1,0,1,1,0,1,1,1,0,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,1,1,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1,0,0,0,1,1,0,0,
   db 0,1,1,1,0,0,0,1,1,1,0,1,1,1,0,0,0,0,1,1,0,1,1,0,1,1,1,0,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,1,1,1,0,0,0,0,1,1,1,1,1,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,1,1,0,
   db 0,0,1,1,1,1,1,1,1,1,0,1,1,1,0,0,0,0,1,1,0,1,1,0,0,1,1,0,1,1,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,0,0,1,1,0,0,0,0,1,1,0,
   db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,

;������ 10*14
Number0 db 0,0,0,0,0,0,0,0,0,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,0,0,0,0,0,0,0,0,0,
		
Number1 db 0,0,0,0,0,0,0,0,0,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,0,0,0,
		
Number2 db 0,0,0,0,0,0,0,0,0,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,0,0,0,0,0,0,0,
		db 0,1,1,0,0,0,0,0,0,0,
		db 0,1,1,0,0,0,0,0,0,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,0,0,0,0,0,0,0,0,0,

Number3 db 0,0,0,0,0,0,0,0,0,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,0,0,0,0,0,0,0,0,0,

Number4 db 0,0,0,0,0,0,0,0,0,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,0,0,0,

Number5 db 0,0,0,0,0,0,0,0,0,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,0,0,0,0,0,0,0,
		db 0,1,1,0,0,0,0,0,0,0,
		db 0,1,1,0,0,0,0,0,0,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,0,0,0,0,0,0,0,0,0,
		
Number6 db 0,0,0,0,0,0,0,0,0,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,0,0,0,0,0,0,0,
		db 0,1,1,0,0,0,0,0,0,0,
		db 0,1,1,0,0,0,0,0,0,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,0,0,0,0,0,0,0,0,0,
		
Number7 db 0,0,0,0,0,0,0,0,0,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,0,0,0,
		
Number8 db 0,0,0,0,0,0,0,0,0,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,0,0,0,0,0,0,0,0,0,
		
Number9 db 0,0,0,0,0,0,0,0,0,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,0,0,0,0,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,0,0,0,0,0,0,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,1,1,1,1,1,1,1,1,0,
		db 0,0,0,0,0,0,0,0,0,0,
HeightStart dw 0;�߶ȿ�ʼ
HeightEnd dw 0;�߶Ƚ���
WideStart dw 0;��ȿ�ʼ
WideEnd dw 0;��Ƚ���
Point dw 0;���ӿ�ʼ

Position dw 18;�Զ��˵�����λ��,[0,18]
PositionPointHeight dw 8000;�Զ��˵�����λ�ø߶ȿ�ʼ
PositionPointWide dw 25;�Զ��˵�����λ�ÿ�ȿ�ʼ
Direction db 0;��ǰ�Զ��˵ĳ���0�ң�1��2�ϣ�3��
KeyCode db 0;��ʱ��ż����ж������ֵ
Score dw 0;���97��
lifes dw 3;����

GhostPosition dw 270;���ֵ�λ��
GhostPositionPointHeight dw 52800;���ֵ�����λ�ø߶ȿ�ʼ
GhostPositionPointWide dw 165;���ֵ�����λ�ÿ�ȿ�ʼ

start:
;����ͼ��ģʽ
mov al,0x13
mov ah,0x00
int 0x10
;-----------------------������ɫ��--------------------------
;��ɫ1
mov al,1
mov dx,0x3c8
out dx,al
;rgb��ɫ��ֵ
mov al,0;��
mov dx,0x3c9
out dx,al
mov al,0;��
out dx,al
mov al,0;��
out dx,al

;��ɫ2
mov al,2
mov dx,0x3c8
out dx,al
;rgb��ɫ��ֵ
mov al,255;��
mov dx,0x3c9
out dx,al
mov al,255;��
out dx,al
mov al,255;��
out dx,al

;���ɫ3
mov al,3
mov dx,0x3c8
out dx,al
;rgb��ɫ��ֵ
mov al,210;��
mov dx,0x3c9
out dx,al
mov al,210;��
out dx,al
mov al,210;��
out dx,al

;ǳ��ɫ4
mov al,4
mov dx,0x3c8
out dx,al
;rgb��ɫ��ֵ
mov al,245;��
mov dx,0x3c9
out dx,al
mov al,245;��
out dx,al
mov al,245;��
out dx,al

;��ɫ5
mov al,5
mov dx,0x3c8
out dx,al
;rgb��ɫ��ֵ
mov al,255;��
mov dx,0x3c9
out dx,al
mov al,0;��
out dx,al
mov al,0;��
out dx,al

;��ɫ6
mov al,6
mov dx,0x3c8
out dx,al
;rgb��ɫ��ֵ
mov al,0;��
mov dx,0x3c9
out dx,al
mov al,0;��
out dx,al
mov al,255;��
out dx,al

;��ɫ7
mov al,7
mov dx,0x3c8
out dx,al
;rgb��ɫ��ֵ
mov al,255;��
mov dx,0x3c9
out dx,al
mov al,255;��
out dx,al
mov al,0;��
out dx,al

mov ax,0
mov ds,ax
cli;�ر��ж�
mov word [ds:0x24],intmkey
mov word [ds:0x26],0
sti;���ж�

initmap:
call drawwall
call ChangePos
call drawbean
call drawPacMan
call drawGhost
call drawNumber
call result
call drawLife



call delay
jmp initmap
;jmp $

delay:
mov ax,0

startdelayA:
cmp ax,5000
ja outdelayA
	mov bx,0
	startdelayB:
	cmp bx,500
	ja outdelayB
		nop
		add bx,1
	jmp startdelayB
	outdelayB:
	add ax,1
jmp startdelayA
outdelayA:
ret

;���գ��ڣ��ľ���
drawRectangle:
;��Χ
mov dx,cs
mov ds,dx
mov si,HeightStart
mov dx,[ds:si]

mov bx,dx;�߶���ʼ��187�п�ʼ
mov ax,0a000h
mov es,ax
mov ah,6

drawRectanglestart1:
mov dx,cs
mov ds,dx
mov si,HeightEnd
mov dx,[ds:si]
cmp bx,dx;�߶Ƚ���
ja drawRectangleout1
	mov dx,cs
	mov ds,dx
	mov si,WideStart
	mov dx,[ds:si]
	mov cx,dx;�����ʼ
	mov dx,cs
	mov ds,dx
	mov si,WideEnd
	mov dx,[ds:si]
	drawRectanglestart2:cmp cx,dx;��Ƚ���
	ja drawRectangleout2
		mov di,cx
		add di,bx
		mov [es:di],ah
		add cx,1
	jmp drawRectanglestart2
	drawRectangleout2:
	add bx,320
jmp drawRectanglestart1
drawRectangleout1:

;�ڲ�
mov dx,cs
mov ds,dx
mov si,HeightStart
mov dx,[ds:si]
add dx,640

mov bx,dx;�߶���ʼ��187�п�ʼ
mov ax,0a000h
mov es,ax
mov ah,1

drawRectanglestart3:
mov dx,cs
mov ds,dx
mov si,HeightEnd
mov dx,[ds:si]
sub dx,640
cmp bx,dx;�߶Ƚ���
ja drawRectangleout3
	mov dx,cs
	mov ds,dx
	mov si,WideStart
	mov dx,[ds:si]
	add dx,2
	mov cx,dx;�����ʼ
	mov dx,cs
	mov ds,dx
	mov si,WideEnd
	mov dx,[ds:si]
	sub dx,2
	drawRectanglestart4:cmp cx,dx;��Ƚ���
	ja drawRectangleout4
		mov di,cx
		add di,bx
		mov [es:di],ah
		add cx,1
	jmp drawRectanglestart4
	drawRectangleout4:
	add bx,320
jmp drawRectanglestart3
drawRectangleout3:

ret


drawwall:

;�����
mov dx,cs
mov ds,dx
mov si,HeightStart
mov dx,6400
mov [ds:si],dx
mov si,HeightEnd
mov dx,57600
mov [ds:si],dx
mov si,WideStart
mov dx,20
mov [ds:si],dx
mov si,WideEnd
mov dx,180
mov [ds:si],dx
call drawRectangle

;��1
mov dx,cs
mov ds,dx
mov si,HeightStart
mov dx,12800
mov [ds:si],dx
mov si,HeightEnd
mov dx,19200
mov [ds:si],dx
mov si,WideStart
mov dx,40
mov [ds:si],dx
mov si,WideEnd
mov dx,80
mov [ds:si],dx
call drawRectangle

;��2
mov dx,cs
mov ds,dx
mov si,HeightStart
mov dx,12800
mov [ds:si],dx
mov si,HeightEnd
mov dx,19200
mov [ds:si],dx
mov si,WideStart
mov dx,100
mov [ds:si],dx
mov si,WideEnd
mov dx,160
mov [ds:si],dx
call drawRectangle

;��3
mov dx,cs
mov ds,dx
mov si,HeightStart
mov dx,25600
mov [ds:si],dx
mov si,HeightEnd
mov dx,38400
mov [ds:si],dx
mov si,WideStart
mov dx,40
mov [ds:si],dx
mov si,WideEnd
mov dx,60
mov [ds:si],dx
call drawRectangle

;��4
mov dx,cs
mov ds,dx
mov si,HeightStart
mov dx,25600
mov [ds:si],dx
mov si,HeightEnd
mov dx,38400
mov [ds:si],dx
mov si,WideStart
mov dx,80
mov [ds:si],dx
mov si,WideEnd
mov dx,120
mov [ds:si],dx
call drawRectangle

;��5
mov dx,cs
mov ds,dx
mov si,HeightStart
mov dx,25600
mov [ds:si],dx
mov si,HeightEnd
mov dx,38400
mov [ds:si],dx
mov si,WideStart
mov dx,140
mov [ds:si],dx
mov si,WideEnd
mov dx,160
mov [ds:si],dx
call drawRectangle
;��6
mov dx,cs
mov ds,dx
mov si,HeightStart
mov dx,44800
mov [ds:si],dx
mov si,HeightEnd
mov dx,51200
mov [ds:si],dx
mov si,WideStart
mov dx,40
mov [ds:si],dx
mov si,WideEnd
mov dx,100
mov [ds:si],dx
call drawRectangle

;��7
mov dx,cs
mov ds,dx
mov si,HeightStart
mov dx,44800
mov [ds:si],dx
mov si,HeightEnd
mov dx,51200
mov [ds:si],dx
mov si,WideStart
mov dx,120
mov [ds:si],dx
mov si,WideEnd
mov dx,160
mov [ds:si],dx
call drawRectangle

ret
;--------------------------�����---------------------------
drawpoint:
push si
mov ax,0a000h
mov es,ax
mov ah,7

mov dx,cs
mov ds,dx
mov si,Point
mov dx,[ds:si]

mov di,dx
mov [es:di],ah
add dx,1
mov di,dx
mov [es:di],ah
add dx,319
mov di,dx
mov [es:di],ah
add dx,1
mov di,dx
mov [es:di],ah
pop si
ret
;-------------------������---------------------
drawbean:
mov dx,cs
mov ds,dx
mov si,PointEx;�Ƿ��������
mov bx,6400;�߶ȿ�ʼ
drawbeanstartH:
cmp bx,57600;�߶Ƚ���
ja drawbeanoutH
	mov cx,20 ;��ȿ�ʼ
	drewbeanstartW:
	cmp cx,180 ;��Ƚ���
	ja drewbeanoutW
		mov al,[ds:si]
		cmp al,0
		je drewbeancmpout
		mov ax,bx
		add ax,cx
		mov dx,cs
		mov es,dx
		mov di,Point
		mov [es:di],ax
		
		call drawpoint
		drewbeancmpout:
		add si,1
		add cx,10
	jmp drewbeanstartW 
	drewbeanoutW:
	add bx,3200
jmp drawbeanstartH
drawbeanoutH:

ret
;--------------------------���Զ���---------------------------
drawPacMan:
push di
push ds
push si
push es

mov dx,cs
mov ds,dx
mov si,Direction;�Զ��˷���
mov dl,[ds:si];
cmp dl,0
je drawPacManRight
cmp dl,1
je drawPacManLeft
cmp dl,2
je drawPacManUp
cmp dl,3
je drawPacManDown

drawPacManRight:
mov di,PacManRight;���ҳԶ���ͼ�����
jmp drawPacManstart
drawPacManLeft:
mov di,PacManLeft;����Զ���ͼ�����
jmp drawPacManstart
drawPacManUp:
mov di,PacManUp;���ϳԶ���ͼ�����
jmp drawPacManstart
drawPacManDown:
mov di,PacManDown;���³Զ���ͼ�����
jmp drawPacManstart

drawPacManstart:
mov dx,cs
mov ds,dx
mov si,PositionPointHeight
mov bx,[ds:si];�߶ȿ�ʼ

mov ax,0a000h
mov es,ax
mov ah,7;��ɫ


drawPacManstartH:
mov dx,cs
mov ds,dx
mov si,PositionPointHeight
mov dx,[ds:si]
add dx,2880;�߶Ƚ���
cmp bx,dx
ja drawPacManoutH
	mov dx,cs
	mov ds,dx
	mov si,PositionPointWide
	mov dx,[cs:si]
	mov cx,dx;�����ʼ
	drawPacManstartW:
	mov dx,cs
	mov ds,dx
	mov si,PositionPointWide
	mov dx,[cs:si]
	add dx,9;��Ƚ���
	cmp cx,dx
	ja 	drawPacManoutW
		mov dx,cs
		mov ds,dx
		mov dl,[ds:di]
		cmp dl,0
		je NotdrawPacMan
		mov si,bx
		add si,cx
		mov [es:si],ah
		NotdrawPacMan:
		add di,1;
		add cx,1;
	jmp drawPacManstartW
	drawPacManoutW:
	add bx,320
jmp drawPacManstartH
drawPacManoutH:
pop es
pop si
pop ds
pop di
ret

;----------------------------�����ж�---------------------------
intmkey:
push dx
push ax
push es
push di
push ds

mov dx,0x20;�ж�����Ӧ���ó����ȼ�
mov al,0x61
out dx,al
mov dx,0x60;�Ӽ��̿��ƽ���ɨ����
;in al,dx
mov ax,cs
mov ds,ax
mov di,KeyCode
in al,dx
mov [ds:di],al

pop ds
pop di
pop es
pop ax
pop dx

;call ChangePos
iret
;-------------------------�ı�Զ���λ��----------------------------
ChangePos:
mov ax,cs
mov ds,ax
mov di,KeyCode
mov al,[ds:di]

cmp al,1eh;a��
je changeLeft
cmp al,20h;d��
je changeRight
cmp al,11h;w��
je changeUp
cmp al,1fh;s��
je changeDown
jmp continue

;Position dw�Զ��˵�����λ��
;PositionPointHeight dw �Զ��˵�����λ�ø߶ȿ�ʼ
;PositionPointWide dw �Զ��˵�����λ�ÿ�ȿ�ʼ
;Direction;�Զ��˳���
;CanEnter;�Ƿ�ɽ�������
;PointEx;�Ƿ���ڶ���
changeRight:
mov bx,cs;�Զ��˳�����һ��Ҫ�ĵ�
mov ds,bx
mov di,Direction
mov bl,0
mov [ds:di],bl

mov bx,cs;ȡ�Զ�������λ��
mov ds,bx
mov di,Position;
mov bx,[ds:di]

mov ax,cs
mov ds,ax
mov di,CanEnter
add di,bx;�ƶ����Զ��˵ĵ�ǰ����λ�ö�Ӧ���Ƿ�ɽ�����������λ��
add di,1;��Ҫȥ������λ��
mov al,[ds:di]
cmp al,0;0�Ͳ��ܽ���
je continue
;���Խ���
mov ax,cs
mov ds,ax
mov si,Position;�ı�Զ�������λ��
add bx,1
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,PositionPointWide;�ı�Զ���ˮƽλ��
mov ax,[ds:di]
add ax,10
mov [ds:di],ax

mov ax,cs
mov ds,ax
mov di,PointEx;�Ե�����
add di,bx
mov al,[ds:di]
cmp al,0
je continue
mov al,0;������Ӵ��ڣ��ͳԵ���
mov [ds:di],al
;�Ե����ӷ���++
mov ax,cs
mov ds,ax
mov di,Score
mov ax,[ds:di]
add ax,1
mov [ds:di],ax

jmp continue


changeLeft:
mov bx,cs;�Զ��˳�����һ��Ҫ�ĵ�
mov ds,bx
mov di,Direction
mov bl,1
mov [ds:di],bl

mov bx,cs;ȡ�Զ�������λ��
mov ds,bx
mov di,Position;
mov bx,[ds:di]

mov ax,cs
mov ds,ax
mov di,CanEnter
add di,bx;�ƶ����Զ��˵ĵ�ǰ����λ�ö�Ӧ���Ƿ�ɽ�����������λ��
sub di,1;��Ҫȥ������λ��
mov al,[ds:di]
cmp al,0;0�Ͳ��ܽ���
je continue
;���Խ���
mov ax,cs
mov ds,ax
mov si,Position;�ı�Զ�������λ��
sub bx,1
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,PositionPointWide;�ı�Զ���ˮƽλ��
mov ax,[ds:di]
sub ax,10
mov [ds:di],ax

mov ax,cs
mov ds,ax
mov di,PointEx;�Ե�����
add di,bx
mov al,[ds:di]
cmp al,0
je continue
mov al,0;������Ӵ��ڣ��ͳԵ���
mov [ds:di],al
mov ax,cs
mov ds,ax
mov di,Score
mov ax,[ds:di]
add ax,1
mov [ds:di],ax

jmp continue

changeUp:
mov bx,cs;�Զ��˳�����һ��Ҫ�ĵ�
mov ds,bx
mov di,Direction
mov bl,2
mov [ds:di],bl

mov bx,cs;ȡ�Զ�������λ��
mov ds,bx
mov di,Position;
mov bx,[ds:di]

mov ax,cs
mov ds,ax
mov di,CanEnter
add di,bx;�ƶ����Զ��˵ĵ�ǰ����λ�ö�Ӧ���Ƿ�ɽ�����������λ��
sub di,17;��Ҫȥ������λ��
mov al,[ds:di]
cmp al,0;0�Ͳ��ܽ���
je continue
;���Խ���
mov ax,cs
mov ds,ax
mov si,Position;�ı�Զ�������λ��
sub bx,17
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,PositionPointHeight;�ı�Զ��˴�ֱλ��
mov ax,[ds:di]
sub ax,3200
mov [ds:di],ax

mov ax,cs
mov ds,ax
mov di,PointEx;�Ե�����
add di,bx
mov al,[ds:di]
cmp al,0
je continue
mov al,0;������Ӵ��ڣ��ͳԵ���
mov [ds:di],al
mov ax,cs
mov ds,ax
mov di,Score
mov ax,[ds:di]
add ax,1
mov [ds:di],ax
jmp continue

changeDown:
mov bx,cs;�Զ��˳�����һ��Ҫ�ĵ�
mov ds,bx
mov di,Direction
mov bl,3
mov [ds:di],bl

mov bx,cs;ȡ�Զ�������λ��
mov ds,bx
mov di,Position;
mov bx,[ds:di]

mov ax,cs
mov ds,ax
mov di,CanEnter
add di,bx;�ƶ����Զ��˵ĵ�ǰ����λ�ö�Ӧ���Ƿ�ɽ�����������λ��
add di,17;��Ҫȥ������λ��
mov al,[ds:di]
cmp al,0;0�Ͳ��ܽ���
je continue
;���Խ���
mov ax,cs
mov ds,ax
mov si,Position;�ı�Զ�������λ��
add bx,17
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,PositionPointHeight;�ı�Զ��˴�ֱλ��
mov ax,[ds:di]
add ax,3200
mov [ds:di],ax

mov ax,cs
mov ds,ax
mov di,PointEx;�Ե�����
add di,bx
mov al,[ds:di]
cmp al,0
je continue
mov al,0;������Ӵ��ڣ��ͳԵ���
mov [ds:di],al
mov ax,cs
mov ds,ax
mov di,Score
mov ax,[ds:di]
add ax,1
mov [ds:di],ax
jmp continue

continue:
mov ax,cs
mov ds,ax
mov di,KeyCode
mov al,0
mov [ds:di],al

ret

;-----------------------------������--------------------------------
drawGhost:
push di
push ds
push si
push es

mov dx,cs
mov ds,dx
mov si,Position;�Զ��˵�����λ��
mov ax,[ds:si]
mov cl,17
div cl;al�̣��У�ah��������
mov bl,al
mov bh,ah

mov dx,cs
mov ds,dx
mov si,GhostPosition;���ֵ�����λ��
mov ax,[ds:si]
mov cl,17
div cl;al�̣��У�ah��������

cmp bh,ah;
ja isRight;���ұ�
;�����������Ƿ�����
je isH
mov dx,cs
mov ds,dx
mov si,GhostPosition;���ֵ�����λ��
mov cx,[ds:si]

mov dx,cs
mov ds,dx
mov di,CanEnter
add di,cx
sub di,1
mov cl,[ds:di]
cmp cl,0;��߲�����
je isH
;�������

mov ax,cs
mov ds,ax
mov si,GhostPosition;�ı���������λ��
mov bx,[ds:si]
sub bx,1
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,GhostPositionPointWide;�ı�����ˮƽλ��
mov ax,[ds:di]
sub ax,10
mov [ds:di],ax
jmp Ghoststart

isRight:
mov dx,cs
mov ds,dx
mov si,GhostPosition;���ֵ�����λ��
mov cx,[ds:si]

mov dx,cs
mov ds,dx
mov di,CanEnter
add di,cx
add di,1
mov cl,[ds:di]
cmp cl,0;�ұ߲�����
je isH
;�ұ�����

mov ax,cs
mov ds,ax
mov si,GhostPosition;�ı���������λ��
mov bx,[ds:si]
add bx,1
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,GhostPositionPointWide;�ı�����ˮƽλ��
mov ax,[ds:di]
add ax,10
mov [ds:di],ax
jmp Ghoststart

isH:;�Ǵ�ֱ�������
cmp bl,al
ja isDown
;�������Ƿ���������
je Ghoststart
mov dx,cs
mov ds,dx
mov si,GhostPosition;���ֵ�����λ��
mov cx,[ds:si]

mov dx,cs
mov ds,dx
mov di,CanEnter
add di,cx
sub di,17
mov cl,[ds:di]
cmp cl,0
je Ghoststart;������
;��������
mov ax,cs
mov ds,ax
mov si,GhostPosition;�ı���������λ��
mov bx,[ds:si]
sub bx,17
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,GhostPositionPointHeight;�ı�����ˮƽλ��
mov ax,[ds:di]
sub ax,3200
mov [ds:di],ax
jmp Ghoststart

isDown:;����Ƿ���������
mov dx,cs
mov ds,dx
mov si,GhostPosition;���ֵ�����λ��
mov cx,[ds:si]

mov dx,cs
mov ds,dx
mov di,CanEnter
add di,cx
add di,17
mov cl,[ds:di]
cmp cl,0
je Ghoststart;������
;��������
mov ax,cs
mov ds,ax
mov si,GhostPosition;�ı���������λ��
mov bx,[ds:si]
add bx,17
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,GhostPositionPointHeight;�ı�����ˮƽλ��
mov ax,[ds:di]
add ax,3200
mov [ds:di],ax
jmp Ghoststart

Ghoststart:
mov di,Ghost
drawGhoststart:
mov dx,cs
mov ds,dx
mov si,GhostPositionPointHeight
mov bx,[ds:si];�߶ȿ�ʼ

mov ax,0a000h
mov es,ax
mov ah,5;��ɫ


drawGhoststartH:
mov dx,cs
mov ds,dx
mov si,GhostPositionPointHeight
mov dx,[ds:si]
add dx,2880;�߶Ƚ���
cmp bx,dx
ja drawGhostoutH
	mov dx,cs
	mov ds,dx
	mov si,GhostPositionPointWide
	mov dx,[cs:si]
	mov cx,dx;�����ʼ
	drawGhoststartW:
	mov dx,cs
	mov ds,dx
	mov si,GhostPositionPointWide
	mov dx,[cs:si]
	add dx,9;��Ƚ���
	cmp cx,dx
	ja 	drawGhostoutW
		mov dx,cs
		mov ds,dx
		mov dl,[ds:di]
		cmp dl,0
		je NotdrawGhost
		mov si,bx
		add si,cx
		mov [es:si],ah
		NotdrawGhost:
		add di,1;
		add cx,1;
	jmp drawGhoststartW
	drawGhostoutW:
	add bx,320
jmp drawGhoststartH
drawGhostoutH:
pop es
pop si
pop ds
pop di

ret

result:

mov dx,cs
mov ds,dx
mov si,Position;�Զ��˵�����λ��
mov ax,[ds:si]
mov cl,17
div cl;al�̣��У�ah��������
mov bl,al
mov bh,ah

mov dx,cs
mov ds,dx
mov si,GhostPosition;���ֵ�����λ��
mov ax,[ds:si]
mov cl,17
div cl;al�̣��У�ah��������

cmp bh,ah
je checkH
ret
checkH:
cmp bl,al
je lostOneLife
ret

lostOneLife:
mov ax,cs
mov ds,ax
mov di,lifes
mov ax,[ds:di]
sub ax,1
mov [ds:di],ax
cmp ax,0
je Lost
;al>0
;GhostPosition dw 270;���ֵ�λ��
;GhostPositionPointHeight dw 52800;���ֵ�����λ�ø߶ȿ�ʼ
;GhostPositionPointWide dw 165;���ֵ�����λ�ÿ�ȿ�ʼ
mov ax,cs
mov ds,ax
mov di,GhostPosition 
mov ax,270
mov [ds:di],ax
mov di,GhostPositionPointHeight 
mov ax,52800
mov [ds:di],ax
mov di,GhostPositionPointWide 
mov ax,165
mov [ds:di],ax
jmp notlost

Lost:;����
mov di,KO
drawLoststart:

mov ax,0a000h
mov es,ax
mov ah,5;��ɫ

mov bx,32000
drawLoststartH:
cmp bx,36480
jae drawLostoutH
	mov cx,200;�����ʼ
	drawLoststartW:
	cmp cx,292
	jae drawLostoutW
		mov dx,cs
		mov ds,dx
		mov dl,[ds:di]
		cmp dl,0
		je NotdrawLost
		mov si,bx
		add si,cx
		mov [es:si],ah
		NotdrawLost:
		add di,1;
		add cx,1;
	jmp drawLoststartW
	drawLostoutW:
	add bx,320
jmp drawLoststartH
drawLostoutH:

;����
mov bx,25600
clearstartH33:
cmp bx,28480
ja clearoutH33
	mov cx,240;�����ʼ
	clearstartW33:
	cmp cx,290
	ja 	clearoutW33
		mov si,bx
		add si,cx
		mov ah,1;��ɫ
		mov [es:si],ah
		add di,1;
		add cx,1;
	jmp clearstartW33
	clearoutW33:
	add bx,320
jmp clearstartH33
clearoutH33:

jmp $

notlost:
ret

drawNumber:

mov dx,cs
mov ds,dx
mov si,Score;�Զ��˵�����λ��
mov ax,[ds:si]
mov cl,10
div cl;al�̣�ʮλ����ah��������λ��

cmp ah,0
je draw0
cmp ah,1
je draw1
cmp ah,2
je draw2
cmp ah,3
je draw3
cmp ah,4
je draw4
cmp ah,5
je draw5
cmp ah,6
je draw6
cmp ah,7
je draw7
cmp ah,8
je draw8
cmp ah,9
je draw9

draw0:
mov di,Number0
jmp drawNumberstart
draw1:
mov di,Number1
jmp drawNumberstart
draw2:
mov di,Number2
jmp drawNumberstart
draw3:
mov di,Number3
jmp drawNumberstart
draw4:
mov di,Number4
jmp drawNumberstart
draw5:
mov di,Number5
jmp drawNumberstart
draw6:
mov di,Number6
jmp drawNumberstart
draw7:
mov di,Number7
jmp drawNumberstart
draw8:
mov di,Number8
jmp drawNumberstart
draw9:
mov di,Number9
jmp drawNumberstart


drawNumberstart:

mov bx,0a000h
mov es,bx
mov ah,2;��ɫ

mov bx,25600
drawNumberstartH:
cmp bx,30080
jae drawNumberoutH
	mov cx,211;�����ʼ
	drawNumberstartW:
	cmp cx,221
	jae drawNumberoutW
		mov dx,cs
		mov ds,dx
		mov dl,[ds:di]
		cmp dl,0
		je drawNumberBlack
		mov ah,2;��ɫ
		jmp mdrawnumber
		drawNumberBlack:
		mov ah,1;��ɫ
		mdrawnumber:
		mov si,bx
		add si,cx
		mov [es:si],ah
		add di,1;
		add cx,1;
	jmp drawNumberstartW
	drawNumberoutW:
	add bx,320
jmp drawNumberstartH
drawNumberoutH:


mov dx,cs
mov ds,dx
mov si,Score;�Զ��˵�����λ��
mov ax,[ds:si]
mov cl,10
div cl;al�̣�ʮλ����ah��������λ��

cmp al,0
je mdraw0
cmp al,1
je mdraw1
cmp al,2
je mdraw2
cmp al,3
je mdraw3
cmp al,4
je mdraw4
cmp al,5
je mdraw5
cmp al,6
je mdraw6
cmp al,7
je mdraw7
cmp al,8
je mdraw8
cmp al,9
je mdraw9

mdraw0:
mov di,Number0
jmp mdrawNumberstart
mdraw1:
mov di,Number1
jmp mdrawNumberstart
mdraw2:
mov di,Number2
jmp mdrawNumberstart
mdraw3:
mov di,Number3
jmp mdrawNumberstart
mdraw4:
mov di,Number4
jmp mdrawNumberstart
mdraw5:
mov di,Number5
jmp mdrawNumberstart
mdraw6:
mov di,Number6
jmp mdrawNumberstart
mdraw7:
mov di,Number7
jmp mdrawNumberstart
mdraw8:
mov di,Number8
jmp mdrawNumberstart
mdraw9:
mov di,Number9
jmp mdrawNumberstart


mdrawNumberstart:

mov bx,0a000h
mov es,bx
mov ah,2;��ɫ

mov bx,25600
mdrawNumberstartH:
cmp bx,30080
jae mdrawNumberoutH
	mov cx,200;�����ʼ
	mdrawNumberstartW:
	cmp cx,210
	jae mdrawNumberoutW
		mov dx,cs
		mov ds,dx
		mov dl,[ds:di]
		cmp dl,0
		je mdrawNumberBlack
		mov ah,2;��ɫ
		jmp mmdrawnumber
		mdrawNumberBlack:
		mov ah,1;��ɫ
		mmdrawnumber:
		mov si,bx
		add si,cx
		mov [es:si],ah
		add di,1;
		add cx,1;
	jmp mdrawNumberstartW
	mdrawNumberoutW:
	add bx,320
jmp mdrawNumberstartH
mdrawNumberoutH:

ret


drawLife:
mov ax,0a000h
mov es,ax
;����

mov bx,25600
clearstartH3:
cmp bx,28480
ja clearoutH3
	mov cx,240;�����ʼ
	clearstartW3:
	cmp cx,290
	ja 	clearoutW3
		mov si,bx
		add si,cx
		mov ah,1;��ɫ
		mov [es:si],ah
		add di,1;
		add cx,1;
	jmp clearstartW3
	clearoutW3:
	add bx,320
jmp clearstartH3
clearoutH3:

mov ax,cs
mov ds,ax
mov di,lifes
mov ax,[ds:di]
cmp ax,0
je drawLifeoutH1
cmp ax,1
je drawLifeoutH2
cmp ax,2
je drawLifeoutH3
cmp ax,3
je drawLifestartH33
jmp drawLifeoutH1

drawLifestartH33:

mov di,PacManRight;���ҳԶ���ͼ�����
mov bx,25600;�߶ȿ�ʼ

;3
drawLifestartH3:
cmp bx,28480
ja drawLifeoutH3
	mov cx,280;�����ʼ
	drawLifestartW3:
	cmp cx,289
	ja 	drawLifeoutW3
		mov dx,cs
		mov ds,dx
		mov dl,[ds:di]
		cmp dl,0
		je NotdrawLife3
		mov si,bx
		add si,cx
		mov ah,7;��ɫ
		mov [es:si],ah
		NotdrawLife3:
		add di,1;
		add cx,1;
	jmp drawLifestartW3
	drawLifeoutW3:
	add bx,320
jmp drawLifestartH3
drawLifeoutH3:

;2
mov di,PacManRight;���ҳԶ���ͼ�����
mov bx,25600;�߶ȿ�ʼ

drawLifestartH2:
cmp bx,28480
ja drawLifeoutH2
	mov cx,260;�����ʼ
	drawLifestartW2:
	cmp cx,269
	ja 	drawLifeoutW2
		mov dx,cs
		mov ds,dx
		mov dl,[ds:di]
		cmp dl,0
		je NotdrawLife2
		mov si,bx
		add si,cx
		mov ah,7;��ɫ
		mov [es:si],ah
		NotdrawLife2:
		add di,1;
		add cx,1;
	jmp drawLifestartW2
	drawLifeoutW2:
	add bx,320
jmp drawLifestartH2
drawLifeoutH2:

;1
mov di,PacManRight;���ҳԶ���ͼ�����
mov bx,25600;�߶ȿ�ʼ

drawLifestartH1:
cmp bx,28480
ja drawLifeoutH1
	mov cx,240;�����ʼ
	drawLifestartW1:
	cmp cx,249
	ja 	drawLifeoutW1
		mov dx,cs
		mov ds,dx
		mov dl,[ds:di]
		cmp dl,0
		je NotdrawLife1
		mov si,bx
		add si,cx
		mov ah,7;��ɫ
		mov [es:si],ah
		NotdrawLife1:
		add di,1;
		add cx,1;
	jmp drawLifestartW1
	drawLifeoutW1:
	add bx,320
jmp drawLifestartH1
drawLifeoutH1:

;0
ret

