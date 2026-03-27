#!/bin/bash
# Script para solucionar problemas de mayúsculas/minúsculas en Git para Netlify

echo "🚀 Iniciando limpieza de Git para despliegue en Netlify..."

# Forzar a Git a olvidar las carpetas conflictivas
git rm -r --cached src/context 2>/dev/null
git rm -r --cached src/components 2>/dev/null
git rm -r --cached src/lib 2>/dev/null

echo "✅ Cache de Git limpiada."
echo "📦 Preparando nuevas carpetas..."

# Asegurar que Git vea las carpetas actuales con sus nombres correctos
git add src/mission-context
git add src/components
git add src/lib

echo "✨ ¡Listo! Ahora puedes hacer el commit y push:"
echo "git commit -m 'Fix case sensitivity for Netlify'"
echo "git push"
