#!/usr/bin/env bash
# ⚡ Instala a curadoria completa do claude-melhores-skills.
# Cada skill vem DIRETO da fonte original (crédito + versão sempre atual).
# Uso:  bash instalar.sh        (global, pra todos os projetos)
set -e

add() { echo "→ $1"; npx -y skills add "$1" -g -y || echo "  (pulei $1 — confira manualmente)"; }

echo "Instalando a curadoria (direto das fontes)..."

# 📣 Marketing (Corey Haines, MIT)
add coreyhaines31/marketingskills
# 📋 Produto & PM (Paweł Huryn, MIT)
add phuryn/pm-skills
# 💻 Dev specialists (Jeff Allan)
add jeffallan/claude-skills
# 🗄️ Supabase (oficial)
add supabase/agent-skills
# 📱 Capacitor
add cap-go/capacitor-skills
add capawesome-team/skills
# 🔌 Integrações (fal, stripe, sentry, gsap, typefully…)
add VoltAgent/awesome-agent-skills
# 🎨 UI/UX
add nextlevelbuilder/ui-ux-pro-max-skill
# 🗂️ Notion (oficial)
add makenotion/claude-code-notion-plugin
# 🎬 Vídeo (Remotion — licença própria, não-MIT; revise antes de uso comercial)
add remotion-dev/skills

echo
echo "✅ Pronto. Skills instaladas em ~/.claude/skills (globais)."
echo "ℹ️  Superpowers é PLUGIN — no Claude Code rode:  /plugin marketplace add obra/superpowers"
echo "ℹ️  Rode 'npx skills list' pra ver o que ficou instalado."
