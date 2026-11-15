# Práctica Docker: Angular con nginx

## Integrantes del equipo
- Nombre Apellido 1

## Descripción
Contenedor que clona el repositorio del equipo desde GitHub,
compila la aplicación Angular y la sirve con nginx.

## Requisitos
- Docker Desktop
- Git

## Cómo usarlo
1. Clonar este repositorio:
   ```bash
   git clone https://github.com/USUARIO/REPO-PRACTICA.git
   cd mi-practica-docker
   ```
2. Construir y levantar el contenedor:
   ```bash
   docker compose up --build
   ```
3. Abrir en el navegador: http://localhost:8080

## Detener
```bash
docker compose down
```

## Cargar la imagen guardada
```bash
docker load -i mi-practica-docker.tar
```