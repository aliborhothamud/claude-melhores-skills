# CLAUDE.md — claude-melhores-skills

Catálogo público, em português, das melhores skills para o Claude. Cada skill aponta para o repositório do autor, com
crédito e comando de instalação. Branch padrão: **`master`** (não `main`).

## Regras

- **Skill de terceiro = link + crédito + install.** Nunca copie arquivo de outro autor para cá. Fonte nova entra também
  em "🙏 Fontes & créditos", com a licença.
- **Exceção: skill autoral do mantenedor** pode morar aqui, com publicação dupla:
  1. seção "✨ Autorais" do README, com o `SKILL.md` em `skills/<nome>/`;
  2. repo próprio `aliborhothamud/<nome>-skill`, com `LICENSE` MIT (mesmo titular de `lighthouse-95-skill` e
     `design-por-referencia-skill`), `README.md` em inglês, `README.pt-BR.md`, `SKILL.md` e topics (`claude-code`,
     `ai-skills`), instalável com `npx skills add aliborhothamud/<nome>-skill -g`. A coluna Fonte do catálogo aponta
     para esse repo, que passa a ser a fonte da skill.

  Autoral com contexto de negócio não entra.
- **Toda tabela de seção tem as colunas** Skill · Pra que serve · Quando usar · Onde (🟢 qualquer Claude · 🔧 precisa
  de ambiente) · Fonte. Skill nova também mexe na contagem do grupo no sumário do topo e, se for de um tipo novo, na
  matriz "Onde cada skill funciona".
- **Sem contexto pessoal:** o repo é público. Nada de caminho local, ID ou link do Notion, nome de empresa, cliente
  ou projeto privado. Antes de todo push, passe um grep anticontexto nas linhas `+` do diff; a lista de termos mora
  fora deste repo.
