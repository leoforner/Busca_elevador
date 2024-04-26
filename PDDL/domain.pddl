;Header and description

(define (domain elevator-domain)

;remove requirements that are not needed
(:requirements :strips :typing :fluents :equality :action-costs :disjunctive-preconditions)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    elevador capacidade estado
)

; un-comment following line if constants are needed
(:constants dentro fora - estado)

(:predicates ;todo: define predicates here
    (pop_in_elev ?p - pessoa ?es - estado) ;
)


(:functions ;todo: define numeric functions here
    (elevador_at ?e - elevador)
    (pop_at ?p - pessoa)
    (pop_to ?p - pessoa)
    (cap ?e - elevador)
    (total-cost)
    - number
)

;define actions here

(:action up
    :parameters (?e - elevador)
    :precondition (and  (not (= (elevador_at ?e) 50))
                        (forall (?p - pessoa)
                                (pop_in_elev ?p dentro)))
    :effect (and    (increase (elevador_at ?e) 1)
                    (increase (pop_at ?p) 1)
                    (increase (total-cost) 1))
)

(:action down
    :parameters (?e - elevador)
    :precondition (and  (not (= (elevador_at ?e) 0))
                        (forall (?p - pessoa)
                                (pop_in_elev ?p dentro)))
    :effect (and    (decrease (elevador_at ?e) 1)
                    (increase (pop_at ?p) 1)
                    (increase (total-cost) 1))
)

(:action in
    :parameters (?e - elevador ?p - pessoa)
    :precondition (and  (= (elevador_at ?e) (pop_at ?p))
                        (> (cap ?e) 0)
                        (pop_in_elev ?p fora))
    :effect (and    (decrease (cap ?e) 1)
                    (not (pop_in_elev ?p fora))
                    (pop_in_elev ?p dentro)
                    (increase (total-cost) 1))
)

(:action out
    :parameters (?e - elevador ?p - pessoa)
    :precondition (and  (= (elevador_at ?e) (pop_to ?p))
                        (pop_in_elev ?p dentro))
    :effect (and    (increase (cap ?e) 1)
                    (not (pop_in_elev ?p dentro))
                    (pop_in_elev ?p fora)
                    (increase (total-cost) 1))
)

)