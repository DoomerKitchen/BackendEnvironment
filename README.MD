# Описание
- Шаблон проекта Laravel на Docker с SSL сертификатом
# Инструкция
## Правка домена data/nginx/app.conf;
- example.com на YOUR_DOMAIN 
## Генерация  SSL сертификатов: 
- make run DOMAIN=YOUR_DOMAIN EMAIL=YOUR_EMAIL
## Миграция 
- make migrate