
from fastapi import FastAPI

# Création de notre application
app = FastAPI(title="PackSmart API")

# Route d'accueil
@app.get("/")
def accueil():
    return {"message": "Bienvenue sur PackSmart !"}

# Route pour calculer le volume d'un produit
@app.get("/volume")
def calcul_volume(longueur: float, largeur: float, hauteur: float):
    volume = longueur * largeur * hauteur
    return {"volume": volume, "unite": "cm3"}
