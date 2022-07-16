FROM openjdk
COPY target/*.jar /
EXPOSE 8080
ENTRYPOINT ["java","-jar","/my-app-1.0-SNAPSHOT.jar"]
RUN /usr/local/bin/trivy annyat678/my-app-1.0  --no-progress /
