# `Greetings` Spring Boot Example

## How to build and run
### Compile, test and build
To test and build the application, execute:
```
./gradlew test
./gradlew build
```

If you are using maven, execute:
```
./mvnw test
./mvnw build
```

If you want to see the all tasks are defined in build.gradle file. This command will show you the all task that you can run
```
./gradlew tasks --all
```

### Run the application
To run the application, execute:
```
java -jar build/libs/gs-spring-boot-0.1.0.jar
```

If you are using maven, execute:
```
java -jar target/gs-spring-boot-0.1.0.jar
```

### Clean up
Finally, you can clean up all artifacts and dependencies made by build tools (gradle, maven) like below,
```
./gradlew clean or ./mvnw clean
```

## How to make Immutable Image
### Copy artifact

### Run the bake job
```
packer build greetings.json
```
