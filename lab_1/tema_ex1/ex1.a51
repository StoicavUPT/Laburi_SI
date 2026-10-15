		ORG 0h
START:	mov DPTR,#1000h
		movx A,@DPTR
		cjne A,#41h,next0
next0:	jc next1
		clr C
		subb A,#37h
		sjmp EXIT
next1:	clr C
		subb A,#30h
		sjmp EXIT
EXIT:	mov DPTR,#1001h
		movx @DPTR,A
		sjmp $
		end