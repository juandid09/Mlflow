# Usa una imagen base de Python
FROM python:3.12-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de dependencias primero y los instala
COPY pyproject.toml . 
#RUN pip install uv && uv pip install --system --requirements pyproject.toml
RUN pip install uv && uv pip install --system --requirements pyproject.toml && \
    # Elimina la caché de pip para reducir el tamaño de la imagen
    rm -rf /root/.cache/pip

# Copia el resto del código al contenedor
COPY . .

# Crear los directorios necesarios para MLflow
#RUN mkdir -p /app/mlruns /app/mlartifacts

# Crear los directorios necesarios para MLflow y el archivo vacío para mlflow.db
RUN mkdir -p /app/mlruns /app/mlartifacts && \
    chmod 777 /app/mlflow.db

# Copia el archivo mlflow.db al contenedor
COPY mlflow.db /app/mlflow.db

# Copia los datos de experimentos al contenedor
COPY mlruns /app/mlruns

# Exponer el puerto donde correrá MLflow
EXPOSE 5000

# Comando para ejecutar MLflow como servidor
#CMD ["mlflow", "server", "--host", "0.0.0.0", "--port", "5000", "--backend-store-uri", "sqlite:///mlflow.db", "--default-artifact-root", "/app/mlartifacts"]
#CMD ["mlflow", "server", "--host", "0.0.0.0", "--port", "5000", "--backend-store-uri", "sqlite:////app/mlflow.db", "--default-artifact-root", "/app/models"]
#CMD ["mlflow", "server", "--host", "0.0.0.0", "--port", "5000", "--backend-store-uri", "sqlite:///app/mlflow.db", "--default-artifact-root", "/app/models"]
#CMD ["mlflow", "server", "--host", "0.0.0.0", "--port", "5000", "--backend-store-uri", "sqlite:////app/mlflow.db"]
CMD ["mlflow", "server", "--host", "0.0.0.0", "--port", "5000", "--backend-store-uri", "sqlite:////app/mlflow.db", "--default-artifact-root", "/app/mlruns"]