?- ['2_2.pl'].           /* 1. Загрузка программы из локального файла */  
yes  
?- listing(factorial/2). /* 2. Вывод листинга программы на экран */  
  
factorial(0,1).
  
factorial(A,B) :-  
           A > 0, 
           C is A-1,
           factorial(C,D),
           B is A*D. 
yes
  
?- factorial(10,What).     /* 3. Вычислить 10! (в переменную) */
What=3628800
 
?- ['2_7.pl'].            /* 4. Загрузить другую программу */

?- listing(takeout).
  
takeout(A,[A|B],B).
takeout(A,[B|C],[B|D]) :-
          takeout(A,C,D).
yes

?- takeout(X,[1,2,3,4],Y).  /* 5. Взять X из списка [1,2,3,4] */
X=1  Y=[2,3,4] ;              Prolog ждет ... нужно ввести ';' и Enter
X=2  Y=[1,3,4] ;               again ...  
X=3  Y=[1,2,4] ;               again ...
X=4  Y=[1,2,3] ;               again ...
no                             Means: No more answers.

?- takeout(X,[1,2,3,4],_), X>3.  /* 6.  Conjunction of goals */
X=4 ;
no

?- halt.                         /* 7. Return to OS */