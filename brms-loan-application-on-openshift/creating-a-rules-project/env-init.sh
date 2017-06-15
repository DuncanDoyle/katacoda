ssh root@host01 "echo 'Starting JBoss BRMS docker image.'"
#echo "This can take a couple of minutes while the image is being fetched from Docker Hub."
#docker run -d -p 8080:8080 --name=jboss-brms-6.4 -e "JAVA_OPTS=-Xms768m -Xmx768m -XX:MetaspaceSize=96M -XX:MaxMetaspaceSize=256m -Djava.net.preferIPv4Stack=true -Djboss.modules.system.pkgs=$JBOSS_MODULES_SYSTEM_PKGS -Djava.awt.headless=true" duncandoyle/jboss-brms:6.4
#echo "JBoss BRMS started."
