% Program to Print the Prime-Factorization of a Positive Integer

% Returns prime factors individually
prime_factorize(N, D) :-
    write('The Prime Factorization of '), write(N), write(' is:'),
    get_prime_factor(N, 2, D).

get_prime_factor(N, D, D) :-
    0 is N mod D.

get_prime_factor(N, D, R) :-
    D < N,
    (0 is N mod D
        -> (N1 is N/D, get_prime_factor(N1, D, R))
        ;  (D1 is D + 1, get_prime_factor(N, D1, R))
    ).

% Returns the prime factors as a list
list_prime_factorization(N, L) :-
    findall(D, prime_factorize(N, D), L).
