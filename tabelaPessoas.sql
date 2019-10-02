
use TesteBicicleta
go

CREATE Table TB_Pessoa( 
  CodPessoa int PRIMARY KEY not null,
  TipoPessoa varchar(2) not null,
  EstiloNome tinyint not null,
  Vocativo varchar (4) not null,
  PrimeiroNome varchar (50) not null,
  NomeMeio varchar (50) not null,
  Sobrenome varchar (50) not null,
  Sufixo varchar (10) not null,
  MalaDireta tinyint not null,
  InfoXml xml,
  InfoUtilOnline text,
  DataHoraAtu datetime,

  /*
  CodTipo int ref: > E.CodTipo,
  CodContato int ref: > C.CodContato,
  User varchar ref: > L.User,
  CodTipoTel int ref: > TEL.CodTipoTel,
  Email varchar ref: > EM.Email,
  */
)


Create Table TB_Endereco (
  CodTipo int PRIMARY KEY not null,
  Endereco text not null,
  Cidade varchar (50) not null,
  Estado varchar (50) not null,
  CEP int not null,
  Latitude geography not null,
  Longitude geography not null,
  DataHoraAtu datetime not null
  
)

Create Table TB_Tipo_Endereco(
  
  CodTipoEnd int PRIMARY KEY not null,
  Comercial varchar (100) not null,
  Residencial varchar (100) not null,
  Cobranca varchar (100) not null,
  Envio varchar (100) not null,
  DataHoraAtu datetime not null
  
)

Create Table TB_Contato(
  CodContato int PRIMARY KEY not null,
  NomeContato varchar (50) not null,
  DataHoraAtu datetime not null
  
)

Create Table TB_Relacao_Contatos_Pessoas(
  CodRelac int PRIMARY KEY not null,
  Interlig varchar (50) not null,
  DataHoraAtu datetime not null
  
)

Create Table TB_Login (
  Usuario varchar (20)  PRIMARY KEY not null,
  Senha varchar (8000) not null,
  DataHoraAtu datetime not null,
)

Create Table TB_Telefone(
  CodTipoTel int PRIMARY KEY not null,
  DDD int not null,
  Num int not null,
  DataHoraAtu datetime not null
)

Create Table TB_Tipo_Tel(
  TipoTel varchar (10) PRIMARY KEY not null,
  DDD int not null,
  Num int not null,
  DataHoraAtu datetime not null
)

Create Table TB_Email(
  Email varchar (50) PRIMARY KEY,
  DataHoraAtu datetime not null
  
)

ALTER TABLE [TB_Telefone] ADD FOREIGN KEY ("CodTipoTel") REFERENCES TB_Tipo_Tel ("CodTipoTel");

/*Ref: "TB_Telefone"."CodTipoTel" < "TB_Tipo_Tel"."TipoTel" */

ALTER TABLE [TB_Endereco] ADD FOREIGN KEY ("CodTipo") REFERENCES TB_Tipo_Endereco ("CodTipoEnd");

/*Ref: "TB_Endereco"."CodTipo" < "TB_Tipo_Endereco"."CodTipoEnd"*/

ALTER TABLE [TB_Relacao_Contatos_Pessoas] ADD FOREIGN KEY ("CodRelac") REFERENCES TB_Contato ("CodCOntado");

/*Ref: "TB_Relacao_Contatos_Pessoas"."CodRelac" < "TB_Contato"."CodContato" */









