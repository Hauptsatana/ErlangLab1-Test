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
	CurCost = case Item of 
		apple -> 100;
		pear -> 150;
		milk -> 70;
		beef -> 400;
		pork -> 300
	end,
	CurCost * Count + cost(T).