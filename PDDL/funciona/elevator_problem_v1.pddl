(define (problem Elevator)
    (:domain elevator)
    (:objects
        elev - elevador
        P1 - pessoa
        P2 - pessoa
    )

    (:init
        ;todo: put the initial state's facts and numeric values here
       (= (elevador_at elev) 22)
        (= (pop_at P1) 28)
        (= (pop_at P2) 28)
        (= (cap elev) 5)
        (= (total-cost) 0)
        (pop_at_elev P1 fora)
        (pop_at_elev P2 fora)
    )

    (:goal (and
        ;todo: put the goal condition here
        (= (pop_at P1) 15)
        (= (pop_at P2) 30))
    )

    ;un-comment the following line if metric is needed
    (:metric minimize
        (total-cost)
    )
)


;(define (problem Elevator_2_3)
;    (:domain elevator)
;    (:objects
;        elev - elevador
;        P1 P2 - pessoa
;    )
;
;    (:init
;        (= (elevador_at elev) 22)
;        (= (pop_at P1) 28)
;        (= (pop_at P2) 28)
;        (= (cap elev) 3)
;        (= (total-cost) 0)
;        (pop_at_elev P1 fora)
;        (pop_at_elev P2 fora)
;    )
;
;    (:goal (and
;        (= (pop_at P1) 15)
;        (= (pop_at P2) 30))
;    )
;)



;(define (problem Elevator_3_4)
;    (:domain elevator)
;    (:objects
;        elev - elevador
;        P1 P2 P3 - pessoa
;    )
;
;    (:init
;        (= (elevador_at elev) 22)
;        (= (pop_at P1) 28)
;        (= (pop_at P2) 28)
;        (= (pop_at P3) 28)
;        (= (cap elev) 4)
;        (= (total-cost) 0)
;        (pop_at_elev P1 fora)
;        (pop_at_elev P2 fora)
;        (pop_at_elev P3 fora)
;    )
;
;    (:goal (and
;        (= (pop_at P1) 15)
;        (= (pop_at P2) 30)
;        (= (pop_at P3) 40))
;    )
;)



;(define (problem Elevator_4_2_diff)
;    (:domain elevator)
;    (:objects
;        elev - elevador
;        P1 P2 P3 P4 - pessoa
;    )
;
;    (:init
;        (= (elevador_at elev) 0)
;        (= (pop_at P1) 10)
;        (= (pop_at P2) 20)
;        (= (pop_at P3) 30)
;        (= (pop_at P4) 40)
;        (= (cap elev) 2)
;        (= (total-cost) 0)
;        (pop_at_elev P1 fora)
;        (pop_at_elev P2 fora)
;        (pop_at_elev P3 fora)
;        (pop_at_elev P4 fora)
;    )
;
;    (:goal (and
;        (= (pop_at P1) 35)
;        (= (pop_at P2) 25)
;        (= (pop_at P3) 15)
;        (= (pop_at P4) 5))
;    )
;)
