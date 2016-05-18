-module(test).
-export([hi/0, fac/1, fib/1, member/2, cost/1]).

hi() -> 
	io:format("Hello, world!~n").
	
% факториал
fac(0) -> 1;
fac(1) -> 1;
fac(N) -> N * fac(N - 1).

% число фибоначчи
fib(1) -> 1;
fib(2) -> 1;
fib(N) -> fib(N - 1) + fib(N - 2).

% входит в список
member([], _) -> false;
member([E], E) -> true;
member([E | _], E) -> true;
member([_ | T], E) -> member(T, E).

% Сумма по списку покупок
price(apple) -> 100;
price(pear) -> 150;
price(milk) -> 70;
price(beef) -> 400;
price(pork) -> 300.

% L = [{Item, Count}, ...]
cost([]) -> 0;
cost([{Item, Count} | T]) -> price(Item) * Count + cost(T).