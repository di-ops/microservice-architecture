FROM openjdk:17-jdk-alpine AS build
COPY . .
RUN ./gradlew build

FROM openjdk:17-jdk-alpine
COPY --from=build ./build/libs/microservice-architecture-0.0.1.jar /usr/local/lib/mca-otus.jar
EXPOSE 8000
ENTRYPOINT ["java","-jar","/usr/local/lib/mca-otus.jar"]