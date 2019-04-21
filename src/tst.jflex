import java.util.*; 
%%
%public 
%type Void


%{
//############################ [ Java code Starts ] ##########################	

	ArrayList<String> tokenized= new ArrayList<String>();
	
//############################ [ Java code Ends ] ############################	

%}
//############################ [ ReGex Definition Starts ] ############################	
keyword			    =	    int | float | double | short | unsigned | char | signed | bool | long |‌ const | static |‌true | false | while | for | switch | case | break | if | using | namespace | void | inline | do | default | continue | typename | typeid | new | this | else | asm | throw | operator | enum | auto | explicit | private | protected | export | extern | catch | try | public | typedef | register | reinterpret_cast | class | for | return | union | friend | const_cast | goto | sizeof | virtual | delete | static_cast | volatile | struct | wchar_t | mutable | dynamic_cast | template | And | bitor| not_eq| xor | and_eq	| compl | or | xor_eq | bitand | not | or_eq | include
/////////////
//string 				=		"^[a-zA-Z]"
///////////////					
identifier		    =	    [a-zA-Z_]
///////////////
integers			=		\d+
scientific     		=	 	\d+e\d+
decimalNumbers		=	 	\d+.\d+
hexadecimal	    	=		0[xX][0-9a-fA-F]+
///////////////
sign1			    =	    "#"
sign2			    =	    "+"
sign3			    =	    "-"
sign4               =       "/"
sign5               =       "*"
sign6               =       "%"
sign7               =       "++"
sign8               =       "--"
sign9               =       "=="
sign10              =       "!="
sign11              =       ">"
sign12              =       "<"
sign13              =       ">="
sign14              =       "<="
sign15              =       "&&"
sign16              =       "||"
sign17              =       "!"
sign18              =       "&"
sign19              =       "|"
sign20              =       "^"
sign21              =       "~"
sign22              =       "<<"
sign23              =       ">>"
sign24              =       "="
sign25              =       "+="
sign26              =       "-+"
sign27              =       "*="
sign28              =       "/="
sign29              =       "%="
sign30              =       "<<="
sign31              =       ">>="
sign32              =       "&="
sign33              =       "^=" 
sign34              =       "|="
sign35              =       "?"
sign36              =       ":"
sign37              =       ","
sign38              =       "."
sign39              =       "->"
sign40              =       "::"
sign41              =       "["
sign42              =       "]"
sign43              =       "("
sign44              =       ")"
sign45              =       "{"
sign46              =       "}"
sign47              =       ";"
sign48              =       \"
///////////////
newline			    =	    \r|\n|\r\n
//////////////
comments			=		\/\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+\/
fotlComment			=		\/\/.*
//############################ [ ReGex Definition Ends ] ############################	
%%
//############################ [ Keywords Starts ] ##########################
{keyword}+				{ tokenized.add( "{" + yytext() + ", keyword } \n" ); }
//############################ [ Keywords Ends ] ############################


//{string}				{tokenized.add( "{" + yytext() + ", String } \n" ); }


//############################ [ Identifier Starts ] ##########################
{identifier}+			{ tokenized.add( "{" + yytext() + ", identifier } \n" ); }
//############################ [ Identifier Ends ] ############################


//############################ [ Numbers Starts ] ##########################
{ integers }			{ tokenized.add( "{" + yytext() + ", number } \n" ); }
{ scientific }			{ tokenized.add( "{" + yytext() + ", number } \n" ); }
{ decimalNumbers }		{ tokenized.add( "{" + yytext() + ", number } \n" ); }
{ hexadecimal }			{ tokenized.add( "{" + yytext() + ", number } \n" ); }
//############################ [ Numbers Ends ] ############################

	   
//############################ [ Signs Starts ] ##########################
{ sign1 }               { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign2 }               { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign3 }               { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign4 }               { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign5 }               { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign6 }               { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign7 }               { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign8 }               { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign9 }               { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign10 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign11 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign12 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign13 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign14 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign15 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign16 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign17 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign18 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign19 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign20 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign21 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign22 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign23 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign24 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign25 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign26 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign27 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign28 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign29 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign30 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign31 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign32 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign33 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign34 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign35 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign36 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign37 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign38 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign39 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign40 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign41 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign42 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign43 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign44 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign45 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign46 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign47 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
{ sign48 }              { tokenized.add( "{" + yytext() + ", token } \n" ); }
//############################ [ Signs Starts ] ##########################

//############################ [ DO NOTIHNG Starts ] ##########################	
{ newline }+		{ /* Do Nothing*/ }
{ comments }		{ /* Do Nothing*/ }
{ fotlComment }		{ /* Do Nothing*/ }
.					{ /* Do Nothing*/ }
//############################ [ DO NOTIHNG Ends ] ############################	

