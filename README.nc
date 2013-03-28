1. Run make to build jar, javadoc, and source jars.
2. Do a maven deploy to a local directory:

mkdir $HOME/maven-stage
mvn deploy:deploy-file -Durl=file://$HOME/maven-stage \
                       -DrepositoryId=com.netcitadel \
                       -Dfile=./target/netconf4j-0.0.4-SNAPSHOT.jar \
                       -DpomFile=pom.xml \
                       -Dsources=./target/netconf4j-0.0.4-SNAPSHOT-sources.jar \
                       -Djavadoc=./target/netconf4j-0.0.4-SNAPSHOT-javadoc.jar

3. scp contents of maven-stage to internal maven repository.