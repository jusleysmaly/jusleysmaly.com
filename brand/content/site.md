# SITE — Interface texts, Brand Archive (PT / EN)

All interface text that does not belong to a project or a note.
Each section has a `pt` block (default language) and an `en` block with the same fields.
Values that never change between languages live in `shared` blocks.
This file is the single source of the interface text — index.html only holds the keys.

Rules:

- WIP and DONE are never translated — they are fixed in `shared`.
- Frame types, stages and months are keyed in English; only their labels are translated here.
- `{status}`, `{name}`, `{count}` are placeholders filled in by the site.
- Projects live in `content/projects/`, notes in `content/notes/`.

---
# ======================================================
# MANIFEST — which content files exist (a static server cannot list folders)
# Order: WIP first, then DONE. Each id = content/projects/<id>.md
#
# OFFICIAL SELECTION — exactly these 8 projects.
# NOT part of the selection (temporary placeholders still in index.html DATA,
# to be replaced by this manifest — do not create files for them):
#   Alpha · Saccaro · Tidelli · Baniwa
# ======================================================
manifest:
  projects:
    # WIP
    - uatuma-lio
    - nh
    # DONE
    - greenworld-america
    - greenfood-superfood-america
    - postos-3000
    - petromar-4000
    - panai
    - vetcare
  notes: []

# ======================================================
# GLOBAL
# ======================================================
global:
  shared:
    default_lang: pt
    languages: [pt, en]
    name: "Jusley Smaly"
    brand_mark: "BRAND"
    wip: "WIP"
    done: "DONE"
  pt:
    html_lang: "pt-BR"
    page_title: "BRAND — por Jusley Smaly"
    page_description: "Arquivo vivo de marcas — estratégia, identidade e sistemas de marca por Jusley Smaly."
    by: "por"
    back_to_top_aria: "BRAND por Jusley Smaly — voltar ao topo"
    lang_label: "Idioma"
  en:
    html_lang: "en"
    page_title: "BRAND — by Jusley Smaly"
    page_description: "Living Brand Archive — brand strategy, identity and systems by Jusley Smaly."
    by: "by"
    back_to_top_aria: "BRAND by Jusley Smaly — back to top"
    lang_label: "Language"

# ======================================================
# NAVIGATION   (WIP / DONE come from global.shared)
# ======================================================
nav:
  pt:
    aria: "Arquivo"
    all: "TODOS"
    notes: "NOTAS"
    about: "SOBRE"
  en:
    aria: "Archive"
    all: "ALL"
    notes: "NOTES"
    about: "ABOUT"

# ======================================================
# HERO
# ======================================================
hero:
  pt:
    aria: "Introdução"
    kicker: "Brand Design"
    kicker_secondary: "Arquivo vivo de marcas"
    title: "Estratégia, identidade e sistemas — sempre em andamento."
    designer_label: "Designer"
    designer_role: "Brand Designer / Product Designer"
    practice_label: "Prática"
    practice_text:     # one item per line
      - "Estratégia de marca · Identidade de marca"
      - "Sistemas de marca · Direção de arte · Brand OS"
    archive_label: "Arquivo"
    last_updated_label: "Atualizado em"
  en:
    aria: "Introduction"
    kicker: "Brand Design"
    kicker_secondary: "Living Brand Archive"
    title: "Strategy, identity and systems — always in progress."
    designer_label: "Designer"
    designer_role: "Brand Designer / Product Designer"
    practice_label: "Practice"
    practice_text:
      - "Brand Strategy · Brand Identity"
      - "Brand Systems · Art Direction · Brand OS"
    archive_label: "Archive"
    last_updated_label: "Last updated"

# ======================================================
# WIP   (section title stays "WIP")
# ======================================================
wip:
  pt:
    label: "Em andamento"
    description: "Projetos em construção. As imagens são substituídas conforme cada sistema evolui."
    empty: "Nada em andamento no momento."
  en:
    label: "Work in Progress"
    description: "Projects currently being built. Images are replaced as each system evolves."
    empty: "Nothing in progress right now."

# ======================================================
# DONE  (section title stays "DONE")
# ======================================================
done:
  pt:
    label: "Trabalhos selecionados"
    description: "Sistemas de marca concluídos — da estratégia à identidade e à aplicação."
    empty: "Nenhum projeto concluído no momento."
  en:
    label: "Selected Work"
    description: "Completed brand systems — from strategy to identity and application."
    empty: "No completed projects right now."

# ======================================================
# NOTES
# ======================================================
notes:
  pt:
    title: "NOTAS"
    label: "Pensamentos curtos"
    description: "Sobre marca, estratégia, identidade, sistemas e processo. Não é um blog — são notas de margem do trabalho."
    empty: "Nenhuma nota publicada ainda."
  en:
    title: "NOTES"
    label: "Short thoughts"
    description: "On brand, strategy, identity, systems and process. Not a blog — margin notes from the work."
    empty: "No notes published yet."

# ======================================================
# ABOUT
# ======================================================
about:
  pt:
    label: "Sobre"
    role: "Brand Designer / Product Designer"
    text: "Desenho marcas como sistemas — da estratégia e do posicionamento à identidade, à direção de arte e às regras de operação que mantêm uma marca consistente enquanto ela cresce. Duas décadas trabalhando onde marca e produto se encontram."
    fields:
      - "Estratégia"
      - "Marca"
      - "Digital"
      - "Experiência"
  en:
    label: "About"
    role: "Brand Designer / Product Designer"
    text: "I design brands as systems — from strategy and positioning to identity, art direction and the operating rules that keep a brand consistent as it grows. Two decades working where brand and product meet."
    fields:
      - "Strategy"
      - "Brand"
      - "Digital"
      - "Experience"

# ======================================================
# CONTACT
# ======================================================
contact:
  pt:
    label: "Contato"
    title: "Tem uma marca para construir?"
    subtitle: "Vamos conversar."
  en:
    label: "Contact"
    title: "Have a brand to build?"
    subtitle: "Let's talk."

# ======================================================
# LINKS   (used by CONTACT; URLs are shared)
# Only links with a URL are shown. Same addresses as jusleysmaly.com.
# ======================================================
links:
  shared:
    email: "mailto:me@jusleysmaly.com"
    linkedin: "https://www.linkedin.com/in/jusley-smaly/"
    instagram: "https://www.instagram.com/jusleysmaly/"
    website: "https://jusleysmaly.com"
  pt:
    email: "E-MAIL"
    linkedin: "LINKEDIN"
    instagram: "INSTAGRAM"
    website: "JUSLEYSMALY.COM"
  en:
    email: "EMAIL"
    linkedin: "LINKEDIN"
    instagram: "INSTAGRAM"
    website: "JUSLEYSMALY.COM"

# ======================================================
# FOOTER
# ======================================================
footer:
  pt:
    copyright: "© 2026 Jusley Smaly"
    archive_line: "Arquivo vivo de marcas"
    last_updated: "Atualizado em"
    back_to_top: "Voltar ao topo ↑"
  en:
    copyright: "© 2026 Jusley Smaly"
    archive_line: "Living Brand Archive"
    last_updated: "Last updated"
    back_to_top: "Back to top ↑"

# ======================================================
# AUXILIARY LABELS
# ======================================================
aux:
  pt:
    index:
      label: "Índice"
      aria: "Índice do arquivo"
      filter_aria: "Filtrar projetos"
      col_number: "Nº"
      col_project: "Projeto"
      col_discipline: "Disciplina"
      col_year: "Ano"
      col_status: "Status"
      col_updated: "Atualizado"
      showing_only: "Mostrando apenas {status}."
      show_all: "Mostrar tudo"
    counts:
      in_progress: "em andamento"
      done: "concluídos"
      notes: "notas"
    project:
      discipline: "Disciplina"
      year: "Ano"
      status: "Status"
      updated: "Atualizado"
      completed: "Concluído"
      log: "Registro"
      current_stage: "Estágio atual"
      stage_unknown: "Estágio não definido"
    stages:
      strategy: "Estratégia"
      identity: "Identidade"
      system: "Sistema"
      application: "Aplicação"
    gallery:
      drag: "← ARRASTE →"
      swipe: "DESLIZE →"
      previous: "Imagem anterior"
      next: "Próxima imagem"
      image: "IMAGEM"
      primary_mark: "Marca principal"
      sequence: "{name} — sequência de imagens, {count} imagens."
      keys_hint: "Use as setas do teclado para navegar."
    frames:
      logo: "Logo"
      system: "Sistema"
      typography: "Tipografia"
      exploration: "Exploração"
      application: "Aplicação"
      context: "Contexto"
      color: "Cor"
      illustration: "Ilustração"
      stationery: "Papelaria"
      digital: "Digital"
      packaging: "Embalagem"
      uniform: "Uniforme"
      fleet: "Frota"
      photography: "Fotografia"
      vessel: "Embarcação"
      lettering: "Lettering"
      naming: "Naming"
      traceability: "Rastreabilidade"
      brand_architecture: "Arquitetura de marcas"
      endorsement_system: "Sistema de endosso"
    actions:
      read_more: "Ler mais"
      open: "Abrir"
      close: "Fechar"
    months: [JAN, FEV, MAR, ABR, MAI, JUN, JUL, AGO, SET, OUT, NOV, DEZ]
  en:
    index:
      label: "Index"
      aria: "Archive index"
      filter_aria: "Filter projects"
      col_number: "No."
      col_project: "Project"
      col_discipline: "Discipline"
      col_year: "Year"
      col_status: "Status"
      col_updated: "Updated"
      showing_only: "Showing {status} only."
      show_all: "Show all"
    counts:
      in_progress: "in progress"
      done: "done"
      notes: "notes"
    project:
      discipline: "Discipline"
      year: "Year"
      status: "Status"
      updated: "Updated"
      completed: "Completed"
      log: "Log"
      current_stage: "Current stage"
      stage_unknown: "Stage not defined"
    stages:
      strategy: "Strategy"
      identity: "Identity"
      system: "System"
      application: "Application"
    gallery:
      drag: "← DRAG →"
      swipe: "SWIPE →"
      previous: "Previous image"
      next: "Next image"
      image: "IMAGE"
      primary_mark: "Primary mark"
      sequence: "{name} — image sequence, {count} images."
      keys_hint: "Use arrow keys to move."
    frames:
      logo: "Logo"
      system: "System"
      typography: "Typography"
      exploration: "Exploration"
      application: "Application"
      context: "Context"
      color: "Color"
      illustration: "Illustration"
      stationery: "Stationery"
      digital: "Digital"
      packaging: "Packaging"
      uniform: "Uniform"
      fleet: "Fleet"
      photography: "Photography"
      vessel: "Vessel"
      lettering: "Lettering"
      naming: "Naming"
      traceability: "Traceability"
      brand_architecture: "Brand architecture"
      endorsement_system: "Endorsement system"
    actions:
      read_more: "Read more"
      open: "Open"
      close: "Close"
    months: [JAN, FEB, MAR, APR, MAY, JUN, JUL, AUG, SEP, OCT, NOV, DEC]
---
