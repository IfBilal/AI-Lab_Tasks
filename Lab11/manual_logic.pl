person(ali). person(sara). person(omar). person(hina).
student(ali). student(sara). student(omar).
teacher(hina).
studies(ali). studies(sara). studies(omar).
likes(ali, ai). likes(sara, ml). likes(sara, ai).
cat(tom). cat(kitty). black(kitty).
income(ali, 80000). income(sara, 40000). income(omar, 90000).
defaulted(omar).
approve(C) :- income(C, I), I >= 50000, \+ defaulted(C).
order_total(o1, 30). order_total(o2, 75). order_total(o3, 120).
free_delivery(O) :- order_total(O, T), T > 50.
animal(X) :- cat(X).
