run:
	mlflow server — backend-store-uri mysql+pymysql://mlflow:strongpassword@db:3306/db — default-artifact-root s3://mlflow_bucket/mlflow/ — host 0.0.0.0