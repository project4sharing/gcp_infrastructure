setup:
	PROJECT_ID=$$(gcloud config get-value project) && \
	(cd terraform && terraform init && terraform apply --var project_id=$$PROJECT_ID)