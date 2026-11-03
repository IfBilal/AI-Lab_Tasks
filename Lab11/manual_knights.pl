both_knaves(A, B) :- A == knave, B == knave.
solve(A, B) :-
    member(A, [knight, knave]), member(B, [knight, knave]),
    (A == knight -> both_knaves(A, B) ; \+ both_knaves(A, B)).
at_least_one_knave(A, B) :- (A == knave ; B == knave).
solve_variant(A, B) :-
    member(A, [knight, knave]), member(B, [knight, knave]),
    (A == knight -> at_least_one_knave(A, B) ; \+ at_least_one_knave(A, B)).
