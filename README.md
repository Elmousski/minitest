# The Form Project
### Project Week 5, Day 4

Team members : @Elmousski, @CharlotteHouivet, @joel, @mattgeek, @emilie.

### Assignment


1. Etat des lieux

Ca y est tu commences à maitriser les fondamentaux de Rails, les termes de MVC, routes, params et bases de données te sont familiers et tu commences à être fier des quelques applications que tu as mis en production cette semaine.

Aujourd'hui, nous allons un peu plus loin avec notre application Gossip Project, en rajoutant des features un peu plus stylées que tu pourras peut-être réutiliser pour l'architecture de ton projet final.

Pour commencer, tu peux reprendre ton app d'hier car la base de données reste globalement la même.

Ce projet sera peu guidé, je vais juste te donner une liste de fonctionnalités que ton app devra avoir et tu vas les implémenter. Celles-ci reprendrons essentiellement ce que tu as vu cette semaine et la semaine dernière.
2. Les specs

    1. Création d'utilisateur
    2. Ecran de connexion avec nom de l'utilisateur et mot de passe
    3. Un utilisateur peut détruire ses gossips (et uniquement les siens)
    4. Possibilité de liker les potins
    5. Possibilité d'enlever un like déja mis
    6. Normalement, il y a déja la feature de commentaires sur la page potin, maintenant tu vas donner la possibilité de commenter les commentaires (façon Facebook), bien sûr le nom de l'utilisateur qui a écrit le commentaire sera affiché

3. En détail
3.1 Création d'utilisateur

Ici tu vas devoir créer une table User avec un attribut email, name et password.
3.2 Ecran de connexion

Ici, il faudra créer un controller registration avec une méthode new.

Cette méthode servira à l'authentification. Celle-ci sera assez sommaire, on vérifiera que le combo mail et mot de passe correspond à ce qui est enregistré en base. Ce n'est pas du tout secure d'enregistrer les mots de passe en clair mais tu verras la bonne méthode demain 😉

Ensuite, il faudra créer la view correspondante à registration#new avec le formulaire bootstrap qui va bien.
3.3 Destruction de gossips

Hier, on a donné la propriété optional: true sur la liaison entre Gossip et User. Il est temps de la supprimer. Ainsi, chaque Gossip sera créé par un utilisateur. Tu vas donner la possibilité à un utilisateur de supprimer ses gossips, mais uniquement les siens !

Hint : pense à utiliser un if qui vérifie si l'utilisateur connecté est le créateur du gossip
3.4 Liker des potins

Tu as déjà un model like en place, il ne te reste plus qu'a créer le controller, la route pour créer un like et le bouton pour liker !
3.5 Supprimer son like

C'est la même chose mais avec une méthode delete !
3.6 Commentaire, façon Facebook

Alors là, c'est la grosse feature de la journée, il va falloir toucher un peu en base pour perfectionner la table comments

A toi de jouer !



### How to execute the program ? 

1. Clone this repository

2. Install all the gems
```sh
$ bundle install
```
3. Migrate db files
```sh
$ rails db:migrate
```
4. Execute seed file
```sh
$ rails db:seed
```
5. Visit the local version
```sh
$ rails server
```
6. Visit the online version

[link](https://elmousski-gossipfb.herokuapp.com)
