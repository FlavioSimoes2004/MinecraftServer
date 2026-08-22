# MinecraftServer
Setup docker para servidor minecraft

# SETUP
- Rodar os seguintes comandos respectivamente (caso dê erro, execute como administrador):
```bash
# 1 - criar imagem
docker built -t ubuntu-minecraft .

#2 - gerar container da imagem
docker container run -di -p 8080:80 ubuntu-minecraft

#3 - para acessar a máquina
docker exec docker exec -it <hash gerado> sh
```