# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format github packages.
docker tag item-app:v1 ghcr.io/faqihyugos/item-app:v1
# docker tag item-app:v1 faqyu117/item-app:v1

# Login ke Docker Hub/ github pacakges
docker login --username Faqihyugos --password  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 ghcr.io
# docker login -u faqyu117 -p 

# Mengunggah image ke Docker Hub
docker push ghcr.io/faqihyugos/item-app:v1
# docker push faqyu117/item-app:v1