-module(testif).
-export([hi/0, fac/1, fib/1, member/2, cost/1]).

hi() -> 
	io:format("Hello, world!~n").
	
% факториал
fac(N) ->
	if	(N =< 1) -> 1;
	 	true -> N * fac(N - 1)
	end.

% число фибоначчи
fib(N) -> 
	if 	(N < 1) -> -1;
		(N == 1) -> 1;
		(N == 2) -> 1;
		true -> fib(N - 1) + fib(N - 2)
	end.

% входит в список
member([], _) -> false;
member([H|T], E) -> 
	if	(H =:= E) -> true;
		true -> member(T, E)
	end.

% L = [{Item, Count}, ...]
cost([]) -> 0;
cost([{Item, Count} | T]) -> 
	case Item of 
		apple -> CurCost = 100;
		pear -> CurCost = 150;
		milk -> CurCost = 70;
		beef -> CurCost = 400;
		pork -> CurCost = 300
	end,
	CurCost * Count + cost(T).