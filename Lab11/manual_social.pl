friend(ali, sara).
friend(sara, omar).
friend(sara, hina).
friend(omar, zain).
friend(ali, omar).
knows(X, Y) :- friend(X, Y) ; friend(Y, X).
may_know(X, Z) :- knows(X, Y), knows(Y, Z), X \== Z, \+ knows(X, Z).
without_self_guard(X, Z) :- knows(X, Y), knows(Y, Z), \+ knows(X, Z).
without_known_guard(X, Z) :- knows(X, Y), knows(Y, Z), X \== Z.
sibling(ali, hina).
sibling(hina, ali).
:- table connected_friend/2.
connected_friend(X, Y) :- knows(X, Y).
connected_friend(X, Z) :- connected_friend(X, Y), connected_friend(Y, Z).
