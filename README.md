# PackSmart — API REST avec FastAPI et Docker

## 1. Présentation du projet

PackSmart est une mini-application Python développée avec FastAPI dans le cadre du TP de programmation distribuée.

L'objectif est de créer une API REST simple, de la conteneuriser avec Docker et de publier l'image sur Docker Hub ainsi que le code source sur GitHub.

Cette application constitue une première base pour un futur système d'optimisation logistique.

## 2. Technologies utilisées

- Python 3.11
- FastAPI
- Uvicorn
- Docker / Docker Desktop
- Docker Hub
- Git / GitHub

## 3. Fonctionnement de l'application

L'API propose deux routes :

- `GET /` : affiche un message de bienvenue.
- `GET /volume` : calcule le volume d'un produit à partir de sa longueur, largeur et hauteur.

Exemple :

`/volume?longueur=30&largeur=20&hauteur=5`

Résultat :

`{"volume":3000.0,"unite":"cm3"}`

La documentation interactive de l'API est accessible à l'adresse `http://localhost:8000/docs`.

## 4. Construction de l'image Docker

Depuis le dossier du projet :

`docker build -t packsmart-api:1.0 .`

Vérification de l'image :

`docker images`

## 5. Exécution du conteneur

`docker run -d -p 8000:8000 --name packsmart-container packsmart-api:1.0`

Vérification :

`docker ps`

L'application est accessible sur `http://localhost:8000`.

## 6. Publication sur Docker Hub

Identification :

`docker login`

Attribution du nom Docker Hub :

`docker tag packsmart-api:1.0 silinah/packsmart-api:1.0`

Publication :

`docker push silinah/packsmart-api:1.0`

Image Docker Hub :

https://hub.docker.com/r/silinah/packsmart-api

## 7. Publication sur GitHub

Initialisation et publication du dépôt :

```bash
git init
git add .
git commit -m "Initial commit - PackSmart FastAPI Docker"
git branch -M main
git remote add origin https://github.com/Silina-herzallah/packsmart-service.git
git push -u origin main
```

Dépôt GitHub :

https://github.com/Silina-herzallah/packsmart-service

## 8. Conclusion

Ce TP a permis de créer une API REST avec Python, de construire une image Docker, d'exécuter l'application dans un conteneur et de publier les livrables sur Docker Hub et GitHub.

Il constitue une première étape vers le développement d'une application distribuée reposant sur plusieurs microservices.
