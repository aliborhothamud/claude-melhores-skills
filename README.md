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

## 🌐 Onde cada skill funciona

O **mesmo arquivo** de skill roda em **Claude Code**, **Claude.ai (web/apps)** e **Cowork** — em qualquer um deles você liga *Code Execution + Skills* e sobe a pasta (ou aponta o repo Git da skill) em *Settings → Capabilities → Skills*. No Claude Code é nativo. *(Não existe "Claude Design" como produto — os ambientes são esses três + a API.)*

Mas **rodar em todo lugar ≠ funcionar em todo lugar** — depende do que a skill precisa:

| Tipo de skill | Claude Code | Claude.ai (Web) | Cowork |
|---|:---:|:---:|:---:|
| **Processo** (superpowers) | ✅ | ✅ | ✅ |
| **Marketing** (27) · **Produto & PM** (23) | ✅ | ✅ | ✅ |
| **Dev — conhecimento** (react-expert, typescript-pro, supabase, secure-code-guardian, capacitor…) | ✅ | ✅ | ✅ |
| **Design — geração** (frontend-design, canvas-design, ui-ux-pro-max) | ✅ | ✅ | ✅ |
| **Prompt** (prompt-master, prompt-engineer) · **GSAP** | ✅ | ✅ | ✅ |
| **Design com hook/deps** (impeccable, huashu-design, logo-generator) | ✅ | ❌ | ⚠️ |
| **Vídeo** (Remotion, 8) | ✅ | ❌ | ⚠️ |
| **Browser/testes** (webapp-testing) | ✅ | ❌ | ⚠️ |
| **Research local** (last30days) | ✅ | ❌ | ⚠️ |
| **MCP-backed** (skill-builder, sentry-fix, Notion) | ✅¹ | ⚠️¹ | ✅¹ |

✅ funciona · ❌ não roda · ⚠️ parcial/depende do ambiente · ¹ precisa do MCP/conector ligado

Nas tabelas de cada seção, a coluna **"Onde"** resume isso por skill: 🟢 = qualquer Claude · 🔧 = precisa de ambiente (Code/Cowork).

---

## 🧠 Processo & disciplina de trabalho — `superpowers`
O pacote que mais muda a qualidade do Claude Code: força brainstorming antes de codar, TDD, debugging sistemático, planos, verificação antes de dizer "pronto". Instala como **plugin**. — 🟢 **todas instrução pura** (rodam em qualquer Claude)

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

| Skill | Pra que serve | Onde | Fonte |
|---|---|---|---|
| `react-expert` | Arquitetura React 18/19, hooks, Server Components, performance | 🟢 | [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) |
| `typescript-pro` | TypeScript avançado: generics, type-guards, type-safety full-stack | 🟢 | [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) |
| `supabase` | Skill **oficial** do Supabase: Auth, Edge Functions, Realtime, Storage, RLS, migrations | 🟢 | [supabase/agent-skills](https://github.com/supabase/agent-skills) |
| `supabase-postgres-best-practices` | Otimização de Postgres/Supabase: queries, schema, índices | 🟢 | [supabase](https://github.com/supabase/agent-skills) |
| `capacitor-best-practices` | Boas práticas de Capacitor: estrutura, plugins, performance, deploy | 🟢 | [cap-go/capacitor-skills](https://github.com/cap-go/capacitor-skills) |
| `capacitor-plugins` | Instalar/configurar plugins Capacitor (câmera, push, RevenueCat…) | 🟢 | [capawesome-team/skills](https://github.com/capawesome-team/skills) |
| `secure-code-guardian` | Segurança: auth, validação de input, OWASP Top 10, JWT/OAuth | 🟢 | [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) |
| `vercel-react-best-practices` | 70 regras de performance React/Next (Vercel Eng) | 🟢 | [VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) |
| `stripe-best-practices` | Integração Stripe correta (Checkout, PaymentIntents, webhooks) | 🟢 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |
| `webapp-testing` | Testar web app com Playwright (black-box) | 🔧 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |
| `sentry-react-sdk` / `sentry-fix-issues` | Setup do Sentry em React + corrigir erro de produção via MCP | 🟢 / 🔧 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |

---

## 🎨 Design & UI

| Skill | Pra que serve | Onde | Fonte |
|---|---|---|---|
| `frontend-design` | Interfaces web bonitas e **não-genéricas** (foge do "cara de IA") | 🟢 | [Anthropic](https://github.com/anthropics/skills) |
| `impeccable` | **Auditor anti-AI-slop**: detecta "tells" de design gerado por IA + qualidade | 🔧 | [pbakaus](https://github.com/pbakaus) |
| `huashu-design` | Design HTML-native: protótipos hi-fi, decks, animações, export MP4/GIF/PDF/PPTX | 🔧 | [alchaincyf](https://github.com/alchaincyf) |
| `ui-ux-pro-max` **(+6)** | Suíte que **não alucina UI**: 84 estilos, 161 paletas, 99 regras de UX, tokens, slides, banners | 🟢 | [nextlevelbuilder](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) |
| `logo-generator` | Logos SVG (geométricos) + showcase via Gemini | 🔧 | [op7418](https://github.com/op7418) |
| `canvas-design` | Arte estática em `.png`/`.pdf` (posters, criativos) | 🟢 | [Anthropic](https://github.com/anthropics/skills) |
| `stop-slop` | Tira a "cara de IA" de textos (remove padrões previsíveis) | 🟢 | [Hardik Pandya](https://hvpandya.com) |

---

## 📣 Marketing — pacote `coreyhaines31/marketingskills`
27 skills de marketing de verdade (MIT, por [Corey Haines](https://github.com/coreyhaines31/marketingskills)). — 🟢 **todas instrução pura** (rodam em qualquer Claude)

**🎯 Conversão & retenção**
| Skill | O que faz |
|---|---|
| `cro` | Otimiza a conversão de uma página/formulário |
| `onboarding` | Ativação pós-cadastro (aha moment, time-to-value) |
| `paywalls` | Paywall, upsell e feature-gate dentro do app |

**✍️ Copy & conteúdo**
| Skill | O que faz |
|---|---|
| `copywriting` | Copy de páginas (home, landing, pricing) |
| `social` | Conteúdo social (IG/TikTok/X/LinkedIn) + repurpose |
| `image` | Imagens de marketing (heroes, social, mockups) |
| `content-strategy` | Plano de conteúdo: tópicos e calendário |
| `emails` | Sequências de e-mail (welcome, nurture, drip) |
| `cold-email` | Cold email B2B + follow-ups |

**🔎 SEO & descoberta**
| Skill | O que faz |
|---|---|
| `seo-audit` | Auditoria de SEO técnico e on-page |
| `ai-seo` | Ser citado por LLMs / aparecer no AI search (ChatGPT, Perplexity) |
| `schema` | Schema markup / dados estruturados (rich snippets) |
| `competitors` | Páginas "vs" / alternativa (comparação) |
| `competitor-profiling` | Dossiê de concorrentes a partir da URL |
| `aso` | Otimização de ficha na App Store / Play |

**📣 Ads & 📊 medição**
| Skill | O que faz |
|---|---|
| `ads` | Estratégia de campanha paga (Google/Meta/LinkedIn) |
| `ad-creative` | Gera e itera criativos de anúncio em escala |
| `analytics` | Setup e auditoria de tracking (GA4, eventos, UTM) |

**🔁 Growth**
| Skill | O que faz |
|---|---|
| `referrals` | Programa de indicação / afiliado / boca-a-boca |
| `community-marketing` | Comunidade (Discord/grupo) como motor de growth |

**🧠 Estratégia & 🤝 vendas**
| Skill | O que faz |
|---|---|
| `marketing-psychology` | Gatilhos psicológicos e vieses (persuasão, social proof) |
| `marketing-plan` | Plano de marketing completo (framework AARRR) |
| `offers` | Desenha a oferta (garantia, bônus, urgência) |
| `launch` | Plano de lançamento (Product Hunt, waitlist) |
| `customer-research` | Pesquisa de cliente (ICP, JTBD, VOC, personas) |
| `prospecting` | Monta lista de prospects (B2B / local) |
| `sales-enablement` | Pitch decks, one-pager, tratamento de objeções |

---

## 📋 Produto & PM — pacote `phuryn/pm-skills`
Metodologia de produto (MIT, por [Paweł Huryn / Product Compass](https://github.com/phuryn/pm-skills)). — 🟢 **todas instrução pura** (rodam em qualquer Claude)

**⚙️ Execução**
| Skill | O que faz |
|---|---|
| `create-prd` | PRD com template de 8 seções (problema → release) |
| `sprint-plan` | Plano de sprint: capacidade, seleção, dependências, riscos |
| `retro` | Retrospectiva estruturada com action items e donos |
| `brainstorm-okrs` | OKRs de time alinhados à estratégia da empresa |
| `outcome-roadmap` | Converte roadmap de outputs em outcomes |
| `prioritization-frameworks` | 9 frameworks (RICE, ICE, Kano, MoSCoW…) com fórmulas |
| `pre-mortem` | Análise de risco pré-launch (Tigers / Paper Tigers / Elephants) |
| `stakeholder-map` | Grade poder × interesse + plano de comunicação |

**🔍 Discovery**
| Skill | O que faz |
|---|---|
| `opportunity-solution-tree` | OST (Teresa Torres): outcome → oportunidades → soluções |
| `brainstorm-experiments-new` | Experimentos lean / pretotypes pra produto novo |
| `identify-assumptions-new` | Mapeia premissas arriscadas (8 categorias) |
| `customer-journey-map` | Jornada ponta-a-ponta: etapas, emoções, fricções |

**🧭 Estratégia**
| Skill | O que faz |
|---|---|
| `lean-canvas` | Lean Canvas completo (problema → receita) |
| `value-proposition` | Proposta de valor em 6 partes (JTBD) |
| `market-sizing` | TAM / SAM / SOM (top-down + bottom-up) |
| `beachhead-segment` | Escolhe o 1º segmento de mercado a atacar |
| `north-star-metric` | Define a North Star + métricas de input |
| `growth-loops` | Desenha flywheels (viral, usage, UGC, referral) |
| `product-name` | 5 nomes com rationale (naming/rebranding) |

**📊 Análise & entrega**
| Skill | O que faz |
|---|---|
| `cohort-analysis` | Retenção por coorte, adoção de feature, churn |
| `intended-vs-implemented` | Audita o gap entre o que a spec diz e o que o código faz |
| `shipping-artifacts` | Doc mínima pra um app AI-built ser revisável/auditável |
| `privacy-policy` | Rascunho de política de privacidade (LGPD/GDPR) |

---

## 🎬 Vídeo — pacote `remotion-dev/skills`
Vídeo programático em React (8 skills, por [Remotion](https://github.com/remotion-dev/skills)). Reels, ads, vídeos data-driven. — 🔧 **todas precisam de ambiente** (Node/render → Code / Cowork)

| Skill | O que faz |
|---|---|
| `remotion-best-practices` | Guarda-chuva — puxa as outras quando não se sabe qual usar |
| `remotion-create` | Cria um projeto/composition de vídeo novo |
| `remotion-markup` | Markup React pro vídeo (animação, layout, tipografia, áudio, timing) |
| `remotion-render` | Renderiza em vídeo (MP4) ou frame (still) |
| `remotion-captions` | Legendas/subtítulos animados (estilo Reels) |
| `remotion-interactivity` | Deixa o vídeo editável/paramétrico no Studio |
| `remotion-saas` | Arquitetura de apps/produtos com Remotion embutido |
| `mediabunny` | Multimídia no browser (cortar, aparar, metadata de vídeo/áudio) |

> ⚠️ Licença da Remotion é **não-MIT**: a lib pede licença comercial acima de ~3 pessoas. Ver termos antes de uso em produção.

---

## 🔌 Integrações & mídia por IA

| Skill | Pra que serve | Onde | Fonte |
|---|---|---|---|
| `genmedia` / `genmedia-workflow` | Gera imagem/vídeo por IA (fal.ai), com pipeline multi-etapa | 🔧 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |
| `typefully` | Agendar/publicar em X · LinkedIn · Threads · Bluesky · Mastodon | 🔧 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |
| `gsap-core` / `gsap-react` / `gsap-scrolltrigger` / `gsap-timeline` | Animação web com GSAP (GreenSock) | 🟢 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |

---

## 🗂️ Notion & produtividade — `makenotion`
Skills oficiais do Notion Cookbook ([makenotion](https://github.com/makenotion/claude-code-notion-plugin)) — trabalhar bem dentro do workspace. 🔧 **precisam da conexão com o Notion** (MCP/conector).

| Skill | O que faz |
|---|---|
| `notion-knowledge-capture` | Transforma conversa/decisões em doc estruturada no Notion (com links) |
| `notion-meeting-intelligence` | Prepara reunião: junta contexto + research → pre-read + agenda |
| `notion-research-documentation` | Pesquisa no workspace e sintetiza em relatório com citações |
| `notion-spec-to-implementation` | Converte spec em tasks/plano com acceptance criteria |

---

## 🔎 Research & ✨ meta

| Skill | Pra que serve | Onde | Fonte |
|---|---|---|---|
| `last30days` | Pesquisa o que as pessoas **realmente falam** de um tópico nos últimos 30 dias (Reddit/X/YT/TikTok, ranqueado por engajamento) | 🔧 | [mvanhorn](https://github.com/mvanhorn) |
| `prompt-master` | **Gerador** de prompt pronto-pra-colar, roteado por ferramenta-alvo (ChatGPT/Midjourney/Cursor…) | 🟢 | [nidhinjs](https://github.com/nidhinjs) |
| `prompt-engineer` | Engenharia/avaliação de prompt (chain-of-thought, few-shot, structured output) | 🟢 | [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) |
| `skill-builder` | **Fábrica de skills**: transforma doc/repo/PDF/vídeo numa skill pronta (via MCP `skill-seekers`) | 🔧 | [yusufkaraaslan/Skill_Seekers](https://github.com/yusufkaraaslan/Skill_Seekers) |
| `find-skills` | Descobrir e instalar novas skills | 🔧 | skills.sh |

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
