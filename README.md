# Définition 

# Simply smarter
Il s'agit de configs (Tableau de bord et SLO) de base fournies par Dynatrace que nous déployons automatiquement avec Monaco. 


# Monaco
- CLI open source pour la configuration d'un environnement dynatrace via API
- Ne peut pas configurer des éléments dans la CMC

# CI/CD

## Github action 
Des actions sont configurés pour construire automatiquement une image Docker pour Monaco. Pensez à ajouter dans vos certificats dans "certs" pour authentifier la communication entre Monaco et Dynatrace. [Voir les packages buildés](https://github.com/users/lekpamartin/packages/container/package/dynatrace-monaco)
```bash
docker pull ghcr.io/lekpamartin/dynatrace-monaco:main
```
 

## Gitlab
Dans le dossier vous disposez d'un fichier .gitlab-ci.yaml qui va vous permettre d'avoir un pipeline qui va automatiquement pousser vos configurations dans dynatrace. Nous vous conseillons d'utiliser un gitflow en créant une branche par environnement dynatace. 
