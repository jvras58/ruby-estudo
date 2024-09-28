
# Ruby - Estudos [clean architecture]


## 📖 Sobre o Projeto
O projeto consiste em uma aplicação - Api com ruby [Ver](docs/docs.md)


## 🚀 Tecnologias e Ferramentas

A aplicação foi desenvolvida para aprimorar estudos com ruby 

## Stack do Projeto

Este projeto é uma aplicação - Api simples que utiliza o Ruby, uma linguagem de programação interpretada multiparadigma, de tipagem dinâmica e forte, com gerenciamento de memória automático. O objetivo é demonstrar/Aprender as capacidades e a integração com a linguagem.

Essas e outras libs e tecnologias usadas neste projeto são:
|  Lib      | Versão    |
|-----------|-----------|
| **Runtime**           |
| Ruby    | v3.4.0   |
| **Devtime**           |
| Docker Engine                 | vx.x.x    |
| budle                         | v2.6.0   |

### Organização do projeto
```
/
├─📁 .devcontainer     ->  [Configurações do devcontainer]
├─📁 docs              ->  [Artefatos para documentação do repo]
├─📁 app               ->  [Implementação Principal]
│ ├─📁 models               ->  [models da aplicação]
│ │ │   ├─💎 user.rb         -> Modelo de Usuario
│ │ │   ├─💎 transaction.rb         -> Modelo de Transação
│ │ │     ...
│ ├─📁 adapters               ->  [interface da camada]
│ │ │   ├─📁 repositories         -> [interage com os dados]
│ │ │         ├─💎 transcation_repository.rb   ->
│ │ │         ├─💎 user_repository.rb   ->
│ │ │     ...
├─📁 db             -> [Configurações do Banco de dados]
├─📁 lib             -> [Utils da aplicação]
│   │     ...
├─💎 app.rb             -> Entrypoint de aplicação
│   ...
├─📄 .env-semple       -> Exemplo de .env
├─📄 .gitignore
├─📄 Rakefile          ->  Automações para o ambiente
├─📄 Gemfile           ->  Definições para o projeto
├─📄 README.md

```

## Montando o ambiente

Este repositório esta organizando em um devcontainer.
E para instacia-lo no VSCODE é recomendado as seguintes configurações:

#### Extenções recomendadas

- Name: Remote Development
- Id: ms-vscode-remote.vscode-remote-extensionpack
- Description: An extension pack that lets you open any folder in a container, on a remote machine, or in WSL and take advantage of VS Code's full feature set.
- Version: 0.25.0
- Publisher: Microsoft
- VSCode Marketplace Link: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack

#### Docker Engine

É obrigatório ter o Docker Engine já instalado e cunfigurado. Para mais informações de como instalar o Docker Engine em seu SO, ver em:

- Instruções para instalação do Docker Engine: [Ver o link](https://docs.docker.com/engine/install/)

#### Procedimento para instanciar o projeto no VSCODE
1. Com o pack de extenções instalado,
1. Realize o clone/fork deste repositório,
1. Abra o diretorio deste repositorio no VSCODE como um projeto,
1. Use o Comando _Dev Containers: Reopen in Container_ da paleta de comandos do VSCODE. _(F1, Ctrl+Shift+P)_.

Depois da compilação do container o VSCode abrirá o repositório em um ambiente encapsulado e executando diretamente de dentro do container como configurado nas definições do **/.devconainer**.

#### Procedimento para iniciar

1. instale as dependencias definidas no Gemfile

```
$> bundle
```
- Pronto agora voce esta pronto para começar a usar!


2. 











#### Rodar Code Formatter

```
$> rubocop
```

- Aplicar possiveis correções automaticas

```
$> rubocop -a
```

#### Adcionar novas dependencias

- Adicionar uma nova lib para o runtime do projeto

```
$> gem install <<nome_da_lib>>
```
