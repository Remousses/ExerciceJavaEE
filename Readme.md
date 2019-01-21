# Exercice 4
## Question
Constater et expliquer les valeurs affichées de compteur et compteurInterne.

## Réponses
La variable compteur est initialisée lors de l'initialisation de la servlet. Or la servlet n'est initialisé qu'une seule et une seule fois. Cela veut dire que l'incrémentation de la variable compteur ne sera jamais la même.

La variable compteurInterne quand à elle est réinitialisé à chaque appel GET de l'url de la servlet, d'où le fait quel affiche tous le temps 0.