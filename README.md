# Mappingue, programme de mapping vidéo

Mappingue est un petit programme servant a *mapper*<sup>1</sup> basiquement mais raaaaaaaapiiiiiiideeeeeeeemeeeeeeeeeent une ou différentes sources vidéos (initialement issus d'un flux vidéo direct). Il s'utilise actuellement qu'avec des raccourcis clavier et la souris.

*<sup>1</sup>c-a-d disposer plusieurs écrans sur plusieurs surfaces physiques, disposées dans une scénographie, avec une seule source*

#Téléchargement

En cliquant sur "Download Zip" à droite, ou bien en cliquant [ICI] (https://github.com/nioudelit/Mappingue/archive/master.zip)

## Utilisation

Il y a trois modes. Un mode **MODIFICATION**, un mode **AJOUT**, et un mode **FINALISATION**. Le mode **SAUVEGARDE** est en cours de réalisation.

### Mode MODIFICATION

C'est le mode par défaut. Lorsque ce mode est activé, le fond est bleu, et les écrans (ou zones) sont illustrées par des quadrilatères rose-violent. Nous pourrons déplacer des zones créées. Les supprimer. Modifier la forme des écrans en cliquant glissant sur les coins d'un polygone.

#### Les Zones

Les zones sont roses (oui), elles ont un petit carré noir, et quatres points rouges situés à leurs sommets. Elles sont également identifiées avec un numéro (de 0 à l'infini). Il y a également un petit voyant blanc en haut à gauche… Voyons ce que ça veut dire.

**1. DEPLACER**
Nous ne pouvons déplacer qu'une seule zone à la fois. Nous ne pourrons déplacer que la zone sélectionnée. Pour selectionner une zone, veillez que le voyant blanc soit en haut à gauche de la forme concernée.

![GitHub Logo](/img/001.png)

Pour déplacer le voyant de zone en zone, appuyez sur la touche "l" de votre clavier ou la touche "m".

![GitHub Logo](/img/002.png)

Notez que le programme vous fait bien comprendre ce que vous etes en train de manipuler. (Les flèches ne sont là qu'a titre illustratif, sachez-le)

![GitHub Logo](/img/003.png)

Pour déplacer la forme sélectionnée, déplacez la avec les flèches directionnelles du clavier (haut, bas, droite, gauche, mais ça vous le savez, je veux pas faire le papa).

**2. SUPPRIMER**
Pour supprimer une zone, il suffit de se placer sur le carré noir de la forme à exterminer **avec la souris**  et à appuyer la touche "x" du clavier.

**3. DÉFORMER**
Il suffit de se placer sur un coin (point rouge) à déformer, le point devient vert et il ne reste plus qu'à cliquer-glisser avec la souris. 

### Mode AJOUT
Pour passer en mode AJOUT, il faut appuyer sur la touche "a" du clavier. Le fond devient rouge-violent, et il suffit de placer la souris à l'endroit voulu et de cliquer. Une fois cliqué, on repasse automatiquement en mode Modification, on peut ajouter une seule zone à la fois. (Lentement, mais surement).

### Mode FINALISATION (ou mode projection) !! En travaux !!
Une fois que tout a été bien calé, vous pouvez appuyer sur la touche "f" du clavier, et la le fond deviendra noir. Pour revenir en mode MODIF, recliquez sur "f". Et l'image apparaitra sur une ou plusieurs surfaces. Pour afficher l'image sur TOUTES les surfaces, appuyez sur "t". Si vous voulez afficher une seule surface sur un écran spécifique, veillez que tous les écrans ne soient pas affichés (par exemple en rappuyant sur "t") et à choisir l'image à afficher en appuyant sur les touches "l" et "m".

# Index des Raccourcis 
(tout est en minuscule! PAS DE MAJUSCULE!)

a -- mode ajout

a + clic -- ajouter une surface

f -- mode finalisation ou retour mode modification

t -- afficher toute les surfaces

l/m -- Selectionner une surface (retour voyant blanc ou numéro)

flèches haut/bas/gauche/droite -- déplacer zone courante

x (si curseur positionné sur un carré noir) -- supprimer

s/S -- sauvegarde (en construction)


## a finir

* Effet sur le ou les flux vidéos (incrustation vert, ou blanc)
* Choix sortie à débugger (sortie vp)
* Mode sauvegarde
* MODE FINALISATION & ergonomie : Effets transition (fondus) et ergonomie choix affichage des vidéos moins laborieux --> Faire une petite table de mixage en Arduino ou petit logiciel additionnel pour faciliter la manipulation.