(define (domain exemplo)
    (:requirements :strips)
    (:predicates
        (at ?x - location)
        (connected ?x ?y - location)
        (goal ?x - location)
    )

    (:action move
        :parameters (?from ?to - location)
        :precondition (and (at ?from) (connected ?from ?to))
        :effect (and (not (at ?from)) (at ?to))
    )

    (:action achieve-goal
        :parameters (?loc - location)
        :precondition (and (at ?loc) (goal ?loc))
        :effect (and (not (goal ?loc)) (solved))
    )
)