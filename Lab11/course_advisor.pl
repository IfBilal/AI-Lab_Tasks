:- dynamic completed/2, prerequisite/2.
completed(student1, programming).
completed(student1, database).
completed(student2, programming).
completed(student3, mathematics).
prerequisite(data_science, programming).
prerequisite(data_science, mathematics).
prerequisite(artificial_intelligence, programming).
prerequisite(artificial_intelligence, mathematics).
prerequisite(web_engineering, programming).
student(S) :- setof(X, C^completed(X, C), Students), member(S, Students).
course(C) :- setof(X, P^prerequisite(X, P), Courses), member(C, Courses).
has_completed_prerequisite(Student, Course) :- completed(Student, Course).
eligible(Student, Course) :-
    student(Student), course(Course),
    forall(prerequisite(Course, Required),
           has_completed_prerequisite(Student, Required)).
