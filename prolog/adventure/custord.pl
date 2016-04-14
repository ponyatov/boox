/* customer order entry application */

% customer(name,city,credit_rating)

customer(ivanov,moscow,a).
customer(petrov,spb,b).
customer(sidorov,samara,bomj).

% sell item(id,name,reorder_point)

item(1,spoon,2).
item(2,fork,11).
item(33,'КР142ЕН5А',3).

% stock(id,amount)

stock(1,11).
stock(2,22).
stock(33,0).
