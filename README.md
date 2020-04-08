Requisitos: Tener docker y docker compose instalado

Ejecutar en la terminal:
    
    git clone git@github.com:IngenieriaDeSistemasUTB/oraclelinux-laravel-oci8.git

Crear un archivo .env en laravel/

    APP_NAME=Laravel
    APP_ENV=local
    APP_KEY=base64:TOPFXNPxG8OUIVhLpeMROvMS1tNDSG9tctlG7ClDSFM=
    APP_DEBUG=true
    APP_URL=http://localhost
    LOG_CHANNEL=stack
    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=laravel
    DB_USERNAME=root
    DB_PASSWORD=
    BROADCAST_DRIVER=log
    CACHE_DRIVER=file
    QUEUE_CONNECTION=sync
    SESSION_DRIVER=file
    SESSION_LIFETIME=120
    REDIS_HOST=127.0.0.1
    REDIS_PASSWORD=null
    REDIS_PORT=6379
    MAIL_DRIVER=smtp
    MAIL_HOST=smtp.mailtrap.io
    MAIL_PORT=2525
    MAIL_USERNAME=null
    MAIL_PASSWORD=null
    MAIL_ENCRYPTION=null
    MAIL_FROM_ADDRESS=null
    MAIL_FROM_NAME="${APP_NAME}"
    PUSHER_APP_ID=
    PUSHER_APP_KEY=
    PUSHER_APP_SECRET=
    PUSHER_APP_CLUSTER=mt1
    MIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
    MIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"

En la terminal directamente en la carpeta oraclelinux-laravel-oci8:

    docker-compose up --build
