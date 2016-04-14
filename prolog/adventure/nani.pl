% lacations

room(kitchen).
room(office).
room(hall).
room('dining room').
room(cellar).

z :- room(M),write(M),nl,fail.