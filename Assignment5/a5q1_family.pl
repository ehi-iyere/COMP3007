/*
Ebehiremen Iyere
101120396
*/

/*
male(X). % X is male
female(X). % X is female
father(X,Y). % X is the father of Y
mother(X,Y). % X is the mother of Y
married(X,Y). % X is married to Y
*/

%facts

male(john).
male(matt).
male(ryan).
male(ehis).
male(andrew).
male(derick).
male(tod).
male(ian).
male(daniel).
male(solomun).
male(frank).

female(mary).
female(debbie).
female(fiona).
female(monica).
female(tami).
female(amra).
female(osas).
female(sonia).
female(ramatu).
female(renad).
female(frankie).

father(andrew,renad).
father(frank,ian).
father(frank,debbie).
father(frank,fiona).
father(tod,frank).
father(matt,tami).
father(matt,solomun).
father(ehis,amra).
father(ehis,daniel).
father(daniel,ryan).

mother(monica,ian).
mother(monica,debbie).
mother(monica,fiona).
mother(mary,amra).
mother(mary,daniel).
mother(osas,tami).
mother(sonia,andrew).
mother(ramatu,renad).
mother(debbie,frankie).
mother(renad,derick).

married(frank,monica).
married(osas,matt).
married(ramatu,andrew).
married(ehis,mary).
married(tod,sonia).
married(ian,solomun).
married(daniel,fiona).

%rules

%parent(X,Y) - ture if X is the mother or father of Y

parent(X,Y):- mother(X,Y).
parent(X,Y):- father(X,Y).

%siblings(X,Y)  True if X and Y are siblings
%siblings are peopel who have the same parent 
siblings(X,Y):- parent(Who,X) , parent(Who,Y) , X \= Y.

%has_sister(X)  True if X has a sister
%X has a sister if they have a female sibling
has_sister(X):- siblings(X,Y),female(Y).

%has_brother(X)  True if X has a brother
%X has a brother if they have a male sibling
has_brother(X):- siblings(X,Y),male(Y).

%aunt(X,Y)  True if X is an aunt of Y (by lineage or by marriage)
%X is y'S Aunt if Y's parent is X's sister,or
%X is married to a sibling of Y's parent 
aunt(X,Y):- parent(Who,Y) ,siblings(X, Who),female(X). %by lineage 
aunt(X,Y):- parent(Who,Y) ,siblings(S, Who), married(X,S),female(X). %by marriage
aunt(X,Y):- parent(Who,Y) ,siblings(S, X), married(Who,S),female(X). %by marriage

%uncle(X,Y)  True if X is an uncle of Y (by lineage or by marriage)
%X is y'S uncle if Y's parent is X's brother,or
%X is married to a sibling of Y's parent 
uncle(X,Y):- parent(Who,Y), siblings(X, Who),male(X). %by lineage 
uncle(X,Y):- parent(Who,Y) ,siblings(S, Who), married(S,X),male(X). %by marriage
uncle(X,Y):- parent(Who,Y) ,siblings(S, X), married(Who,S),male(X).

%cousin(X,Y)  True if X and Y are cousins
%X and Y are cousin if their parentsaree siblings
cousin(X,Y):- parent(Who,X) , parent(Who1,Y), siblings(Who,Who1).
cousin(X,Y):- parent(Who,X) , parent(_,Y), aunt(Who,Y).
cousin(X,Y):- parent(Who,X) , parent(_,Y), uncle(Who,Y).


%grandfather(X,Y)  True if X is a grandfather of Y
%X is the grandfather of Y if X is the father of Ys parent
grandfather(X,Y):- parent(Who,Y), father(X,Who), male(X).

%grandmother(X,Y) True if X is a grandmother of Y
%X is the grandmother of Y if X is the mother of Ys parent
grandmother(X,Y):- parent(Who,Y), mother(X,Who), female(X).

%ancestor(X,Y)  True if X is an ancestor of Y
%note use recursion
%X is ancestor of Y if 
ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).

/*%Testing

?- ancestor(tod,frankie). %true
?- grandmother(monica, frankie). %true
?- cousin(ryan,frankie). %true
?- aunt(debbie,ryan). %true
?- uncle(daniel,frankie). %true
?- grandfather(tod,fiona). %true
?- has_sister(daniel). %true
?- uncle(solomun,frankie).

false test cases
?- ancestor(renad,ehis).
?- cousin(ehis,amra).
?- grandmother(frank, frankie). 
?- aunt(renad,derick). 
?- uncle(ian,daniel).
?- grandfather(tod,fiona). 
?- has_sister(amra). 

*/


