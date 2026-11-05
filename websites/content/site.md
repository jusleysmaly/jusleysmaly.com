# SITE — Interface texts, One Page Website (PT)

All text of the /websites/ landing page.
This file is the single source of the interface text — index.html only holds the keys.
Sections keep the same `pt` / `shared` structure as /brand/content/site.md;
to add a language, list it in global.shared.languages and add its block to each section.

---
# ======================================================
# GLOBAL
# ======================================================
global:
  shared:
    default_lang: pt
    languages: [pt]
    name: "Jusley Smaly"
    brand_mark: "WEBSITES"
  pt:
    html_lang: "pt-BR"
    page_title: "One Page Website — por Jusley Smaly"
    page_description: "Sites profissionais de página única para apresentar o que você faz, mostrar seus diferenciais e facilitar o contato com seus clientes. R$ 2.000, à vista ou parcelado."
    by: "por"
    back_to_top_aria: "WEBSITES por Jusley Smaly — voltar ao topo"
    lang_label: "Idioma"

# ======================================================
# NAVIGATION
# ======================================================
nav:
  pt:
    aria: "Navegação"
    product: "PRODUTO"
    process: "PROCESSO"
    pricing: "INVESTIMENTO"
    about: "SOBRE"

# ======================================================
# HERO
# ======================================================
hero:
  pt:
    aria: "Introdução"
    kicker: "One Page Website"
    title: "Seu trabalho merece um site à altura."
    subtitle: "Um site profissional para apresentar o que você faz, mostrar seus diferenciais e facilitar o contato com seus clientes."
    price_label: "Investimento"
    price: "R$ 2.000"
    price_note: "À vista ou parcelado."
    designer_label: "Designer"
    designer_role: "Product Designer"
    cta: "Quero meu site"

# ======================================================
# 02 — PROPOSAL
# ======================================================
proposal:
  pt:
    label: "A proposta"
    title: "Sua presença digital começa com uma boa apresentação."
    text: "Seu trabalho, sua experiência e seus serviços merecem um espaço próprio na internet. Um lugar onde as pessoas possam conhecer o que você faz, entender seu valor e encontrar facilmente uma maneira de entrar em contato."
    complement: "Desenvolvemos sites de página única, reunindo as informações mais importantes do seu negócio em uma experiência simples, organizada e profissional."

# ======================================================
# 03 — PRODUCT
# ======================================================
product:
  pt:
    label: "O produto"
    title: "Tudo o que importa. Em uma única página."
    text: "Uma estrutura pensada para apresentar seu trabalho com clareza, sem páginas desnecessárias ou navegação complicada."
    features:
      - "Apresentação profissional"
      - "Sobre você ou sua empresa"
      - "Serviços e especialidades"
      - "Portfólio ou galeria de imagens"
      - "Depoimentos, quando disponíveis"
      - "Botão direto para WhatsApp"
      - "Formulário de contato"
      - "Links para redes sociais"
      - "Layout responsivo"
      - "SEO básico"

# ======================================================
# 04 — PROCESS
# ======================================================
process:
  pt:
    label: "Como funciona"
    title: "Do primeiro contato ao site publicado."
    steps:
      - title: "Briefing"
        text: "Entendemos seu negócio, seus serviços e o que precisa comunicar."
      - title: "Design"
        text: "Organizamos as informações e desenvolvemos uma apresentação visual alinhada à sua atividade."
      - title: "Desenvolvimento"
        text: "Transformamos o projeto em um site funcional, responsivo e otimizado."
      - title: "Publicação"
        text: "Configuramos e publicamos seu site para que ele esteja disponível na internet."

# ======================================================
# 04B — PORTFOLIO
# ======================================================
portfolio:
  pt:
    label: "Portfólio"
    title: "Sites que já ganharam vida."
    text: "Uma seleção de projetos digitais que desenvolvi em diferentes contextos, explorando soluções visuais e experiências para diferentes necessidades."
    cta: "Ver projetos no Behance"

# ======================================================
# 05 — PRICING
# ======================================================
pricing:
  pt:
    label: "Investimento"
    title: "Um investimento simples. Uma presença que é sua."
    product: "One Page Website"
    price: "R$ 2.000"
    price_note: "À vista ou parcelado."
    includes_label: "Inclui"
    includes:
      - "Planejamento da estrutura"
      - "Design personalizado"
      - "Desenvolvimento responsivo"
      - "Recursos de contato"
      - "SEO básico"
      - "Publicação"
    deadline_label: "Prazo de entrega"
    deadline: "Até 15 dias úteis"
    deadline_note: "O prazo começa após a confirmação do pagamento e o recebimento de todo o material necessário do cliente."
    addon_label: "Adicional opcional"
    addon_name: "Hospedagem e suporte técnico básico"
    addon_price: "R$ 50/mês"
    note: "O domínio é registrado e pago pelo cliente. Serviços adicionais não estão incluídos no valor de desenvolvimento."
    cta: "Quero conversar sobre meu site"

# ======================================================
# 06 — ABOUT
# ======================================================
about:
  pt:
    label: "Sobre"
    role: "Product Designer"
    title: "Design e tecnologia trabalhando juntos."
    text: "Sou Jusley Smaly, Product Designer. Trabalho conectando estratégia, experiência e tecnologia para transformar ideias e necessidades em soluções digitais."
    text_2: "Neste serviço, aplico essa experiência na construção de sites profissionais, com atenção à apresentação, à clareza das informações e à experiência de quem acessa."
    fields:
      - "Estratégia"
      - "Design"
      - "Experiência"
      - "Tecnologia"

# ======================================================
# 07 — CONTACT   (the trailing space in `title` separates it from `subtitle`)
# ======================================================
contact:
  pt:
    label: "Contato"
    title: "Seu próximo endereço "
    subtitle: "na internet começa aqui."
    text: "Vamos conversar sobre seu projeto e encontrar a melhor maneira de apresentar seu trabalho."
    cta: "Falar pelo WhatsApp"

# ======================================================
# LINKS   (`whatsapp` is used by every CTA; the others by CONTACT)
# Only links with a URL are shown. Same addresses as jusleysmaly.com.
# `behance` is used only by the PORTFOLIO CTA.
# ======================================================
links:
  shared:
    whatsapp: "https://wa.me/5592991136545?text=Ol%C3%A1!%20Quero%20conversar%20sobre%20um%20site%20One%20Page."
    email: "mailto:me@jusleysmaly.com"
    linkedin: "https://www.linkedin.com/in/jusley-smaly/"
    instagram: "https://www.instagram.com/jusleysmaly/"
    github: "https://github.com/jusleysmaly"
    website: "https://jusleysmaly.com"
    behance: "https://www.behance.net/gallery/99241463/Websites"
  pt:
    email: "E-MAIL"
    linkedin: "LINKEDIN"
    instagram: "INSTAGRAM"
    github: "GITHUB"
    website: "JUSLEYSMALY.COM"

# ======================================================
# FOOTER
# ======================================================
footer:
  pt:
    copyright: "© 2026 Jusley Smaly"
    product_line: "One Page Website"
    back_to_top: "Voltar ao topo ↑"
---
