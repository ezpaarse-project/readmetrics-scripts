---
title: Installation
description: ''
position: 2
category: 'Pour commencer'
---

Assurez-vous que vous avez bien rempli les [prérequis](/getting-started/requirements) avant d'aller plus loin.

## Version stable

Pour installer la dernière version stable sur un système Unix, ouvrez une console et entrez :

```bash
git clone https://github.com/ezpaarse-project/readmetrics-scripts.git
cd readmetrics-scripts
./install.sh
```

## Déisnstaller ReadMETRICS

Arrêter et supprimer les conteneurs docker :

```bash
./down.sh
```

Supprimer le dossier readmetrics-scripts :

```bash
rm -rf readmetrics-scripts
```