# Send build instructions to Cloud Build
gcloud builds submit --config cloudbuild.yaml .

# Deploy image in GCP - Cloud Run
gcloud run deploy zapier-web-scrapper --image us-central1-docker.pkg.dev/jonajo-consulting/docker-repository/web-scrapper-api --platform managed --region us-central1 --project jonajo-consulting
