FROM java:9
RUN apt-get update && apt-get install -y ivy && rm -rf /var/lib/apt/lists/*
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
CMD /app/run.sh
