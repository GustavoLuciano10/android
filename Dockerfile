version: '3.7'

services:
  android-emulator:
    image: budtmo/docker-android-x86-11.0
    container_name: android-emulator
    privileged: true  # Necessário para rodar o emulador Android
    ports:
      - "6080:6080"   # Acesso via navegador (VNC)
      - "4723:4723"   # Appium server
      - "5554:5554"   # Android emulator console
      - "5555:5555"   # ADB (Android Debug Bridge)
    environment:
      - DEVICE=Samsung Galaxy S6
      - APPIUM=true
      - AUTO_RECORD=false
      - AUTO_SCREENSHOT=false
      - EMULATOR_ARGS=-noaudio -no-boot-anim
    volumes:
      - /dev/shm:/dev/shm
