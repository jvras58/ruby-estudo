# Ruby - Estudos [Clean Architecture]

## 📖 Sobre o Projeto
Este projeto é uma API desenvolvida com Ruby, focada no estudo e implementação dos princípios da **Clean Architecture**. A documentação detalhada do que é a API pode ser encontrada [aqui](docs/docs.md).

## 🚀 Tecnologias e Ferramentas
O projeto foi criado para aprimorar conhecimentos em Ruby, explorando suas capacidades e integração com outras ferramentas e bibliotecas.

### Stack do Projeto
Esta API simples utiliza Ruby, uma linguagem multiparadigma, de tipagem dinâmica e forte, com gerenciamento automático de memória. O objetivo é demonstrar e aprender como estruturar um projeto seguindo os princípios da Clean Architecture.

#### Bibliotecas e Tecnologias Utilizadas:
|  Tecnologia           | Versão    |
|-----------------------|-----------|
| **Runtime**           |           |
| Ruby                  | v3.4.0    |
| **Desenvolvimento**   |           |
| Docker Engine         | vx.x.x    |
| Bundler               | v2.6.0    |

### Organização do Projeto

```
/
├─📁 .devcontainer     -> Configurações do ambiente de desenvolvimento (Devcontainer)
├─📁 docs              -> Artefatos de documentação
├─📁 app               -> Implementação principal da aplicação
│ ├─📁 models          -> Modelos da aplicação
│ │ ├─💎 exemple.rb       -> Modelo de exemple
│ │ │     ...
│ ├─📁 adapters        -> Camada de interfaces (adapters)
│ │ ├─📁 repositories  -> Acesso e manipulação de dados
│ │ │         ├─💎 exemple_repository.rb   -> interage com a tabela de exemple.
│ │ │     ...
│ │ ├─📁 controllers   -> Controladores responsáveis por lidar com as requisições
│ │ │         ├─💎 exemple_controllers.rb   -> Controlador responsável por lidar com exemples
│ │ │     ...
│ ├─📁 usecases        -> Casos de uso da aplicação
│ │ ├─📁 exemples         -> Casos de uso relacionados a exemples
│ │ │      ├─💎 create.rb   -> Cria/salvar utilizando o repositório de exemple
│ │ │     ...
│ ├─📁 db              -> Configurações do Banco de Dados
├─📁 lib               -> Utilitários da aplicação
├─💎 app.rb            -> Ponto de entrada da aplicação
├─📄 .env-sample       -> Exemplo de arquivo de variáveis de ambiente
├─📄 .gitignore        -> Arquivos e pastas ignorados pelo Git
├─📄 Rakefile          -> Automação de tarefas
├─📄 Gemfile           -> Dependências do projeto
├─📄 README.md         -> Este arquivo
```

## 🛠️ Configuração do Ambiente de Desenvolvimento

Este repositório está configurado para rodar em um **Devcontainer** no VSCode. Siga os passos abaixo para instanciar o ambiente.

### Extensões Recomendadas

- **Nome**: Remote Development
- **Id**: `ms-vscode-remote.vscode-remote-extensionpack`
- **Descrição**: Pacote de extensões que permite abrir pastas em containers, máquinas remotas ou WSL com todas as funcionalidades do VSCode.
- **Versão**: 0.25.0
- [VSCode Marketplace Link](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

### Docker Engine

É necessário ter o Docker Engine instalado. Veja o guia de instalação para seu sistema operacional [aqui](https://docs.docker.com/engine/install/).

### Procedimento para Instanciar o Projeto no VSCode

1. Instale o pacote de extensões recomendadas.
2. Clone ou faça fork deste repositório.
3. Abra o diretório do projeto no VSCode.
4. Execute o comando _Dev Containers: Reopen in Container_ na paleta de comandos do VSCode (_F1, Ctrl+Shift+P_).

Após a configuração do Devcontainer, o VSCode abrirá o projeto dentro de um ambiente isolado, conforme definido no diretório **/.devcontainer**.

## 🚀 Iniciando a Aplicação

1. Para iniciar o servidor (instalar as dependências e subir o ambiente):
    ```sh
    rake start
    ```

### Endpoints HTTP

@name: create-users-userQuery  
> Define o recebimento de parâmetros na URL.

@name: create-users  
> O servidor ainda não está configurado para interpretar corretamente o corpo JSON da requisição com `Content-Type: application/json`.

[Teste Aqui](routes.http)

### 🔧 Comandos Úteis

#### Rodar o Linter

1. Verificar o código com Rubocop:
    ```sh
    rubocop
    ```

2. Aplicar correções automáticas:
    ```sh
    rubocop -a
    ```

#### Adicionar Novas Dependências

1. Instale uma nova biblioteca:
    ```sh
    gem install <nome_da_lib>
    ```
2. Adicione a nova biblioteca ao `Gemfile`:
    ```ruby
    gem '<nome_da_lib>'
    ```

### 🗂️ Gerenciamento de Banco de Dados

1. Crie uma nova migração (substitua `nome_migrations` pelo nome desejado):
    ```sh
    bundle exec rake db:create_migration NAME=nome_migrations
    ```
2. Execute a migração:
    ```sh
    bundle exec rake db:migrate
    ```
