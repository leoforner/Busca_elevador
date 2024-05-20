;Header and description

(define (domain elevator)

;remove requirements that are not needed
(:requirements :strips :typing :fluents :equality :action-costs :disjunctive-preconditions)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    elevador estado pessoa
)

; un-comment following line if constants are needed
(:constants dentro fora - estado)

(:predicates ;todo: define predicates here
    (pop_at_elev ?p - pessoa ?es - estado)
)


(:functions ;todo: define numeric functions here
    (elevador_at ?e - elevador) 
    (pop_at ?p - pessoa) 
    (cap ?e - elevador)
    (total-cost)
    - number
)

;define actions here

(:action up
    :parameters (?e - elevador)
    :precondition (< (elevador_at ?e) 50)
    :effect (and    (increase (elevador_at ?e) 1)
                    (increase (total-cost) 1))
)

(:action down
    :parameters (?e - elevador)
    :precondition (> (elevador_at ?e) 0)
    :effect (and (decrease (elevador_at ?e) 1)
                 (increase (total-cost) 1))
)

(:action in
    :parameters (?e - elevador ?p - pessoa)
    :precondition (and (= (elevador_at ?e) (pop_at ?p))
                       (> (cap ?e) 0)
                       (pop_at_elev ?p fora))
    :effect (and    (decrease (cap ?e) 1)
                    (not (pop_at_elev ?p fora))
                    (pop_at_elev ?p dentro)
                    (increase (total-cost) 1))
)

(:action out
    :parameters (?e - elevador ?p - pessoa)
    :precondition (pop_at_elev ?p dentro)
    :effect (and    (increase (cap ?e) 1)
                    (not (pop_at_elev ?p dentro))
                    (pop_at_elev ?p fora)
                    (assign (pop_at ?p) (elevador_at ?e))
                    (increase (total-cost) 1))
)

)