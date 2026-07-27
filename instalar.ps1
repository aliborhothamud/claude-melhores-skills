# ⚡ Instala a curadoria completa do claude-melhores-skills (Windows / PowerShell).
# Cada skill vem DIRETO da fonte original (crédito + versão sempre atual).
# Uso:  ./instalar.ps1

function Add-Skill($pkg) {
  Write-Host "-> $pkg"
  npx -y skills add $pkg -g -y
  if ($LASTEXITCODE -ne 0) { Write-Host "  (pulei $pkg - confira manualmente)" }
}

Write-Host "Instalando a curadoria (direto das fontes)..."

Add-Skill "coreyhaines31/marketingskills"          # marketing
Add-Skill "phuryn/pm-skills"                        # produto & PM
Add-Skill "jeffallan/claude-skills"                # dev specialists
Add-Skill "supabase/agent-skills"                  # supabase oficial
Add-Skill "cap-go/capacitor-skills"                # capacitor
Add-Skill "capawesome-team/skills"                 # capacitor plugins
Add-Skill "VoltAgent/awesome-agent-skills"         # integracoes
Add-Skill "nextlevelbuilder/ui-ux-pro-max-skill"   # ui/ux
Add-Skill "makenotion/claude-code-notion-plugin"   # notion oficial
Add-Skill "remotion-dev/skills"                    # video (licenca Remotion, nao-MIT)

Write-Host ""
Write-Host "OK. Skills instaladas em ~/.claude/skills (globais)."
Write-Host "Superpowers e PLUGIN - no Claude Code rode:  /plugin marketplace add obra/superpowers"
Write-Host "Rode 'npx skills list' pra ver o que ficou instalado."
