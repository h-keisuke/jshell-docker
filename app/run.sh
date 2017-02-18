#!/bin/bash
set -u

java -jar /usr/share/java/ivy.jar -ivy /app/ivy.xml -cache /app/cache \
	-retrieve "/app/lib/[artifact]-[revision].[ext]" 
jshell -class-path -class-path $(JARS=(/app/lib/*.jar); IFS=:; echo "${JARS[*]}")
