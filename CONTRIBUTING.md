# Guia de Contribuição — ChessMate

Obrigado por contribuir com o ChessMate! Siga as diretrizes abaixo para manter o projeto organizado e padronizado.

---

## Fluxo de Trabalho

1. Faça um **fork** do repositório.
2. Crie uma branch a partir de `main`:
   ```bash
   git checkout -b feature/minha-feature
   ```
3. Faça seus commits seguindo o padrão **Conventional Commits** (veja abaixo).
4. Abra um **Pull Request** para a branch `main` e preencha o template corretamente.
5. Aguarde revisão e aprovação antes do merge.

---

## Padrão de Commits (Conventional Commits)

Todas as mensagens de commit devem seguir a especificação [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/):

```
<tipo>(escopo opcional): <descrição curta>
```

### Tipos aceitos

| Tipo       | Quando usar                                              |
| ---------- | -------------------------------------------------------- |
| `feat`     | Nova funcionalidade para o usuário                       |
| `fix`      | Correção de bug                                          |
| `docs`     | Alterações apenas em documentação                        |
| `style`    | Formatação, ponto-e-vírgula, sem mudança de lógica       |
| `refactor` | Refatoração de código sem nova feature ou correção de bug|
| `test`     | Adição ou correção de testes                             |
| `chore`    | Tarefas de build, configuração, dependências             |
| `perf`     | Melhoria de performance                                  |
| `ci`       | Mudanças em arquivos de CI/CD                            |

### Exemplos

```bash
feat(auth): implementa login com JWT
fix(game): corrige validação de movimento do cavalo
docs(readme): atualiza seção de instalação
refactor(service): extrai lógica de ELO para classe separada
test(user): adiciona testes unitários para UserService
chore: atualiza dependências do pom.xml
```

---

## Regras para Pull Requests

- O título do PR deve seguir o mesmo padrão de Conventional Commits.
- Preencha todas as seções do template de PR.
- PRs sem descrição ou sem testes (quando aplicável) serão rejeitados.
- Resolva todos os conflitos antes de solicitar revisão.
- Não faça squash de commits sem combinação prévia com os revisores.

---

## Estilo de Código

### Back-end (Java / Spring Boot)
- Siga as convenções de nomenclatura do Java (camelCase para variáveis e métodos, PascalCase para classes).
- Use o formatter padrão do IntelliJ IDEA (Google Java Style).
- Toda classe de serviço deve ter pelo menos um teste unitário correspondente.

### Front-end (React / TypeScript)
- Componentes em PascalCase; hooks com prefixo `use`.
- Use `const` com arrow functions para componentes funcionais.
- Estilização exclusivamente via Tailwind CSS — sem CSS inline.

---

## Dúvidas

Abra uma [Issue](https://github.com/vitorazevedop7/ChessMate/issues) com a label `question`.
