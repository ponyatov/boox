/* /block comment/
					Nani Search
*/

% locations /line comment/

room(kitchen).
room(office).
room(hall).
room('dining room').
room(cellar).

% doors

door(office, hall).
door(kitchen, office).
door(hall, 'dining room').
door(kitchen, cellar).
door('dining room', kitchen).

% things places

location(desk, office).
location(apple, kitchen).
location(flashlight, desk).
location('washing machine', cellar).
location(nani, 'washing machine').
location(broccoli, kitchen).
location(crackers, kitchen).
location(computer, office).

% edible items

edible(apple).
edible(crackers).

tastes_yucky(broccoli).

% initial state

here(kitchen).