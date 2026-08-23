# MinecraftServer
Setup docker para servidor minecraft

# ARQUIVOS NECESSARIOS
1. Arquivo .jar servidor minecraft. Baixar arquivo acessando: [VERSÃO JAVA](https://www.minecraft.net/pt-br/download/server) ou [VERSÃO BEDROCK](https://www.minecraft.net/en-us/download/server/bedrock)

# SETUP
- Rodar os seguintes comandos respectivamente (rodar como admin):
1. Criar imagem
```bash
docker build -t minecraft-server .
```

2. Gerar o container
```bash
sudo docker run -d \
  --name test \
  -p 25565:25565 \
  --privileged \
  --cgroupns=host \
  -v /sys/fs/cgroup:/sys/fs/cgroup:rw \
  minecraft-server
```

3. Acessar terminal do container
```bash
docker exec docker exec -it <hash gerado> sh
```