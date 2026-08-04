---
name: design-por-referencia
description: Use when a landing page, marketing site, or hero section looks generic/AI-made ("cara de vibe coding") and needs a $10k-agency-level redesign, or when building a new landing from scratch. Triggers - "o site ficou com cara de IA", "quero uma landing premium", "redesenha a landing", "faz o site baseado em [site de referência]", user shares an Awwwards/reference URL.
---

# Design por Referência — landing de nível agência, sem dedo do dono

O que separa "cara de IA" de "cara de $10k" NÃO é ferramenta — é método: **referências visuais concretas por seção + foto real + uma animação-assinatura + estrutura de página comprovada + gates de qualidade**. Nunca descreva o site dos sonhos em texto; MOSTRE referências e roube o que funciona de cada uma.

O dono só faz 2 coisas: **votar** (referências, fotos, direções) e **aprovar**. Todo o resto é seu.

## Skills que este processo dirige
`ui-ux-pro-max` (estilos/paletas) · `frontend-design` (geração não-genérica) · `impeccable` (gate anti-slop) · `artifact-design` (se entregar como Artifact) · `lighthouse-95` (gate de produção). Se existir **brand kit** do produto (tokens/logo/manual), ele é LEI — referências mudam layout e motion, nunca a identidade.

## Fase 0 — Intake (5 min, sem perguntar o que dá pra descobrir)
1. **Marca:** procure brand kit/tokens/manual no projeto ou Notion. Existe → paleta/fontes travadas. Não existe → derive do produto e anote como proposta.
2. **Produto real:** colete números e fatos verdadeiros (features, métricas, compliance tipo LGPD). **Copy real desde o primeiro protótipo — lorem nunca.**
3. **Diagnóstico do atual:** screenshot da página atual (Playwright) e nomeie o problema em 1 frase (ex.: "é um seletor de personas, não uma landing — zero história de produto").

## Fase 1 — Referências (o passo que ninguém faz)
1. Cace 1-3 sites premiados (Awwwards, godly.website, landing.love, concorrentes de respeito) com a vibe certa pro público. O dono pode indicar um — aí ele vira a referência-mestra.
2. **Screenshote POR SEÇÃO, não a página inteira**: hero, prova de valor, features, footer, transições. Anote o que cada seção faz de bom.
3. **Traduza para uma linguagem** (tabela "elemento da referência → como fica no produto"): frame/moldura, navbar, tratamento do hero, tipo de motion, esteiras/carrosséis, paleta de acento.
4. Regra: **roube o mecanismo, não o site**. Misture fontes (Pinterest/outros pra o que faltar).

## Fase 2 — Foto do hero (hero SEM imagem = cara de template)
1. Busque banco livre (Unsplash/Pexels) com 2-3 queries de ângulos diferentes (emocional, contextual, profissional). Via browser: os `src` estão em `figure img` — o snapshot de acessibilidade NÃO expõe src, use evaluate no DOM.
2. Baixe 4-6 candidatas e **monte uma prancheta** (Artifact com as fotos grandes + sua leitura de cada: composição, espaço p/ headline, paleta, estética datada?). Dono vota.
3. Critérios: espaço negativo pro headline (ou overlay resolve), paleta que casa com a marca, emocional > clínico pra B2C, **nada de estética stock anos 2000, marcas visíveis ou aspecto errado**.
4. Diga sempre: foto de banco é direção; produção final merece foto própria/paga com composição pensada pro layout.

## Fase 3 — Direções em protótipo (2-3, radicalmente diferentes)
1. Cada direção = tratamento distinto (ex.: editorial claro / dark cinemático / daylight gigante) **com uma animação-assinatura própria** — o elemento que nenhum template tem (receita que se organiza, grafo vivo, checklist que se cumpre, cursor-lanterna…). Descreva o CONCEITO da animação e implemente.
2. Um arquivo HTML com **toggle** entre as direções → publica como Artifact → dono escolhe. Rotule qual direção é "a marca como está" vs. as arriscadas.
3. Se for comparar objetivamente, apresente às cegas (V1/V2) e só revele depois do voto.

## Fase 4 — Estrutura da página (esqueleto comprovado)
Ordem padrão (adapte, não pule): **navbar pílula flutuante** → **HERO** (imagem real + motion + headline-tese ≤ 13 palavras + CTA com micro-acento) → **prova de valor** (números REAIS em esteira/cards logo sob o hero) → **como funciona** (3 passos) → **segmentos/personas** (banda de cor invertida) → **CTA final + footer** (compliance, termos).
Copy: voz de dono, específica, sem slop (rode `stop-slop` mentalmente); benefício antes de feature; compliance como argumento ("LGPD — dados sempre seus").

## Fase 5 — Build com motion (o hero TEM que respirar)
Kit de motion mínimo do hero: **entrada em cascata** (kicker→título→sub→CTA, ~120ms de stagger) + **Ken Burns lento** na foto (20s+, escala ≤1.08) + **1 micro-pulso** no CTA. Esteiras: marquee contínuo (duplicar o track), pausa no hover. SEMPRE: `prefers-reduced-motion` desliga tudo; mobile re-orienta o overlay (lateral → vertical).
Gates: hook do `impeccable` limpo → revisão visual SUA (screenshot e olhe de verdade) → correções em LOTE (uma mensagem com todos os fixes, nunca pingados) → pra produção, `lighthouse-95`.

## Gotchas técnicos (todos mordidos em 04/08/2026)
- **Artifact tem CSP**: imagem externa não carrega. Embuta como data URI: banco → `?w=1500&q=55-60&fm=jpg` (~100-150KB) → base64. Duas ocorrências? Placeholder `__HERO__` + replace via Python.
- **Git Bash × Python no Windows**: `$HOME/...` vira `\c\Users\...` no Python → use path `C:/...` direto no script.
- **Preview local**: `python -m http.server` sem charset → mojibake de acentos no browser. É só do preview (o Artifact publica com charset UTF-8 certo); pra conferir local, sirva com charset ou confira no próprio Artifact.
- **X/Twitter e sites logados**: WebFetch falha (402) — abra no Playwright.
- Foto: registre a fonte/licença (Unsplash = livre, crédito elegante no footer).

## Red flags — pare e volte ao método
- "Vou descrever o estilo em palavras" → NÃO. Ache referência visual.
- Hero sem imagem e sem motion → é template, recomece a Fase 2/5.
- Copy placeholder/genérica → busque os números reais do produto.
- Uma direção só → o dono não escolheu, você escolheu por ele.
- "Instalei a ferramenta certa, então vai ficar bom" → ferramenta sem método = slop com fonte bonita.

## Done when
Dono aprovou direção + foto + estrutura num protótipo navegável (Artifact), com assinatura de motion funcionando, reduced-motion e mobile ok, e o handoff pro repo real está claro (o protótipo é a spec visual).
