1. Run make to build jar, javadoc, and source jars.
2. Do a maven deploy to a local directory:

mkdir $HOME/maven-stage
scp -r brain:/vendors_repo/tools/m2 $HOME/maven-stage
mvn deploy:deploy-file -Durl=file://$HOME/maven-stage/m2 \
                       -DrepositoryId=com.netcitadel \
                       -Dfile=./target/netconf4j-0.0.6-netcitadel.jar \
                       -DpomFile=pom.xml \
                       -Dsources=./target/netconf4j-0.0.6-netcitadel-sources.jar \
                       -Djavadoc=./target/netconf4j-0.0.6-netcitadel-javadoc.jar

3. scp contents of maven-stage to internal maven repository:

cd $HOME/maven-stage; rsync -axvP . brain:/vendors_repo/tools/m2