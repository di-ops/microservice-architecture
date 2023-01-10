FROM gradle:7.5.0-jdk17
COPY . .
RUN ./gradlew installDist
EXPOSE 8000
CMD ./build/install/microservice-architecture/bin/microservice-architecture