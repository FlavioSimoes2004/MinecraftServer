# MinecraftServer
Setup docker para servidor minecraft

# ARQUIVOS NECESSARIOS
1. Arquivo .jar servidor minecraft. Baixar arquivo acessando: [Minecraft](https://www.minecraft.net/pt-br/download/server)

# SETUP
- Rodar os seguintes comandos respectivamente (rodar como admin):
```bash
# 1 - criar imagem
docker build -t minecraft-server .

#2 - gerar container da imagem
docker container run -di -p 25565:25565 minecraft-server

#3 - para acessar a máquina
docker exec docker exec -it <hash gerado> sh
```