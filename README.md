# 🧩 claude-melhores-skills

**Curadoria em português das melhores _skills_ pro [Claude](https://claude.com)** — o que instalar, pra que serve e quando usar. Funciona no Claude Code, no Claude.ai (web/apps) e no Cowork (veja a [matriz de compatibilidade](#-onde-cada-skill-funciona)). Anos de "qual skill presta?" resolvidos numa lista só.

> [!IMPORTANT]
> Este repo é um **catálogo**, não um re-host. Cada skill aponta pro **repositório original do autor** — o crédito, o código e a licença são de quem criou. Você instala **direto da fonte**. Aqui mora só a curadoria (o que vale a pena e por quê).

---

## ⚡ Instalação rápida (a curadoria inteira, um comando)

Clone o repo e rode o instalador — ele instala tudo **direto das fontes originais** (crédito intacto, versão sempre atual):

```bash
git clone https://github.com/aliborhothamud/claude-melhores-skills.git
cd claude-melhores-skills
bash instalar.sh          # Mac/Linux
# Windows (PowerShell):   ./instalar.ps1
```

Depois, no Claude Code, adicione o plugin de processo:
```
/plugin marketplace add obra/superpowers
```

> Nada é rehospedado aqui — o script chama `npx skills add` pra cada fonte. As skills continuam sendo dos autores; você instala da mão deles.

---

## 🚀 Como instalar uma skill (individual)

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

| Skill | Pra que serve | Quando usar |
|---|---|---|
| `brainstorming` | Explora requisitos e alternativas ANTES de construir | antes de construir qualquer feature |
| `writing-plans` / `executing-plans` | Escreve o plano, depois executa passo a passo com checkpoints | tarefa multi-etapa que pede plano |
| `test-driven-development` | Teste antes do código (red → green → refactor) | implementar feature ou bugfix |
| `systematic-debugging` | Acha a causa raiz antes de sair corrigindo | bug ou comportamento inesperado |
| `verification-before-completion` | Nunca diz "funciona" sem rodar e conferir | antes de dizer “está pronto” |
| `writing-skills` | Metodologia pra autorar boas skills | criar ou revisar uma skill |

---

## 💻 Desenvolvimento

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `react-expert` | Arquitetura React 18/19, hooks, Server Components, performance | mexer em React, hooks, estado | 🟢 | [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) |
| `typescript-pro` | TypeScript avançado: generics, type-guards, type-safety full-stack | tipagem pesada, generics, tsconfig | 🟢 | [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) |
| `supabase` | Skill **oficial** do Supabase: Auth, Edge Functions, Realtime, Storage, RLS, migrations | qualquer tarefa Supabase além de SQL | 🟢 | [supabase/agent-skills](https://github.com/supabase/agent-skills) |
| `supabase-postgres-best-practices` | Otimização de Postgres/Supabase: queries, schema, índices | escrever/revisar SQL ou modelar schema | 🟢 | [supabase](https://github.com/supabase/agent-skills) |
| `capacitor-best-practices` | Boas práticas de Capacitor: estrutura, plugins, performance, deploy | empacotar app web pra mobile | 🟢 | [cap-go/capacitor-skills](https://github.com/cap-go/capacitor-skills) |
| `capacitor-plugins` | Instalar/configurar plugins Capacitor (câmera, push, RevenueCat…) | adicionar recurso nativo ao app | 🟢 | [capawesome-team/skills](https://github.com/capawesome-team/skills) |
| `secure-code-guardian` | Segurança: auth, validação de input, OWASP Top 10, JWT/OAuth | login, permissões ou revisão de segurança | 🟢 | [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) |
| `lighthouse-95` ⭐ | Levar um site a **95+ em todas as categorias do Lighthouse**: medir→identificar a causa exata no JSON→corrigir→re-medir, com playbook de fixes e tabela de armadilhas | site com nota baixa no Lighthouse, FCP/LCP/TBT/CLS ruins | 🔧 | [aliborhothamud/lighthouse-95-skill](https://github.com/aliborhothamud/lighthouse-95-skill) ⭐ AUTORAL, MIT |
| `vercel-react-best-practices` | 70 regras de performance React/Next (Vercel Eng) | otimizar performance React/Next | 🟢 | [VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) |
| `stripe-best-practices` | Integração Stripe correta (Checkout, PaymentIntents, webhooks) | aceitar pagamento no app | 🟢 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |
| `webapp-testing` | Testar web app com Playwright (black-box) | testar web app de ponta a ponta | 🔧 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |
| `sentry-react-sdk` / `sentry-fix-issues` | Setup do Sentry em React + corrigir erro de produção via MCP | instalar Sentry ou corrigir erro de produção | 🟢 / 🔧 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |

---

## 🎨 Design & UI

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `frontend-design` | Interfaces web bonitas e **não-genéricas** (foge do "cara de IA") | construir ou estilizar qualquer UI web | 🟢 | [Anthropic](https://github.com/anthropics/skills) |
| `impeccable` | **Auditor anti-AI-slop**: detecta "tells" de design gerado por IA + qualidade | auditar qualidade de uma tela | 🔧 | [pbakaus](https://github.com/pbakaus) |
| `huashu-design` | Design HTML-native: protótipos hi-fi, decks, animações, export MP4/GIF/PDF/PPTX | protótipo, deck, animação, export MP4 | 🔧 | [alchaincyf](https://github.com/alchaincyf) |
| `ui-ux-pro-max` **(+6)** | Suíte que **não alucina UI**: 84 estilos, 161 paletas, 99 regras de UX, tokens, slides, banners | escolher estilo/paleta ou planejar UI | 🟢 | [nextlevelbuilder](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) |
| `logo-generator` | Logos SVG (geométricos) + showcase via Gemini | gerar logo e variações de marca | 🔧 | [op7418](https://github.com/op7418) |
| `canvas-design` | Arte estática em `.png`/`.pdf` (posters, criativos) | pedir poster ou arte estática | 🟢 | [Anthropic](https://github.com/anthropics/skills) |
| `stop-slop` | Tira a "cara de IA" de textos (remove padrões previsíveis) | escrever, editar ou revisar texto | 🟢 | [Hardik Pandya](https://hvpandya.com) |

---

## 📣 Marketing — pacote `coreyhaines31/marketingskills`
27 skills de marketing de verdade (MIT, por [Corey Haines](https://github.com/coreyhaines31/marketingskills)). — 🟢 **todas instrução pura** (rodam em qualquer Claude)

**🎯 Conversão & retenção**
| Skill | O que faz | Quando usar |
|---|---|---|
| `cro` | Otimiza a conversão de uma página/formulário | página que não converte |
| `onboarding` | Ativação pós-cadastro (aha moment, time-to-value) | usuário cadastra mas não usa |
| `paywalls` | Paywall, upsell e feature-gate dentro do app | converter free em pago no app |

**✍️ Copy & conteúdo**
| Skill | O que faz | Quando usar |
|---|---|---|
| `copywriting` | Copy de páginas (home, landing, pricing) | escrever ou melhorar copy de página |
| `social` | Conteúdo social (IG/TikTok/X/LinkedIn) + repurpose | decidir o que postar, repurpose |
| `image` | Imagens de marketing (heroes, social, mockups) | gerar imagem ou criativo visual |
| `content-strategy` | Plano de conteúdo: tópicos e calendário | planejar pautas e calendário |
| `emails` | Sequências de e-mail (welcome, nurture, drip) | montar sequência de e-mail |
| `cold-email` | Cold email B2B + follow-ups | prospecção por e-mail |

**🔎 SEO & descoberta**
| Skill | O que faz | Quando usar |
|---|---|---|
| `seo-audit` | Auditoria de SEO técnico e on-page | site não ranqueia, tráfego caiu |
| `ai-seo` | Ser citado por LLMs / aparecer no AI search (ChatGPT, Perplexity) | aparecer no ChatGPT/Perplexity |
| `schema` | Schema markup / dados estruturados (rich snippets) | rich snippets, SEO local |
| `competitors` | Páginas "vs" / alternativa (comparação) | página de comparação, battle card |
| `competitor-profiling` | Dossiê de concorrentes a partir da URL | pesquisar concorrentes a partir de URLs |
| `aso` | Otimização de ficha na App Store / Play | melhorar ficha do app nas lojas |

**📣 Ads & 📊 medição**
| Skill | O que faz | Quando usar |
|---|---|---|
| `ads` | Estratégia de campanha paga (Google/Meta/LinkedIn) | planejar campanha paga |
| `ad-creative` | Gera e itera criativos de anúncio em escala | gerar variações de anúncio |
| `analytics` | Setup e auditoria de tracking (GA4, eventos, UTM) | definir eventos, UTM, medição |

**🔁 Growth**
| Skill | O que faz | Quando usar |
|---|---|---|
| `referrals` | Programa de indicação / afiliado / boca-a-boca | criar loop de indicação |
| `community-marketing` | Comunidade (Discord/grupo) como motor de growth | usar comunidade como motor de growth |

**🧠 Estratégia & 🤝 vendas**
| Skill | O que faz | Quando usar |
|---|---|---|
| `marketing-psychology` | Gatilhos psicológicos e vieses (persuasão, social proof) | aplicar persuasão e social proof |
| `marketing-plan` | Plano de marketing completo (framework AARRR) | montar plano de marketing/GTM |
| `offers` | Desenha a oferta (garantia, bônus, urgência) | oferta que não converte |
| `launch` | Plano de lançamento (Product Hunt, waitlist) | lançar ou anunciar um produto |
| `customer-research` | Pesquisa de cliente (ICP, JTBD, VOC, personas) | entrevistas, review mining, personas |
| `prospecting` | Monta lista de prospects (B2B / local) | montar lista de leads |
| `sales-enablement` | Pitch decks, one-pager, tratamento de objeções | criar material de vendas |

---

## 📋 Produto & PM — pacote `phuryn/pm-skills`
Metodologia de produto (MIT, por [Paweł Huryn / Product Compass](https://github.com/phuryn/pm-skills)). — 🟢 **todas instrução pura** (rodam em qualquer Claude)

**⚙️ Execução**
| Skill | O que faz | Quando usar |
|---|---|---|
| `create-prd` | PRD com template de 8 seções (problema → release) | escrever o PRD de uma feature |
| `sprint-plan` | Plano de sprint: capacidade, seleção, dependências, riscos | planejar a sprint |
| `retro` | Retrospectiva estruturada com action items e donos | rodar a retrospectiva do time |
| `brainstorm-okrs` | OKRs de time alinhados à estratégia da empresa | definir OKRs do trimestre |
| `outcome-roadmap` | Converte roadmap de outputs em outcomes | tornar o roadmap estratégico |
| `prioritization-frameworks` | 9 frameworks (RICE, ICE, Kano, MoSCoW…) com fórmulas | decidir o que priorizar |
| `pre-mortem` | Análise de risco pré-launch (Tigers / Paper Tigers / Elephants) | mapear o que pode dar errado |
| `stakeholder-map` | Grade poder × interesse + plano de comunicação | alinhar stakeholders de um projeto |

**🔍 Discovery**
| Skill | O que faz | Quando usar |
|---|---|---|
| `opportunity-solution-tree` | OST (Teresa Torres): outcome → oportunidades → soluções | estruturar discovery de produto |
| `brainstorm-experiments-new` | Experimentos lean / pretotypes pra produto novo | validar ideia antes de construir |
| `identify-assumptions-new` | Mapeia premissas arriscadas (8 categorias) | avaliar risco de ideia nova |
| `customer-journey-map` | Jornada ponta-a-ponta: etapas, emoções, fricções | mapear experiência, melhorar onboarding |

**🧭 Estratégia**
| Skill | O que faz | Quando usar |
|---|---|---|
| `lean-canvas` | Lean Canvas completo (problema → receita) | modelar hipótese de negócio |
| `value-proposition` | Proposta de valor em 6 partes (JTBD) | articular por que escolher seu produto |
| `market-sizing` | TAM / SAM / SOM (top-down + bottom-up) | dimensionar mercado pra pitch |
| `beachhead-segment` | Escolhe o 1º segmento de mercado a atacar | escolher primeiro mercado a atacar |
| `north-star-metric` | Define a North Star + métricas de input | decidir o que medir |
| `growth-loops` | Desenha flywheels (viral, usage, UGC, referral) | desenhar mecanismo de crescimento |
| `product-name` | 5 nomes com rationale (naming/rebranding) | naming ou rebranding |

**📊 Análise & entrega**
| Skill | O que faz | Quando usar |
|---|---|---|
| `cohort-analysis` | Retenção por coorte, adoção de feature, churn | analisar retenção e churn |
| `intended-vs-implemented` | Audita o gap entre o que a spec diz e o que o código faz | auditar app construído por IA |
| `shipping-artifacts` | Doc mínima pra um app AI-built ser revisável/auditável | preparar handoff ou auditoria |
| `privacy-policy` | Rascunho de política de privacidade (LGPD/GDPR) | compliance pras lojas de app |

---

## 🎬 Vídeo — pacote `remotion-dev/skills`
Vídeo programático em React (8 skills, por [Remotion](https://github.com/remotion-dev/skills)). Reels, ads, vídeos data-driven. — 🔧 **todas precisam de ambiente** (Node/render → Code / Cowork)

| Skill | O que faz | Quando usar |
|---|---|---|
| `remotion-best-practices` | Guarda-chuva — puxa as outras quando não se sabe qual usar | vídeo em Remotion sem saber qual skill |
| `remotion-create` | Cria um projeto/composition de vídeo novo | começar projeto de vídeo |
| `remotion-markup` | Markup React pro vídeo (animação, layout, tipografia, áudio, timing) | escrever/animar a composition |
| `remotion-render` | Renderiza em vídeo (MP4) ou frame (still) | exportar vídeo ou frame |
| `remotion-captions` | Legendas/subtítulos animados (estilo Reels) | pôr legenda no vídeo |
| `remotion-interactivity` | Deixa o vídeo editável/paramétrico no Studio | vídeo paramétrico ou editável |
| `remotion-saas` | Arquitetura de apps/produtos com Remotion embutido | feature de vídeo dentro de um app |
| `mediabunny` | Multimídia no browser (cortar, aparar, metadata de vídeo/áudio) | manipular mídia no navegador |

> ⚠️ Licença da Remotion é **não-MIT**: a lib pede licença comercial acima de ~3 pessoas. Ver termos antes de uso em produção.

---

## 🔌 Integrações & mídia por IA

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `genmedia` / `genmedia-workflow` | Gera imagem/vídeo por IA (fal.ai), com pipeline multi-etapa | gerar imagem/vídeo por IA | 🔧 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |
| `typefully` | Agendar/publicar em X · LinkedIn · Threads · Bluesky · Mastodon | agendar post nas redes | 🔧 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |
| `gsap-core` / `gsap-react` / `gsap-scrolltrigger` / `gsap-timeline` | Animação web com GSAP (GreenSock) | animar UI, scroll animation | 🟢 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |

---

## 🗂️ Notion & produtividade — `makenotion`
Skills oficiais do Notion Cookbook ([makenotion](https://github.com/makenotion/claude-code-notion-plugin)) — trabalhar bem dentro do workspace. 🔧 **precisam da conexão com o Notion** (MCP/conector).

| Skill | O que faz | Quando usar |
|---|---|---|
| `notion-knowledge-capture` | Transforma conversa/decisões em doc estruturada no Notion (com links) | salvar decisão ou insight no Notion |
| `notion-meeting-intelligence` | Prepara reunião: junta contexto + research → pre-read + agenda | preparar uma reunião |
| `notion-research-documentation` | Pesquisa no workspace e sintetiza em relatório com citações | pesquisar no workspace e documentar |
| `notion-spec-to-implementation` | Converte spec em tasks/plano com acceptance criteria | quebrar spec em tasks |

---

## ⚖️ Legal & Compliance — `anthropics/claude-for-legal`
Suíte **oficial da Anthropic** (8.9k⭐): **151 skills em 12 plugins** pra fluxos jurídicos e de compliance. Instala como **plugin** (funciona no Claude Code **e** no Cowork, mesma fonte). 🔧 é plugin — não é `npx skills add`.

| Plugin | O que faz | Quando usar |
|---|---|---|
| `commercial-legal` | Revisa contratos de fornecedor/NDA/SaaS contra o playbook, rastreia renovações e prazos de cancelamento, roteia escalonamentos | revisar contrato, NDA, SaaS |
| `corporate-legal` | Diligência de M&A em escala (revisão tabular citada), monta disclosure schedules e closing checklists, minutas de board, prazos societários | diligência de M&A, atos societários |
| `employment-legal` | Revisa contratações/demissões por risco jurisdicional, classifica trabalhadores, rastreia licenças, conduz investigações, redige políticas | contratações, demissões, políticas de RH |
| `privacy-legal` | Triagem de tratamento de dados, gera PIAs, revisa DPAs (controlador/operador), responde DSAR no prazo legal, monitora desvio de política | PIA, DPA, DSAR, dados pessoais |
| `ip-legal` | Clearance de marca + freedom-to-operate, triagem de patenteabilidade, cease-and-desist e DMCA, compliance de open source, prazos de registro | marca, patente, open source |
| `litigation-legal` | Gerencia portfólio de litígios (prazos, holds, demandas), claim charts, cronologias, prep de depoimento, privilege logs, minutas de peças | gerenciar litígios e prazos |
| `regulatory-legal` | Vigia feeds regulatórios, faz diff de novas regras vs. sua política, rastreia prazos de comentário, escreve o digest de segunda | acompanhar mudanças regulatórias |
| `product-legal` | Revisa lançamentos contra sua calibragem de risco, "isso é problema?" em minutos, checa claims de marketing, sinaliza o que precisa de revisão | revisar lançamento e claims |
| `ai-governance-legal` | Triagem de casos de uso de IA contra seu registro, impact assessments, revisa termos de IA de fornecedores, mantém a política de IA atual | avaliar uso de IA na empresa |
| `law-student` | Estuda direito: método socrático, briefing de casos, outlines, prep de prova/OAB, correção de IRAC, cronograma de estudo | estudar direito, prep de prova |
| `legal-clinic` | Monta a clínica jurídica, onboarding de alunos, intake estruturado, rastreia prazos, handoff de casos (dentro da ABA Formal Op. 512) | operar clínica jurídica acadêmica |
| `legal-builder-hub` | Descobre, avalia e instala skills legais da comunidade — com gate de revisão de segurança antes de qualquer coisa entrar no ambiente | avaliar e instalar skills legais |

**Instalar** (Claude Code ou Cowork):
```
/plugin marketplace add anthropics/claude-for-legal
```
Depois `/plugin` → Browse plugins → instale os que quiser. Mesmo plugin roda nos dois ambientes (instale em cada um separadamente).

> ⚠️ Não representa posições jurídicas da Anthropic — é ferramenta de apoio ao advogado, não parecer. O profissional é responsável pelas posições tomadas.

---

## 🔎 Research & ✨ meta

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `last30days` | Pesquisa o que as pessoas **realmente falam** de um tópico nos últimos 30 dias (Reddit/X/YT/TikTok, ranqueado por engajamento) | achar tendência real sobre um tema | 🔧 | [mvanhorn](https://github.com/mvanhorn) |
| `prompt-master` | **Gerador** de prompt pronto-pra-colar, roteado por ferramenta-alvo (ChatGPT/Midjourney/Cursor…) | escrever prompt pra uma ferramenta | 🟢 | [nidhinjs](https://github.com/nidhinjs) |
| `prompt-engineer` | Engenharia/avaliação de prompt (chain-of-thought, few-shot, structured output) | criar e avaliar prompts/system prompts | 🟢 | [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) |
| `skill-builder` | **Fábrica de skills**: transforma doc/repo/PDF/vídeo numa skill pronta (via MCP `skill-seekers`) | converter documentação em skill | 🔧 | [yusufkaraaslan/Skill_Seekers](https://github.com/yusufkaraaslan/Skill_Seekers) |
| `find-skills` | Descobrir e instalar novas skills | procurar skill pra uma tarefa | 🔧 | skills.sh |

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
| [anthropics/claude-for-legal](https://github.com/anthropics/claude-for-legal) | 151 skills legais em 12 plugins (oficial) | ver repo | `/plugin marketplace add anthropics/claude-for-legal` |
| [pbakaus](https://github.com/pbakaus) (impeccable) · [alchaincyf](https://github.com/alchaincyf) (huashu-design) · [op7418](https://github.com/op7418) (logo-generator) · [nidhinjs](https://github.com/nidhinjs) (prompt-master) · [mvanhorn](https://github.com/mvanhorn) (last30days) · [Hardik Pandya](https://hvpandya.com) (stop-slop) | Design, prompt, research, texto | ver cada repo | via skills.sh |

> As licenças variam. Antes de usar comercialmente, cheque a licença no repositório de origem — em especial Remotion (não-MIT) e as integrações que exigem conta paga (fal, stripe, sentry).

---

## 📄 Sobre este catálogo
A **curadoria** (textos, organização, recomendações) é livre pra usar e compartilhar. As **skills** pertencem aos seus autores. Achou uma skill boa que não está aqui? Manda um PR.
