/*
Ebehiremen Iyere
101120396

*/

% list/1 returns true if a certain X is a list

list(X):-
    X = [_|_]. 

%treeFlat/2 takes in a list T and returns a flattened version of T

treeFlat([], []). %base case; the list is empty


treeFlat([L|Ls], FlatL) :-
    list([L|Ls]),
    treeFlat(L, NewL),
    treeFlat(Ls, NewLs),
    append(NewL, NewLs, FlatL).

treeFlat(L, [L]). %the case that L is not a list


append([], L, L). %helper function to combine 2 list into one.; base case
append([H|T], L, [H|R]) :-
    append(T, L, R).

%treeSum/2 takes in a tree L and returns the sum of its elements
treeSum(L,S) :- 
    treeFlat(L,R),
    treeSum(R,0,S).
treeSum([],X,X). %base case
treeSum([H|T], X, Y) :- integer(H),A is X + H, treeSum(T,A,Y). %tail-end recursion

%treeSmush/2 in a tree T as argument and returns a tree in which any two adjacent sublists have been merged into one sublist.
treeSmush([[]], []).% base case


treeSmush([L|Ls], FlatL) :-
    list(L),
    treeFlat(L,NewL),
    %treeFlat(Ls, NewLs),
   
    treeSmush(Ls,NewLs),
    append(NewL,NewLs, FlatL).
    
    %treeSmush(Ls, FlatL)

treeSmush(L, L). %when L is not a list

/* TSESTING

?- list(1).
%false.

?- list([a]).
%true.

?- treeFlat([1,[2,3],[[4,6]]],[1,2,3,4,5,6]).
%false.

?- treeFlat([1,[2,3],[[4,[],[12,[a]]]]],L).
%L = [1, 2, 3, 4, 12, a]

?- treeSum([1,[2,3],[[4,[],[12,[a]]]]],L).
%false.

?- treeSum([1,[2,3],[[4,[],[12,[-22]]]]],L).
%L = 0 

?- treeSmush([[a],[b],c,[d]], R).
%R = [a, b, c, [d]]
*/



