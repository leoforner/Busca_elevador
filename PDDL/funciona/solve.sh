

docker run -p 25000:5000 -t -v "/media/leonardo/SD16GB/github/Busca_elevador-1/PDDL/funciona":/x azathoth/pddl &

docker ps

docker exec -it id_DOCKER /root/planners/Metric-FF/ff -o /x/domain_v1.pddl -f /x/elevator_problem_v1.pddl -s 5


docker exec -it id_DOCKER /root/planners/optic-clp /x/domain_v1pddl /x/elevator_problem_v1.pddl


