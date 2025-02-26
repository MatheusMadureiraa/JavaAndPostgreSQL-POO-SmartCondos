# 🎲 Banco de Dados - SmartCondos
## Como importar o banco de Dados
- ⚠️ Baixar arquivo `smartcondos.sql` que está aqui no repositório. ⚠️
- ⚠️ [Vídeo usado para importar e exportar o banco de dados do PostgreSQL na máquina local](https://www.youtube.com/watch?v=ijB_YZNrv4E) ⚠️

## Visão Geral
O banco de dados SmartCondos foi desenvolvido com o objetivo de gerenciar vários aspectos de um condomínio. Ele inclui tabelas essenciais para o funcionamento de um bom sistema (especificadas na estrutura abaixo). Cada tabela possui uma chave primária, sendo o CPF do responsável ou um número identificador (ID).

## Criação do Banco de Dados
- **Base de Dados**: PostgreSQL.
- **Diagrama**: O banco de dados foi desenhado usando diagramas que detalham as relações entre os objetos, classes e casos de uso, garantindo uma estrutura bem planejada.

## Estrutura do Banco de Dados
#### `Visitantes`
- **Propósito**: Controlar a entrada e saída de visitantes no condomínio.
- **Importância**: Garante a segurança e a rastreabilidade dos acessos.
- **Chave Primária**: CPF do visitante

#### `Condôminos`
- **Propósito**: Gerenciar informações dos residentes, incluindo dados pessoais e histórico de residências.
- **Importância**: Mantém um registro preciso dos moradores e suas informações.
- **Chave Primária**: CPF do morador

#### `Reservas`
- **Propósito**: Permitir que moradores façam reservas de áreas comuns, como salão de festas e churrasqueira.
- **Importância**: Garante a organização e evita conflitos de agenda.
- **Chave Primária**: ID da reserva.

#### `Funcionários`
- **Propósito**: Registrar os dados dos funcionários do condomínio.
- **Importância**: Facilita o controle interno e a gestão de funcionários, como turno e cargos.
- **Chave Primária**: CPF do funcionário.

#### `Encomendas`
- **Propósito**: Gerenciar o recebimento e a entrega de encomendas para os moradores, encomendas que são recebidas pelo funcionário (porteiro).
- **Importância**: Ajuda na organização e na entrega eficiente dos itens.
- **Chave Primária**: ID da encomenda.

#### `Avisos`
- **Propósito**: Comunicação entre o síndico e os moradores.
- **Importância**: Permite a divulgação de avisos importantes, como manutenções e reuniões.
- **Chave Primária**: ID do aviso.

#### `Ocorrências`
- **Propósito**: Registro de incidentes e ocorrências dentro do condomínio.
- **Importância**: Facilita a análise e resolução de problemas.
- **Chave Primária**: ID da ocorrência.

#### `Síndico do Condomínio`
- **Propósito**: Registrar informações sobre o síndico responsável pela gestão do condomínio.
- **Importância**: Essencial para a comunicação e a tomada de decisões administrativas.
- **Chave Primária**: CPF do síndico.

#### `Tags`
- **Propósito**: Criadas pelos moradores para liberar o acesso de entrada aos visitantes.
- **Importância**: Proporciona segurança e controle de acesso.
- **Chave Primária**: ID da tag de acesso.

**Feito por Matheus Madureira, Alisson Carvalho e João Pedro** 🧡☕
