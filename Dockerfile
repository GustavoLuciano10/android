# Use como base a imagem oficial do projeto
FROM budtmo/docker-android-x86-11.0

# Copie um APK para dentro do container (opcional)
# COPY my-app.apk /root/

# Variáveis de ambiente (opcionais, você também pode passá-las com docker run)
ENV DEVICE="Samsung Galaxy S6"
ENV APPIUM=true
ENV AUTO_RECORD=false
ENV AUTO_SCREENSHOT=false
ENV EMULATOR_ARGS="-noaudio -no-boot-anim"

# Exponha as portas necessárias
EXPOSE 6080 4723 5554 5555

# Comando padrão (mantém o container rodando)
CMD ["/entrypoint.sh"]
