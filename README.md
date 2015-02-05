# Sidekiq, Wat is da shit?!

Petit projet pour jouer et comprendre comment fonctionne Sidekiq.  
Il n'y a donc pas de tests et le code n'est pas très propre, hein.

Article de blog associé : http://pkoin.github.io/2015/01/18/gere-tes-taches-de-fond-avec-sidekiq.html

## Pré-requis

* Ruby (2.2)
  * Gems: Bundler
* Redis (2.8)

## Installation

```sh
$ git clone https://github.com/PKoin/sidekiq-wat-is-da-shit.git
$ cd sidekiq-wat-is-da-shit
$ bundle
```

Ne pas oublier de faire tourner le serveur Redis !

### Lancer le serveur Rails

```sh
$ bundle exec rails s
```

Ouvrir http://localhost:3000

### Lancer le serveur Sidekiq

```sh
$ bundle exec sidekiq
```

### Tâche Rake

```
rake job:work_hard[name,seconds]        # Work hard!
```

Exemple de job :

```sh
$ bundle exec rake job:work_hard['PKoin',45]
```

Si vous voulez faire échouer le job, il vous suffit de demander à `britney` de travailler !

```sh
$ bundle exec rake job:work_hard['britney',42]
# Oops! I did it again.
```
