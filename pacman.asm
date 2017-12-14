org 8400h

jmp start

;可否进入区域17*17
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
;是否存在豆子17*17
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
;向右的吃豆人10*10
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
;向左的吃豆人10*10
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
;向上的吃豆人10*10
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
;向下的吃豆人10*10
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
;妖怪10*10
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
;游戏结束 92*14
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

;数字们 10*14
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
HeightStart dw 0;高度开始
HeightEnd dw 0;高度结束
WideStart dw 0;宽度开始
WideEnd dw 0;宽度结束
Point dw 0;豆子开始

Position dw 18;吃豆人的数组位置,[0,18]
PositionPointHeight dw 8000;吃豆人的物理位置高度开始
PositionPointWide dw 25;吃豆人的物理位置宽度开始
Direction db 0;当前吃豆人的朝向，0右，1左，2上，3下
KeyCode db 0;暂时存放键盘中断输入的值
Score dw 0;最多97分
lifes dw 3;生命

GhostPosition dw 270;妖怪的位置
GhostPositionPointHeight dw 52800;妖怪的物理位置高度开始
GhostPositionPointWide dw 165;妖怪的物理位置宽度开始

start:
;进入图形模式
mov al,0x13
mov ah,0x00
int 0x10
;-----------------------设置颜色表--------------------------
;黑色1
mov al,1
mov dx,0x3c8
out dx,al
;rgb颜色赋值
mov al,0;红
mov dx,0x3c9
out dx,al
mov al,0;绿
out dx,al
mov al,0;蓝
out dx,al

;白色2
mov al,2
mov dx,0x3c8
out dx,al
;rgb颜色赋值
mov al,255;红
mov dx,0x3c9
out dx,al
mov al,255;绿
out dx,al
mov al,255;蓝
out dx,al

;深灰色3
mov al,3
mov dx,0x3c8
out dx,al
;rgb颜色赋值
mov al,210;红
mov dx,0x3c9
out dx,al
mov al,210;绿
out dx,al
mov al,210;蓝
out dx,al

;浅灰色4
mov al,4
mov dx,0x3c8
out dx,al
;rgb颜色赋值
mov al,245;红
mov dx,0x3c9
out dx,al
mov al,245;绿
out dx,al
mov al,245;蓝
out dx,al

;红色5
mov al,5
mov dx,0x3c8
out dx,al
;rgb颜色赋值
mov al,255;红
mov dx,0x3c9
out dx,al
mov al,0;绿
out dx,al
mov al,0;蓝
out dx,al

;蓝色6
mov al,6
mov dx,0x3c8
out dx,al
;rgb颜色赋值
mov al,0;红
mov dx,0x3c9
out dx,al
mov al,0;绿
out dx,al
mov al,255;蓝
out dx,al

;黄色7
mov al,7
mov dx,0x3c8
out dx,al
;rgb颜色赋值
mov al,255;红
mov dx,0x3c9
out dx,al
mov al,255;绿
out dx,al
mov al,0;蓝
out dx,al

mov ax,0
mov ds,ax
cli;关闭中断
mov word [ds:0x24],intmkey
mov word [ds:0x26],0
sti;打开中断

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

;画空（黑）心矩形
drawRectangle:
;外围
mov dx,cs
mov ds,dx
mov si,HeightStart
mov dx,[ds:si]

mov bx,dx;高度起始，187行开始
mov ax,0a000h
mov es,ax
mov ah,6

drawRectanglestart1:
mov dx,cs
mov ds,dx
mov si,HeightEnd
mov dx,[ds:si]
cmp bx,dx;高度结束
ja drawRectangleout1
	mov dx,cs
	mov ds,dx
	mov si,WideStart
	mov dx,[ds:si]
	mov cx,dx;宽度起始
	mov dx,cs
	mov ds,dx
	mov si,WideEnd
	mov dx,[ds:si]
	drawRectanglestart2:cmp cx,dx;宽度结束
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

;内部
mov dx,cs
mov ds,dx
mov si,HeightStart
mov dx,[ds:si]
add dx,640

mov bx,dx;高度起始，187行开始
mov ax,0a000h
mov es,ax
mov ah,1

drawRectanglestart3:
mov dx,cs
mov ds,dx
mov si,HeightEnd
mov dx,[ds:si]
sub dx,640
cmp bx,dx;高度结束
ja drawRectangleout3
	mov dx,cs
	mov ds,dx
	mov si,WideStart
	mov dx,[ds:si]
	add dx,2
	mov cx,dx;宽度起始
	mov dx,cs
	mov ds,dx
	mov si,WideEnd
	mov dx,[ds:si]
	sub dx,2
	drawRectanglestart4:cmp cx,dx;宽度结束
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

;大外框
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

;框1
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

;框2
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

;框3
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

;框4
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

;框5
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
;框6
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

;框7
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
;--------------------------画点点---------------------------
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
;-------------------画豆子---------------------
drawbean:
mov dx,cs
mov ds,dx
mov si,PointEx;是否存在数组
mov bx,6400;高度开始
drawbeanstartH:
cmp bx,57600;高度结束
ja drawbeanoutH
	mov cx,20 ;宽度开始
	drewbeanstartW:
	cmp cx,180 ;宽度结束
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
;--------------------------画吃豆人---------------------------
drawPacMan:
push di
push ds
push si
push es

mov dx,cs
mov ds,dx
mov si,Direction;吃豆人方向
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
mov di,PacManRight;向右吃豆人图像矩阵
jmp drawPacManstart
drawPacManLeft:
mov di,PacManLeft;向左吃豆人图像矩阵
jmp drawPacManstart
drawPacManUp:
mov di,PacManUp;向上吃豆人图像矩阵
jmp drawPacManstart
drawPacManDown:
mov di,PacManDown;向下吃豆人图像矩阵
jmp drawPacManstart

drawPacManstart:
mov dx,cs
mov ds,dx
mov si,PositionPointHeight
mov bx,[ds:si];高度开始

mov ax,0a000h
mov es,ax
mov ah,7;黄色


drawPacManstartH:
mov dx,cs
mov ds,dx
mov si,PositionPointHeight
mov dx,[ds:si]
add dx,2880;高度结束
cmp bx,dx
ja drawPacManoutH
	mov dx,cs
	mov ds,dx
	mov si,PositionPointWide
	mov dx,[cs:si]
	mov cx,dx;宽度起始
	drawPacManstartW:
	mov dx,cs
	mov ds,dx
	mov si,PositionPointWide
	mov dx,[cs:si]
	add dx,9;宽度结束
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

;----------------------------键盘中断---------------------------
intmkey:
push dx
push ax
push es
push di
push ds

mov dx,0x20;中断已响应，让出优先级
mov al,0x61
out dx,al
mov dx,0x60;从键盘控制接收扫描码
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
;-------------------------改变吃豆人位置----------------------------
ChangePos:
mov ax,cs
mov ds,ax
mov di,KeyCode
mov al,[ds:di]

cmp al,1eh;a左
je changeLeft
cmp al,20h;d右
je changeRight
cmp al,11h;w上
je changeUp
cmp al,1fh;s下
je changeDown
jmp continue

;Position dw吃豆人的数组位置
;PositionPointHeight dw 吃豆人的物理位置高度开始
;PositionPointWide dw 吃豆人的物理位置宽度开始
;Direction;吃豆人朝向
;CanEnter;是否可进入区域
;PointEx;是否存在豆子
changeRight:
mov bx,cs;吃豆人朝向是一定要改的
mov ds,bx
mov di,Direction
mov bl,0
mov [ds:di],bl

mov bx,cs;取吃豆人数组位置
mov ds,bx
mov di,Position;
mov bx,[ds:di]

mov ax,cs
mov ds,ax
mov di,CanEnter
add di,bx;移动到吃豆人的当前数组位置对应的是否可进入区域数组位置
add di,1;将要去的数组位置
mov al,[ds:di]
cmp al,0;0就不能进入
je continue
;可以进入
mov ax,cs
mov ds,ax
mov si,Position;改变吃豆人数组位置
add bx,1
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,PositionPointWide;改变吃豆人水平位置
mov ax,[ds:di]
add ax,10
mov [ds:di],ax

mov ax,cs
mov ds,ax
mov di,PointEx;吃掉豆子
add di,bx
mov al,[ds:di]
cmp al,0
je continue
mov al,0;如果豆子存在，就吃掉它
mov [ds:di],al
;吃掉豆子分数++
mov ax,cs
mov ds,ax
mov di,Score
mov ax,[ds:di]
add ax,1
mov [ds:di],ax

jmp continue


changeLeft:
mov bx,cs;吃豆人朝向是一定要改的
mov ds,bx
mov di,Direction
mov bl,1
mov [ds:di],bl

mov bx,cs;取吃豆人数组位置
mov ds,bx
mov di,Position;
mov bx,[ds:di]

mov ax,cs
mov ds,ax
mov di,CanEnter
add di,bx;移动到吃豆人的当前数组位置对应的是否可进入区域数组位置
sub di,1;将要去的数组位置
mov al,[ds:di]
cmp al,0;0就不能进入
je continue
;可以进入
mov ax,cs
mov ds,ax
mov si,Position;改变吃豆人数组位置
sub bx,1
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,PositionPointWide;改变吃豆人水平位置
mov ax,[ds:di]
sub ax,10
mov [ds:di],ax

mov ax,cs
mov ds,ax
mov di,PointEx;吃掉豆子
add di,bx
mov al,[ds:di]
cmp al,0
je continue
mov al,0;如果豆子存在，就吃掉它
mov [ds:di],al
mov ax,cs
mov ds,ax
mov di,Score
mov ax,[ds:di]
add ax,1
mov [ds:di],ax

jmp continue

changeUp:
mov bx,cs;吃豆人朝向是一定要改的
mov ds,bx
mov di,Direction
mov bl,2
mov [ds:di],bl

mov bx,cs;取吃豆人数组位置
mov ds,bx
mov di,Position;
mov bx,[ds:di]

mov ax,cs
mov ds,ax
mov di,CanEnter
add di,bx;移动到吃豆人的当前数组位置对应的是否可进入区域数组位置
sub di,17;将要去的数组位置
mov al,[ds:di]
cmp al,0;0就不能进入
je continue
;可以进入
mov ax,cs
mov ds,ax
mov si,Position;改变吃豆人数组位置
sub bx,17
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,PositionPointHeight;改变吃豆人垂直位置
mov ax,[ds:di]
sub ax,3200
mov [ds:di],ax

mov ax,cs
mov ds,ax
mov di,PointEx;吃掉豆子
add di,bx
mov al,[ds:di]
cmp al,0
je continue
mov al,0;如果豆子存在，就吃掉它
mov [ds:di],al
mov ax,cs
mov ds,ax
mov di,Score
mov ax,[ds:di]
add ax,1
mov [ds:di],ax
jmp continue

changeDown:
mov bx,cs;吃豆人朝向是一定要改的
mov ds,bx
mov di,Direction
mov bl,3
mov [ds:di],bl

mov bx,cs;取吃豆人数组位置
mov ds,bx
mov di,Position;
mov bx,[ds:di]

mov ax,cs
mov ds,ax
mov di,CanEnter
add di,bx;移动到吃豆人的当前数组位置对应的是否可进入区域数组位置
add di,17;将要去的数组位置
mov al,[ds:di]
cmp al,0;0就不能进入
je continue
;可以进入
mov ax,cs
mov ds,ax
mov si,Position;改变吃豆人数组位置
add bx,17
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,PositionPointHeight;改变吃豆人垂直位置
mov ax,[ds:di]
add ax,3200
mov [ds:di],ax

mov ax,cs
mov ds,ax
mov di,PointEx;吃掉豆子
add di,bx
mov al,[ds:di]
cmp al,0
je continue
mov al,0;如果豆子存在，就吃掉它
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

;-----------------------------画妖怪--------------------------------
drawGhost:
push di
push ds
push si
push es

mov dx,cs
mov ds,dx
mov si,Position;吃豆人的数组位置
mov ax,[ds:si]
mov cl,17
div cl;al商，行；ah余数，列
mov bl,al
mov bh,ah

mov dx,cs
mov ds,dx
mov si,GhostPosition;妖怪的数组位置
mov ax,[ds:si]
mov cl,17
div cl;al商，行；ah余数，列

cmp bh,ah;
ja isRight;在右边
;否则向左监测是否能走
je isH
mov dx,cs
mov ds,dx
mov si,GhostPosition;妖怪的数组位置
mov cx,[ds:si]

mov dx,cs
mov ds,dx
mov di,CanEnter
add di,cx
sub di,1
mov cl,[ds:di]
cmp cl,0;左边不能走
je isH
;左边能走

mov ax,cs
mov ds,ax
mov si,GhostPosition;改变妖怪数组位置
mov bx,[ds:si]
sub bx,1
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,GhostPositionPointWide;改变妖怪水平位置
mov ax,[ds:di]
sub ax,10
mov [ds:di],ax
jmp Ghoststart

isRight:
mov dx,cs
mov ds,dx
mov si,GhostPosition;妖怪的数组位置
mov cx,[ds:si]

mov dx,cs
mov ds,dx
mov di,CanEnter
add di,cx
add di,1
mov cl,[ds:di]
cmp cl,0;右边不能走
je isH
;右边能走

mov ax,cs
mov ds,ax
mov si,GhostPosition;改变妖怪数组位置
mov bx,[ds:si]
add bx,1
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,GhostPositionPointWide;改变妖怪水平位置
mov ax,[ds:di]
add ax,10
mov [ds:di],ax
jmp Ghoststart

isH:;是垂直方向的吗
cmp bl,al
ja isDown
;否则监测是否能向上走
je Ghoststart
mov dx,cs
mov ds,dx
mov si,GhostPosition;妖怪的数组位置
mov cx,[ds:si]

mov dx,cs
mov ds,dx
mov di,CanEnter
add di,cx
sub di,17
mov cl,[ds:di]
cmp cl,0
je Ghoststart;不能走
;能向上走
mov ax,cs
mov ds,ax
mov si,GhostPosition;改变妖怪数组位置
mov bx,[ds:si]
sub bx,17
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,GhostPositionPointHeight;改变妖怪水平位置
mov ax,[ds:di]
sub ax,3200
mov [ds:di],ax
jmp Ghoststart

isDown:;检测是否能向下走
mov dx,cs
mov ds,dx
mov si,GhostPosition;妖怪的数组位置
mov cx,[ds:si]

mov dx,cs
mov ds,dx
mov di,CanEnter
add di,cx
add di,17
mov cl,[ds:di]
cmp cl,0
je Ghoststart;不能走
;能向下走
mov ax,cs
mov ds,ax
mov si,GhostPosition;改变妖怪数组位置
mov bx,[ds:si]
add bx,17
mov [ds:si],bx

mov ax,cs
mov ds,ax
mov di,GhostPositionPointHeight;改变妖怪水平位置
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
mov bx,[ds:si];高度开始

mov ax,0a000h
mov es,ax
mov ah,5;红色


drawGhoststartH:
mov dx,cs
mov ds,dx
mov si,GhostPositionPointHeight
mov dx,[ds:si]
add dx,2880;高度结束
cmp bx,dx
ja drawGhostoutH
	mov dx,cs
	mov ds,dx
	mov si,GhostPositionPointWide
	mov dx,[cs:si]
	mov cx,dx;宽度起始
	drawGhoststartW:
	mov dx,cs
	mov ds,dx
	mov si,GhostPositionPointWide
	mov dx,[cs:si]
	add dx,9;宽度结束
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
mov si,Position;吃豆人的数组位置
mov ax,[ds:si]
mov cl,17
div cl;al商，行；ah余数，列
mov bl,al
mov bh,ah

mov dx,cs
mov ds,dx
mov si,GhostPosition;妖怪的数组位置
mov ax,[ds:si]
mov cl,17
div cl;al商，行；ah余数，列

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
;GhostPosition dw 270;妖怪的位置
;GhostPositionPointHeight dw 52800;妖怪的物理位置高度开始
;GhostPositionPointWide dw 165;妖怪的物理位置宽度开始
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

Lost:;输了
mov di,KO
drawLoststart:

mov ax,0a000h
mov es,ax
mov ah,5;红色

mov bx,32000
drawLoststartH:
cmp bx,36480
jae drawLostoutH
	mov cx,200;宽度起始
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

;清屏
mov bx,25600
clearstartH33:
cmp bx,28480
ja clearoutH33
	mov cx,240;宽度起始
	clearstartW33:
	cmp cx,290
	ja 	clearoutW33
		mov si,bx
		add si,cx
		mov ah,1;黄色
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
mov si,Score;吃豆人的数组位置
mov ax,[ds:si]
mov cl,10
div cl;al商，十位数；ah余数，个位数

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
mov ah,2;白色

mov bx,25600
drawNumberstartH:
cmp bx,30080
jae drawNumberoutH
	mov cx,211;宽度起始
	drawNumberstartW:
	cmp cx,221
	jae drawNumberoutW
		mov dx,cs
		mov ds,dx
		mov dl,[ds:di]
		cmp dl,0
		je drawNumberBlack
		mov ah,2;白色
		jmp mdrawnumber
		drawNumberBlack:
		mov ah,1;黑色
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
mov si,Score;吃豆人的数组位置
mov ax,[ds:si]
mov cl,10
div cl;al商，十位数；ah余数，个位数

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
mov ah,2;白色

mov bx,25600
mdrawNumberstartH:
cmp bx,30080
jae mdrawNumberoutH
	mov cx,200;宽度起始
	mdrawNumberstartW:
	cmp cx,210
	jae mdrawNumberoutW
		mov dx,cs
		mov ds,dx
		mov dl,[ds:di]
		cmp dl,0
		je mdrawNumberBlack
		mov ah,2;白色
		jmp mmdrawnumber
		mdrawNumberBlack:
		mov ah,1;黑色
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
;清屏

mov bx,25600
clearstartH3:
cmp bx,28480
ja clearoutH3
	mov cx,240;宽度起始
	clearstartW3:
	cmp cx,290
	ja 	clearoutW3
		mov si,bx
		add si,cx
		mov ah,1;黄色
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

mov di,PacManRight;向右吃豆人图像矩阵
mov bx,25600;高度开始

;3
drawLifestartH3:
cmp bx,28480
ja drawLifeoutH3
	mov cx,280;宽度起始
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
		mov ah,7;黄色
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
mov di,PacManRight;向右吃豆人图像矩阵
mov bx,25600;高度开始

drawLifestartH2:
cmp bx,28480
ja drawLifeoutH2
	mov cx,260;宽度起始
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
		mov ah,7;黄色
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
mov di,PacManRight;向右吃豆人图像矩阵
mov bx,25600;高度开始

drawLifestartH1:
cmp bx,28480
ja drawLifeoutH1
	mov cx,240;宽度起始
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
		mov ah,7;黄色
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

