# Minecraft Server on Render.com (Fabric + Modrinth)

This repository contains configuration files to run a 24/7 modded Minecraft server on Render.com using Fabric.

## Setup Instructions

1. Create a new Render.com account if you don't have one already
2. Fork this repository to your GitHub account
3. In Render.com dashboard:
   - Click "New +"
   - Select "Web Service"
   - Connect your GitHub repository
   - Choose "Docker" as the environment
   - Choose the "Standard" plan
   - Click "Create Web Service"

## Mods

Place your Modrinth mod .jar files in the `mods` folder. Make sure:
- All mods are compatible with Fabric
- Mods are for Minecraft version 1.20.4
- Players have the same mods installed on their client

## Configuration

- The server uses 1GB of RAM
- The world data is stored on a persistent disk
- The server runs on port 25565 (default Minecraft port)
- Server properties can be modified in `server.properties`
- Mod configs can be added to the `config` folder

## Connecting to the Server

1. Once deployed, Render will provide you with a URL
2. Use the IP address or domain provided by Render to connect to your server
3. Make sure to have the same mods installed on your client
