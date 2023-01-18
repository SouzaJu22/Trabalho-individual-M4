 Despejo de SQL do phpMyAdmin
-- versão 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/01/2023 às 13:46
-- Versão do servidor: 10.4.27-MariaDB
-- Versão do PHP: 8.0.25

SET SQL_MODE =  " NO_AUTO_VALUE_ON_ZERO " ;
INICIAR TRANSAÇÃO ;
SET time_zone =  " +00:00 " ;


/* !40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */ ;
/* !40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */ ;
/* !40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */ ;
/* !40101 DEFINIR NOMES utf8mb4 */ ;

--
-- Banco de dados: `resilia`
--

-------------------------------------------------- _ --------

--
-- Estrutura para tabela `alunos`
--

CRIAR  TABELA ` alunos` (
  ` id_aluno `  int ( 11 ) NÃO NULO ,
  ` nome `  int ( 11 ) DEFAULT NULL ,
  ` cpf `  int ( 11 ) DEFAULT NULL ,
  ` endereco `  varchar ( 100 ) DEFAULT NULL ,
  ` telefone `  int ( 11 ) DEFAULT NULL ,
  ` id_curso `  int ( 11 ) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

-------------------------------------------------- _ --------

--
-- Estrutura para tabela `curso`
--

CREATE  TABLE ` curso` (
  ` id_curso `  int ( 11 ) NÃO NULO ,
  ` Nome `  varchar ( 100 ) DEFAULT NULL ,
  ` Carga_horaria `  int ( 11 ) DEFAULT NULL ,
  ` valor `  int ( 11 ) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

-------------------------------------------------- _ --------

--
-- Estrutura para tabela `professores`
--

CREATE  TABLE ` professores` (
  ` id_professor `  int ( 11 ) NÃO NULO ,
  ` cpf `  int ( 11 ) DEFAULT NULL ,
  ` telefone `  int ( 11 ) DEFAULT NULL ,
  ` Formação`  varchar ( 100 )DEFAULT NULL ,
  ` Endereco `  varchar ( 100 ) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

-------------------------------------------------- _ --------

--
-- Estrutura para tabela `turmas`
--

CREATE  TABLE ` turmas ` (
  ` id_turmas `  int ( 11 ) NÃO NULO ,
  ` id_aluno `  int ( 11 ) DEFAULT NULL ,
  ` id_professor `  int ( 11 ) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER  TABELA  ` alunos` _
  ADICIONE CHAVE PRIMÁRIA ( ` id_aluno ` ),
  ADD KEY ` id_curso ` ( ` id_curso ` );

--
-- Índices de tabela `curso`
--
ALTER  TABLE  ` curso` _
  ADICIONAR CHAVE PRIMÁRIA ( ` id_curso ` );

--
-- Índices de tabela `professores`
--
ALTER  TABELA  ` professores` _
  ADICIONE CHAVE PRIMÁRIA ( ` id_professor ` );

--
-- Índices de tabela `turmas`
--
ALTER  TABLE  ` turmas `
  ADICIONE A CHAVE PRIMÁRIA ( ` id_turmas ` ),
  ADICIONE A CHAVE ` id_aluno ` ( ` id_aluno ` ),
  ADD KEY ` id_professor ` ( ` id_professor ` );

--
-- AUTO_INCREMENT para placas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER  TABELA  ` alunos` _
  MODIFY ` id_aluno` int  ( 11 ) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER  TABLE  ` curso` _
  MODIFY ` id_curso `  int ( 11 ) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER  TABELA  ` professores` _
  MODIFY ` id_professor `  int ( 11 ) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER  TABLE  ` turmas `
  MODIFY ` id_turmas` int  ( 11 ) NOT NULL AUTO_INCREMENT;

--
-- Restrições para mesas despejadas
--

--
-- Restrições para tabelas `alunos`
--
ALTER  TABELA  ` alunos` _
  ADD CONSTRAINT  ` alunos_ibfk_1 `  FOREIGN KEY ( ` id_curso ` ) REFERÊNCIAS  ` curso ` ( ` id_curso ` );

--
-- Restrições para tabelas `turmas`
--
ALTER  TABLE  ` turmas `
  ADICIONAR CONSTRAINT  ` turmas_ibfk_1 `  FOREIGN KEY ( ` id_aluno ` ) REFERÊNCIAS  ` alunos ` ( ` id_aluno ` ),
  ADICIONAR CONSTRAINT  ` turmas_ibfk_2 `  CHAVE ESTRANGEIRA ( ` id_professor ` ) REFERÊNCIAS  ` professores ` ( ` id_professor ` );
COMPROMISSO ;

/* !40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */ ;
/* !40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */ ;
/* !40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */ ;