:- dynamic male/1, female/1, parent/2.
male(ali). male(ahmed). male(omar).
male(usman). male(hamza). male(zain).
female(fatima). female(sara). female(hina). female(ayesha).
parent(ali, ahmed). parent(fatima, ahmed).
parent(ali, sara). parent(fatima, sara).
parent(ahmed, usman). parent(hina, usman).
parent(ahmed, ayesha). parent(hina, ayesha).
parent(omar, hamza). parent(sara, hamza).
parent(omar, zain). parent(sara, zain).
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
sibling(X, Y) :- parent(P, X), parent(P, Y), X \== Y.
brother(X, Y) :- male(X), sibling(X, Y).
sister(X, Y) :- female(X), sibling(X, Y).
