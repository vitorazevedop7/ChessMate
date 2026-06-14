# Diagramas — ChessMate

## Convenção de Pastas

Cada tipo de diagrama fica em sua própria subpasta dentro de `diagramas/`. Dentro de cada subpasta há duas seções:

```
diagramas/
└── <tipo-de-diagrama>/
    ├── codigo/   → arquivo fonte .puml (PlantUML)
    └── imagem/   → imagem gerada (.png ou .svg)
```

## Diagramas disponíveis

| Pasta | Tipo | Arquivo fonte |
|-------|------|---------------|
| `caso-de-uso/` | Diagrama de Casos de Uso | `codigo/ChessMate_CasosDeUso.puml` |
| `diagrama-de-classes/` | Diagrama de Classes | `codigo/CLS01-diagrama-classes.puml` |
| `diagrama-er/` | Diagrama ER (Modelo de Dados) | `codigo/ER01-diagrama-er.puml` |
| `diagramas-de-sequencia/` | UC-01: Cadastrar Conta | `codigo/SEQ04-cadastrar-conta.puml` |
| `diagramas-de-sequencia/` | UC-02: Autenticar (Login) | `codigo/SEQ05-autenticar.puml` |
| `diagramas-de-sequencia/` | UC-03: Recuperar Senha | `codigo/SEQ06-recuperar-senha.puml` |
| `diagramas-de-sequencia/` | UC-06: Buscar Partida | `codigo/SEQ01-buscar-partida.puml` |
| `diagramas-de-sequencia/` | UC-07: Jogar Partida | `codigo/SEQ02-jogar-partida.puml` |
| `diagramas-de-sequencia/` | UC-08: Abandonar Partida | `codigo/SEQ07-abandonar-partida.puml` |
| `diagramas-de-sequencia/` | UC-09: Convidar Amigo | `codigo/SEQ08-convidar-amigo.puml` |
| `diagramas-de-sequencia/` | UC-10: Analisar Partida | `codigo/SEQ03-analisar-partida.puml` |
| `diagramas-de-sequencia/` | UC-14: Adicionar Amigo | `codigo/SEQ09-adicionar-amigo.puml` |
| `diagramas-de-sequencia/` | UC-16/17: Gerenciar e Suspender Usuários | `codigo/SEQ10-gerenciar-suspender.puml` |
| `dss/` | DSS UC-01: Cadastrar Conta | `codigo/DSS-UC01-cadastrar-conta.puml` |
| `dss/` | DSS UC-02: Autenticar (Login) | `codigo/DSS-UC02-autenticar.puml` |
| `dss/` | DSS UC-06: Buscar Partida | `codigo/DSS-UC06-buscar-partida.puml` |
| `dss/` | DSS UC-07: Jogar Partida | `codigo/DSS-UC07-jogar-partida.puml` |
| `dss/` | DSS UC-08: Abandonar Partida | `codigo/DSS-UC08-abandonar-partida.puml` |
| `dss/` | DSS UC-09: Convidar Amigo | `codigo/DSS-UC09-convidar-amigo.puml` |
| `dss/` | DSS UC-10: Analisar Partida | `codigo/DSS-UC10-analisar-partida.puml` |
| `dss/` | DSS UC-14: Adicionar Amigo | `codigo/DSS-UC14-adicionar-amigo.puml` |
| `dss/` | DSS UC-16/17: Gerenciar e Suspender | `codigo/DSS-UC16-17-gerenciar-suspender.puml` |
| `diagramas-de-comunicacao/` | COM-01: Buscar Partida | `codigo/COM01-buscar-partida.puml` |
| `diagramas-de-comunicacao/` | COM-02: Jogar Partida | `codigo/COM02-jogar-partida.puml` |
| `diagramas-de-comunicacao/` | COM-03: Analisar Partida | `codigo/COM03-analisar-partida.puml` |
| `diagramas-de-estados/` | EST-01: Ciclo de Vida da Partida | `codigo/EST01-ciclo-vida-partida.puml` |
| `diagramas-de-estados/` | EST-02: Ciclo de Vida da Conta | `codigo/EST02-ciclo-vida-conta.puml` |
| `arquitetura/` | ARQ: C4 Nível Container | `codigo/ARQ-C4-container.puml` |
| `arquitetura/` | COMP-01: Componentes e Implantação | `codigo/COMP01-componentes-implantacao.puml` |
