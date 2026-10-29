# 🧩 claude-melhores-skills

**Curadoria em português das melhores _skills_ pro [Claude](https://claude.com)** — **~267 skills curadas em 21 frentes de trabalho**: o que instalar, pra que serve e quando usar. Funciona no Claude Code, no Claude.ai (web/apps) e no Cowork (veja a [matriz de compatibilidade](#-onde-cada-skill-funciona)). Anos de "qual skill presta?" resolvidos numa lista só.

> [!IMPORTANT]
> Este repo é um **catálogo**, não um re-host. Cada skill aponta pro **repositório original do autor** — o crédito, o código e a licença são de quem criou. Você instala **direto da fonte**. Aqui mora só a curadoria (o que vale a pena e por quê).

---

## 🗺️ O que tem aqui (pula pro que te interessa)

| Grupo | Skills | Pra quem |
|---|--:|---|
| 🧠 [Processo & disciplina](#grp-processo) | 6 | deixar o Claude Code mais confiável (TDD, debugging, planos) |
| 💻 [Desenvolvimento](#grp-dev) | 13 | dev React/TS/Supabase/Capacitor + segurança + performance |
| ⚙️ [Fluxo de engenharia](#grp-fluxo) | 5 | workflows de dev disciplinados (spec, protótipo, debug) |
| 🎨 [Design & UI](#grp-design) | 11 | interface, protótipo, auditoria visual e de acessibilidade |
| 🎞️ [Motion & animação](#grp-motion) | 13 | fazer a interface se mexer com critério (web e React Native) |
| 🎨 [Taste & direções de estilo](#grp-taste) | 6 | injetar uma estética **antes** de construir, não auditar depois |
| 📐 [Diagramas & explicadores](#grp-diagramas) | 2 | diagrama editorial pronto pra apresentar e ilustração técnica isométrica |
| 📣 [Marketing](#grp-marketing) | 27 | growth, copy, SEO, ads, lançamento, vendas |
| 📋 [Produto & PM](#grp-produto) | 23 | PRD, discovery, estratégia, métricas, priorização |
| 🧠 [Produtividade de founder](#grp-produtividade) | 7 | foco, weekly review, roast de ideia, gate de reunião |
| 🦴 [Economia de tokens](#grp-tokens) | 7 | cortar custo de output e fazer o contexto durar mais |
| ✂️ [Código enxuto](#grp-enxuto) | 2 | o agente escrever o mínimo que resolve e dizer o que pulou |
| 🎬 [Vídeo](#grp-video) | 22 | Reels/ads programáticos — em React (Remotion) ou em HTML (HyperFrames) |
| 🔌 [Integrações & mídia IA](#grp-integracoes) | 7 | fal, stripe, sentry, GSAP, agendar posts |
| 🗂️ [Notion](#grp-notion) | 4 | trabalhar bem dentro do workspace |
| ⚖️ [Legal & Compliance](#grp-legal) | 151 | fluxos jurídicos (suíte oficial da Anthropic) |
| 🔍 [Auditoria & higiene](#grp-auditoria) | 8 | achar o bug antes do usuário — e manter o próprio setup enxuto |
| 🧪 [QA & testes](#grp-qa) | 21 | E2E, API, mobile, a11y, flaky, triagem de falha e teste do próprio agente de IA |
| 🧭 [Entender codebase](#grp-entender) | 9 | transformar um repo num grafo navegável e tirar dúvida sobre ele |
| 📈 [Dados & forecasting](#grp-dados) | 2 | forecast de série temporal com intervalo e baseline explicável |
| 🔎 [Research & meta](#grp-research) | 5 | pesquisa, prompt, fábrica de skills |
| ✨ [Autorais](#grp-autorais) | 2 | ⭐ escritas por mim, publicadas aqui |

> **Onde funciona:** 🟢 = qualquer Claude (Code · Web · Cowork) · 🔧 = precisa de ambiente (Code/Cowork). Detalhe na [matriz de compatibilidade](#-onde-cada-skill-funciona).

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
| **Vídeo** (Remotion 8 · HyperFrames 12) | ✅ | ❌ | ⚠️ |
| **Browser/testes** (webapp-testing) | ✅ | ❌ | ⚠️ |
| **Research local** (last30days) | ✅ | ❌ | ⚠️ |
| **Diagramas** (diagram-design, anatomy) | ✅ | ❌ | ⚠️ |
| **Entender codebase** (understand-*) | ✅ | ❌ | ⚠️ |
| **Forecast com modelo local** (timesfm-forecasting) | ✅ | ❌ | ⚠️ |
| **Estatística em Python** (statsmodels) | ✅ | ⚠️ | ✅ |
| **Economia de token — instrução pura** (caveman, help, commit, review) | ✅ | ✅ | ✅ |
| **Código enxuto** (ponytail) | ✅ | ✅ | ✅ |
| **Economia de token — com hook/script/subagente** (compress, cavecrew, stats) | ✅ | ❌ | ⚠️ |
| **MCP-backed** (skill-builder, sentry-fix, Notion) | ✅¹ | ⚠️¹ | ✅¹ |

✅ funciona · ❌ não roda · ⚠️ parcial/depende do ambiente · ¹ precisa do MCP/conector ligado

Nas tabelas de cada seção, a coluna **"Onde"** resume isso por skill: 🟢 = qualquer Claude · 🔧 = precisa de ambiente (Code/Cowork).

---

<a id="grp-processo"></a>
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

<a id="grp-dev"></a>
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

<a id="grp-fluxo"></a>
> 💡 **Vite:** `vite-patterns` — config, plugins, HMR, variável de ambiente, proxy, SSR, modo biblioteca e otimização de build. Dispara ao mexer em `vite.config` ou quando o build fica lento/quebrado. 🟢 · [affaan-m/ECC](https://github.com/affaan-m/ECC) (MIT).

## ⚙️ Fluxo de engenharia — pacote `mattpocock/skills`

Workflows de dev disciplinados, por [Matt Pocock](https://github.com/mattpocock/skills) (Total TypeScript). MIT. — 🔧 **todas precisam do Claude Code** (repo/filesystem/gh/agentes em background).

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `to-spec` | Conversa atual → spec publicada no issue tracker, sem entrevista | fechar uma discussão de feature em spec | 🔧 | [mattpocock/skills](https://github.com/mattpocock/skills) |
| `prototype` | Protótipo descartável: app de terminal (lógica/estado) ou variações de UI numa rota | validar design antes de construir | 🔧 | [mattpocock/skills](https://github.com/mattpocock/skills) |
| `diagnosing-bugs` | Loop reproduzir→minimizar→hipotetizar→instrumentar→corrigir→regressão | bug difícil, regressão de performance | 🔧 | [mattpocock/skills](https://github.com/mattpocock/skills) |
| `research` | Pesquisa em fontes primárias → Markdown citado no repo (agente em background) | verificar fatos de docs/API | 🔧 | [mattpocock/skills](https://github.com/mattpocock/skills) |
| `teach` | Ensino multi-sessão com workspace de aprendizado com estado | aprender um conceito com acompanhamento | 🔧 | [mattpocock/skills](https://github.com/mattpocock/skills) |

```bash
npx skills add mattpocock/skills --skill to-spec --skill prototype --skill diagnosing-bugs --skill research --skill teach -g
```

---

<a id="grp-design"></a>
## 🎨 Design & UI

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `frontend-design` | Interfaces web bonitas e **não-genéricas** (foge do "cara de IA") | construir ou estilizar qualquer UI web | 🟢 | [Anthropic](https://github.com/anthropics/skills) |
| `impeccable` | **Auditor anti-AI-slop**: detecta "tells" de design gerado por IA + qualidade | auditar qualidade de uma tela | 🔧 | [pbakaus](https://github.com/pbakaus) |
| `web-design-guidelines` | **Auditora de acessibilidade & conformidade**: revisa código de UI contra 100+ regras (aria, HTML semântico, foco, teclado, forms, dark mode, i18n) | design já bom → garantir que é acessível e não constrange quem usa teclado/leitor de tela; QA antes de subir | 🟢 | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) |
| `huashu-design` | Design HTML-native: protótipos hi-fi, decks, animações, export MP4/GIF/PDF/PPTX | protótipo, deck, animação, export MP4 | 🔧 | [alchaincyf](https://github.com/alchaincyf) |
| `ui-ux-pro-max` **(+6)** | Suíte que **não alucina UI**: 84 estilos, 161 paletas, 99 regras de UX, tokens, slides, banners | escolher estilo/paleta ou planejar UI | 🟢 | [nextlevelbuilder](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) |
| `logo-generator` | Logos SVG (geométricos) + showcase via Gemini | gerar logo e variações de marca | 🔧 | [op7418](https://github.com/op7418) |
| `canvas-design` | Arte estática em `.png`/`.pdf` (posters, criativos) | pedir poster ou arte estática | 🟢 | [Anthropic](https://github.com/anthropics/skills) |
| `svg-design` | **Desenha logo e ícone direto em SVG** (sem gerar raster e sem API key): path, fill-rule, gradiente, máscara, ARIA, otimização — com 8 referências carregadas sob demanda | gerar ou editar logo/ícone vetorial; marca que precisa ser legível a 16px | 🟢 | [tryopendata/skills](https://github.com/tryopendata/skills) |
| `frontend-slides` | Deck HTML animado do zero **ou convertendo PPT/PPTX** pra web | converter apresentação existente, deck de talk com animação | 🔧 | [zarazhangrui](https://github.com/zarazhangrui/frontend-slides) |
| `design-lab` | Entrevista você, gera **5 variações distintas** de UI num lab temporário e devolve plano de implementação | explorar opções de design, comparar abordagens antes de escolher | 🟢 | [0xdesign](https://github.com/0xdesign/design-plugin) ⚠️ *sem licença declarada* |
| `stop-slop` | Tira a "cara de IA" de textos (remove padrões previsíveis) | escrever, editar ou revisar texto | 🟢 | [Hardik Pandya](https://hvpandya.com) |

---

<a id="grp-motion"></a>
## 🎞️ Motion & animação

**13 skills** pra fazer a interface se mexer com critério — 10 de [Emil Kowalski](https://github.com/emilkowalski/skills) (autor do **Sonner** e do **Vaul**, MIT) e 3 de [Raphael Salaja](https://github.com/raphaelsalaja/skill). — 🟢 **todas instrução pura** (rodam em qualquer Claude)

> ⚠️ **Este é o grupo com mais risco de rota ambígua do catálogo.** São muitas skills plausíveis pro mesmo pedido "anima essa UI". Use a régua da última coluna pra escolher — e se você já tem `gsap-*` ou o `impeccable` instalados, saiba que eles também disputam essa faixa.

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `animate` | **O construtor (web).** Decide na ordem que importa: deve animar? qual propósito? ferramenta mais barata, propriedades, curva e duração, como interrompe e como sai — e escreve o código já com `prefers-reduced-motion`. Às vezes devolve **zero linha** | construir animação ou micro-interação **na web** | 🟢 | [emilkowalski](https://github.com/emilkowalski/skills) |
| `animate-expo` | **O construtor (React Native / Expo).** Decide em que thread roda, quais propriedades não re-disparam layout, spring × timing, como o gesto entrega velocidade e como degrada em aparelho fraco. Escreve com Reanimated, Gesture Handler, Expo Router e expo-haptics | animar em app Expo: sheet, swipe, transição de rota, háptico, "trava no celular" | 🟢 | [emilkowalski](https://github.com/emilkowalski/skills) |
| `apple-design` | O jeito Apple de interface e **movimento físico** traduzido pra web: spring, gesto, drag/swipe/sheet, momentum, transição interrompível, material translúcido, tipografia ótica | UI dirigida a gesto, spring, bottom-sheet, "quero que pareça iOS" | 🟢 | [emilkowalski](https://github.com/emilkowalski/skills) |
| `emil-design-eng` | A **filosofia** por trás do polimento: design de componente, decisão de animação e os detalhes invisíveis que fazem software parecer bom | construir ou revisar UI com barra alta de acabamento | 🟢 | [emilkowalski](https://github.com/emilkowalski/skills) |
| `review-animations` | **Code review de animação** contra uma barra alta de craft — sinaliza por padrão, não elogia | revisar **um diff** que mexeu em motion | 🟢 | [emilkowalski](https://github.com/emilkowalski/skills) |
| `improve-animations` | Audita **a base inteira** de motion como consultor sênior e devolve plano priorizado pra outro agente executar. Read-only | querer roadmap de motion, não review de um diff | 🟢 | [emilkowalski](https://github.com/emilkowalski/skills) |
| `find-animation-opportunities` | Varre a UI atrás do que **não anima e deveria** — e rejeita o que não deve animar. Propõe com valores exatos, sem implementar | "o que dá pra animar aqui?", "deixa isso mais vivo" | 🟢 | [emilkowalski](https://github.com/emilkowalski/skills) |
| `animation-vocabulary` | **Glossário reverso**: descrição vaga vira o termo exato ("aquele efeito elástico do scroll do iOS" → *rubber-banding*) | não saber o nome do efeito pra pedir ou promptar | 🟢 | [emilkowalski](https://github.com/emilkowalski/skills) |
| `pick-ui-library` | Escolhe a lib certa pra tarefa de frontend numa lista curada e opinativa (números, OTP, gráfico, command menu, virtual list) | "qual biblioteca eu uso pra X?" | 🟢 | [emilkowalski](https://github.com/emilkowalski/skills) |
| `ask-sonner` | Guia do **Sonner** (lib de toast): ligar o Toaster, escolher o `toast()` certo, promise e loading, atualizar, dispensar, estilizar, tema, posição | toast que não aparece, aparece duas vezes, perde o estilo ou fica atrás do modal | 🟢 | [emilkowalski](https://github.com/emilkowalski/skills) |
| `12-principles-of-animation` | Audita movimento contra os **12 princípios da Disney** adaptados pra web; devolve achados em `arquivo:linha` | conferir se o movimento parece natural e orgânico | 🟢 | [raphaelsalaja](https://github.com/raphaelsalaja/skill) ⚠️ *sem licença declarada* |
| `mastering-animate-presence` | Audita código **Motion/Framer Motion** contra as boas práticas de `AnimatePresence` | animação de **saída** não roda, modal some sem transição | 🟢 | [raphaelsalaja](https://github.com/raphaelsalaja/skill) ⚠️ *sem licença declarada* |
| `pseudo-elements` | Audita CSS de **pseudo-elementos** (`::before`/`::after`/`::backdrop`) e o uso da **View Transitions API** | efeito de hover, camada decorativa, transição de página | 🟢 | [raphaelsalaja](https://github.com/raphaelsalaja/skill) ⚠️ *sem licença declarada* |

```bash
npx skills add emilkowalski/skills --skill animate      # troque pelo nome da skill
npx skills add https://github.com/raphaelsalaja/skill --skill 12-principles-of-animation
```

---

<a id="grp-taste"></a>
## 🎨 Taste & direções de estilo

**6 skills** de *gosto*, por [Leon Lin](https://github.com/Leonxlnx) (MIT). A diferença pro grupo de Design acima: em vez de **auditar depois**, elas **injetam uma direção estética antes** de você construir. — 🟢 **todas instrução pura**

> 🔀 **O repo mudou em outubro/2026.** A versão "com dials" e as 5 direções fechadas foram pro [`Leonxlnx/taste-skill-classics`](https://github.com/Leonxlnx/taste-skill-classics). O [`taste-skill`](https://github.com/Leonxlnx/taste-skill) principal virou a **v2**: um pipeline que sorteia direção de arte, testa a página num navegador real e busca fotos em acervos abertos. **Esta curadoria fica com a versão com dials:** no [teste cego publicado pelo próprio autor](https://github.com/Leonxlnx/taste-skill/blob/main/skills/taste-skill/references/research.md), a v2 ficou abaixo ou empatada com *não usar skill nenhuma* nas 5 rodadas.
> 🔒 **No classics, as 6 só rodam por comando** (`/minimalist-ui`, `/gpt-taste`…): decisão do autor pra elas não dispararem sozinhas. Peça pelo nome quando já souber o visual.
> ⚠️ **Nome × pasta:** no upstream o nome da pasta **diverge do `name:` do frontmatter**. Os nomes abaixo são os do frontmatter (que é o que vale); a pasta original está entre parênteses.

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `design-taste-frontend-v2-experimental` *(taste-skill-v2-experimental)* | **A principal, com dials.** Anti-slop pra landing, portfólio e redesign: lê o brief, infere a direção certa e entrega interface que não parece template. Audit-first em redesign | "faz uma landing que não pareça template", redesign de página | 🟢 | [taste-skill-classics](https://github.com/Leonxlnx/taste-skill-classics) |
| `high-end-visual-design` *(soft-skill)* | Design de **agência cara**: define fonte, spacing, sombra, estrutura de card e animação que fazem o site parecer caro — e **bloqueia os defaults** que dão cara de IA barata | "quero que pareça premium", site institucional de marca | 🟢 | [taste-skill-classics](https://github.com/Leonxlnx/taste-skill-classics) |
| `minimalist-ui` *(minimalist-skill)* | Direção **editorial minimalista**: monocromático quente, contraste tipográfico, bento flat, pastel discreto. Sem gradiente, sem sombra pesada, com `prefers-reduced-motion` | blog, documentação, página de manifesto | 🟢 | [taste-skill-classics](https://github.com/Leonxlnx/taste-skill-classics) |
| `industrial-brutalist-ui` *(brutalist-skill)* | Direção **brutalista**: print suíço + terminal militar, grid rígido, contraste extremo de escala tipográfica, degradação analógica | dashboard denso, portfólio cru, "cara de documento vazado" | 🟢 | [taste-skill-classics](https://github.com/Leonxlnx/taste-skill-classics) |
| `gpt-taste` *(gpt-tasteskill)* | UX/UI com **GSAP pesado**: randomização de layout, estrutura AIDA, tipografia editorial larga, bento sem gap, ScrollTrigger com pin/stack/scrub — e todo movimento respeita `prefers-reduced-motion` | landing com scroll cinematográfico | 🟢 | [taste-skill-classics](https://github.com/Leonxlnx/taste-skill-classics) |
| `stitch-design-taste` *(stitch-skill)* | Gera um **`DESIGN.md`** semântico (tipografia estrita, cor calibrada, layout assimétrico, micro-movimento) pra alimentar um agente. Feita pro Google Stitch, mas o arquivo serve a qualquer um | querer um contrato de design em arquivo que o agente siga | 🟢 | [taste-skill-classics](https://github.com/Leonxlnx/taste-skill-classics) |

---

<a id="grp-diagramas"></a>
## 📐 Diagramas & explicadores

**2 skills** pra quando o entregável é uma figura. A pergunta que separa as duas: é um **diagrama pra apresentar** (o caso comum) ou uma **peça-herói** que explica um conceito como um objeto físico?

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `diagram-design` | **Diagrama editorial pronto pra apresentar**, com a sua marca, num único HTML+SVG. São 45 tipos (arquitetura, fluxograma, sequência, ER, swimlane, matriz 2×2, waterfall, medallion, Sankey, Wardley, service blueprint, Gantt…), com limite de complexidade (até 9 nós), checklist anti-slop, perfis de marca e redesenho de `.drawio`/Mermaid/Excalidraw. Exporta SVG e PNG | "faz um diagrama pra apresentação", arquitetura pro deck ou pra doc, ponte orçado × realizado, "deixa esse mermaid apresentável" | 🔧 | [cathrynlavery/diagram-design](https://github.com/cathrynlavery/diagram-design) |
| `anatomy` | **Explica um conceito técnico como uma máquina isométrica de verdade**: um cache que pula trabalho vira uma fechadura de pinos que só gira quando todos batem. Peças sólidas, legenda, leitura ao vivo e motion calmo. Sai como HTML, SVG, componente React, PNG ou pôster A4 em PDF | peça-herói pra post, capa de artigo ou pôster — leva horas, não minutos | 🔧 | [wheresryan22/anatomy](https://github.com/wheresryan22/anatomy) |

> ⚠️ **Se instalar as duas:** a description da `anatomy` também puxa "figura explicativa pra documentação", então ela disputa o pedido com a `diagram-design`. Vale deixar a `anatomy` só por comando (`disable-model-invocation: true` no frontmatter). E o fluxo de "publicar na galeria" da `anatomy` abre um **PR público com o seu prompt** — não use com conteúdo confidencial.
> 💡 **`diagram-design`:** o PNG sai via Playwright (Python + Chromium), e o HTML gerado carrega Google Fonts ao abrir (há modo offline). Os comandos do plugin incluem um `/doctor`, que colide com o comando nativo do Claude Code — instalando como skill, você pede "roda o doctor do diagram-design" em linguagem natural.

---

<a id="grp-marketing"></a>
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

<a id="grp-produto"></a>
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

<a id="grp-produtividade"></a>
## 🧠 Produtividade de founder — pacote `alirezarezvani/claude-skills`

Núcleo de produtividade solo garimpado de um mega-repo (MIT, por [Alireza Rezvani](https://github.com/alirezarezvani/claude-skills)). — 🔧 **todas têm scripts Python, mas stdlib-only (zero `pip install`)** — rodam no Claude Code e portam bem.

| Skill | O que faz | Quando usar |
|---|---|---|
| `capture` | Brain-dump caótico → sistema acionável (Projetos/Ideias · Tarefas · Conexões) sem perder nada | despejar um monte de ideias soltas de uma vez |
| `weekly-review` | Weekly review GTD (David Allen): fecha loops, audita projetos parados, pontua compromissos 0-100 | rodar a revisão semanal, voltar ao sistema confiável |
| `deep-work` | Planeja dia de foco + time-blocking energy-first, teto de 4h de trabalho profundo, log de sessões | planejar horas de foco, proteger o deep work |
| `roast` | Painel adversarial de 5 ângulos destrói uma ideia → veredito GO/RESHAPE/KILL + teste mais barato | estressar/validar uma ideia antes de construir |
| `meetings` | Gate anti-reunião: precifica em $ (ASYNC/NOT-READY/MEET), agenda decision-first, action items com dono | decidir se a reunião vale, transformar notas em tarefas |
| `reflect` | Zoom-out no meio da conversa: reavalia direção, premissas e viés em 5 dimensões | "dá um passo atrás", sanity check, sair do modo-detalhe |
| `handoff` | Compacta a conversa num doc de handoff (redige segredos) pra outro agente/sessão pegar | trocar de máquina, encerrar o dia no meio da tarefa |

```bash
npx skills add alirezarezvani/claude-skills
```

---

<a id="grp-tokens"></a>
## 🦴 Economia de tokens — pacote `JuliusBrussee/caveman`

Faz o agente responder em "caveman speak": corta artigo, filler e pleonasmo, mantendo 100% da substância técnica — código, comandos, nomes de API, mensagens de erro e números ficam **verbatim** (MIT, por [Julius Brussee](https://github.com/JuliusBrussee/caveman)). O autor mede −65% de tokens de output em prosa e −8,5% numa run agêntica completa, e publica um `docs/HONEST-NUMBERS.md` com os casos em que o modo **não** compensa. Preserva o idioma de quem escreve — se você escreve em PT, ele responde em PT.

| Skill | O que faz | Quando usar | Onde |
|---|---|---|:-:|
| `caveman` | O núcleo: 6 níveis de compressão (`lite` · `full` · `ultra` + `wenyan-*`, chinês clássico). Desliga sozinho em aviso de segurança, confirmação de ação irreversível e sequência multi-passo que ficaria ambígua comprimida | sessão longa comendo contexto, cortar custo de output, "seja breve" | 🟢 |
| `caveman-help` | Cartão de referência dos modos e comandos. One-shot, não persiste nada | esqueceu qual nível faz o quê | 🟢 |
| `caveman-commit` | Commit em Conventional Commits: assunto ≤50 chars, imperativo, corpo só quando o "porquê" não é óbvio | gerar mensagem de commit | 🟢 |
| `caveman-review` | Code review de uma linha por achado — `L<linha>: problema. fix.` — com severidade 🔴 bug · 🟡 risco · 🔵 nit · ❓ dúvida | revisar PR/diff sem enrolação | 🟢 |
| `caveman-compress` | Comprime arquivos de **memória** (CLAUDE.md, todos, preferências) pra economizar token de *input* — o resto do pacote economiza *output*. Backup legível fica fora da árvore do projeto | CLAUDE.md engordando a cada sessão | 🔧 |
| `cavecrew` | Três subagentes que devolvem output comprimido (achar código · editar 1-2 arquivos · revisar diff): o tool-result que volta pro contexto principal fica ~60% menor | delegar sem estourar o contexto | 🔧 |
| `caveman-stats` | Tokens reais da sessão e economia estimada, lidos do log do Claude Code — inclui o custo das regras injetadas e o saldo líquido | conferir se está de fato valendo a pena | 🔧 |

```bash
# tudo: detecta seus agentes e instala plugin + hooks + statusline
npx -y github:JuliusBrussee/caveman

# só o plugin do Claude Code, sem hooks
claude plugin marketplace add JuliusBrussee/caveman && claude plugin install caveman@caveman
```

> ⚠️ **Repare que os hooks ligam o modo sozinho.** A instalação completa adiciona um hook de `SessionStart` que ativa o nível `full` em toda sessão e todo projeto, e um de `UserPromptSubmit` que reinjeta as regras a cada turno (~1.250 tokens de *input* por turno, pela conta do próprio autor). Em sessão de respostas curtas isso fica **net-negativo** — e, pra crédito dele, o `/caveman-stats` fala isso na sua cara em vez de esconder atrás do número bruto de economia. Se você prefere opt-in, instale com `--minimal` e chame `/caveman` só quando quiser.

---

<a id="grp-enxuto"></a>
## ✂️ Código enxuto — `DietrichGebert/ponytail`

A gêmea de código da `caveman`: a caveman enxuga a **prosa**, a ponytail enxuga o **código**. **2 de 6 skills**, por [DietrichGebert](https://github.com/DietrichGebert/ponytail) (MIT).

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `ponytail` | Modo **"dev sênior preguiçoso"**: a menor mudança que resolve por completo, reusa o que já existe, prefere stdlib a dependência nova e nunca corta validação nem segurança. Fecha toda resposta com **o que pulou, o que não checou e o risco** | `/ponytail [lite\|full\|ultra]`, "faz o mais simples", "tá over-engineered" | 🟢 | [DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail) |
| `ponytail-debt` | Lista todo comentário `shortcut:` que a ponytail deixou pra depois: o livro-razão da dívida consciente | "o que ficou de atalho nesse repo?" | 🔧 | [DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail) |

> ⚠️ **Plugin × skill solta:** o plugin oficial instala hooks que ligam o modo em **toda** sessão e injetam as regras em todo subagente. Instalando só as skills, ela fica opt-in (`/ponytail`). Os números do README (−53% de código, −26% de custo) foram medidos com o plugin inteiro — não espere o mesmo da skill solta.
> 📊 **A distribuição, não só a média:** no [benchmark de 07/10 do próprio autor](https://github.com/DietrichGebert/ponytail/blob/main/benchmarks/results/2026-10-07-agentic.md), ela pega **mais** bug injetado no total (66% × 46% sem skill), porque escreve teste onde a lógica pede (98% × 68%). Mas, onde já existe teste, o dela é mais raso (pega 69% × 77%).
> 💡 Ficaram fora desta curadoria: `ponytail-review` (já há rotas demais pra revisar diff), `ponytail-audit`, `ponytail-gain` e `ponytail-help`.

---

<a id="grp-video"></a>
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

<a id="grp-hyperframes"></a>
## 🎬 Vídeo — pacote `heygen-com/hyperframes`
Vídeo programático em **HTML + CSS + GSAP** (12 de 19 skills, por [HeyGen](https://github.com/heygen-com/hyperframes)). Mesma mecânica do Remotion acima — Chrome headless + FFmpeg — mas a autoria é HTML puro **sem build step**, e a licença é **Apache-2.0, sem taxa por render**. — 🔧 **todas precisam de ambiente** (Node ≥22 + FFmpeg → Code / Cowork)

**Core (8)** — a base que o router compõe

| Skill | O que faz | Quando usar |
|---|---|---|
| `hyperframes` | **Router — leia primeiro.** Mapa de capacidades; captura a intenção e instala o workflow certo sob demanda | qualquer "faz/edita/anima/renderiza um vídeo" |
| `hyperframes-core` | O contrato da composição: `data-*` de timing, `class="clip"`, tracks, sub-composições, regras de determinismo | antes de escrever o HTML da composição |
| `hyperframes-animation` | Todo o conhecimento de movimento: regras atômicas, blueprints de cena, transições, 7 runtimes (GSAP padrão + Lottie, Three.js, Anime.js, CSS, WAAPI, TypeGPU) | animar, ou auditar a coreografia |
| `hyperframes-keyframes` | Keyframes seek-safe: timelines GSAP, CSS, FLIP, paths, máscaras, morph/draw de SVG, 3D | animação quebrando ao dar seek |
| `hyperframes-creative` | Direção criativa não-animada: `frame.md`/`design.md`, paleta, tipografia, narração, plano de beats | decidir o visual antes de animar |
| `hyperframes-cli` | O loop de dev: `init` `lint` `check` `preview` `render` `doctor` + render em cloud e AWS Lambda | rodar ou depurar build e render |
| `hyperframes-registry` | Instalar e ligar blocos prontos do catálogo (`hyperframes add`) — transições shader, overlays, gráficos | quer um componente pronto em vez de animar do zero |
| `media-use` | **Media OS**: resolve BGM, SFX, imagem, ícone, logo, voz ou LUT num arquivo local + registro no ledger; gera por TTS/música/imagem quando falta | precisa de qualquer mídia dentro do vídeo |

**Workflows de criação (4 dos 10)** — o router instala os outros sob demanda

| Skill | O que faz | Quando usar |
|---|---|---|
| `talking-head-recut` | Empacota vídeo de rosto falando com cards de overlay **sincronizados na transcrição** — lower-third, callout de dado, citação, painel lateral, PiP. O clipe roda intacto embaixo | "põe gráficos no meu vídeo", "empacota isso" |
| `motion-graphics` | Peça curta onde o movimento **é** a mensagem: tipografia cinética, contagem de número, hit de gráfico, logo sting, mapa animado, manchete animada. <10s, MP4 ou overlay transparente | vinheta, sting de abertura, número grande na tela |
| `faceless-explainer` | Texto → vídeo **sem rosto e sem captura de tela**: cada visual é inventado por cena (tipografia, abstrato, diagrama, data-viz) | explicar um conceito sem aparecer na câmera |
| `embedded-captions` | Legenda sobre vídeo falado: 35 estilos nomeados, **44 fontes empacotadas**, e o modo que põe a palavra **atrás** do sujeito (faz matting local) | legenda que um `.srt` queimado não consegue fazer |

```bash
npx hyperframes skills update              # o core (8)
npx hyperframes skills update motion-graphics   # um workflow específico
```

> ⚠️ **Não use `npx skills add` sem `--skill`** num run não-interativo: ele instala as **19** de uma vez, em vez do core. O `hyperframes skills update` instala exatamente o core, e o router puxa cada workflow quando precisar.
>
> 🔎 **Sobre os alertas de risco no instalador:** `motion-graphics` e `talking-head-recut` aparecem como *High Risk* nos scanners. Auditando o código: o gatilho é `child_process`/`spawnSync` — elas chamam ffmpeg, Chrome e whisper — e JS minificado vendorizado (`gsap.min.js`). Rede só pra `cdn.jsdelivr.net`. Vale sua própria auditoria antes de rodar, como qualquer skill que executa com permissão de agente.

**Remotion ou HyperFrames?** Os dois renderizam com Chrome headless + FFmpeg. A diferença é a autoria: Remotion aposta em componentes React (precisa de bundler, handoff em JSX); HyperFrames aposta em HTML puro que humano e agente escrevem igual, e um `index.html` já roda no navegador sem build. Pra pipeline dirigido por agente, HTML costuma ganhar. Na licença não tem empate: Apache-2.0 sem taxa por render, contra a licença comercial da Remotion acima de ~3 pessoas.

---

<a id="grp-integracoes"></a>
> 🎥 **Fora dos dois pacotes acima:**
> | Skill | Pra que serve | Quando usar | Onde | Fonte |
> |---|---|---|---|---|
> | `ui-demo` | **Grava a tela do seu app** e devolve vídeo de demo com cursor visível e ritmo natural, dirigindo o Playwright | GIF pro README, captura pro post, tutorial da interface | 🔧 | [affaan-m/ECC](https://github.com/affaan-m/ECC) |
> | `brag` | Projeto pronto vira **vídeo de lançamento** curto e compartilhável (motor HyperFrames). Lê o código do projeto direto: não precisa de URL no ar nem screenshot | "faz um vídeo de lançamento", mostrar o que você construiu | 🔧 | [latent-spaces/brag](https://github.com/latent-spaces/brag) |

> ⚠️ **`brag` — atenção à licença da trilha:** o código da skill é MIT, mas ela vem com **faixas de música de terceiro** (~13 MB) que **não** são cobertas por essa licença — o próprio README do projeto pede pra verificar e documentar os termos antes de publicar ou redistribuir. Se o vídeo for a público, troque por trilha própria ou confirme a licença na fonte.

## 🔌 Integrações & mídia por IA

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `genmedia` / `genmedia-workflow` | Gera imagem/vídeo por IA (fal.ai), com pipeline multi-etapa | gerar imagem/vídeo por IA | 🔧 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |
| `typefully` | Agendar/publicar em X · LinkedIn · Threads · Bluesky · Mastodon | agendar post nas redes | 🔧 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |
| `gsap-core` / `gsap-react` / `gsap-scrolltrigger` / `gsap-timeline` | Animação web com GSAP (GreenSock) | animar UI, scroll animation | 🟢 | [VoltAgent](https://github.com/VoltAgent/awesome-agent-skills) |

---

<a id="grp-notion"></a>
## 🗂️ Notion & produtividade — `makenotion`
Skills oficiais do Notion Cookbook ([makenotion](https://github.com/makenotion/claude-code-notion-plugin)) — trabalhar bem dentro do workspace. 🔧 **precisam da conexão com o Notion** (MCP/conector).

| Skill | O que faz | Quando usar |
|---|---|---|
| `notion-knowledge-capture` | Transforma conversa/decisões em doc estruturada no Notion (com links) | salvar decisão ou insight no Notion |
| `notion-meeting-intelligence` | Prepara reunião: junta contexto + research → pre-read + agenda | preparar uma reunião |
| `notion-research-documentation` | Pesquisa no workspace e sintetiza em relatório com citações | pesquisar no workspace e documentar |
| `notion-spec-to-implementation` | Converte spec em tasks/plano com acceptance criteria | quebrar spec em tasks |

---

<a id="grp-legal"></a>
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

<a id="grp-auditoria"></a>
## 🔍 Auditoria de código & higiene do setup

**8 skills** pra achar o problema antes do usuário achar — e pra manter o **próprio** setup do agente enxuto. Uma de [shadcn](https://github.com/shadcn/improve) (MIT) e 7 garimpadas do [affaan-m/ECC](https://github.com/affaan-m/ECC) (MIT), um mega-harness de 300+ skills do qual vale trazer **peças**, não o conjunto inteiro.

> 💡 **A régua entre elas:** varrer a base e sair com plano → `improve` · "tá pronto pra subir?" → `production-audit` · "o botão não faz nada" → `click-path-audit` · "vou plugar um MCP" → `mcp-dependency-review` · revisar **um diff** → use o `/code-review` nativo, não estas.

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `improve` | **Consultor sênior read-only**: varre a base, acha as oportunidades de maior valor (bug, segurança, performance, cobertura de teste, dívida técnica, migração, DX, próximos passos de produto) e escreve **planos self-contained pra outro modelo/agente mais barato executar**. Nunca edita código | "audita esse repo", "o que fazer nesse projeto agora", gerar plano de handoff | 🟢 | [shadcn/improve](https://github.com/shadcn/improve) |
| `production-audit` | Prontidão pra produção por lentes (config, segredo, migração, permissão, caminho de erro), com **evidência local** — sem mandar o repo pra serviço externo | véspera de deploy, revisão pós-merge, "o que quebra em produção?" | 🟢 | [affaan-m/ECC](https://github.com/affaan-m/ECC) |
| `click-path-audit` | Segue o **caminho do clique** ponta a ponta: o handler existe, chega no backend, persiste e volta pra tela. Acha o bug em que duas funções individualmente certas **se cancelam** | "o botão não faz nada", "salvou mas sumiu", depois de refactor que mexeu em estado compartilhado | 🟢 | [affaan-m/ECC](https://github.com/affaan-m/ECC) |
| `ai-regression-testing` | Ataca o ponto cego do código escrito por IA — **o mesmo modelo escreve e revisa**. Teste de API em sandbox sem depender do banco | depois de uma leva grande de código gerado; "por que só quebra em produção?" | 🟢 | [affaan-m/ECC](https://github.com/affaan-m/ECC) |
| `config-gc` | **Faxina do setup do agente**: varre skills, memória, hooks, permissões, MCPs e cache atrás do que é redundante, obsoleto ou órfão, confirmando cada exclusão | "meu setup tá inchado", revisão periódica. ⚠️ *ela lê a pasta de config inteira — revise o escopo antes de deixar apagar* | 🔧 | [affaan-m/ECC](https://github.com/affaan-m/ECC) |
| `skill-stocktake` | **Inventário crítico das suas skills**: avalia qualidade, aponta sobreposição e sugere fusão ou aposentadoria. Tem modo rápido e completo. ⚙️ *precisa de `jq`* | depois de instalar muita coisa de uma vez; "quais skills eu nunca uso?" | 🔧 | [affaan-m/ECC](https://github.com/affaan-m/ECC) |
| `loop-design-check` | Desenha e revisa **loop de agente autônomo** contra os cinco modos de falha: girar queimando token, burlar o verificador, ou levar uma resposta errada até o fim | montar ou revisar um loop/cron/agente em background | 🟢 | [affaan-m/ECC](https://github.com/affaan-m/ECC) |
| `mcp-dependency-review` | **Revisão estática da config de MCP** (`.mcp.json`, Cursor, VS Code, Claude) atrás de pacote com versão solta — `@latest`, sem versão, branch de git — antes de aprovar ou subir no CI. Não executa nenhum servidor | antes de plugar ou atualizar um MCP, revisar o `.mcp.json` de um repo | 🟢 | [affaan-m/ECC](https://github.com/affaan-m/ECC) |

> 🧹 **Sobre as duas últimas:** é raro um catálogo de skills indicar skills que **removem** skills. `config-gc` e `skill-stocktake` são a ponta de saída — se você instala muita coisa (como quem lê este repo), elas evitam que o setup vire um depósito.

---

<a id="grp-qa"></a>
## 🧪 QA & testes — pacote `petrkindlmann/qa-skills`

Pacote de QA bem acima da média: cada skill diz o que **não** é e pra qual mandar, e várias trazem lista de "não faça" escrita pra agente. **21 de 50 skills**, por [Petr Kindlmann](https://github.com/petrkindlmann/qa-skills) (MIT).

> 💡 **A régua com as vizinhas:** E2E novo → `playwright-automation` · bug vago → `bug-reproduction` · "tá pronto pra subir?" → `production-audit` olha o código, `release-readiness` decide o go/no-go · agente de IA → `ai-system-testing`.

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `qa-do` | Roteador do pacote: situação de QA em linguagem comum → as 1–2 skills certas, executadas com evidência | "por onde começo o QA?", "valida esse app" | 🟢 | [petrkindlmann/qa-skills](https://github.com/petrkindlmann/qa-skills) |
| `qa-start` | Projeto sem QA nenhum: contexto → estratégia → plano numa rodada | "QA do zero" | 🟢 | idem |
| `qa-project-context` | Cria o arquivo de contexto de QA (stack, CI, ambientes, riscos) que as outras skills leem primeiro | primeira vez de QA num repo | 🟢 | idem |
| `risk-based-testing` | Matriz impacto × probabilidade: onde vale gastar teste | "o que pode quebrar?" | 🟢 | idem |
| `exploratory-testing` | Sessão exploratória com charter e heurísticas; achado vira teste automatizado | "caça bug" | 🟢 | idem |
| `playwright-automation` | Suíte Playwright de produção, com lista de "não faça" pra agente | "escreve teste E2E" | 🟢 | idem |
| `api-testing` | API REST/GraphQL com schema (Zod, AJV), auth e CRUD | "testa o endpoint" | 🟢 | idem |
| `mobile-testing` | Detox, Maestro e Appium: deep link, permissão, offline | "teste mobile" | 🟢 | idem |
| `accessibility-testing` | WCAG 2.2 AA com axe, teclado e leitor de tela | "a11y", "WCAG" | 🟢 | idem |
| `security-testing` | OWASP Top 10 (2025) automatizado no CI | "teste de segurança" | 🟢 | idem |
| `database-testing` | Migração ida e volta, constraints, drift e seed | "testa a migration" | 🟢 | idem |
| `email-testing` | Confirmação de cadastro, magic link e OTP com caixa de captura | "testa o e-mail de cadastro" | 🟢 | idem |
| `ai-bug-triage` | Falha de CI → impressão digital + LLM: classifica, deduplica e escreve o ticket | "classifica as falhas do CI" | 🟢 | idem |
| `bug-reproduction` | Relato vago → repro mínima → teste que falha antes do fix; git bisect | "reproduz esse bug" | 🟢 | idem |
| `test-reliability` | Teste instável: classifica o flake, quarentena, correção com evidência | "teste flaky" | 🟢 | idem |
| `ai-system-testing` | Testa feature ou agente de IA (eval, alucinação, injeção indireta); traz um detector de prompt injection | "testa nosso agente" | 🔧 | idem |
| `agentic-browser-testing` | E2E por objetivo: um agente de navegador explora o app e afirma o resultado | "deixa um agente explorar o app" | 🔧 | idem |
| `release-readiness` | Go/no-go com evidência: checklist, smoke, rollback | "tá pronto pra lançar?" | 🟢 | idem |
| `qa-report-humanizer` | Tira o tom de IA de relatório e bug report sem inventar fato | "humaniza o relatório" | 🟢 | idem |
| `synthetic-monitoring` | Sondas agendadas em produção, alerta e SLA | "monitoramento sintético" | 🟢 | idem |
| `qa-metrics` | Métrica de QA com fórmula e a ação quando fica vermelha | "taxa de flaky", "MTTR" | 🟢 | idem |

> 💡 Ficaram fora desta curadoria as 29 que pedem ferramenta específica (Cypress, TestRail/Xray, BrowserStack, k6, Pact, Allure/Grafana, LitmusChaos) ou um time de QA dedicado. Instale da fonte a que precisar.
> ⚠️ No Windows, o `git clone` do repo falha no checkout por caminho longo: `git config core.longpaths true` e `git restore --source=HEAD :/` resolvem. O `npx skills add` não tem esse problema.

---

<a id="grp-entender"></a>
## 🧭 Entender codebase — plugin `Egonex-AI/Understand-Anything`

**9 skills** de um plugin ([Egonex-AI/Understand-Anything](https://github.com/Egonex-AI/Understand-Anything), MIT) que transforma um repositório num **grafo de conhecimento**: cada arquivo resumido, as dependências entre eles, as camadas da arquitetura e um tour guiado, com um painel web local pra navegar. — 🔧 **todas precisam de ambiente** (Node + o núcleo do plugin)

> ⚠️ **Instale como plugin, não como skill solta.** Os scripts das skills importam o núcleo do plugin (`@understand-anything/core`); copiar só as pastas de skill quebra. Pelo `/plugin`, o Claude Code resolve isso.
> 💡 **Custo:** a análise completa dispara um subagente por lote de arquivos e pode custar milhões de tokens. Na primeira rodada, recorte numa subpasta (`src/`, por exemplo).
> ⚠️ **Alias de import:** o mapa de imports só lê o `tsconfig.json` da raiz. Em projeto Vite, o alias `@/` costuma morar no `tsconfig.app.json` e essas arestas somem do grafo — confira antes de confiar nas dependências.

| Skill | Pra que serve | Quando usar | Onde |
|---|---|---|---|
| `understand` | Analisa o repo e gera o grafo (`knowledge-graph.json`) | primeira vez num codebase grande ou herdado | 🔧 |
| `understand-dashboard` | Abre o painel web local pra explorar o grafo | depois do `/understand`, pra navegar | 🔧 |
| `understand-chat` | Responde perguntas sobre o código usando o grafo | "como funciona X?", "onde mora Y?" | 🔧 |
| `understand-explain` | Explicação a fundo de um arquivo, função ou módulo | antes de mexer numa peça que você não conhece | 🔧 |
| `understand-diff` | Lê um diff ou PR contra o grafo: o que mudou, o que é afetado e o risco | revisar o impacto de uma mudança | 🔧 |
| `understand-onboard` | Gera um guia de onboarding do projeto | entrar num projeto novo ou receber alguém no time | 🔧 |
| `understand-domain` | Extrai o domínio de negócio (fluxos e regras) num grafo próprio | entender o "o quê" do negócio, não só o código | 🔧 |
| `understand-knowledge` | Grafo de uma base de notas em Markdown no padrão "LLM wiki" | organizar uma pasta de notas ou documentação | 🔧 |
| `understand-figma` | Grafo de design de um arquivo do Figma (páginas, telas, componentes, tokens) | ligar design e código. ⚠️ usa a API REST do Figma: precisa de token | 🔧 |

---

<a id="grp-dados"></a>
## 📈 Dados & forecasting — `K-Dense-AI/scientific-agent-skills`

**2 de 177** skills do pacote científico da [K-Dense](https://github.com/K-Dense-AI/scientific-agent-skills) (MIT; o antigo `claude-scientific-skills`). O resto é bio, química, física e clínica. Estas duas cobrem **forecast de verdade**, além da média móvel.

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `timesfm-forecasting` | Forecast **zero-shot** de série temporal com o **TimesFM**, do Google: prepara o CSV, devolve **quantis** (não só a média), aceita covariáveis e avalia com janela móvel | projetar vendas, demanda ou qualquer série com intervalo de confiança | 🔧 | [K-Dense-AI](https://github.com/K-Dense-AI/scientific-agent-skills) |
| `statsmodels` | **Baseline clássico e explicável**: OLS, GLM, ARIMA/SARIMAX/ETS, regressão com erro HAC, efeito marginal e diagnóstico | "qual o driver disso?", "a série é estacionária?", baseline pra comparar com o forecast de IA | 🟢 | [K-Dense-AI](https://github.com/K-Dense-AI/scientific-agent-skills) |

> 💡 **Use em par:** forecast de modelo de fundação sem baseline clássico não prova nada. Entregue o TimesFM ao lado de um ETS/SARIMAX e mostre os quantis.
> ⚠️ **Antes de instalar:** a `timesfm-forecasting` cria o venv (com PyTorch) na pasta em que você está — rode de fora de qualquer repo. O checkpoint do modelo (~0,8 GB) baixa no cache do Hugging Face. Os pesos do TimesFM 2.5 são Apache-2.0; os do 3.0 são **não comerciais**.
> ⚠️ **Autocitação:** 137 das 177 skills do pacote (incluindo a `statsmodels`) trazem uma seção que manda o agente **pôr o paper da K-Dense no seu relatório ou código**. Apague essa seção do `SKILL.md` se não quiser.

---

<a id="grp-research"></a>
## 🔎 Research & ✨ meta

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| `last30days` | Pesquisa o que as pessoas **realmente falam** de um tópico nos últimos 30 dias (Reddit/X/YT/TikTok, ranqueado por engajamento) | achar tendência real sobre um tema | 🔧 | [mvanhorn](https://github.com/mvanhorn) |
| `prompt-master` | **Gerador** de prompt pronto-pra-colar, roteado por ferramenta-alvo (ChatGPT/Midjourney/Cursor…) | escrever prompt pra uma ferramenta | 🟢 | [nidhinjs](https://github.com/nidhinjs) |
| `prompt-engineer` | Engenharia/avaliação de prompt (chain-of-thought, few-shot, structured output) | criar e avaliar prompts/system prompts | 🟢 | [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) |
| `skill-builder` | **Fábrica de skills**: transforma doc/repo/PDF/vídeo numa skill pronta (via MCP `skill-seekers`) | converter documentação em skill | 🔧 | [yusufkaraaslan/Skill_Seekers](https://github.com/yusufkaraaslan/Skill_Seekers) |
| `find-skills` | Descobrir e instalar novas skills | procurar skill pra uma tarefa | 🔧 | skills.sh |

---

<a id="grp-autorais"></a>
> 📄 **Documentação que não apodrece:** `living-docs-governance` — dá papel canônico a cada doc do projeto (constituição, mapa, status, histórico) e faz o resto **linkar em vez de copiar**, pra mesma verdade não divergir em N lugares. Use quando a doc começa a contradizer o código, ou quando o agente perde contexto entre sessões. 🟢 · [affaan-m/ECC](https://github.com/affaan-m/ECC) (MIT).

## ✨ Autorais (deste catálogo)

Skills escritas por mim, publicadas **aqui mesmo** — copie a pasta pro seu `~/.claude/skills/` (ou suba o `SKILL.md` no claude.ai web).

| Skill | Pra que serve | Quando usar | Onde | Fonte |
|---|---|---|---|---|
| [`lighthouse-95`](skills/lighthouse-95/SKILL.md) | Levar um site a **95+ em todas as categorias do Lighthouse** (mobile E desktop): loop medir→identificar a causa exata no JSON→corrigir→re-medir, playbook de fixes (font instancing/subsetting, LCP, TBT, CSS crítico, a11y) e armadilhas que custam rounds (deploy stale, preload guloso, variância) | site com nota baixa no Lighthouse, FCP/LCP/TBT/CLS ruins | 🔧 | este repo |
| [`design-por-referencia`](skills/design-por-referencia/SKILL.md) | **Método anti-vibe-coding pra landings de nível agência**: referências premiadas screenshotadas por seção → prancheta de fotos → 2-3 direções com animação-assinatura → estrutura de landing comprovada → gates de qualidade. O dono só vota e aprova | landing/site "com cara de IA", redesign premium, construir landing a partir de um site de referência | 🔧 | [aliborhothamud/design-por-referencia-skill](https://github.com/aliborhothamud/design-por-referencia-skill) ⭐ AUTORAL, MIT |

```bash
# instalar a lighthouse-95:
mkdir -p ~/.claude/skills/lighthouse-95
curl -o ~/.claude/skills/lighthouse-95/SKILL.md https://raw.githubusercontent.com/aliborhothamud/claude-melhores-skills/master/skills/lighthouse-95/SKILL.md

# instalar a design-por-referencia (repo próprio):
npx skills add aliborhothamud/design-por-referencia-skill -g
```

---

## 🙏 Fontes & créditos

Toda skill acima é obra dos autores abaixo. Este catálogo só organiza e recomenda. Instale da fonte e respeite a licença de cada uma.

| Fonte | O que traz | Licença | Instalar |
|---|---|---|---|
| [obra/superpowers](https://github.com/obra/superpowers) | Processo (brainstorming, TDD, debugging, planos) | ver repo | `/plugin marketplace add` |
| [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) | 27 skills de marketing | MIT | `npx skills add coreyhaines31/marketingskills@<skill>` |
| [emilkowalski/skills](https://github.com/emilkowalski/skills) | 10 skills de motion & design engineering (autor do Sonner/Vaul) | MIT | `npx skills add emilkowalski/skills --skill <skill>` |
| [Leonxlnx/taste-skill-classics](https://github.com/Leonxlnx/taste-skill-classics) | 6 skills de direção estética anti-slop (a versão com dials + 5 direções fechadas) | MIT | `npx skills add https://github.com/Leonxlnx/taste-skill-classics --skill <skill>` |
| [affaan-m/ECC](https://github.com/affaan-m/ECC) | 8 garimpadas de um harness de 300+ skills (auditoria, higiene de setup, Vite, demo em vídeo, doc viva, versão de MCP) | MIT | `npx skills add https://github.com/affaan-m/ECC --skill <skill>` |
| [cathrynlavery/diagram-design](https://github.com/cathrynlavery/diagram-design) | Diagrama editorial com marca, 45 tipos, HTML+SVG+PNG | MIT | `npx skills add cathrynlavery/diagram-design` |
| [wheresryan22/anatomy](https://github.com/wheresryan22/anatomy) | Conceito técnico explicado como máquina isométrica | MIT | `npx skills add wheresryan22/anatomy -g` |
| [DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail) | Código enxuto (ponytail, ponytail-debt) | MIT | `npx skills add DietrichGebert/ponytail --skill <skill>` *(só as skills, sem os hooks do plugin)* |
| [Egonex-AI/Understand-Anything](https://github.com/Egonex-AI/Understand-Anything) | 9 skills que transformam um repo em grafo de conhecimento + painel web | MIT | `/plugin marketplace add Egonex-AI/Understand-Anything` e `/plugin install understand-anything` |
| [K-Dense-AI/scientific-agent-skills](https://github.com/K-Dense-AI/scientific-agent-skills) | 2 de 177: forecast com TimesFM e baseline com statsmodels | MIT *(pesos do TimesFM 2.5: Apache-2.0; os do 3.0 são não comerciais)* | `npx skills add https://github.com/K-Dense-AI/scientific-agent-skills --skill <skill>` |
| [shadcn/improve](https://github.com/shadcn/improve) | Consultor read-only que escreve plano pra outro agente executar | MIT | `npx skills add https://github.com/shadcn/improve --skill improve` |
| [tryopendata/skills](https://github.com/tryopendata/skills) | `svg-design` — logo e ícone escritos direto em SVG | MIT | `/plugin marketplace add tryopendata/skills` |
| [latent-spaces/brag](https://github.com/latent-spaces/brag) | Projeto pronto → vídeo de lançamento | MIT *(a trilha inclusa é de terceiro — ver aviso na seção Vídeo)* | `npx skills add https://github.com/latent-spaces/brag --skill brag` |
| [zarazhangrui/frontend-slides](https://github.com/zarazhangrui/frontend-slides) | Deck HTML animado; converte PPT/PPTX | MIT | `npx skills add https://github.com/zarazhangrui/frontend-slides --skill frontend-slides` |
| [raphaelsalaja/skill](https://github.com/raphaelsalaja/skill) | 3 auditoras de motion (12 princípios, AnimatePresence, pseudo-elementos) | ⚠️ sem licença declarada | `npx skills add https://github.com/raphaelsalaja/skill --skill <skill>` |
| [0xdesign/design-plugin](https://github.com/0xdesign/design-plugin) | `design-lab` — 5 variações de UI + plano | ⚠️ sem licença declarada | `npx skills add https://github.com/0xdesign/design-plugin --skill design-lab` |
| [phuryn/pm-skills](https://github.com/phuryn/pm-skills) | Metodologia de produto/PM | MIT | `npx skills add phuryn/pm-skills@<skill>` |
| [mattpocock/skills](https://github.com/mattpocock/skills) | Fluxo de engenharia (to-spec, prototype, diagnosing-bugs, research, teach) | MIT | `npx skills add mattpocock/skills --skill <skill> -g` |
| [remotion-dev/skills](https://github.com/remotion-dev/skills) | Vídeo em React | Remotion (não-MIT) | `npx skills add remotion-dev/skills@<skill>` |
| [heygen-com/hyperframes](https://github.com/heygen-com/hyperframes) | Vídeo em HTML+CSS+GSAP | Apache-2.0 | `npx hyperframes skills update` |
| [supabase/agent-skills](https://github.com/supabase/agent-skills) | Supabase oficial | ver repo | `npx skills add supabase/agent-skills@supabase` |
| [cap-go/capacitor-skills](https://github.com/cap-go/capacitor-skills) | Capacitor best practices | ver repo | `npx skills add cap-go/capacitor-skills@capacitor-best-practices` |
| [capawesome-team/skills](https://github.com/capawesome-team/skills) | Plugins Capacitor | ver repo | `npx skills add capawesome-team/skills@capacitor-plugins` |
| [VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) | Integrações (fal, stripe, sentry, gsap, typefully…) | mistas | `npx skills add VoltAgent/awesome-agent-skills@<skill>` |
| [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) | Auditoras de UI/eng (web-design-guidelines, react-best-practices…) | MIT | `npx skills add vercel-labs/agent-skills` |
| [alirezarezvani/claude-skills](https://github.com/alirezarezvani/claude-skills) | Produtividade de founder (capture, weekly-review, deep-work, roast, meetings, reflect, handoff) | MIT | `npx skills add alirezarezvani/claude-skills` |
| [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) | Economia de token (caveman, commit, review, compress, cavecrew, stats) | MIT | `npx -y github:JuliusBrussee/caveman` |
| [makenotion/claude-code-notion-plugin](https://github.com/makenotion/claude-code-notion-plugin) | Skills do Notion | ver repo | ver repo |
| [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) | Dev specialists (react-expert, typescript-pro, secure-code-guardian, prompt-engineer) | ver repo | `npx skills add jeffallan/claude-skills@<skill>` |
| [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | Suíte de UI/UX (não alucina interface) | ver repo | via skills.sh |
| [yusufkaraaslan/Skill_Seekers](https://github.com/yusufkaraaslan/Skill_Seekers) | Fábrica de skills (skill-builder / MCP) | ver repo | ver repo |
| [Anthropic](https://github.com/anthropics/skills) | frontend-design, canvas-design (oficiais) | Apache 2.0 | vêm com o Claude Code |
| [anthropics/claude-for-legal](https://github.com/anthropics/claude-for-legal) | 151 skills legais em 12 plugins (oficial) | ver repo | `/plugin marketplace add anthropics/claude-for-legal` |
| [petrkindlmann/qa-skills](https://github.com/petrkindlmann/qa-skills) | 21 skills de QA e automação de testes | MIT | `npx skills add petrkindlmann/qa-skills <skill>` |
| [pbakaus](https://github.com/pbakaus) (impeccable) · [alchaincyf](https://github.com/alchaincyf) (huashu-design) · [op7418](https://github.com/op7418) (logo-generator) · [nidhinjs](https://github.com/nidhinjs) (prompt-master) · [mvanhorn](https://github.com/mvanhorn) (last30days) · [Hardik Pandya](https://hvpandya.com) (stop-slop) | Design, prompt, research, texto | ver cada repo | via skills.sh |

> As licenças variam. Antes de usar comercialmente, cheque a licença no repositório de origem — em especial Remotion (não-MIT) e as integrações que exigem conta paga (fal, stripe, sentry).

---

## 📄 Sobre este catálogo
A **curadoria** (textos, organização, recomendações) é livre pra usar e compartilhar. As **skills** pertencem aos seus autores. Achou uma skill boa que não está aqui? Manda um PR.
