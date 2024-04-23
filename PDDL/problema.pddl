(define (problem exemplo-problem)
    (:domain exemplo)
    (:objects
        loc1 loc2 loc3 - location
    )
    (:init
        (at loc1)
        (connected loc1 loc2)
        (connected loc2 loc3)
        (goal loc3)
    )
    (:goal (solved))
)