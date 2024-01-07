# Dynatrace 

## Simply smarter
Il s'agit de configs (Tableau de bord et SLO) de base fournies par Dynatrace que nous déployons automatiquement avec Monaco.

## Authentification 
Il vous faut un token avec les scopes suivants :
```bash
settings.read (Read settings)
settings.write (Write settings)
WriteConfig (Write configuration)
ReadConfig (Read configuration)
slo.read (Read SLO)
slo.write (Write SLO)
```
Si en plus vous êtes sur une offre SaaS vous devez aussi créer un client OAuth depuis l'account management 
```bash
https://myaccount.dynatrace.com
```
Pour créer le token, vous devez aller dans 
```bash
Identity & access management > API OAuth clients
```
Et affecter à votre client les scopes suivants :
```bash
settings:objects:read, settings:objects:write (View and create settings objects)
settings:schemas:read (View settings schemas)
automation:workflows:read, automation:workflows:write, automation:calendars:read, automation:calendars:write, automation:rules:read, automation:rules:write (View and create workflows)
automation:workflows:admin (Access all workflows)
storage:bucket-definitions:read, storage:bucket-definitions:write (View and create Grail buckets)
```


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
