/*
Ebehiremen Iyere
101120396

*/

%player(name(First,Last),team(City),pos(Position),stats(Goals,Assists,Shots))
player(name(alex,ovechkin),team(was),pos(lw),stats(51,38,338)).
player(name(marcus,pettersson),team(pit),pos(d),stats(2,23,87)).
player(name(kevin,fiala),team(min),pos(lw),stats(13,26,174)).
player(name(ryan,hartman),team(min),pos(rw),stats(12,14,145)).
player(name(leon,driasaitl),team(edm),pos(c),stats(50,55,231)).
player(name(john,tavares),team(tor),pos(c),stats(47,41,286)).
player(name(steven,stamkos),team(tb),pos(c),stats(45,53,234)).
player(name(nikita,kucherov),team(tb),pos(rw),stats(41,87,246)).
player(name(nathan,mackinnon),team(col),pos(c),stats(41,58,365)).
player(name(alex,debrincat),team(chi),pos(rw),stats(41,35,220)).
player(name(jake,guentzel),team(pit),pos(lw),stats(40,36,227)).
player(name(jeff,skinner),team(buf),pos(lw),stats(40,23,268)).
player(name(mark,scheifele),team(wpg),pos(c),stats(38,46,199)).
player(name(johnny,gaudreau),team(cgy),pos(lw),stats(36,63,245)).
player(name(mike,hoffman),team(fla),pos(lw),stats(36,34,253)).
player(name(aleksander,barkov),team(fla),pos(c),stats(35,61,206)).
player(name(morgan,rielly),team(tor),pos(d),stats(20,52,223)).
player(name(brent,burns),team(sj),pos(d),stats(16,67,300)).
player(name(patrick,kane),team(chi),pos(rw),stats(44,66,341)).

%quaries
/*
%On what team does Ryan Hartman play, and in what position?
 ?- player(name(ryan,hartman),team(T),pos(P),_).

%What is the last name of any player who has at least 52 assists?
 ?- player(name(_,L),_,_,stats(_,A,_)),A>51.

%What players play left wing?
 ?- player(Name,Team,Position,Stat), Position = pos(lw).

%What teams have a player with the first name "Alex"?
 ?- player(name(alex,_),Team,Position,Stat).

%What pairs of players play on the same team?
 ?- player(Name_P1,team(T),Position_P1,Stats_P1), player(Name_P2,team(T),Position_P2,Stats_P2), Name_P1\=Name_P2.

%What players have between 90 and 100 points (inclusive)? (where points = goals + assists)
 ?- player(Name,Team,Postion,stats(Goals,Assists,Shots)), Points is Goals + Assists, Points>89 , Points< 101.

% What is the shot accuracy of the player with the least goals? (where shot accuracy = goals / shots)
 ?- player(Name,Team,Postion,stats(Goals,Assists,Shots)), not(( player(Name1,Team1,Postion1,stats(Goals1,Assists1,Shots1)), Goals>Goals1)), Accuracy is (Goals/Shots).

% Who is the most accurate centre player?
 ?- player(Name,Team,Postion,stats(Goals,Assists,Shots)), Accuracy is (Goals/Shots), not(( player(Name1,Team1,Postion1,stats(Goals1,Assists1,Shots1)), Accuracy1 is (Goals1/Shots1), Accuracy<Accuracy1)), Postion = pos(c).
*/