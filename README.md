# Greetings spring boot example

## Compile, Test and Build the java web application using Maven
### Run tests
```
./mvnw test
```

### Build and packaging
```
./mvnw build
```

## Compile, Test and Build the java web application using gradle
### See the all task that you can run
```
./gradlew tasks --all
```

### Run tests
```
./gradlew test
```

### Make a build and create artifact
```
./gradlew build
```

### Clean up
```
./gradlew clean
```

## Run the application
To run the application, execute:
```
java -jar build/libs/gs-spring-boot-0.1.0.jar
```

If you are using maven, execute:
```
java -jar target/gs-spring-boot-0.1.0.jar
```
