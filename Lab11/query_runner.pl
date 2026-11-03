:- initialization(main, main).
main([File|Queries]) :-
    consult(File), maplist(show_query, Queries).
show_query(Text) :-
    format('?- ~w~n', [Text]),
    read_term_from_atom(Text, Goal, [variable_names(Vars)]),
    findall(Vars, Goal, Answers),
    ( Answers == [] -> writeln('false.')
    ; Vars == [] -> writeln('true.')
    ; maplist(show_answer, Answers)
    ), nl.
show_answer(Vars) :-
    write_term(Vars, [quoted(true)]), writeln('.').
