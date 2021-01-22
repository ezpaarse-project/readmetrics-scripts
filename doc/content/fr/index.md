---
title: Introduction
description: ''
position: 1
category: ''
features:
  - le suivi des accords de transformation, y compris avant et après
  - l'analyse de l'utilisation à travers les disciplines et les consortiums
  - l'évaluation de la valeur des dépenses d'édition
  - permettre une analyse comparative des citations
---

<img src="/readmetrics-scripts/fr/preview.svg" width="1280" height="640" alt="" />

## Qu'est-ce que ReadMETRICS ?
**ReadMETRICS** est une nouvelle solution clé en main pour :

<list :items="features"></list>

Il est basé sur les outils libres et open source [ezPAARSE](https://www.ezpaarse.org/) et [ezMESURE](https://ezmesure.couperin.org/) déjà existants et testés sur le terrain, en étendant et en incluant des fonctionnalités inspirées par la transition de la [Bibliothèque nationale du Luxembourg](https://bnl.public.lu/fr.html) vers l'Open Access, décrite [ici](https://www.consortium.lu/?page_id=6334).

## ezPAARSE

Un [logiciel libre](https://github.com/ezpaarse-project/ezpaarse/) qui peut ingérer vos fichiers journaux (proxy) et montrer comment les utilisateurs accèdent aux ressources électroniques souscrites. Il filtre, extrait et enrichit les événements d'accès qui ont été repérés et produit un fichier de résultats qu'ezMESURE peut ingérer et afficher dans un tableau de bord.

## ezMESURE

Un [logiciel libre](https://github.com/ezpaarse-project/ezmesure/) basé sur [Elastic et Kibana](https://www.elastic.co/fr/) pour constituer un répertoire centralisant les données statistiques d'utilisation produites par une ou plusieurs instances d'ezPAARSE. Il est également capable d'ingérer les données de [COUNTER5](https://www.projectcounter.org/code-of-practice-five-sections/abstract/).