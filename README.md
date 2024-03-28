# heremaps_ios_sdk

HereMaps Navigate iOS Edition

Pour mettre à jour le SDK:

Pour ajouter tous les fichiers d'un type spécifique de manière récursive à Git Large File Storage (LFS), vous utiliseriez la commande git lfs track. Cette commande vous permet de spécifier des motifs de noms de fichiers pour indiquer quels fichiers devraient être gérés par LFS. Voici comment vous pourriez procéder :

- Initialiser Git LFS :
  - Tout d'abord, assurez-vous que Git LFS est installé sur votre système. Si ce n'est pas le cas, installez-le à partir de Git LFS.
  - Une fois installé, initialisez-le dans votre dépôt Git avec : `git lfs install`.
- Les fichiers lourds (deux heresdk pour chaque architecture) et un dSyms sont trackés avec Git LFS dans le .gitattributes, faire la commande `git lfs track`.
- Mettre à jour le framework (heresdk.xcframework, attention à ne pas mettre les deux dossiers parents proposés par Here heresdk/frameworks/heresdk.xcframework, bien mettre directement heresdk.xcframework)
  - `git commit -m "update Heremaps to v4.X.Y.Z"` puis `git push`
  - `git tag -a 4.X.Y.Z -m "4.X.Y.Z"` puis `git push origin --tags`
- Dans le projet angel-ios, ne pas oublier de mettre à jour le fichier `heresdk.podspec` en mettant à jour la nouvelle version.
