# 🧩 claude-melhores-skills

**Curadoria em português das melhores _skills_ pro [Claude Code](https://claude.com/claude-code)** — o que instalar, pra que serve e quando usar. Anos de "qual skill presta?" resolvidos numa lista só.

> [!IMPORTANT]
> Este repo é um **catálogo**, não um re-host. Cada skill aponta pro **repositório original do autor** — o crédito, o código e a licença são de quem criou. Você instala **direto da fonte**. Aqui mora só a curadoria (o que vale a pena e por quê).

---

## 🚀 Como instalar uma skill

**Maioria das skills** (ecossistema [skills.sh](https://skills.sh)):
```bash
npx skills add <autor/repo@nome-da-skill>
# global (vale em todos os projetos): adicione -g
```

**Plugins** (ex.: superpowers) — não são skills soltas, instalam pelo Claude Code:
```
/plugin marketplace add <marketplace>
```

Cada seção abaixo linka a fonte. Comandos exatos das que têm slug próprio estão em **[Fontes & créditos](#-fontes--créditos)**.

---

## 🧠 Processo & disciplina de trabalho — `superpowers`
O pacote que mais muda a qualidade do Claude Code: força brainstorming antes de codar, TDD, debugging sistemático, planos, verificação antes de dizer "pronto". Instala como **plugin**.

| Skill | Pra que serve |
|---|---|
| `brainstorming` | Explora requisitos e alternativas ANTES de construir |
| `writing-plans` / `executing-plans` | Escreve o plano, depois executa passo a passo com checkpoints |
| `test-driven-development` | Teste antes do código (red → green → refactor) |
| `systematic-debugging` | Acha a causa raiz antes de sair corrigindo |
| `verification-before-completion` | Nunca diz "funciona" sem rodar e conferir |
| `writing-skills` | Metodologia pra autorar boas skills |

---

## 💻 Desenvolvimento

| Skill | Pra que serve | Fonte |
|---|---|---|
| `react-expert` | Arquitetura React 18/19, hooks, Server Components, performance | [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) |
| `typescript-pro` | TypeScript avançado: generics, type-guards, type-safety full-stack | [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) |
| `supabase` | Skill **oficial** do Supabase: Auth, Edge Functions, Realtime, Storage, RLS, migrations | [supabase/agent-skills](https://github.com/supabase/agent-skills) |
| `supabase-postgres-best-practices` | Otimização de Postgres/Supabase: queries, schema, índices | [supabase](https://github.com/supabase/agent-skills) |
| `capacitor-best-practices` | Boas práticas de Capacitor: estrutura, plugins, performance, deploy | [cap-go/capacitor-skills](https://github.com/cap-go/capacitor-skills) |
| `capacitor-plugins` | Instalar/configurar plugins Capacitor (câmera, push, RevenueCat…) | [capawesome-team/skills](https://github.com/capawesome-team/skills) |
| `secure-code-guardian` | Segurança: auth, validação de input, OWASP Top 10, JWT/OAuth | [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) |
| `vercel-react-best-practices` | 70 regras de performance React/Next (Vercel Eng) | [VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) |
| `stripe-best-practices` | Integração Stripe correta (Checkout, PaymentIntents, webhooks) | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |
| `webapp-testing` | Testar web app com Playwright (black-box) | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |
| `sentry-react-sdk` / `sentry-fix-issues` | Setup do Sentry em React + corrigir erro de produção via MCP | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |

---

## 🎨 Design & UI

| Skill | Pra que serve | Fonte |
|---|---|---|
| `frontend-design` | Interfaces web bonitas e **não-genéricas** (foge do "cara de IA") | [Anthropic](https://github.com/anthropics/skills) |
| `impeccable` | **Auditor anti-AI-slop**: detecta "tells" de design gerado por IA + qualidade | [pbakaus](https://github.com/pbakaus) |
| `huashu-design` | Design HTML-native: protótipos hi-fi, decks, animações, export MP4/GIF/PDF/PPTX | [alchaincyf](https://github.com/alchaincyf) |
| `ui-ux-pro-max` **(+6)** | Suíte que **não alucina UI**: 84 estilos, 161 paletas, 99 regras de UX, tokens, slides, banners | [nextlevelbuilder](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) |
| `logo-generator` | Logos SVG (geométricos) + showcase via Gemini | [op7418](https://github.com/op7418) |
| `canvas-design` | Arte estática em `.png`/`.pdf` (posters, criativos) | [Anthropic](https://github.com/anthropics/skills) |
| `stop-slop` | Tira a "cara de IA" de textos (remove padrões previsíveis) | [Hardik Pandya](https://hvpandya.com) |

---

## 📣 Marketing — pacote `coreyhaines31/marketingskills`
27 skills de marketing de verdade (MIT, por [Corey Haines](https://github.com/coreyhaines31/marketingskills)). Conversão, copy, SEO, ads, growth, estratégia, vendas.

| Grupo | Skills |
|---|---|
| **Conversão** | `cro` · `onboarding` · `paywalls` |
| **Copy & conteúdo** | `copywriting` · `social` · `image` · `content-strategy` · `emails` · `cold-email` |
| **SEO** | `seo-audit` · `ai-seo` (ser citado por LLMs) · `schema` · `competitors` · `competitor-profiling` · `aso` |
| **Ads & medição** | `ads` · `ad-creative` · `analytics` |
| **Growth** | `referrals` · `community-marketing` |
| **Estratégia** | `marketing-psychology` · `marketing-plan` · `offers` · `launch` · `customer-research` |
| **Vendas** | `prospecting` · `sales-enablement` |

---

## 📋 Produto & PM — pacote `phuryn/pm-skills`
Metodologia de produto (MIT, por [Paweł Huryn / Product Compass](https://github.com/phuryn/pm-skills)). Execução + discovery + estratégia.

| Grupo | Skills |
|---|---|
| **Execução** | `create-prd` · `sprint-plan` · `retro` · `brainstorm-okrs` · `outcome-roadmap` · `prioritization-frameworks` · `pre-mortem` · `stakeholder-map` |
| **Discovery** | `opportunity-solution-tree` · `brainstorm-experiments-new` · `identify-assumptions-new` · `customer-journey-map` |
| **Estratégia** | `lean-canvas` · `value-proposition` · `market-sizing` · `beachhead-segment` · `north-star-metric` · `growth-loops` · `product-name` |
| **Análise & entrega** | `cohort-analysis` · `intended-vs-implemented` (audita spec vs. código) · `shipping-artifacts` · `privacy-policy` |

---

## 🎬 Vídeo — pacote `remotion-dev/skills`
Vídeo programático em React (8 skills, por [Remotion](https://github.com/remotion-dev/skills)). Reels, ads, vídeos data-driven.

`remotion-create` · `remotion-markup` · `remotion-render` · `remotion-captions` · `remotion-best-practices` · `remotion-saas` · `remotion-interactivity` · `mediabunny`

> ⚠️ Licença da Remotion é **não-MIT**: a lib pede licença comercial acima de ~3 pessoas. Ver termos antes de uso em produção.

---

## 🔌 Integrações & mídia por IA

| Skill | Pra que serve | Fonte |
|---|---|---|
| `genmedia` / `genmedia-workflow` | Gera imagem/vídeo por IA (fal.ai), com pipeline multi-etapa | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |
| `typefully` | Agendar/publicar em X · LinkedIn · Threads · Bluesky · Mastodon | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |
| `gsap-core` / `gsap-react` / `gsap-scrolltrigger` / `gsap-timeline` | Animação web com GSAP (GreenSock) | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |

---

## 🗂️ Notion & produtividade — `makenotion`
Skills oficiais do Notion Cookbook ([makenotion](https://github.com/makenotion/claude-code-notion-plugin)) — trabalhar bem dentro do workspace.

`notion-knowledge-capture` · `notion-meeting-intelligence` · `notion-research-documentation` · `notion-spec-to-implementation`

---

## 🔎 Research & ✨ meta

| Skill | Pra que serve | Fonte |
|---|---|---|
| `last30days` | Pesquisa o que as pessoas **realmente falam** de um tópico nos últimos 30 dias (Reddit/X/YT/TikTok, ranqueado por engajamento) | [mvanhorn](https://github.com/mvanhorn) |
| `prompt-master` | **Gerador** de prompt pronto-pra-colar, roteado por ferramenta-alvo (ChatGPT/Midjourney/Cursor…) | [nidhinjs](https://github.com/nidhinjs) |
| `prompt-engineer` | Engenharia/avaliação de prompt (chain-of-thought, few-shot, structured output) | [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) |
| `skill-builder` | **Fábrica de skills**: transforma doc/repo/PDF/vídeo numa skill pronta (via MCP `skill-seekers`) | [yusufkaraaslan/Skill_Seekers](https://github.com/yusufkaraaslan/Skill_Seekers) |
| `find-skills` | Descobrir e instalar novas skills | skills.sh |

---

## 🙏 Fontes & créditos

Toda skill acima é obra dos autores abaixo. Este catálogo só organiza e recomenda. Instale da fonte e respeite a licença de cada uma.

| Fonte | O que traz | Licença | Instalar |
|---|---|---|---|
| [obra/superpowers](https://github.com/obra/superpowers) | Processo (brainstorming, TDD, debugging, planos) | ver repo | `/plugin marketplace add` |
| [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) | 27 skills de marketing | MIT | `npx skills add coreyhaines31/marketingskills@<skill>` |
| [phuryn/pm-skills](https://github.com/phuryn/pm-skills) | Metodologia de produto/PM | MIT | `npx skills add phuryn/pm-skills@<skill>` |
| [remotion-dev/skills](https://github.com/remotion-dev/skills) | Vídeo em React | Remotion (não-MIT) | `npx skills add remotion-dev/skills@<skill>` |
| [supabase/agent-skills](https://github.com/supabase/agent-skills) | Supabase oficial | ver repo | `npx skills add supabase/agent-skills@supabase` |
| [cap-go/capacitor-skills](https://github.com/cap-go/capacitor-skills) | Capacitor best practices | ver repo | `npx skills add cap-go/capacitor-skills@capacitor-best-practices` |
| [capawesome-team/skills](https://github.com/capawesome-team/skills) | Plugins Capacitor | ver repo | `npx skills add capawesome-team/skills@capacitor-plugins` |
| [VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) | Integrações (fal, stripe, sentry, gsap, typefully…) | mistas | `npx skills add VoltAgent/awesome-agent-skills@<skill>` |
| [makenotion/claude-code-notion-plugin](https://github.com/makenotion/claude-code-notion-plugin) | Skills do Notion | ver repo | ver repo |
| [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) | Dev specialists (react-expert, typescript-pro, secure-code-guardian, prompt-engineer) | ver repo | `npx skills add jeffallan/claude-skills@<skill>` |
| [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | Suíte de UI/UX (não alucina interface) | ver repo | via skills.sh |
| [yusufkaraaslan/Skill_Seekers](https://github.com/yusufkaraaslan/Skill_Seekers) | Fábrica de skills (skill-builder / MCP) | ver repo | ver repo |
| [Anthropic](https://github.com/anthropics/skills) | frontend-design, canvas-design (oficiais) | Apache 2.0 | vêm com o Claude Code |
| [pbakaus](https://github.com/pbakaus) (impeccable) · [alchaincyf](https://github.com/alchaincyf) (huashu-design) · [op7418](https://github.com/op7418) (logo-generator) · [nidhinjs](https://github.com/nidhinjs) (prompt-master) · [mvanhorn](https://github.com/mvanhorn) (last30days) · [Hardik Pandya](https://hvpandya.com) (stop-slop) | Design, prompt, research, texto | ver cada repo | via skills.sh |

> As licenças variam. Antes de usar comercialmente, cheque a licença no repositório de origem — em especial Remotion (não-MIT) e as integrações que exigem conta paga (fal, stripe, sentry).

---

## 📄 Sobre este catálogo
A **curadoria** (textos, organização, recomendações) é livre pra usar e compartilhar. As **skills** pertencem aos seus autores. Achou uma skill boa que não está aqui? Manda um PR.
