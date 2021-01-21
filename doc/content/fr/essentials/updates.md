---
title: Mise à jour
description: ''
position: 4
category: "L'essentiel à savoir"
---

## ezPAARSE

Les commandes suivantes mettent à jour et reconstruisent le noyau d'ezPAARSE.

```bash
./update.sh ezpaarse
```

Les commandes suivantes mettent à jour et reconstruisent le noyau d'ezPAARSE. Elles mettent également à jour les matériels de travail (analyseurs syntaxiques, bases de connaissances, racleurs, listes de robots et paramètres prédéfinis).

```bash
./update.sh ezpaarse all
```

### Matériaux de travail

Les commandes suivantes mettent à jour le matériel nécessaire à ezPAARSE. Il existe une commande distincte par type de matériel, voir les commentaires.

```bash
./update.sh platforms-update   # miseà jour des parsers, bases de connaissances, scrapers
./update.sh middlewares-update # miseà jour des middlewares
./update.sh exclusions-update  # miseà jour des listes d'hôtes identifiés comme des robots
./update.sh resources-update   # miseà jour des paramètres prédéfinis, formats de proxy par défaut
```