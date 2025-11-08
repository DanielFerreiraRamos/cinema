-- Criar o banco de dados
if exists (select * from sys.databases where name = 'CinemaDB')
begin
	alter database CinemaDB set single_user with rollback immediate
    drop database CinemaDB;
end
go
-- Cria o banco de dados novamente
create database CinemaDB;
go
	use CinemaDB;
	set dateformat DMY
go
-- Tabela Usuarios (Clientes)
create table Usuario (
	UsuarioId int primary key identity,
    Cpf varchar(11) not null unique,
    Nome varchar(100) not null,
    Email varchar(100) unique,
    Telefone varchar(11) unique,
	Senha varchar(100) not null
);
go
-- Tabela Administradores
create table Administrador (
    AdministradorId int primary key,
    Nome varchar(100) not null,
    Email varchar(100) unique,
	Senha varchar(100) not null,
    DataCadastro datetime default getdate()
);
go
-- Tabela Filmes
create table Filme (
	FilmeId int primary key,
    Titulo varchar(100) not null,
    Genero varchar(50),
    ClassificacaoEtaria varchar(10),
    Descricao varchar(300),
    DataInicioCartaz date not null,
    DataFimCartaz date,
    AdicionadoPor int not null,
    foreign key (AdicionadoPor) references Administrador(AdministradorId)
);
go
-- Tabela Salas
create table Sala (
    SalaId int primary key,
    NumeroSala varchar(50) not null,
    Capacidade int not null,
    TipoSala varchar(50) -- 2d, 3d, IMax
);
go
-- Tabela Assentos
create table Assento (
	AssentoId int primary key identity,
	NumeroAssento int not null,
	NomeAssento char(3) not null,
	Fileira int not null,
	Coluna int not null
);
go
-- Tabela Sessoes
create table Sessao (
    SessaoId int primary key,
    Filmeid int not null,
    SalaId int not null,
    DataHoraInicio datetime not null,
    Preco decimal(10,2) not null,
    foreign key (FilmeId) references Filme(FilmeId),
    foreign key (SalaId) references Sala(SalaId)
);
go
-- Tabela Ingressos
create table Ingresso (
    IngressoId int primary key identity,
    SessaoId int not null,
    UsuarioId int not null,
    Assento nvarchar(10),
    DataCompra datetime default getdate(),
    Preco decimal(10,2),
    foreign key (SessaoId) references Sessao(SessaoId),
    foreign key (UsuarioId) references Usuario(UsuarioId)
);
go