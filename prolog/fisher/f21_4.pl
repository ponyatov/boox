conflict(R1,R2,Coloring) :- 
   adjacent(R1,R2), 
   color(R1,Color,Coloring), 
   color(R2,Color,Coloring). 