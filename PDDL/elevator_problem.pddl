(define (problem Elevator) (:domain elevator-domain)
(:objects
    elev - elevador
    dentro fora - estado
    P1 P2 P3 - pessoa
)

(:init
    ;todo: put the initial state's facts and numeric values here
    (= (elevador_at elev) 0)
    (= (pop_at P1) 21)
    (= (pop_at P2) 50)
    (= (pop_at P3) 10)
    (= (pop_to P1) 5)
    (= (pop_to P2) 42)
    (= (pop_to P3) 15)
    (pop_in_elev P1 fora)
    (pop_in_elev P2 fora)
    (pop_in_elev P3 fora)
)

(:goal (and
    ;todo: put the goal condition here
    (= (pop_at P1) 5)
    (= (pop_at P2) 42)
    (= (pop_at P3) 15)
))

;un-comment the following line if metric is needed
(:metric minimize (total-cost))
)
