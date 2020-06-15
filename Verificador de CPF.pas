Program VERIFICADOR_CPF ;
var cpf:string;  
vet: array[1..11] of integer;
A1,A2,Soma1, Soma2,B,cpf_int,erro:integer;
Begin    
   REPEAT
  	writeln('Digite seu CPF: ');
  	readln(CPF);
		if(cpf<>'0') Then
			 Begin
		  	for B:=1 to 11 do   
				Begin 
				val(cpf[b],cpf_int,erro);
				vet[B]:=cpf_int;
				End;
						soma1:=(vet[1]*10)+(vet[2]*9)+(vet[3]*8)+(vet[4]*7)+(vet[5]*6)+(vet[6]*5)+(vet[7]*4)+(vet[8]*3)+(vet[9]*2);
			      A1:= 11 -( soma1 mod 11);
        		If (A1 = 10) or (A1=11) then
    			  A1:=0;
	          soma2:= (Vet[1]*11)+(Vet[2]*10)+(vet[3]*9)+(vet[4]*8)+(vet[5]*7)+(vet[6]*6)+(vet[7]*5)+(vet[8]*4)+(vet[9]*3)+(A1*2);
        		A2:= 11- (Soma2 mod 11);
				    if (A2=10) or (A2=11) then
						A2:=0;
					  If (Vet[10] =A1) and (Vet[11] = A2) Then
							 Begin
								WriteLn('CPF VALIDO');
								WriteLn(Vet[1],Vet[2],Vet[3],'.',vet[4],vet[5],vet[6],'.',vet[7],vet[8],vet[9],'-',vet[10],vet[11]);
							 End
						    Else
							  WriteLn('CPF INVALIDO');
						    End
						    	Until cpf= '0';
						  End.
