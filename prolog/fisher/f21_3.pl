conflict(Coloring) :- 
   adjacent(X,Y), 
   color(X,Color,Coloring), 
   color(Y,Color,Coloring). 