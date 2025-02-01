#!/bin/bash
# Script para atualizar todos os git clones no diretório atual

echo "Procurando por repositórios Git clonados..."

# Para cada diretório que contém um repositório Git, executa um 'git pull'
for dir in */; do
  if [ -d "$dir/.git" ]; then
    echo "Atualizando o repositório $dir..."
    cd "$dir"
    git pull origin main  # ou 'git pull' dependendo do seu branch
    cd ..
  fi
done

echo "Todos os repositórios Git foram atualizados."
