yacc -d yacc.y
echo " ---------------------------------------------------------------------------------------------"
echo "Compiled yacc.y sucessfully"
lex lex.l
echo " ---------------------------------------------------------------------------------------------"
echo "Compiled lex.l sucessfully"
gcc -o parser lex.yy.c y.tab.c -lfl
echo " ---------------------------------------------------------------------------------------------"
echo "Compiled parser sucessfully"
echo "Sucessful case"
./parser test.c
echo " ---------------------------------------------------------------------------------------------"
echo " test.c parsed sucessfully"
