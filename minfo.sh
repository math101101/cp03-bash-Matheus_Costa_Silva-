#!/bin/bash

# Verifica se um argumento foi fornecido
if [ $# -ne 1 ]; then
    echo "Uso: $0 {hostname|uptime|disk|all}"
    exit 1
fi

case "$1" in
    hostname)
        hostname
        ;;
    uptime)
        uptime -p
        ;;
    disk)
        df -h /
        ;;
    all)
        hostname
        uptime -p
        df -h /
        ;;
    *)
        echo "Opção inválida: $1"
        echo "Uso: $0 {hostname|uptime|disk|all}"
        exit 1
        ;;
esac
