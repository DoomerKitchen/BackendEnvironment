# Backend Environment for SocialNetwork
## Описание
 Окружение для проекта моей социальной сети [Ссылка на проект](https://github.com/DoomerKitchen/BackendEnvironment)
- [Backend Environment for SocialNetwork](#backend-environment-for-socialnetwork)
  - [Описание](#описание)
  - [Состав проекта](#состав-проекта)
  - [Требования к серверу (VPS)](#требования-к-серверу-vps)
  - [Инструкция по развертыванию](#инструкция-по-развертыванию)
  - [Установка дополнительных пакетов](#установка-дополнительных-пакетов)
  - [Монтирование](#монтирование)
## Состав проекта
- BackEnd PHP-FPM 
- Queue 
- Scheduller
- Nginx
- MySql
- Redis
- WebSockets server
- Certbot
## Требования к серверу (VPS)
- Наличие 10+ Гб места на диске (предпочтительно 20 Гб)
- 1.5 Гб оперативной памяти (предпочтительно 2+ Гб)
## Инструкция по развертыванию 
- Создать файл `.env` и заполнить его в соответствии с `.env.example`
- Склонирова репозиторий с проектом социальной сети в `./`
- Создать файл `./RepName/.env` и заполнить его в соответствии с `.env.example` проекта социальной сети
- Правка домена data/nginx/app.conf     
`example.com на YOUR_DOMAIN `
- Правка домена data/websocket-server/laravel-echo-server.json     
`example.com на YOUR_DOMAIN `
- Генерация  SSL сертификата и запуск контейнеров  
`make run DOMAIN=YOUR_DOMAIN EMAIL=YOUR_EMAIL`
- Генерация ключа приложения    
`make key`
- Установка зависимостей backend    
 `make install`
- Миграция базы данных  
`make migrate`
## Установка дополнительных пакетов
Для доустановки пакетов можно подключиться к одному из запущенных контейнеров c образом PHP-FPM     
`docker-compose exec queue /bin/bash`         

Внутри контейнера есть установленный `composer` , поэтому пакеты можно ставить привычным образом через `composer require`
## Монтирование
Проект помещен в контейнеры путем монтирования с файловой системой контейнеров (в файле `docker-compose.yaml`).     
Также в корневую папку logs вынесены логи из контейнеров
