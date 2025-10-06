score_letter('a', 1).
score_letter('e', 1).
score_letter('i', 1).
score_letter('o', 1).
score_letter('u', 1).
score_letter('l', 1).
score_letter('n', 1).
score_letter('r', 1).
score_letter('s', 1).
score_letter('t', 1).
score_letter('d', 2).
score_letter('g', 2).
score_letter('b', 3).
score_letter('c', 3).
score_letter('m', 3).
score_letter('p', 3).
score_letter('f', 4).
score_letter('h', 4).
score_letter('v', 4).
score_letter('w', 4).
score_letter('y', 4).
score_letter('k', 5).
score_letter('j', 8).
score_letter('x', 8).
score_letter('q', 10).
score_letter('z', 10).

score("", 0).
score(Word, Score) :-
  string_lower(Word, Lower),
  string_chars(Lower, Letters),
  score_list(Letters, Score).

score_list([], 0).
score_list([Letter|Rest], Score) :-
  score_letter(Letter, LetterScore),
  score_list(Rest, RestScore),
  Score is LetterScore + RestScore.
