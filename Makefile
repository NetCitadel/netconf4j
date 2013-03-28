all:
	mvn package source:jar javadoc:jar -Dmaven.test.skip=true

.PHONY: all