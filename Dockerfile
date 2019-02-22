FROM adoptopenjdk/openjdk8:latest
EXPOSE 8080
RUN mkdir /opt/app
COPY "target/diet-diary-0.0.1-SNAPSHOT.jar" "/opt/app/japp.jar"
CMD ["java", "-jar", "/opt/app/japp.jar"]