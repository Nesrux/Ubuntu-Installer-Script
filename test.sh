#!/bin/bash

# Verifica se o usuário tem permissão de superusuário
if [[ $EUID -ne 0 ]]; then
  echo "Este script deve ser executado como root ou com permissão sudo"
  exit 1
fi

# Instalação do Golang
if ! [ -x "$(command -v go)" ]; then
  echo "Instalando o GoLang..."
  sudo apt install golang-1.20-go -y
  wait
  echo "|------------------------------------------------------------|"
  echo "Golang instalado com sucesso"


else
    echo "Golang ja instalado"
fi
