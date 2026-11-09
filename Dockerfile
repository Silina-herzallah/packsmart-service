
# Image Python de base
FROM python:3.11-slim

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier la liste des dépendances
COPY requirements.txt .

# Installer les bibliothèques Python
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code de notre application
COPY main.py .

# Port utilisé par FastAPI
EXPOSE 8000

# Démarrer le serveur
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

