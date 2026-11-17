# Práctica 9: Docker — Angular con nginx

## Para qué sirve este README

Este archivo es la guía del proyecto. Explica qué hace, quiénes son los integrantes y cómo iniciarlo paso a paso. No ejecuta nada, solo documenta.

## Integrantes

- Diego Omar Batres Camacho
- Gabino Martinez Delgado
- Mariana Guadalupe Rojas Ramirez
- Emiliano Rosales Castillo
- Oscar Ivan Guardiola Garcia

## Qué hace

El contenedor clona el repositorio del equipo desde GitHub, compila la app Angular 20 y sirve el resultado con nginx.

Repositorio: `24040100GabinoM/Equipo4-Curso-Ing`, rama `main`.
El Dockerfile hace `npm install` y `npm run build`, copia `dist/equipo4-curso-ing/browser/` a nginx y también las páginas de cada integrante: `Gabino/`, `Mariana/`, `omar/`, `Oscar_Guardiola/` y `sobremi/`.

## Requisitos

- Docker Desktop
- Git

## Cómo iniciar todo

1. Clonar el repositorio:

   ```bash
   git clone https://github.com/24040108Omar/practica9.git
   cd practica9

