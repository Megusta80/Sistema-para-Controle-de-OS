# Sistema para Controle de Ordem de Serviço (OS)

## Visão Geral

Este projeto consiste em um sistema desenvolvido em Java para a automação e controle eficiente de Ordens de Serviço (OS). O sistema realiza o gerenciamento completo do ciclo de vida das OS, desde sua criação, passando pela execução, até o seu encerramento e arquivamento. O objetivo principal é otimizar o fluxo de trabalho, melhorar a rastreabilidade e facilitar a comunicação entre clientes, técnicos e gestores.

## Tecnologias Utilizadas

* Java 8 ou superior
* Maven para gerenciamento de dependências
* Banco de dados relacional (configurável)
* Interface gráfica com Swing ou JavaFX

## Desafios Técnicos e Soluções

Durante o desenvolvimento, os principais desafios foram estruturados em torno da gestão de dados críticos e performance do sistema:

* **Gestão de Dados:** Implementação de um modelo de dados robusto para representação de Ordens de Serviço, clientes, técnicos e histórico de atendimentos. Validação em tempo real para garantir a integridade dos dados.

* **Rastreabilidade:** Desenvolvimento de funcionalidades de auditoria para registro completo do ciclo de vida de cada OS, incluindo datas, responsáveis e mudanças de status.

* **Escalabilidade:** Arquitetura modular que permite fácil manutenção, expansão de funcionalidades e integração com sistemas externos.

## Estrutura do Projeto

* `src/`: Código-fonte principal da aplicação.
* `resources/`: Arquivos de configuração e recursos da aplicação.
* `pom.xml`: Gerenciador de dependências do Maven.
* `.gitignore`: Protocolo de segurança para evitar a subida de compilados, ambientes virtuais e arquivos sensíveis para o repositório.
* `README.md`: Este arquivo com documentação completa.

## Instruções de Instalação

O projeto foi desenvolvido em Java com suporte a JDK 8 ou superior.

### Pré-requisitos

* Java Development Kit (JDK) 8 ou superior instalado
* Maven 3.6 ou superior
* Git instalado

### Passos para Instalação

1. Clone o repositório:
```bash
git clone https://github.com/Megusta80/Sistema-para-Controle-de-OS.git
cd Sistema-para-Controle-de-OS
```

2. Instale as dependências com Maven:
```bash
mvn clean install
```

3. Execute a aplicação:
```bash
mvn exec:java -Dexec.mainClass="seu.pacote.principal.Main"
```

## Funcionalidades Principais

### Gerenciamento de Ordens de Serviço

* Criar nova OS com dados de cliente, descrição do serviço e estimativa de tempo
* Atualizar status da OS (Aberta, Em Andamento, Concluída, Cancelada)
* Registrar histórico detalhado de todas as alterações
* Anexar documentos e imagens à OS

### Gerenciamento de Clientes

* Cadastro e manutenção de dados de clientes
* Histórico de serviços realizados por cliente
* Informações de contato e endereço

### Gerenciamento de Técnicos

* Cadastro de técnicos e suas especialidades
* Atribuição de OS aos técnicos responsáveis
* Acompanhamento de performance e histórico de trabalhos

### Relatórios e Análises

* Relatório de OS por período
* Análise de performance de técnicos
* Relatório financeiro de serviços prestados

## Modelo de Dados

O sistema utiliza as seguintes entidades principais:

* **OrdemServico:** Representa uma ordem de serviço com ID, cliente, técnico, descrição, datas e status.
* **Cliente:** Informações do cliente incluindo nome, contato e endereço.
* **Tecnico:** Dados do técnico incluindo nome, especialidades e contato.
* **Historico:** Registro de todas as alterações em uma OS.

## Exemplo de Uso

```java
// Criar uma nova ordem de serviço
OrdemServico os = new OrdemServico();
os.setDescricao("Manutenção de equipamento");
os.setCliente(cliente);
os.setTecnico(tecnico);
os.setStatus(Status.ABERTA);
osService.salvar(os);

// Atualizar status
os.setStatus(Status.EM_ANDAMENTO);
osService.atualizar(os);

// Adicionar histórico
Historico historico = new Historico();
historico.setOrdenServico(os);
historico.setAlteracao("Status alterado para EM_ANDAMENTO");
historicoService.registrar(historico);
```

## Configuração do Banco de Dados

Edite o arquivo de configuração `resources/config.properties` com as credenciais do seu banco de dados:

```properties
db.url=jdbc:mysql://localhost:3306/sistema_os
db.user=seu_usuario
db.password=sua_senha
```

## Troubleshooting

* Problema: "Java não encontrado"
  Solução: Verifique se o JDK está instalado e adicionado ao PATH do sistema.

* Problema: "Dependências não encontradas"
  Solução: Execute `mvn clean install` novamente ou verifique sua conexão com a internet.

* Problema: "Erro ao conectar ao banco de dados"
  Solução: Verifique as credenciais em `resources/config.properties` e se o banco de dados está rodando.

## Contato e Suporte

Para questões, sugestões ou reportar bugs, abra uma issue no repositório do GitHub ou entre em contato através das informações do perfil.
