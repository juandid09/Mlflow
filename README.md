para que quede permanente
docker run -d --restart always -p 5000:5000 `
  -v mlflow_models:/app/models `
  -v mlflow_mlruns:/app/mlruns `
  -v mlflow_db:/app/mlflow.db `
  --name mlflow_server `
  mlflow_project mlflow server --host 0.0.0.0