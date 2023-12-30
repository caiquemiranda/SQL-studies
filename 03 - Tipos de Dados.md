# SQL: Tipos de Dados

### Seção 3.1: DECIMAL e NUMERIC

DECIMAL e NUMERIC são tipos de dados que representam números decimais com precisão fixa e escala. Ambos são funcionalmente equivalentes. A sintaxe é a seguinte:

```sql
DECIMAL(precision [, scale])
NUMERIC(precision [, scale])
```

#### Exemplos

**DECIMAL**

- Representando um valor monetário com 3 casas decimais:
  ```sql
  SELECT CAST(4567.891 AS DECIMAL(8,3)) -- retorna 4567.891
  ```

- Calculando uma taxa com 2 casas decimais:
  ```sql
  SELECT CAST(0.075 AS DECIMAL(3,2)) -- retorna 0.08
  ```

**NUMERIC:**

- Calculando a média ponderada de produtos com 4 casas decimais:
```sql
  SELECT CAST((100 *0.25 + 150* 0.75) / 2 AS NUMERIC(6,4) -- retorna 118.7500
  ```

- Representando uma porcentagem com 5 casas decimais:
  ```sql
  SELECT CAST(0.98765 AS NUMERIC(7,5)) -- retorna 0.98765
  ```

> A diferença entre `DECIMAL` e `NUMERIC` é que o `NUMERIC` possui mais precisão

Esses exemplos ilustram situações práticas de uso dos tipos de dados DECIMAL e NUMERIC em consultas SQL, demonstrando sua versatilidade em operações matemáticas e representação precisa de valores.


### Seção 3.2: FLOAT e REAL

FLOAT e REAL são tipos de dados que lidam com números aproximados em ponto flutuante. São especialmente úteis para dados numéricos que requerem uma representação mais flexível e abrangente. A sintaxe básica é a seguinte:

```sql
SELECT CAST(expression AS FLOAT)
SELECT CAST(expression AS REAL)
```

#### Exemplos:

**FLOAT:**
- Representando o valor de PI com alta precisão:
  ```sql
  SELECT CAST(PI() AS FLOAT) -- retorna 3.14159265358979
  ```

**REAL:**
- Representando o valor de PI com precisão menor:
  ```sql
    SELECT CAST(PI() AS REAL) -- retorna 3.141593
  ```

Esses tipos de dados são ideais para situações onde a precisão exata não é crítica, como em cálculos científicos ou em contextos onde a flexibilidade na representação numérica é mais importante.


### Seção 3.3: Inteiros

Os tipos de dados inteiros são utilizados para representar números inteiros exatos. Eles são particularmente úteis em situações onde a precisão é crucial. Abaixo estão alguns tipos de dados inteiros, incluindo seus intervalos e tamanho de armazenamento:

**bigint:**
  - Intervalo: -2^63 a 2^63-1 (-9,223,372,036,854,775,808 a 9,223,372,036,854,775,807)
  - Armazenamento: 8 Bytes

**int:**
  - Intervalo: -2^31 a 2^31-1 (-2,147,483,648 a 2,147,483,647)
  - Armazenamento: 4 Bytes

**smallint:**
  - Intervalo: -2^15 a 2^15-1 (-32,768 a 32,767)
  - Armazenamento: 2 Bytes

**tinyint:**
  - Intervalo: 0 a 255
  - Armazenamento: 1 Byte

Esses tipos de dados são essenciais para representar números inteiros sem casas decimais, sendo ideais para contagens, identificadores únicos e outras situações onde a exatidão é crucial.

### Seção 3.4: MONEY e SMALLMONEY

Os tipos de dados MONEY e SMALLMONEY são projetados para representar valores monetários ou de moeda. Abaixo estão detalhes sobre esses tipos de dados, incluindo seus intervalos e tamanho de armazenamento:

**money:**
  - Intervalo: -922,337,203,685,477.5808 a 922,337,203,685,477.5807
  - Armazenamento: 8 Bytes

**smallmoney:**
  - Intervalo: -214,748.3648 a 214,748.3647
  - Armazenamento: 4 Bytes

Esses tipos de dados são especialmente úteis em aplicações financeiras, contabilidade e em qualquer situação que envolva valores monetários. Eles oferecem uma representação eficiente e precisa para cálculos envolvendo dinheiro.


### Seção 3.5: BINARY e VARBINARY

Os tipos de dados BINARY e VARBINARY são destinados a armazenar dados binários, sendo flexíveis em relação ao comprimento. A sintaxe é a seguinte:

```sql
BINARY [ (n_bytes) ]
VARBINARY [ (n_bytes | max) ]
```

- BINARY: Representa dados binários de comprimento fixo.
- VARBINARY: Representa dados binários de comprimento variável.

`n_bytes` pode ser qualquer número de 1 a 8000 bytes. Quando usado com VARBINARY, `max` indica que o espaço de armazenamento máximo é 2^31-1.

#### Exemplos:

**BINARY:**

```sql
SELECT CAST(12345 AS BINARY(10)) -- 0x00000000000000003039
```

**VARBINARY:**

```sql
SELECT CAST(12345 AS VARBINARY(10)) -- 0x00003039
```

Esses tipos de dados são úteis para armazenar dados binários, como imagens, documentos ou qualquer informação que não seja textual. A flexibilidade no comprimento torna VARBINARY uma escolha versátil.


### Seção 3.6: CHAR e VARCHAR

Os tipos de dados CHAR e VARCHAR são utilizados para armazenar dados de texto, podendo ter comprimento fixo ou variável. A sintaxe é a seguinte:

```sql
CHAR [ (n_chars) ]
VARCHAR [ (n_chars) ]
```

- CHAR: Representa dados de texto de comprimento fixo.
- VARCHAR: Representa dados de texto de comprimento variável.

#### Exemplos:

**CHAR:**

Armazenando 'ABC' com um comprimento fixo de 10 caracteres (preenchido com espaços à direita):

```sql
SELECT CAST('ABC' AS CHAR(10)) -- 'ABC      '
```

**VARCHAR:**

Armazenando 'ABC' com um comprimento variável de até 10 caracteres (sem preenchimento devido ao caráter variável):

```sql
SELECT CAST('ABC' AS VARCHAR(10)) -- 'ABC'
```

**CHAR com Truncamento:**

Armazenando 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' com um comprimento fixo de 10 caracteres (truncado para 10 caracteres):

```sql
SELECT CAST('ABCDEFGHIJKLMNOPQRSTUVWXYZ' AS CHAR(10)) -- 'ABCDEFGHIJ'
```

Esses tipos de dados são fundamentais para armazenar e manipular informações textuais, sendo CHAR apropriado quando o comprimento é constante e VARCHAR quando o comprimento pode variar.

### Seção 3.7: NCHAR e NVARCHAR

Os tipos de dados NCHAR e NVARCHAR são destinados a armazenar dados de texto UNICODE, permitindo representação de caracteres em vários idiomas. A sintaxe é a seguinte:

```sql
NCHAR [ (n_chars) ]
NVARCHAR [ (n_chars | MAX) ]
```

- NCHAR: Representa dados de texto UNICODE de comprimento fixo.
- NVARCHAR: Representa dados de texto UNICODE de comprimento variável.

**NCHAR:**

- Armazenando 'Olá' com um comprimento fixo de 5 caracteres UNICODE:
   ```sql
  SELECT CAST(N'Olá' AS NCHAR(5)) -- 'Olá  '
  ```

**NVARCHAR:**

- Armazenando 'Olá' com um comprimento variável de até 5 caracteres UNICODE:
  ```sql
  SELECT CAST(N'Olá' AS NVARCHAR(5)) -- 'Olá'
  ```

**NVARCHAR com MAX:**

- Armazenando uma string muito longa que pode exceder 8000 caracteres:
  ```sql
  SELECT CAST(N'Representação muito longa...' AS NVARCHAR(MAX))
  ```

> #### Observação Importante:
> Ao usar `NVARCHAR`, o modificador `MAX` pode ser especificado para indicar que o comprimento máximo pode exceder 8000 caracteres.

Esses tipos de dados são particularmente úteis em aplicações multilíngues ou em situações onde é necessário suportar caracteres especiais e conjuntos de caracteres diversos.


### Seção 3.8: UNIQUEIDENTIFIER

O tipo de dado UNIQUEIDENTIFIER é utilizado para armazenar identificadores exclusivos globais (GUID / UUID), sendo representado por uma sequência de 16 bytes. A sintaxe é a seguinte:

```sql
DECLARE @GUID UNIQUEIDENTIFIER = NEWID();
```

Exemplos:

**Gerando um UNIQUEIDENTIFIER:**

```sql
DECLARE @GUID UNIQUEIDENTIFIER = NEWID();
SELECT @GUID -- 'E28B3BD9-9174-41A9-8508-899A78A33540'
```

**Convertendo uma string para UNIQUEIDENTIFIER:**

```sql
DECLARE @bad_GUID_string VARCHAR(100) = 'E28B3BD9-9174-41A9-8508-899A78A33540_foobarbaz';
SELECT
    @bad_GUID_string, -- 'E28B3BD9-9174-41A9-8508-899A78A33540_foobarbaz'
    CONVERT(UNIQUEIDENTIFIER, @bad_GUID_string) -- 'E28B3BD9-9174-41A9-8508-899A78A33540'
```

O `UNIQUEIDENTIFIER` é útil para representar identificadores únicos em bancos de dados, especialmente em situações onde é necessário garantir a exclusividade global de um valor.
