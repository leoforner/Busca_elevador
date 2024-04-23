(define (domain exemplo)
    (:requirements :strips :typing)
    (:types location) ; Add the :types section here
    (:predicates
        (at ?x - location)
        (connected ?x ?y - location)
        (goal ?x - location)
        (solved)
    )

(:action move
    :parameters (?from ?to - location ?obj - object)
    :precondition (and (at ?obj ?from) (connected ?from ?to))
    :effect (and (not (at ?obj ?from)) (at ?obj ?to))
)
    (:action achieve-goal
        :parameters (?loc - location)
        :precondition (and (at ?loc) (goal ?loc))
        :effect (and (not (goal ?loc)) (solved))
    )
)