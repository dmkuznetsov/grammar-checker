#!/bin/sh

CONFIG_OPENAI_URL="${CONFIG_OPENAI_URL:=https://api.openai.com/v1/chat/completions}"
CONFIG_OPENAI_TOKEN="${CONFIG_OPENAI_TOKEN:=}"
CONFIG_OPENAI_MODEL="${CONFIG_OPENAI_MODEL:=gpt-4}"
CONFIG_TRANSLATE_FROM="${CONFIG_TRANSLATE_FROM:=}"
echo "window.APP_CONFIG = {
  CONFIG_OPENAI_URL: '${CONFIG_OPENAI_URL}',
  CONFIG_OPENAI_TOKEN: '${CONFIG_OPENAI_TOKEN}',
  CONFIG_OPENAI_MODEL: '${CONFIG_OPENAI_MODEL}',
  CONFIG_TRANSLATE_FROM: '${CONFIG_TRANSLATE_FROM}'
}" > /usr/share/nginx/html/app-config.js


# Запуск Nginx
nginx -g "daemon off;"
