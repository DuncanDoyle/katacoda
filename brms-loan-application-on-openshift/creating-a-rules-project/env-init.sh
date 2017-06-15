echo "Starting JBoss BRMS docker image."
echo "This can take a couple of minutes while the image is being fetched from Docker Hub."
docker run -d -p 8080:8080 --name=jboss-brms-6.4 duncandoyle/jboss-brms:6.4
echo "JBoss BRMS started."
