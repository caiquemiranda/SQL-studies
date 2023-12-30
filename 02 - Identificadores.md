# SQL: Identificadores

## Introdução

Este tópico explora os identificadores, que são as regras de sintaxe para nomes de tabelas, colunas e outros objetos em um banco de dados. O objetivo é fornecer exemplos que abranjam variações utilizadas por diferentes implementações de SQL, identificando, quando possível, a implementação específica mencionada nos exemplos.

## Seção 2.1: Identificadores não citados

Identificadores não citados são aqueles que não são envolvidos por aspas ou colchetes. Eles podem usar letras (a-z), dígitos (0-9) e sublinhado (_), sendo obrigatório começar com uma letra. Dependendo da implementação do SQL e das configurações do banco de dados, outros caracteres podem ser permitidos, alguns até como o primeiro caractere. Abaixo, exemplos de implementações específicas:

- **MS SQL:**
  - Caracteres permitidos: @, $, #, e outras letras Unicode (fonte).
  - Sensibilidade a maiúsculas/minúsculas: Preservação do caso, sensibilidade definida pelo conjunto de caracteres do banco de dados, podendo ser sensível a maiúsculas/minúsculas.

- **MySQL:**
  - Caracteres permitidos: $ (fonte).
  - Sensibilidade a maiúsculas/minúsculas: Preservação do caso, sensibilidade depende da configuração do banco de dados e do sistema de arquivos subjacente.

- **Oracle:**
  - Caracteres permitidos: $, #, e outras letras do conjunto de caracteres do banco de dados (fonte).
  - Sensibilidade a maiúsculas/minúsculas: Convertido para maiúsculas e, em seguida, tratado como identificador citado.

- **PostgreSQL:**
  - Caracteres permitidos: $, e outras letras Unicode (fonte).
  - Sensibilidade a maiúsculas/minúsculas: Convertido para minúsculas, em seguida, tratado como identificador citado.

- **SQLite:**
  - Caracteres permitidos: Variação ampla.
  - Sensibilidade a maiúsculas/minúsculas: Preservação do caso; insensibilidade a maiúsculas/minúsculas apenas para caracteres ASCII.

Essas considerações sobre identificadores não citados são cruciais ao desenvolver consultas SQL compatíveis com diferentes sistemas de gerenciamento de banco de dados.
