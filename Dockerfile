FROM openjdk:17-slim

WORKDIR /minecraft

# Install required packages
RUN apt-get update && \
    apt-get install -y wget curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Download Fabric installer and set up server
RUN wget https://meta.fabricmc.net/v2/versions/loader/1.20.4/0.15.6/1.0.0/server/jar -O fabric-server-launcher.jar

# Create mods directory
RUN mkdir -p mods
RUN mkdir -p config

# Copy server properties
COPY server.properties .

# Accept EULA
RUN echo "eula=true" > eula.txt

# Copy mods from local mods directory
COPY mods/* mods/

# Expose minecraft server port
EXPOSE 25565

# Start the server with optimized settings
CMD ["java", "-Xmx1G", "-Xms1G", "-XX:+UseG1GC", "-jar", "fabric-server-launcher.jar", "nogui"]
