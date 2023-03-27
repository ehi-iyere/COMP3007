/*
Ebehiremen Iyere
101120396

*/

%returns a random number R between A and B
random_int(A, B, R) :-
    integer(A), integer(B), %checking that A and B are Iintergers
    B >= A,
    R is A+random((B+1)-A). %using random/1 to caluate a random number bwtween A and B



%returs a list R with values ranging from A to B
range(A,A,[A]). %base case 
range(A,B,[A|X]):-
    A<B,
    C is A+1,
    range(C,B,X). %recursive case where C is the next value, B is the limit and X is the list

%removes the nth item from a list and returns a new list and the removed element
remove_nth(0,[H|T],H,T). %base case; in this case the first elemnt of the list is the target; 
remove_nth(M,[H|T],X,[H|B]):-
    M>=0,
    N is M-1,
    remove_nth(N,T,X,B). %recursive case; 



select-help(0,L,L).
select-help(M,L,R):-
    M>=0,
    I is M-1,
    remove_nth(M,L,X,B),
    select-help(I,B,[X|R]).

%selects random N elements and retruns a new list with those elements
select_random(0,[H|_],[H]). %base case 

select_random(N,L,R):-
    length(L,C),
    M is 0+random((C+1)-C),
    N < C,
    N >= 0,
    I is N-1,
    not(I = -1),
    remove_nth(M,L,X,B), % using the remove_nth predicate to find the element we would like to remove
   select_random(I,B,[X|R]). %recursive case

%select_random(0,L,L).

%lotto that returns a list of 7 unique random integers from the range [1,50] in sorted order.
lotto(L):-
    
    lotto([],7,L). 
    
lotto(L,-1,R):- sort(L,R). % base case, where all items have been careated, then the list can be sorted

lotto(L,N,F):-
    N>=0,
    M is N-1,
    random_int(1,50,R), %use of the random function to generate the elements
    lotto([R|L],M,F). %tail-end recursive case 
    
                                        /*TESTING

?- random_int(1,20,R).
%R = 7.

?- range(-15,-20,L).
%false.

?- range(-20,-16,L).
%L = [-20, -19, -18, -17, -16] 

?- remove_nth(0,[1,2,3,4,5,a,f,r],A,B).
%A = 1,
%B = [2, 3, 4, 5, a, f, r] 

?- lotto(L).
%L = [13, 16, 23, 26, 35, 36, 43, 50] .
*/
