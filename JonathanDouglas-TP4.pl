/*Questão 1*/
nElementos([],0).
nElementos([_|Y], S) :- nElementos(Y,V), S is (V+1).

/*Questão 2*/
maior([A], A).
maior([X|Z], S) :- maior(Z, V), (X > V -> S = X ; S = V).

/*Questão 3*/
soma([], 0).
soma([X|L], S) :- soma(L, S1), S is X+S1.

medio([], 0).
medio(X, S) :- nElementos(X, T), soma(X, U), S is U/T.

/*Questão 4*/
inserirFim(X,[],[X]).
inserirFim(X,[Y|Cauda],[Y|Cauda1]):- inserirFim(X,Cauda,Cauda1).

/*Questão 5*/
ultimo([X], X). 
ultimo([_|Cauda], X):- ultimo(Cauda, X).

/*Questão 6*/
adjacente(X, Y, [X,Y|_]).
adjacente(X, Y, [_|Cauda]) :- adjacente(X, Y, Cauda).

/*Questão 7*/
gerar(X,X,[X]).
gerar(X,Y,[X|Xs]) :- X =< Y, Z is X+1, gerar(Z,Y,Xs).

/*Questão 8*/
concatenar([],Lista,Lista).
concatenar([X|Lista1],Lista2,[X|Lista3]) :- concatenar(Lista1,Lista2,Lista3).

reverter([],[]).
reverter([X|Cauda],Lista) :- reverter(Cauda,Lista1), concatenar(Lista1,[X],Lista).

/*Questão 9*/
incrementar([], []).
incrementar([X|Cauda], [Y|Cauda1]) :- Y is X+1, incrementar(Cauda, Cauda1).

/*Questão 10*/
linearizar([],[]).
linearizar([X|Cauda],Y) :- linearizar(X,T), linearizar(Cauda,U), concatenar(T,U,Y).
linearizar(X,[X]).

/*Questão 11*/
anexar([],Lista,Lista).
anexar([X|Lista1],Lista2,[X|Lista3]) :- anexar(Lista1,Lista2,Lista3).

/*Questão 12*/
remover(_, [], []).
remover(X, [X|Cauda], Cauda1) :- remover(X, Cauda, Cauda1).
remover(X, [Y|Cauda], [Y|Cauda1]) :- X \== Y, remover(X, Cauda, Cauda1).

/*Questão 13*/
rotacionar([], []).        
rotacionar([L|Cauda], R) :- concatenar(Cauda, [L], R).

/*Questão 14*/
rotacionarn(0,L,L).
rotacionarn(_,[],[]).
rotacionarn(N, [X:Cauda], R) :- rotacionarn(N, Cauda, R), (N > 0 -> N = N - 1;concatenar(Cauda,[X], R)).

/*Questão 15*/
