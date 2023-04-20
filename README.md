# TP Compilation : Génération d'arbres abstraits
> DUMONT Jonathan, SHARABIDZE Tamar

---

# TP 2, 3 et 4

# Fichier de test

Dans le dossier test vous avez plusieurs fichier de test pour tester le compilateur

- minimum.txt => donne le minimum entre 3 nombres.
- pgcd.txt => effectue le pgcd entre 2 nombres (Exercice 2).
- syracuse.txt => Fait la suite de Syracuse à partir d'un nombre donné.
- test.txt => C'est une atribution de variable (Exercice 1).

# Creation du fichier asm 

 1) Part argument

Il sufit de placer le chemin d'axcès du fichier txt en argument pour le compiler en assembleur dans la commande d'execution ou votre IDE fovori.

 2) Sans argument

Si il vous ne pouver pas mettre d'argument (cela à été mon cas pendant un moment) vous pouver remplace le nom du fichier dans le main a la ligne 20 :

```
20			yy = new LexicalAnalyzer(new FileReader("./test/test.txt"));
```
Puis vous pouver lancer le projet avec votre IDE favoris.

Une foit cela fait le fichier compiler sera rendu.asm

# Execution du fichier asm

Pour cela il suffit d'executer le fichier asm.sh a la racine du projet comme ceci : 
```
./asm.sh
```

Si vous ne pouver pas l'executer pour pouver simplement la commande suivante :
```
java -jar vm-0.9.jar rendu.asm
```
