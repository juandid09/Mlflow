# Mlflow Project
## Descripción
Este repositorio contiene un proyecto de aprendizaje automático utilizando Mlflow para el seguimiento de experimentos. El objetivo principal es predecir la severidad de los accidentes de tráfico en Estados Unidos utilizando modelos de Machine Learning y desplegar la solución en un entorno Dockerizado.
## Dataset Utilizado
El dataset de entrenamiento utilizado es US Accidents, el cual contiene información sobre accidentes de tráfico en 49 estados de EE.UU. desde febrero de 2016 hasta diciembre de 2021. Los datos fueron recopilados en tiempo real a través de diversas APIs, sensores viales, cámaras de tráfico y agencias de aplicación de la ley.
Este conjunto contiene aproximadamente 2.8 millones de registros de accidentes, incluyendo información sobre ubicación, tiempo, condiciones meteorológicas y características de las carreteras.
Url del dataset,el cual deberia estar a nivel del directorio principal: https://drive.google.com/file/d/1FLpjSGNMH06QvHsQgjSPivrjjfd97wVL/view

## Recursos del Proyecto

Archivo Docker: https://drive.google.com/file/d/1gdYP1OwiHTyloOJQSKbvf2veFvZFIGiV/view?usp=drive_link

Repositorio GitHub: https://github.com/juandid09/Mlflow.git

Documentación: https://drive.google.com/file/d/1NpFJNp8MOTHsqu9GI8Aff77JhtrIaVWy/view?usp=sharing

DataSet: https://drive.google.com/file/d/1FLpjSGNMH06QvHsQgjSPivrjjfd97wVL/view

## Observaciones 
en caso de clonar el repositiorio y indique alguna alvertencia utilizar git lfs antes de clonar el repostiorio. 

## Modelos de Entrenamiento
- LightGBM (LGB): Algoritmo de gradient boosting optimizado para velocidad y eficiencia en grandes volúmenes de datos.
- Regresión Logística: Modelo estadístico utilizado para clasificación binaria.
- Bosques Aleatorios: Ensamble de árboles de decisión para reducir el sobreajuste y mejorar la precisión.
- Vecinos más cercanos (k-NN): Clasifica observaciones según la mayoría de sus k vecinos más cercanos en el espacio de características.
- LightGBM: Variante de gradient boosting con crecimiento leaf-wise en lugar de nivel por nivel.

## Instalación y Ejecución
- Activar el entorno virtual: .env\Scripts\activate
- Ejecutar Mlflow: mlflow ui
- Esto generará una carpeta mlruns y servirá el dashboard de Mlflow en: http://127.0.0.1:5000
- Ejecutar Jupyter Notebook: Ejecuta los notebooks correspondientes para entrenar los modelos y rastrear los experimentos en Mlflow.

## Implementación en Docker
Construcción de la Imagen Docker

-Se debe tener Docker Desktop abierto y ejecutar: docker build -t mlflow_project .

-Verificar que la imagen se creó correctamente con: docker images

-Ejecutar el Contenedor: docker run -d --restart always -p 5000:5000 mlflow_project mlflow server --host 0.0.0.0

-Validar con: docker ps, si el contenedor esta coriendo, sino volverlo a crear/reiniciar. 

## Licencia
se publica bajo la licencia la cual esta disponible aqui: [LICENSE.py](https://github.com/juandid09/Mlflow/blob/main/LICENSE)

## Contribuciones
Las contribuciones son bienvenidas. Por favor, sigue las mejores prácticas de desarrollo y realiza un pull request con los cambios propuestos.



