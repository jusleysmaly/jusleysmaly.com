# ************************************************************
# Sequel Pro SQL dump
# Versão 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 187.108.194.165 (MySQL 5.5.52-cll)
# Base de Dados: idcom_bsgc
# Tempo de Geração: 2016-12-14 21:34:18 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump da tabela tb_agenda
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_agenda`;

CREATE TABLE `tb_agenda` (
  `AGD_COD` int(11) NOT NULL AUTO_INCREMENT,
  `AGD_TITULO` varchar(255) DEFAULT NULL,
  `AGD_DESCRICAO` longtext,
  `AGD_DATA_DIA` int(11) DEFAULT NULL,
  `AGD_DATA_MES` int(11) DEFAULT NULL,
  `AGD_DATA_ANO` int(11) DEFAULT NULL,
  `AGD_LOCAL` varchar(255) DEFAULT NULL,
  `AGD_HORA` varchar(255) DEFAULT NULL,
  `AGD_STATUS` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`AGD_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_agenda` WRITE;
/*!40000 ALTER TABLE `tb_agenda` DISABLE KEYS */;

INSERT INTO `tb_agenda` (`AGD_COD`, `AGD_TITULO`, `AGD_DESCRICAO`, `AGD_DATA_DIA`, `AGD_DATA_MES`, `AGD_DATA_ANO`, `AGD_LOCAL`, `AGD_HORA`, `AGD_STATUS`)
VALUES
	(1,'Entrevista para a ALE','Entrevista para a Assembl&eacute;ia Legislativa no est&uacute;dio ALE.',19,1,2010,'Studio TV ALE','09:00',1),
	(2,'Atendimento','Atender Sr. Elton (Puraquequara)',19,1,2010,'Gabinete ALE','10:00',1),
	(3,'Inauguração SAMU','Inaugura&ccedil;&atilde;o de 8 bases Operacionais e do Laborat&oacute;rio de Habilidades do Servi&ccedil;o de Atendimento M&oacute;vel de Urg&ecirc;ncia - SAMU.',19,1,2010,'Base do SAMU (Bola da Suframa) - Praça Francisco Pereira, 967 - Raiz','10:00',1),
	(4,'Inauguração do Viaduto','Inaugura&ccedil;&atilde;o do complexo vi&aacute;rio Gilberto Mestrinho.',20,1,2010,'Bola do Coroado','10:00',NULL);

/*!40000 ALTER TABLE `tb_agenda` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_album
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_album`;

CREATE TABLE `tb_album` (
  `ALB_COD` int(11) NOT NULL AUTO_INCREMENT,
  `POS_COD_HOME` int(11) DEFAULT NULL,
  `POS_COD_CANAL` int(11) DEFAULT NULL,
  `ALB_TITULO` varchar(255) DEFAULT NULL,
  `ALB_RESUMO` varchar(255) DEFAULT NULL,
  `ALB_DESCRICAO` longtext,
  `ALB_PICASA_USER` varchar(255) DEFAULT NULL,
  `ALB_PICASA_ALBUM` varchar(255) NOT NULL,
  `ALB_DATA_DIA` int(11) NOT NULL,
  `ALB_DATA_MES` int(11) NOT NULL,
  `ALB_DATA_ANO` int(11) NOT NULL,
  `ALB_STATUS` tinyint(4) DEFAULT NULL,
  `ALB_TAGS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ALB_COD`),
  KEY `ALB_PICASA_ALBUM` (`ALB_PICASA_ALBUM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_album` WRITE;
/*!40000 ALTER TABLE `tb_album` DISABLE KEYS */;

INSERT INTO `tb_album` (`ALB_COD`, `POS_COD_HOME`, `POS_COD_CANAL`, `ALB_TITULO`, `ALB_RESUMO`, `ALB_DESCRICAO`, `ALB_PICASA_USER`, `ALB_PICASA_ALBUM`, `ALB_DATA_DIA`, `ALB_DATA_MES`, `ALB_DATA_ANO`, `ALB_STATUS`, `ALB_TAGS`)
VALUES
	(1,1,1,'Equipe Civilcorp','Conheça nossa equipe.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p>Conheça nossa equipe.</p></div></div></div>','104914768235172642075','5849346094818513489',12,3,2010,1,NULL),
	(2,2,1,'Evento Interno','Evento interno.','<div class=\"oneone\"><p>Evento interno.</p></div>','104914768235172642075','5852243109478547713',1,4,2010,1,NULL),
	(3,1,0,'teste',NULL,'<div class=\"oneone\"><p>It is a long established fact that a reader will be distracted by the  readable content of a page when looking at its layout. The point of  using Lorem Ipsum is that it has a more-or-less normal distribution of  letters, as opposed to using \'Content here, content here\', making it  look like readable English.</p></div>','manausmais','teste',1,1,2010,0,NULL);

/*!40000 ALTER TABLE `tb_album` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_candidato
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_candidato`;

CREATE TABLE `tb_candidato` (
  `CAN_COD` int(11) NOT NULL AUTO_INCREMENT,
  `CAN_CARGO_PRETENDIDO` varchar(255) DEFAULT NULL,
  `CAN_PRETENSAO_SAL` varchar(255) DEFAULT NULL,
  `CAN_INDICACAO` varchar(255) DEFAULT NULL,
  `CAN_NOME` varchar(255) DEFAULT NULL,
  `CAN_IDADE` int(11) DEFAULT NULL,
  `CAN_SEXO` varchar(1) DEFAULT NULL,
  `CAN_DATA_NASC` varchar(10) DEFAULT NULL,
  `CAN_NACIONALIDADE` varchar(255) DEFAULT NULL,
  `CAN_ESTADO_CIVIL` varchar(1) DEFAULT NULL,
  `CAN_ENDERECO` varchar(255) DEFAULT NULL,
  `CAN_NUMERO` varchar(255) DEFAULT NULL,
  `CAN_BAIRRO` varchar(255) DEFAULT NULL,
  `CAN_COMPLEMENTO` varchar(255) DEFAULT NULL,
  `CAN_CIDADE` varchar(255) DEFAULT NULL,
  `CAN_UF` varchar(100) DEFAULT NULL,
  `CAN_CEP` varchar(50) DEFAULT NULL,
  `CAN_FONE` varchar(255) DEFAULT NULL,
  `CAN_VEICULO` varchar(1) DEFAULT NULL,
  `CAN_EMAIL` varchar(255) DEFAULT NULL,
  `CAN_FORM_GRAU1` varchar(255) DEFAULT NULL,
  `CAN_FORM_GRAU2` varchar(255) DEFAULT NULL,
  `CAN_FORM_TECNICO` varchar(255) DEFAULT NULL,
  `CAN_FORM_SUPERIOR` varchar(255) DEFAULT NULL,
  `CAN_FORM_POS` varchar(255) DEFAULT NULL,
  `CAN_FORM_IDIOMAS` varchar(255) DEFAULT NULL,
  `CAN_EMP_ANTERIOR` varchar(255) DEFAULT NULL,
  `CAN_EMP_FONE` varchar(255) DEFAULT NULL,
  `CAN_EMP_DATA_ADMISSAO` varchar(10) DEFAULT NULL,
  `CAN_EMP_DATA_SAIDA` varchar(10) DEFAULT NULL,
  `CAN_EMP_SALARIO` varchar(255) DEFAULT NULL,
  `CAN_EMP_CARGO_INICIO` varchar(255) DEFAULT NULL,
  `CAN_EMP_CARGO_FIM` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CAN_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_candidato` WRITE;
/*!40000 ALTER TABLE `tb_candidato` DISABLE KEYS */;

INSERT INTO `tb_candidato` (`CAN_COD`, `CAN_CARGO_PRETENDIDO`, `CAN_PRETENSAO_SAL`, `CAN_INDICACAO`, `CAN_NOME`, `CAN_IDADE`, `CAN_SEXO`, `CAN_DATA_NASC`, `CAN_NACIONALIDADE`, `CAN_ESTADO_CIVIL`, `CAN_ENDERECO`, `CAN_NUMERO`, `CAN_BAIRRO`, `CAN_COMPLEMENTO`, `CAN_CIDADE`, `CAN_UF`, `CAN_CEP`, `CAN_FONE`, `CAN_VEICULO`, `CAN_EMAIL`, `CAN_FORM_GRAU1`, `CAN_FORM_GRAU2`, `CAN_FORM_TECNICO`, `CAN_FORM_SUPERIOR`, `CAN_FORM_POS`, `CAN_FORM_IDIOMAS`, `CAN_EMP_ANTERIOR`, `CAN_EMP_FONE`, `CAN_EMP_DATA_ADMISSAO`, `CAN_EMP_DATA_SAIDA`, `CAN_EMP_SALARIO`, `CAN_EMP_CARGO_INICIO`, `CAN_EMP_CARGO_FIM`)
VALUES
	(1,NULL,NULL,NULL,'Jusley',39,'M','29/08/1979',NULL,'S',NULL,NULL,NULL,NULL,NULL,'AM','69000000',NULL,NULL,'jusley@hotmail.com','Smaly','SC','Designer','123456','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,NULL,NULL,NULL,'Alexandre ',39,'M','0512077',NULL,'S',NULL,NULL,NULL,NULL,NULL,'AM','',NULL,NULL,'ext-alexandre.gonzaga@nokia.com','Gonzaga','SC','Analista de Materiais Pleno','gonzag','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(3,'Designer','R$ 10.000','Victor','Jusley Smaly',33,'M','29/08/1979','Brasileiro','S','Ali Logo','405','New Hope','Padaria do Chico','Manaus','AM','69000000','999-9999','S','jusley@gmail.com','Dom Bosco','FMM - Fundação Mathias Machiline','Téc. Informática','Desenho Ingustrial','n/a','Inglês','92dpi','9999-9999','01/01/1999','01/01/1999','10.000','Gerente','Diretor'),
	(4,'estagio',NULL,NULL,'andreilino dieb de ramos',19,'m','04/04/1993','amazonas','s',NULL,NULL,'jardim fortaleza ',NULL,'manaus','amazonas','69059-655','09292713466',NULL,'andrei072009@hotmail.com',NULL,NULL,NULL,'engenharia civil 6 periodo cursando',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5,'Setor Finaceiro','A partir de R$ 1.500,00',NULL,'Lilba Memória da Paz Silva',32,'F','30/07/1980','Brasileira','C','Av. Amizade','577','Cidade Nova','Alfredo Nascimento','manaus','Amazonas','69099-475','92-3639-2575','S','lilbapaz@hotmail.com',NULL,NULL,NULL,'Concluindo ( 8º período)',NULL,' inglês (cursando)','Supervisora de Caixa (tesoureira)','92-3216-3050','15-06-2009','Atual mome','Em media R$ 1600 a R$ 2000','op. de caixa','Supervisora de Caixa ( tesoureira)'),
	(6,'Administrativo','R$ a partir de R$ 1300.00',NULL,'Regiane valente da Silveira',27,'F','12-11-1985','Brasileira','S','Rua mem de Sa','339','Dom Pedro',NULL,'Manaus','Amazonas','69040-700','92-9188-7082  - 8158-2937','N','regianevalente@ymail.com',NULL,NULL,NULL,'Cursando 5º periodo',NULL,NULL,'Bemol','92-3216-3050','15-06-2009','Atual mome','R$ 1000.00 ','op. de caixa','Auxiliar de Caixa'),
	(7,'GERENTE DE VENDAS','2.000,00','NINGUEM','MARIA DO SOCORRO ROCHA DE ANDRADE',42,'F','03/11/70','BRASILEIRA','C','RUA DEMAR REGO, 11','11','P.10',NULL,'MANAUS','AM','69054460','92-9962-4446','S','msraalves@hotmail.com',NULL,NULL,NULL,'serviço social',NULL,NULL,'TAWRUS SEGURANÇA','3671-0092','01/10/2012',NULL,'950,00','COMERCIAL',NULL),
	(8,'Assistente Administrativo ou Financeiro','1200,00',NULL,'Camila Oliveira Barros',28,'F','03/08/84','Brasileira','S',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,'Assistente Administrativo ou Financeiro','1200,00',NULL,'Camila Oliveira Barros',28,'F','03/08/84','Brasileira','S','Avenida Efigênio Sales,','989 ','Parque Dez','ap 104 bl 01','Manaus','Am','69060-020','92 94980301','s','camila.oliv.barros@hotmail.comzaq',NULL,NULL,NULL,'Ciências Contábeis ',NULL,NULL,'B Q Pessoa','81983666','agost/12',NULL,'1214,00','Assistente Administrativo','Supervisora'),
	(10,'TÉCNICO EM EDIFICAÇÕES','2400,00',NULL,'MARIA DOMINGAS BARBOSA PAULINO',24,'F','08/11/1988','ORIXIMINÁ','C','RUA CHAVES RIBEIRO','21','SÃO GERALDO',NULL,'MANAUS','AMAZONAS','69053190','9236-3043','S','mariadomingas20@hotmail.com','sim','sim','técnico em edificações',NULL,NULL,NULL,'ASSISTENTE TÉCNICA',NULL,'01/07/2011',NULL,'1450,00','ESTAGIARIA','ASSISTENTE TÉCNICA'),
	(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(12,'engenheiro civil','7.000,00','Moacyr (correto)','Robson Bezerra Sampaio',32,'M','03/11/1980','brasileira','s','rua Castelo Branco','132','Ouri Verde','casa','Manaus',' Amazonas','69082-470','(92) 9189-3301','S','robson22_sampaio@yahoo.com.br','Escola Estadual Aristotilis Conte de alencar','Escola Estadual Josué Claudio de Souza',NULL,'engenharia civil',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(13,'Operacional','700,00','Ninguem','Jessica de souza lima',23,'F','26/10/1989','Brasileira','S','Rua vista bela','33','Novo israel','Casa','Manaus','Amazonas','69039-230','(92) 9210-6800','N','jessicaszjunior@yahoo.com.br',NULL,'Completo',NULL,NULL,NULL,NULL,'EL REIS COM DE OTICA',NULL,'01/02/2011','04/04/2011','585,00','Operadora de caixa','Operadora de caixa'),
	(14,'estágio em engenharia civil','1300',NULL,'ALLYSON GEORGE MARREIROS DE OLIVEIRA',28,'M','14/17/1984','BRASILEIRO','S','RUA DOIS IRMÃOS','2 B','CIDADE NOVA','RIACHO DOCE','MANAUS','AMAZONAS',NULL,'8442-7398','S','ALLYSON.GEORGE8@GMAIL.COM','ESCOLA COELHO NETO','COLÉGIO SANTA LUZIA','ELETRÔNICA DIGITAL','ENGENHARIA CIVIL',NULL,NULL,'TECHCASA INCORPORAÇÃO E CONSTRUÇÃO','36460976','02/04/2013',NULL,'R$900,00','ESTAGIÁRIO EM ENGENHARIA CIVIL',NULL),
	(15,'topografo','2.000,00','ninguem','devid macedo videira',21,'m','22/07/1991','brasileiro','s','rua 35,qua 107 ,','26','amazoninos mendes',NULL,'manaus','amazonas',NULL,'(92)94026777',NULL,'devidmacedo@gmail.com',NULL,NULL,NULL,'cursando engenharia civil',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(16,'ATENDIMENTO','MÍNIMA 800,00',NULL,'CONSUELEN MARIA MATOS',26,'F','05/02/87','BRASILEIRA','S','Rua Vinicius de Moraes ','7','COROADO III',NULL,'Manaus','Amazonas','69082370','9460-7032/88253351','N','CONSUELEN2013@GMAIL.COM','SIM','SIM','NÃO','ARQUITETURA E URBANISMO ( CURSANDO)',NULL,NULL,'CLINICA DE SERVIÇO MEDICOS GERARIS','(98) 3222-7248','01/02/2010','30/10/2012','770,OO','SECRETARIA','SECRETARIA E TELEFONISTA LIDER'),
	(17,'Estagiária ','600,000','O próprio site','Juvenilia Salim Restom Neta',22,'f','15/01/1991','Brasileira','A','Rua Doutor Abílio Alencar','23','Planalto','Conjunto Jardim Belvedere','Manaus','Amazonas','69044120','33422210','s','juju_restom@hotmail.com','Completo ','Completo','Não','Cursando - Arquitetura e Urbanismo (segundo período)',NULL,'Inglês básico',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(18,'Auxiliar tecnico','1.800,00',NULL,'Rafael SEbastião Almeida Barros',29,'m','06/11/1983','brasileiro','s','bc itacolomy quadra 47','30','armendo mendes',NULL,'manaus','amazonas','69089321','92-91683415','n','anacarolina@marso.com.br',NULL,'Escola Nossa Senhora Aparecida','Tecnico em edificações',NULL,NULL,NULL,'Engeformas',NULL,NULL,NULL,'1.800,00','Auxiliar tecnico','auxiliar tecnico'),
	(19,'ARQUITETA','A COMBINAR','PESQUISA NA INTERNET','ANA CRISTINA DE SOUZA LOUREIRO',44,'F','04/08/1968','BRASILEIRA','S','RUA RIO PIRATUCU','106','SAO JOSE OPERARIO','CONJUNTO COLINA DO ALEIXO','MANAUS','AMAZONAS','69085293','91366368','S','anacristinamao@yahoo.com','ESCOLA MARQUÊS DE SANTA CRUZ','ESCOLA GAL RODRIGO OCTÁVIO',NULL,'ARQUITETURA E URBANISMO','GESTÃO DE PESSOAS POR COMPETÊNCIA','INGLÊS E ESPANHOL','ESTÁGIO POLICIA CIVIL DO ESTADO DO AM',NULL,'01/08/2012','15/12/2012',NULL,NULL,NULL),
	(20,'Estagiaria de Engenharia Civil',NULL,NULL,'Lays Hellen Soares Marques Silva',20,'F','27/09/1992','Brasileira','S',NULL,NULL,NULL,NULL,'Manaus','AM',NULL,'(92)8160-8545',NULL,'layshellen@hotmail.com',NULL,NULL,'Técnico em Eletrônica','Engenharia Civil',NULL,'Inglês Avançado',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(21,'Médico do Trabalho','A combinar','Interesse próprio','Luiz Henrique Novaes da Silva',30,'M','20/04/1983','Brasileira','C','Rua das Hortênsias','381','Aleixo','Conjunto Tiradentes','Manaus','Amazonas','69083250','92 8832-0686','S','mdluizhenrique@gmail.com',NULL,NULL,'Processamento de Dados','Medicina','Medicina do Trabalho, Psiquiatria e Perícias Médicas','Inglês Básico','Desempregado','92 8832-0686',NULL,NULL,NULL,NULL,NULL),
	(22,'Área Administrativa','R$ 950,00',NULL,'Ayezha Oliveira Hidalgo',23,'f','14/03/1990','Brasileira','S','Rua Jose Tadros','859','Santo Antonio','Igreja de Santo Antonio','Manaus','Amazonas','69029510','(92)94193993','n','ayezhafreitas21@gmail.com','Completo','Completo',NULL,'Cursando - Asministração',NULL,NULL,'Instituto de Pesquisa da Amazônia',NULL,'06/02/2012','06/06/2013','550,00','Auxiliar Administrativo','Secretária');

/*!40000 ALTER TABLE `tb_candidato` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_clientes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_clientes`;

CREATE TABLE `tb_clientes` (
  `CLI_COD` int(11) NOT NULL AUTO_INCREMENT,
  `CLI_NOME` varchar(255) DEFAULT NULL,
  `CLI_RAMO` longtext,
  `CLI_TAGS` longtext,
  `CLI_STATUS` int(11) DEFAULT NULL,
  `CLI_URL` longtext,
  PRIMARY KEY (`CLI_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_clientes` WRITE;
/*!40000 ALTER TABLE `tb_clientes` DISABLE KEYS */;

INSERT INTO `tb_clientes` (`CLI_COD`, `CLI_NOME`, `CLI_RAMO`, `CLI_TAGS`, `CLI_STATUS`, `CLI_URL`)
VALUES
	(1,'Atack','Atack','Atacado e varejo de alimentos',1,'http://atacknet.com.br/'),
	(2,'Carrefour','Carrefour','supermercado, nacional',1,'http://www.grupocarrefour.com.br'),
	(3,'Emporium Roma','Supermercado','manaus, emporio roma manaus',1,'https://www.facebook.com/emporiumroma?fref=ts'),
	(4,'Hiper DB Supermercados','Alimentos','db manaus, supermercado db manaus',1,'http://www.dbsupermercados.com.br/'),
	(5,'Makro','Alimentos','makro manaus',1,'http://www.makro.com.br'),
	(6,'Nova Era Superatacado','Alimentos, bebidas','super nova era manaus',1,'http://www.supernovaera.com.br/');

/*!40000 ALTER TABLE `tb_clientes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_depoimentos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_depoimentos`;

CREATE TABLE `tb_depoimentos` (
  `DEP_COD` int(11) NOT NULL AUTO_INCREMENT,
  `POS_COD_HOME` int(11) DEFAULT NULL,
  `POS_COD_CANAL` int(11) DEFAULT NULL,
  `DEP_TITULO` varchar(255) DEFAULT NULL,
  `DEP_CLIENTE` varchar(255) DEFAULT NULL,
  `DEP_CORPO` longtext,
  `DEP_STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`DEP_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_depoimentos` WRITE;
/*!40000 ALTER TABLE `tb_depoimentos` DISABLE KEYS */;

INSERT INTO `tb_depoimentos` (`DEP_COD`, `POS_COD_HOME`, `POS_COD_CANAL`, `DEP_TITULO`, `DEP_CLIENTE`, `DEP_CORPO`, `DEP_STATUS`)
VALUES
	(1,0,0,'Civilcorp','Marcia Oliveira','Gostaria de agradecer a Civilcorp pela oportunidade de realizar mais um sonho de ter a minha casa. obrigada',1),
	(2,0,0,'Civilcorp / Vertentes','Lucia Muniz','Estou adquirindo meu 2o. imóvel pela Civilcorp e espero ficar muito satisfeita neste novo empreendimento.',1),
	(3,0,0,'Civilcorp','Sandra Seixas','Parabens a toda equipe da civilcorp pelo respeito e a dedicação com seus clientes, e aguardo com ansiedade a entrega das nossas casas. abraços.',1),
	(4,0,0,'Civilcorp','Wilson Soares','Mais um sonho realizado com a compra de minha nova casa, no Residencial Vertentes do Tarumã.',1),
	(5,0,0,'Civilcorp','Rebecca Monteiro ','PARA BÉNS a toda equipe civilcorp!!! Vejo que são imóveis de qualidade e que admiro muito. Continuem realizando o sonho de muitas famílias!!!',1),
	(6,0,0,'Meu primeiro empreendimento','Herbert Luckwü','Primeiro empreendimento adquirido através da CIVILCORP. Estou muito satisfeito com o residencial Vertentes do Tarumã, com boa localização, atendimento a altura das nossas expectativas e a garantia de que esta obra será finalizada no prazo estabelecido. Parabéns ! ',1),
	(7,0,0,'Vertentes','Paulo Serejo ','Estou adquirindo um empreendimento no vertentes, gostei muito do padrão e do acabamento. Aguardo ansioso a entrega',1),
	(8,0,0,'Vertentes do Tarumã','Marcio José','Sou proprietário de uma casa no Vertentes do Tarumã, não vejo há hora da Civilcorp entregar minha casa com uma grande Festa. ',1),
	(9,0,0,'Respeito','Sofia Cavalcante','Parabenizo a Civilcorp pelo respeito que tem com os seus clientes. sempre fui muito bem atendida.',1),
	(10,0,0,'Sonho Realizado','Lohana Still','Quero agradecer a Civilcorp, pela orportunidade de realizar mais um sonho. Pois, no mes de Janeiro entregou meu novo lar. Parabéns a toda equipe Civilcorp. ',1);

/*!40000 ALTER TABLE `tb_depoimentos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_dicas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_dicas`;

CREATE TABLE `tb_dicas` (
  `DIC_COD` int(11) NOT NULL AUTO_INCREMENT,
  `POS_COD_HOME` int(11) DEFAULT NULL,
  `POS_COD_CANAL` int(11) DEFAULT NULL,
  `DIC_TITULO` varchar(255) DEFAULT NULL,
  `DIC_CORPO` longtext,
  `DIC_CORPO_HOME` longtext,
  `DIC_FOTO_LEGENDA` varchar(255) DEFAULT NULL,
  `DIC_STATUS` int(11) DEFAULT NULL,
  `DIC_FONTE` varchar(255) DEFAULT NULL,
  `DIC_TAGS` varchar(255) DEFAULT NULL,
  `DIC_DATA_DIA` int(11) DEFAULT NULL,
  `DIC_DATA_MES` int(11) DEFAULT NULL,
  `DIC_DATA_ANO` int(11) DEFAULT NULL,
  `DICT_COD` int(11) DEFAULT NULL,
  PRIMARY KEY (`DIC_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_dicas` WRITE;
/*!40000 ALTER TABLE `tb_dicas` DISABLE KEYS */;

INSERT INTO `tb_dicas` (`DIC_COD`, `POS_COD_HOME`, `POS_COD_CANAL`, `DIC_TITULO`, `DIC_CORPO`, `DIC_CORPO_HOME`, `DIC_FOTO_LEGENDA`, `DIC_STATUS`, `DIC_FONTE`, `DIC_TAGS`, `DIC_DATA_DIA`, `DIC_DATA_MES`, `DIC_DATA_ANO`, `DICT_COD`)
VALUES
	(1,0,0,'Assembleia Vertentes do Tarumã','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\">No dia 08/03 às 19h00, será realizada&nbsp; a primeira assembleia de instalação do Condomínio Vertentes do Tarumã, onde os nossos clientes serão convidados para um delicioso jantar após a assembleia, no salão de festas do condomínio.<br><p><br><style><!--\r\n /* Font Definitions */\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-520092929 1073786111 9 0 415 0;}\r\n@font-face\r\n	{font-family:Cambria;\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-536870145 1073743103 0 0 415 0;}\r\n /* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:\"\";\r\n	margin:0cm;\r\n	margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:Cambria;\r\n	mso-ascii-font-family:Cambria;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Cambria;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Cambria;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n.MsoChpDefault\r\n	{mso-style-type:export-only;\r\n	mso-default-props:yes;\r\n	font-family:Cambria;\r\n	mso-ascii-font-family:Cambria;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Cambria;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Cambria;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n@page WordSection1\r\n	{size:612.0pt 792.0pt;\r\n	margin:72.0pt 90.0pt 72.0pt 90.0pt;\r\n	mso-header-margin:36.0pt;\r\n	mso-footer-margin:36.0pt;\r\n	mso-paper-source:0;}\r\ndiv.WordSection1\r\n	{page:WordSection1;}\r\n-->\r\n</style></p></div></div></div></div></div></div></div></div></div></div>','No dia 08/03 às 19h00 será realizada a primeira assembleia de instalação do Condomínio Vertentes do Tarumã. \r\n','enter your placeholder text here',0,'AC/Civil Corp',NULL,10,12,2012,1),
	(2,0,0,'Vistoria Residencial Vertentes do Tarumã','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p>No dia 11/03, após o evento de instalação do condomínio, o corpo de Engenheiros e Arquitetos da Civilcorp darão início as vistorias das unidades com cada um dos proprietário do Residencial Vertentes do Tarumã. Todos estarão sendo agendados para vistoriar suas unidades a partir desta data. Serão 15 atendimentos por dia de segunda à sexta-feira e nossas equipes estão ansiosas&nbsp; para agilizar a entrega das unidades.</p></div></div></div></div></div></div></div>','O corpo de Engenheiros e Arquitetos da Civilcorp darão início às vistorias das unidades com cada um dos proprietários do Residencial Vertentes do Tarumã.','enter your placeholder text here',1,'AC/Civil Corp','tag1 tag2 tag3',10,12,2012,1),
	(8,0,0,'Assembleia Residencial Passaredo','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p>Em breve será realizado a primeira assembleia de instalação do Residencial Passaredo. <br></p></div></div></div></div></div></div>','Será realizado a primeira assembleia de instalação do Residencial Passaredo. ','enter your placeholder text here',0,NULL,NULL,19,4,2013,1),
	(9,0,1,'Stand Civilcorp no Feirão Caixa','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p><b>O 9º Feirão Caixa da Casa Própria aconteceu nos dias 07, 08 e 09 de \r\nJunho e reuniu construtoras e imobiliárias, bem como 70 funcionário \r\nCaixa, especialista em habitação. A Civilcorp marcou presença, recebeu o\r\n público em um confortável Stand de Vendas e sua equipe pôde ajudar o \r\ncliente à escolher o imóvel, tirar dúvidas sobre financiamento \r\nimobiliário e dar o primeiro passo para realizar o sonho da casa \r\nprópria.</b></p></div></div></div></div></div></div></div>','O 9º Feirão Caixa da Casa Própria aconteceu nos dias 07, 08 e 09 de Junho e reuniu construtoras e imobiliárias.','9º Feirão Caixa da Casa Própria',1,NULL,NULL,10,6,2013,1),
	(10,0,0,NULL,NULL,NULL,'enter your placeholder text here',0,NULL,NULL,3,7,2013,1),
	(11,0,0,'Teste Teste xxxx','<font color=\"#fafafa\" face=\"Arial\"><span style=\"font-size: 12px;\">Teste Teste xxxx</span></font>','Teste Teste xxxx','Teste Teste xxxx',1,'Teste Teste xxxx','Teste Teste xxxx',8,10,2013,1);

/*!40000 ALTER TABLE `tb_dicas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_dicas_tipo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_dicas_tipo`;

CREATE TABLE `tb_dicas_tipo` (
  `DICT_COD` int(11) NOT NULL AUTO_INCREMENT,
  `DICT_NOME` varchar(255) DEFAULT NULL,
  `DICT_DESCRICAO` longtext,
  PRIMARY KEY (`DICT_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_dicas_tipo` WRITE;
/*!40000 ALTER TABLE `tb_dicas_tipo` DISABLE KEYS */;

INSERT INTO `tb_dicas_tipo` (`DICT_COD`, `DICT_NOME`, `DICT_DESCRICAO`)
VALUES
	(1,'Conheça','Conheça o MUSA'),
	(2,'Explore','Explore o MUSA'),
	(3,'Saiba','Saiba');

/*!40000 ALTER TABLE `tb_dicas_tipo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_empreendimento
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_empreendimento`;

CREATE TABLE `tb_empreendimento` (
  `EMP_COD` int(11) NOT NULL AUTO_INCREMENT,
  `POS_COD_HOME` tinyint(4) DEFAULT NULL,
  `POS_COD_CANAL` tinyint(4) DEFAULT NULL,
  `EMPT_COD` int(11) NOT NULL,
  `EMP_ANO` int(11) NOT NULL,
  `EMP_NOME` varchar(255) DEFAULT NULL,
  `EMP_DESCRICAO` longtext,
  `EMP_INFOS_EMPREENDIMENTO` longtext,
  `EMP_INFOS_TECNOLOGIA` longtext,
  `EMP_INFOS_LAZER` longtext,
  `EMP_ENDERECO` longtext,
  `EMP_AND_INFRA_LIMPEZA` tinyint(4) DEFAULT NULL,
  `EMP_AND_INFRA_MUROS` tinyint(4) DEFAULT NULL,
  `EMP_AND_INFRA_TERRAPLENAGEM` tinyint(4) DEFAULT NULL,
  `EMP_AND_INFRA_GUIAS` tinyint(4) DEFAULT NULL,
  `EMP_AND_INFRA_DRENAGEM` tinyint(4) DEFAULT NULL,
  `EMP_AND_INFRA_REDE_AGUA` tinyint(4) DEFAULT NULL,
  `EMP_AND_INFRA_REDE_ELETRICA` tinyint(4) DEFAULT NULL,
  `EMP_AND_INFRA_PAVIMENTACAO` tinyint(4) DEFAULT NULL,
  `EMP_AND_INFRA_PORTARIA` tinyint(4) DEFAULT NULL,
  `EMP_AND_INFRA_CLUBE` tinyint(4) DEFAULT NULL,
  `EMP_AND_CASA_FUNDACAO` tinyint(4) DEFAULT NULL,
  `EMP_AND_CASA_PRI_FIADA` tinyint(4) DEFAULT NULL,
  `EMP_AND_CASA_COB_LAJES` tinyint(4) DEFAULT NULL,
  `EMP_AND_CASA_COB_MONTAGEM` tinyint(4) DEFAULT NULL,
  `EMP_AND_CASA_TELHAMENTO` tinyint(4) DEFAULT NULL,
  `EMP_AND_CASA_INSTALACOES` tinyint(4) DEFAULT NULL,
  `EMP_AND_CASA_REV_INTERNOS` tinyint(4) DEFAULT NULL,
  `EMP_AND_CASA_REV_EXTERNOS` tinyint(4) DEFAULT NULL,
  `EMP_AND_CASA_PINTURA` tinyint(4) DEFAULT NULL,
  `EMP_TAGS` varchar(255) DEFAULT NULL,
  `EMP_STATUS` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`EMP_COD`),
  KEY `PRJ_TIPO_CODIGO` (`EMPT_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_empreendimento` WRITE;
/*!40000 ALTER TABLE `tb_empreendimento` DISABLE KEYS */;

INSERT INTO `tb_empreendimento` (`EMP_COD`, `POS_COD_HOME`, `POS_COD_CANAL`, `EMPT_COD`, `EMP_ANO`, `EMP_NOME`, `EMP_DESCRICAO`, `EMP_INFOS_EMPREENDIMENTO`, `EMP_INFOS_TECNOLOGIA`, `EMP_INFOS_LAZER`, `EMP_ENDERECO`, `EMP_AND_INFRA_LIMPEZA`, `EMP_AND_INFRA_MUROS`, `EMP_AND_INFRA_TERRAPLENAGEM`, `EMP_AND_INFRA_GUIAS`, `EMP_AND_INFRA_DRENAGEM`, `EMP_AND_INFRA_REDE_AGUA`, `EMP_AND_INFRA_REDE_ELETRICA`, `EMP_AND_INFRA_PAVIMENTACAO`, `EMP_AND_INFRA_PORTARIA`, `EMP_AND_INFRA_CLUBE`, `EMP_AND_CASA_FUNDACAO`, `EMP_AND_CASA_PRI_FIADA`, `EMP_AND_CASA_COB_LAJES`, `EMP_AND_CASA_COB_MONTAGEM`, `EMP_AND_CASA_TELHAMENTO`, `EMP_AND_CASA_INSTALACOES`, `EMP_AND_CASA_REV_INTERNOS`, `EMP_AND_CASA_REV_EXTERNOS`, `EMP_AND_CASA_PINTURA`, `EMP_TAGS`, `EMP_STATUS`)
VALUES
	(1,0,0,1,9999,'Residencial Altos da Serra Negra','Condomínio fechado com lotes a partir de 360 m². O Condomínio Residencial Altos de Serra Negra possui infraestrutura completa e oferece aos seus moradores ruas arborizadas, Piscinas adulto e infantil, Salão de festas com bar e lareira, Churrasqueiras, Quadra poliesportiva, Fitness e Sauna, Salão de jogos e Heliponto. Segurança 24 horas, com monitoramento por câmeras em todo o condomínio, Portaria completa com interfone e perímetro totalmente murado.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>&nbsp;Lotes a partir de 360 m²<br></li></ul><p></p></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Segurança 24h</li><li>Monitoramento por câmeras</li><li>Interfone<br></li></ul><p></p></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Salão de festas</li><li>Salão de jogos</li><li>Quadra poliesportiva</li><li>Sauna</li><li>Fitness</li><li>Piscinas adulto e infantil</li><li>Bar e lareira</li><li>Churrasqueira</li></ul><p></p></div></div></div></div></div></div></div>','Rua Joana Franco da Silveira, 530 - Serra Negra - São Paulo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(2,0,0,1,9999,'Residencial Altos de Flores','Condomínio fechado  com 119 casas, com área de 64,99 m², 03 quartos, sendo 01 suíte e 02 quartos. Possui Piscinas adulto e infantil, Salão de festas com bar, Quadra poliesportiva, Quadra de areia, Playground, Ruas arborizadas Sistema de Vídeo-segurança 24h e TV à cabo, circuito interno fechado para monitoramento e perímetro totalmente murado.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Casas com 64,99 m²</li><li>01 suíte<br></li><li>02 quartos <style><!--\r\n /* Font Definitions */\r\n@font-face\r\n	{font-family:Cambria;\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:3 0 0 0 1 0;}\r\n /* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-parent:\"\";\r\n	margin:0cm;\r\n	margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:\"Times New Roman\";\r\n	mso-ascii-font-family:Cambria;\r\n	mso-fareast-font-family:Cambria;\r\n	mso-hansi-font-family:Cambria;\r\n	mso-bidi-font-family:\"Times New Roman\";}\r\n@page Section1\r\n	{size:612.0pt 792.0pt;\r\n	margin:72.0pt 90.0pt 72.0pt 90.0pt;\r\n	mso-header-margin:36.0pt;\r\n	mso-footer-margin:36.0pt;\r\n	mso-paper-source:0;}\r\ndiv.Section1\r\n	{page:Section1;}\r\n--></style><span style=\"font-size:12.0pt;font-family:Cambria;\r\nmso-fareast-font-family:Cambria;mso-bidi-font-family:\" times=\"\" new=\"\" roman\";=\"\" mso-ansi-language:pt-br;mso-fareast-language:en-us\"=\"\"></span>\r\n\r\n\r\n\r\n</li></ul><p></p></div></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Segurança 24h</li><li>Circuito interno fechado</li><li>Vídeo-segurança</li><li>Tv à cabo</li></ul><p></p></div></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Piscinas adulto e infantil</li><li>Salão de festas</li><li>Quadra poliesportiva</li><li>Quadra de areia</li><li>Playground</li><li>Bar</li></ul><p></p></div></div></div></div></div></div></div></div>','Rua Padre Monteiro de Noronha, 453 - Cidade Nova - Manaus/AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(3,0,0,1,2008,'Residencial Vivenda das Samambaias','Condomínio fechado com 36 casas com área de 59 m². O Residencial  Samambaias, possui casas com 02 Quartos, sala, Cozinha e Banheiro social,  Portaria, Playground para o lazer das crianças.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Casas 59 m²</li><li>02 quartos<br></li><li>Sala</li><li>Cozinha</li><li>Banheiro social</li></ul><p></p></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Portaria<br></li></ul><p></p></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Playground</li><li>Churrasqueira<br></li></ul><p></p></div></div></div></div></div></div>','Rua Rei João Monte Fusco, 767, Santa Etelvina - Manaus/AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(10,0,0,1,2013,'Tropical Manaus Business (Park Suites)','Um local privilegiado. É assim que definimos o Park Suites Manaus, antigo Tropical Business Manaus, o hospede usufrui de vista permanente para o Rio Negro e a floresta Amazônica. O avançado projeto hoteleiro preza pela rica infraestrutura e variados serviços pensados para facilitar a estadia das pessoas. Com um padrão altamente sofisticado, o Park Suites Manaus possui Lobby, Recepção, Restaurantes, Mini bar, Coffee shop, Piscina com borda infinita, Sauna úmida e a vapo, Heliponto, Salas de reuniôes e eventos ,  Fitness center, Apartamentos com tecnologia de ponta, distribuídos em 17 andares, Internet Wi-Fi cortesia nos apartamentos, Apartamentos para não fumantes; Andar não fumantes,  Apartamentos para pessoas com necessidades especiais,  Bar da piscina, Business center, Elevadores com vista panorâmica, Estacionamento coberto. \r\n\r\n\r\n TV a cabo','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>17 andares</li></ul><p></p></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Governança</li><li>Room service</li><li>Gerador de energia</li><li>Lavanderia</li><li>Business Center</li><li>Heliponto</li><li>Internet Wi-Fi</li><li>Elevadores</li><li>Tv a Cabo<br></li></ul><p></p></div></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Bar</li><li>Restaurantes</li><li>Bistrô</li><li>Piscina com borda infinita</li><li>Bar da piscina</li><li>Fitness</li><li>Sauna</li><li>&nbsp;Coffee shop</li><li>Lobby<br></li><li>Mini Bar</li><li>Sala de reuniões</li><li>Sala de eventos</li><li>Área comercial</li></ul><p></p></div></div></div></div></div></div></div></div>','Av. Cel. Teixeira - Ponta Negra -  Manaus - AM',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(4,0,0,1,9999,'Residencial Outeiros dos Nobres','Condomínio Residencial fechado com 3 dormitórios sendo 1 suíte área 92m2.   O Edifício com apartamentos dos seus sonhos, com Portaria, Praças, Salão de festas, Salão de jogos, Churrasqueiras e Fornos de pizza, Área de recreação infantil e Playground,  Parque e Jardins. O clube do condomínio ainda conta com uma completa infra-estrutura para esportes e lazer,  Quadra Poliesportiva, Piscinas adulto e infantil, Sauna e Sala de descanso, Sala de Ginástica e um belíssimo solarium. ','<div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Condomínio Edificio.<br></li></ul><p></p></div></div>',NULL,'<div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Salão de festas</li><li>Salão de jogos</li><li>Playground<br></li><li>Churasqueiras</li><li>Quadra poliesportiva</li><li>Piscinas adulto e infantil</li><li>Sauna</li><li>Sala de descanso</li><li>Sala de Ginástica<br></li><li>Solarium<br></li></ul><p></p></div></div>','Rua Anacleto nº 101 Vila Guilherme - São Paulo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(11,0,0,3,2013,'Residencial Morada dos Pássaros','Acordar ao som dos pássaros e cercado de natureza. Peça para receber informações do nosso novo projeto Morada dos Pássaros, coloque o seu e-mail no newsletter logo abaixo e saiba tudo sobre mais essa novidade da Civilcorp. Breve lançamento.',NULL,NULL,NULL,'Rua Carlota Bonfim s/n - Tarumã - Manaus/AM',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(12,0,0,2,2013,'Residencial Nascentes do Tarumã','O Condomínio Residencial Nascentes do Tarumã, localizado na Avenida do Turismo s/n, próximo ao Café Joelza, foi incorporado e lançado pela Civilcorp Incorporações Ltda. O Projeto Paisagístico Benedito Abbud possui 587 lotes e área da casa 70 m². A área do terreno padrão mede 225 m². A área de lazer conta com Salão de festas, Salão de jogos, Piscina adulto/infantil, Piscina natural, Quadra poliesportiva, Quadra de areia, Playground e estacionamento de visitantes. Possui Área de Preservação de Mata, com nascente, Lago com tratamento paisagístico nas margens, Estação Ecológica de Tratamento de Esgoto, poço artesiano. Segurança com portaria e vigilância 24h informatizada, muro em todo o perímetro com altura mínima de 2 metros, Proteção Perimetral com cerca pulsativa setorizada, Sistema de Vídeo-segurança, moto para ronda e via de segurança.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Casas com 70 m²</li><li>01 suíte</li><li>02 quartos<br></li></ul><p></p></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Vigilância 24h</li><li>Cerca pulsativa setorizada</li><li>Vídeo-segurança</li><li>Portaria</li><li>Proteção perimetral</li><li>Motocicleta</li><li>Cerca Pulsativa</li></ul><p></p></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Salão de festas</li><li>Salão de jogos<br></li><li>Piscina adulto/infantil</li><li>Piscina natural</li><li>Quadra poliesportiva</li><li>Quadra de areia</li><li>Playground</li><li>Estacionamento</li><li>Lago<br></li></ul><p></p></div></div></div></div></div></div>','Av. do Turismo s/n - Tarumã - Manaus/AM',100,75,88,33,67,3,0,90,48,42,21,16,6,1,1,1,1,1,1,NULL,1),
	(13,0,0,2,2013,'Residencial Passaredo','Além de uma estrutura completa de lazer e segurança, o Residencial Passaredo possui 534 lotes a partir de 275 m² e tem como diferencial a grande proximidade com a flora e a fauna da nossa região. Um privilégio para quem quer morar perto da natureza. Os proprietários do Residencial Passaredo serão também donos da Reserva Particular do Patrimônio Natural Sócrates Bonfim. Esta RPPN tem 230.475 m² de floresta densa e foi criada a partir do Decreto Municipal nº 0152 de 8 de junho de 2009, abrigando mais de 100 espécies catalogadas da fauna e flora amazonense. Este empreendimento possui clube com Piscina adulto e infantil, Salão de festa, Quadra poliesportiva, Quadra de areia, Estacionamento para visitantes, Espaço gourmet com churrasqueira e forno de pizza. Segurança 24 horas, Motocicleta para ronda, Pontos eletrônicos, Proteção perimetral, Cerca pulsativa, Muros com altura mínima de 2 metros, Sistema de Vídeo segurança, Estação Ecológica de Tratamento de Esgoto e poço artesiano.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Lotes a partir&nbsp; 275 m²<br></li></ul><style>\r\n<!--\r\n /* Font Definitions */\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-520092929 1073786111 9 0 415 0;}\r\n@font-face\r\n	{font-family:Cambria;\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-536870145 1073743103 0 0 415 0;}\r\n /* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:\"\";\r\n	margin:0cm;\r\n	margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:Cambria;\r\n	mso-fareast-font-family:Cambria;\r\n	mso-bidi-font-family:\"Times New Roman\";}\r\n.MsoChpDefault\r\n	{mso-style-type:export-only;\r\n	mso-default-props:yes;\r\n	font-size:10.0pt;\r\n	mso-ansi-font-size:10.0pt;\r\n	mso-bidi-font-size:10.0pt;\r\n	font-family:Cambria;\r\n	mso-ascii-font-family:Cambria;\r\n	mso-fareast-font-family:Cambria;\r\n	mso-hansi-font-family:Cambria;}\r\n@page WordSection1\r\n	{size:612.0pt 792.0pt;\r\n	margin:72.0pt 90.0pt 72.0pt 90.0pt;\r\n	mso-header-margin:36.0pt;\r\n	mso-footer-margin:36.0pt;\r\n	mso-paper-source:0;}\r\ndiv.WordSection1\r\n	{page:WordSection1;}\r\n-->\r\n</style><p></p></div></div></div></div></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Vigilância 24h</li><li>Motocicleta</li><li>Cerca pulsativa</li><li>Câmeras de segurança</li><li>Pontos eletrônicos</li></ul><p></p></div></div></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Área de preservação ambiental</li><li>Piscinas adulto e infantil</li><li>Salão de festas</li><li>Quadra poliesportiva</li><li>Quadra de areia</li><li>Espaço gourmet</li><li>Forno de pizza</li><li>Churrasqueira</li></ul><p></p></div></div></div></div></div></div></div></div></div>','Rua Carlota Bonfim s/n - Tarumã - Manaus/AM',100,100,100,100,100,100,100,100,100,100,-1,-1,-1,-1,-1,-1,-1,-1,-1,NULL,1),
	(14,1,0,2,2013,'Residencial Quinta das Marinas','Empreendimento Condomínio Residencial Quinta das Marinas, endereço Frederico Baird, s/n –Tarumã, possui 592 lotes e um exclusivo sistema de segurança, sem interferir na privacidade de seus moradores. A portaria conta com segurança 24 horas, moto para ronda, câmeras distribuídas estrategicamente, proteção perimetral com cerca pulsativa. São lotes a partir de 250 m²  com ruas pavimentadas, paisagismo, estação ecológica, ciclovia, quadra poliesportiva, quadra de areia, playground, piscina adulto e infantil, salão de festas, poço artesiano e uma grande área de preservação ambiental permanente (APP). Tudo para você viver com mais qualidade de vida, conforto e respeito ao meio ambiente.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Lotes a partir&nbsp; 250 m²&nbsp; \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<style>\r\n<!--\r\n /* Font Definitions */\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:3 0 0 0 1 0;}\r\n@font-face\r\n	{font-family:Cambria;\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:3 0 0 0 1 0;}\r\n /* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-parent:\"\";\r\n	margin:0cm;\r\n	margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:\"Times New Roman\";\r\n	mso-ascii-font-family:Cambria;\r\n	mso-fareast-font-family:Cambria;\r\n	mso-hansi-font-family:Cambria;\r\n	mso-bidi-font-family:\"Times New Roman\";}\r\n@page Section1\r\n	{size:612.0pt 792.0pt;\r\n	margin:72.0pt 90.0pt 72.0pt 90.0pt;\r\n	mso-header-margin:36.0pt;\r\n	mso-footer-margin:36.0pt;\r\n	mso-paper-source:0;}\r\ndiv.Section</style>\r\n\r\n\r\n\r\n</li></ul><p></p></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Vigilância 24h</li><li>Motocicleta</li><li>Cerca pulsativa</li><li>Câmeras de segurança</li></ul><p></p></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Estação ecológica</li><li>Piscina adulto e infantil</li><li>Salão de festas</li><li>Quadra poliesportiva</li></ul><p></p></div></div></div></div></div></div>','Av. Frederico Baird s/n – Tarumã - Manaus/AM',100,40,90,10,30,5,0,40,5,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,NULL,1),
	(15,0,0,2,2013,'Residencial Vertentes do Tarumã','No Residencial Vertentes do Tarumã você tem o conforto de morar em uma casa junto à natureza. Em um condomínio com ótima infraestrutura de lazer, segurança, com 262 casas de 70 m² cada, 03 quartos sendo uma suíte. O Condomínio ainda possui clube com Piscinas adulto e infantil, Salão de festas, Quadra poliesportiva, Quadra de areia, Playground, Estacionamento para visitantes, Passarela suspensa e Mirante para observação de pássaros. Para uma experiência completa o empreendimento ainda possui grande Área de Preservação de mata, Vertentes d’água no terreno e trilha para visitação. A segurança é um capitulo a parte, dotada de portaria com Vigilância 24h informatizada, Motocicleta para ronda com ponto eletrônico, Proteção Perimetral com Cerca Pulsativa setorizada, Sistema de Vídeo-segurança com 02 câmeras na portaria e 04 no clube. Completam esse grandioso empreendimento poço artesiano e Estação Ecológica de Tratamento de Esgoto.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Casas com 70 m²</li><li>01 suíte</li><li>02 quartos</li></ul><p></p></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Vigilância 24h</li><li>Motocicleta</li><li>Cerca pulsativa</li><li>Câmeras de segurança</li><li>Proteção perimetral</li><li>Vídeo-segurança</li></ul><p></p></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Área de preservação de mata</li><li>Piscina adulto e infantil</li><li>Playground<br></li><li>Salão de festas</li><li>Quadra poliesportiva</li><li>Quadra de areia<br></li><li>Vertentes d’água</li><li>Observação de pássaros</li><li>Passarela suspensa <br></li><li>Mirante</li></ul><p></p></div></div></div></div></div>','Estrada do CETUR  s/n - Tarumã- Manaus/AM',100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,95,100,100,NULL,1),
	(5,0,0,1,9999,'Residencial Terras de Santa Adélia','Condomínio fechado com lotes a partir de 600 m². O Condomínio Terras de Santa Adélia, possui infraestrutura completa e sofisticada. Oferece Salão de festas, Quadras de tênis, Pista de Skate, Churrasqueira, Academia, Quadra Poliesportiva, Salão de jogos, Piscinas adulto e infantil, Lago Natural, Área de recreação adulto e infantil, Trilha ecológica, Circuito de ginástica, Playground. Possui ainda Portaria com segurança 24h, rondas permanentes e rigoroso controle de acesso.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Lotes a partir de 600 m²<br></li></ul><p></p></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Portaria com segurança 24h</li><li>Ronda permanente</li><li>Controle de acesso<br></li></ul><p></p></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Clube <br></li><li>Quadra de tênis</li><li>Piscinas adulto e infantil</li><li>Pista de skate</li><li>Churrasqueira</li><li>Playground</li><li>Salão de festas</li><li>Academia</li><li>Salão de jogos<br></li></ul><p></p></div></div></div></div>','R. Ayl Bandeira - Vargem Grande Paulista - São Paulo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(6,0,0,1,9999,'Residencial Laranjeiras Premium','Condomínio fechado com 123 lotes a partir de 250 m². O Condomínio Residencial Laranjeiras Premium, possui completa infraestrutura de lazer, Piscinas adulto e infantil com deck, Quadra poliesportiva, Salão de festas e Bar, Playground e Sistema de vigilância 24h, Portaria, Ponto eletrônico, Cancela eletrônica.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Lotes a partir de 250 m²<br></li></ul><p></p></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Segurança 24h</li><li>Portaria<br></li><li>Ponto eletrônico</li><li>Cancela eletrônica<br></li></ul><p></p></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Piscinas adulto e infantil&nbsp;</li><li>Quadra poliesportiva</li><li>Salão de festas</li><li>Playground</li></ul><p></p></div></div></div></div></div></div>','Rua Barão de Indaiá - Pq. das Laranjeiras - Manaus/AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(7,0,0,1,9999,'Residencial Tiradentes','Condomínio fechado com 69 lotes a partir de  250 m². Na segurança, vigilância 24h informatizada, proteção perimetral setorizada em tempo real. As opções de lazer são um capítulo a parte: Salão de festas, Fitness Center, Piscinas adulto e infantil, Espaço gourmet, Playground, Quadra poliesportiva recreativa, Churrasqueira, Pergolado, Estacionamento e Sauna.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Lotes a partir de 250m²</li><li>69 lotes</li></ul><p></p></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Vigilância 24h informatizada</li><li>Proteção perimetral</li><li>Câmeras de segurança</li></ul><p></p></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Piscina adulto e infantil</li><li>Salão de festas</li><li>Quadra poliesportiva</li><li>Quadra de tênis</li><li>Fitness center</li><li>Churrasqueira</li><li>Pergolado</li></ul><p></p></div></div></div></div></div></div>','Rua Nelson Batista nº 05 - Tiradentes - Manaus/AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(8,0,0,1,9999,'Residencial Ephigênio Salles','Condomínio fechado projetado para atender o público mais exigente, com lotes a partir de 800 m². O Residencial Ephigênio Salles é a verdadeira proposta de condomínios de luxo em Manaus. Possui completa infraestrutura de lazer, possui Salão de festas, Playground, Quadras poliesportiva e de tênis, Espelho d\'água e fontes, Piscinas adulto e infantil, Quadra de areia, Pista de cooper, Jardins e Área de Descanso.  Portaria informatizada, Ronda informatizada, Sistema de vigilância 24h, Cancela com acionamento automático e sistema de Segurança perimetral. É o lugar certo para quem procura bem-estar, segurança, localização e conforto sem abrir mão da privacidade.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Lotes a partir de 800m²</li></ul><p></p></div></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Vigilância 24h</li><li>Motocicleta</li><li>Cerca pulsativa</li><li>Câmeras de segurança</li><li>Ronda informatizada</li></ul><p></p></div></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Piscina adulto e infantil</li><li>Salão de festas</li><li>Quadra poliesportiva</li><li>Quadra de tênis</li><li>Quadra de areia<br></li><li>Pista de cooper</li><li>Jardins</li><li>Área de descanso</li><li>Playground</li></ul><p></p></div></div></div></div></div></div></div></div>','Av. Ephigênio Salles, 2477 - Aleixo - Manaus/AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(9,0,0,1,9999,'Residencial Flores de Laet','O Condomínio fechado de casas de 3 dormitórios e  Sala para três ambientes, Terraço, Lavabo, Copa-cozinha, àrea de serviço, Dependência de empregada e Quintal, O Flores de Laet oferece infraestrutura de lazer com Salão de festas, Salão de jogos, Sala para ginástica, Piscina com deck, Quadra poliesportiva, Vestiários, Playground, Trilha para caminhadas, Entrada e saída individualizada de veiculos, Acessos social e de serviço independentes com Portaria e Sistema de Segurança 24h.','<div class=\"oneone\"><p></p><ul><li>Casas com 3 dormítórios</li><li>Sala</li><li>Cozinha</li><li>Terraço</li><li>Banheiro Social</li><li>Quintal<br></li></ul><p></p></div>','<div class=\"oneone\"><p></p><ul><li>Portaria<br></li><li>Segurança 24h<br></li></ul><p></p></div>','<div class=\"oneone\"><p></p><ul><li>Salão de festas</li><li>Salão de jogos</li><li>Sala de ginástica</li><li>Piscina com deck<br></li><li>Quadra poliesportiva</li><li>Trilha para caminhada <br></li><li>Playground</li><li>Vestiários<br></li></ul><p></p></div>','Rua Luiz Carlos Gentile de Laet, Horto Florestal - São Paulo ',100,100,100,100,100,100,100,100,100,100,100,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'t1, t2, t3, t4',1),
	(16,0,0,1,2013,'Residencial Marina Rio Bello','Condomínio fechado com 508 lotes a partir de 800 m², sistema integrado de segurança, identificação eletrônica para moradores, cancelas automáticas, motocicleta, ronda informatizada e circuito de TV  no portal com 4 câmeras. Conta ainda com alamedas iluminadas, Salão de festas, American bar, Pavilhão de jogos, Fitness Center, Gourmet Center, Saunas, Playground, Anfiteatro e jardins. As opções de lazer continuam com uma exclusiva Pista de Skate, Quadra de tênis, Quadra poliesportiva, Redário, trilha ecológica, Piscina com borda infinita, Piscina com raia de 25m, Deck molhado, Hidromassagem, Solarium, Estacionamento de visitantes, Espelho d’água e Praças.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Lotes a partir de 800 m²</li></ul><p></p></div></div></div></div></div></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Sistema integrado de segurança</li><li>Ronda informatizada</li><li>Circuito de TV</li><li>Cancelas automáticas</li><li>Identificação eletrônica para moradores<br></li></ul><p></p></div></div></div></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Salão de festas</li><li>American bar</li><li>Pavilhão de jogos</li><li>Fitness center</li><li>Gourmet center</li><li>Playground</li><li>Pista de skate</li><li>Quadra de tênis</li><li>Quadra poliesportiva</li><li>Redário</li><li>Trilha ecológica</li><li>Piscina</li><li>Hidromassagem <br></li><li>Solarium</li><li>Espelho d\'água</li><li>Praças</li><li>Deck molhado</li><li>Anfiteatro</li><li>Sauna</li><li>Piscina raia<br></li></ul><p></p></div></div></div></div></div></div></div></div></div></div>','Rua Mediterrâneo S/N - Tarumã - Manaus/AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(17,0,0,1,2013,'Residencial Praia dos Passarinhos','Condomínio fechado com 323 lotes a partir de 800 m². O Condomínio ainda possui píer, Piscinas adulto e infantil, Piscina com Raia de natação com 25 metros, Parque, American bar, Salão de festas, Fitness center, Sauna seca e Sauna à vapor, Playground, Quadras poliesportivas, Quadra de tênis, Quadra de areia, Pista de Skate, Espaço Fitness, Anfiteatro e Orquidário. Vigilância 24h informatizada, Proteção Perimetral, Sistema de Vídeo-segurança, Ronda informatizada com ponto eletrônico, ronda permanente e Veículo de Segurança para atendimentos de emergência.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Lotes a partir de 800 m²</li></ul><p></p></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Vigilância 24h informatizada</li><li>Proteção perimetral</li><li>Sistema de Vídeo</li><li>Ronda informatizada</li><li>Motocicleta</li><li>Veículo<br></li></ul><p></p></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Píer </li><li>Piscinas adulto e infantil</li><li>American bar</li><li>Salão de festas</li><li>Fitness center</li><li>Sauna</li><li>Quadras poliesportivas</li><li>Quadra de tênis</li><li>Quadra de areia</li><li>Playground</li><li>Piscina de raia</li><li>Pista de skate</li><li>Anfiteatro</li><li>Orquidário</li></ul><p></p></div></div></div></div></div>','Av. do Turismo s/n - Tarumã - Manaus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(18,0,0,1,2013,'Residencial Bosque Imperial','Condomínio fechado com 78 lotes a partir de 330 m².  O Residencial Bosque Imperial possui Clube Social com: Piscina, Raia de natação com 20 metros, Playground, Praças, Salão de festas, Sauna, Fitness center e Área de Preservação Permanente. Vigilância 24h informatizada permanente, Ronda informatizada, Motocicleta, Proteção Perimetral setorizada, Sistema de Vídeo-segurança.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Lotes a partir 330 m²</li></ul><p></p></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Vigilância 24h<br></li><li>Proteção Perimetral <br></li><li>Vídeo-segurança</li><li>Motocicleta<br></li></ul><p></p></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Piscina</li><li>Piscina de raia<br></li><li>Playground</li><li>Praças</li><li>Salão de festas</li><li>Clube social</li><li>Sauna</li><li>Fitness Center</li></ul><p></p></div></div></div></div></div>','Av. Ephigênio Sales, 1835 - Aleixo - Manaus/AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(19,0,0,1,2013,'Residencial Piazza Dell Acqua','O Piazza Dell Acqua possui apartamentos com area 195 m², 4 suítes, 5 varandas e 3 vagas de garagem. Ótima infraestrutura de lazer, Piscinas adulto e infantil, Playgrounds, Churrasqueira e Salão de festas. Conta ainda com Elevador panorâmico, Gerador de energia próprio, Portaria e Sistema de segurança. ','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Apto. com 195 m²</li><li>04 suítes</li><li>05 varandas</li><li>03 vagas de garagem</li></ul><p></p></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Elevador panorâmico</li><li>Sistema de segurança</li><li>Gerador de energia&nbsp;</li><li>Portaria<br></li></ul><p></p></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Piscinas adulto e infantil</li><li>Playground</li><li>Churrasqueira</li><li>Salão de festas</li></ul><p></p></div></div></div></div></div>','Av. Coronel Jorge Teixeira - Ponta Negra - Manaus/AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(20,0,0,1,2013,'Residencial Forest Hill','Condomínio fechado com 582 lotes a partir de 250 m² . O Condominio Residencial Forest Hill possui infraestrutura de lazer para a família, Praças arborizadas, Quadra de areia, Gourmet Center, Piscinas adulto e infantil, Piscina raia de 20m, Quadra poliesportiva, Playground, Salão de festas completo e churrasqueira e Estacionamento para visitantes. Portaria informatizada com vigilância 24h, Muro com proteção perimetral e Cerca pulsativa setorizada, Sistema de ronda motorizada e Sistema de Vídeo-segurança.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Lotes a partir 250 m²</li></ul><p></p></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Portaria informatizada</li><li>Proteção Perimetral</li><li>Cerca Pulsativa</li><li>Sistema de vídeo</li></ul><p></p></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Gourmet Center</li><li>Piscinas adulto e infantil</li><li>Quadra poliesportiva</li><li>Quadra de areia</li><li>Playground</li><li>Praças<br></li><li>Salão de festas<br></li><li>Churrasqueira</li><li>Piscina de raia<br></li></ul><p></p></div></div></div></div></div>','Av. Toquato Tapajós, Santa Etelvina - Manaus/AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(21,0,0,1,2013,'Residencial Renaissance','Condomínio fechado com 295 lotes a partir de 330 m². Completa infraestrutura de lazer com Salão de festas, Sala de musculação, Sauna, Sala de repouso, Sala de jogos, Piscina adulto e infantil, Piscina raia de 25m, Solarium, Pergolados, Bosques, Trilhas ecológicas, Praça de leitura, Praça de jogos, Espelho d\'água, Playground, Quadra poliesportiva, Quadra de tênis, Quadra de futebol, Caminhar sobre as águas, Forno de pizza e Churrasqueira.Portaria, Vigilância 24 horas informatizada, Proteção Perimetral setorizada, Sistema de Vídeo-segurança, Ronda informatizada com ponto eletrônico e Motocicleta.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Lotes a partir 330 m²</li></ul><p></p></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Vigilância 24h</li><li>Portaria</li><li>Proteção Perimetral</li><li>Vídeo-segurança</li><li>Ronda informatizada</li><li>Motocicleta<br></li></ul><p></p></div></div></div></div>','<div class=\"oneone\"><p></p><ul><li>Salão de festas</li><li>Sala de musculação</li><li>Sauna</li><li>Sala de repouso</li><li>Sala de jogos</li><li>Piscinas adulto e infantil</li><li>Piscina de raia</li><li>Solarium</li><li>Pergolados</li><li>Bosques</li><li>Trilha ecológica</li><li>Praça de leitura</li><li>Praça de jogos</li><li>Playground</li><li>Quadra poliesportiva</li><li>Quadra de tênis</li><li>Quadra de futebol</li></ul><p></p></div>','Av. Darcy Vargas, 82, Dom Pedro - Manaus/AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(22,0,0,1,2013,'Residencial Tapajós','Condomínio fechado com 383 lotes a partir de 250 m² cada. Infraestrutura completa com rede de esgoto, água, poço artesiano, asfalto, guias, sarjetas e rede elétrica. O Residencial Tapajós possui Área de Preservação, Ruas Arborizadas, Piscinas adulto infantil com cascata, Salão de festas, Quadra poliesportiva, Quadra de areia e Parque privativo. Portaria com Vigilância 24 horas.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Lotes a partir 250 m²</li></ul><p></p></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Portaria</li><li>Vigilância 24h<br></li></ul><p></p></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Piscina adulto e infantil com cascata</li><li>Salão de festas</li><li>Quadra poliesportiva</li><li>Quadra de areia<br></li><li>Parque privativo</li></ul><p></p></div></div></div></div></div></div>','Av. Torquato Tapajós, 6437  - Manaus/AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(23,0,0,1,2013,'Residencial Laranjeiras','Condomínio fechado com 123 lotes a partir de 250 m². Ótima infraestrutura de lazer, Piscinas adulto e infantil, Quadra poliesportiva, Quadra de areia, Parque aquático, Salão de festas, Playground e Bar. O Condomínio Residencial Laranjeiras possui ainda Sistema de Vigilância 24h, Portaria, Ponto eletrônico, Cancela eletrônica.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Lotes a partir de 250 m²<br></li></ul><p></p></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Vigilância 24h</li><li>Portaria</li><li>Cancelas eletrônica</li><li>Ponto eletrônico<br></li></ul><p></p></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Parque aquático<br></li><li>Piscinas adulto e infantil</li><li>Quadra poliesportiva</li><li>Quadra de areia<br></li><li>Salão de festas</li><li>Playground</li><li>Bar<br></li></ul><p></p></div></div></div>','Rua Barão de Indaiá, 1217-  Pq. das Laranjeiras - Manaus/AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);

/*!40000 ALTER TABLE `tb_empreendimento` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_empreendimento_acompanha
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_empreendimento_acompanha`;

CREATE TABLE `tb_empreendimento_acompanha` (
  `EMPA_COD` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `EMPA_ANO` int(11) DEFAULT '0',
  `EMPA_MES` int(11) DEFAULT '0',
  `EMPA_DESCRICAO` longtext,
  `EMPA_STATUS` int(11) DEFAULT '0',
  `EMP_COD` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMPA_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_empreendimento_acompanha` WRITE;
/*!40000 ALTER TABLE `tb_empreendimento_acompanha` DISABLE KEYS */;

INSERT INTO `tb_empreendimento_acompanha` (`EMPA_COD`, `EMPA_ANO`, `EMPA_MES`, `EMPA_DESCRICAO`, `EMPA_STATUS`, `EMP_COD`)
VALUES
	(1,2013,5,'xxxxxxxx',1,14);

/*!40000 ALTER TABLE `tb_empreendimento_acompanha` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_empreendimento_old
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_empreendimento_old`;

CREATE TABLE `tb_empreendimento_old` (
  `EMP_COD` int(11) NOT NULL AUTO_INCREMENT,
  `POS_COD_HOME` tinyint(4) DEFAULT NULL,
  `POS_COD_CANAL` tinyint(4) DEFAULT NULL,
  `EMPT_COD` int(11) NOT NULL,
  `EMP_ANO` int(11) NOT NULL,
  `EMP_NOME` varchar(255) DEFAULT NULL,
  `EMP_DESCRICAO` longtext,
  `EMP_INFOS_EMPREENDIMENTO` longtext,
  `EMP_INFOS_TECNOLOGIA` longtext,
  `EMP_INFOS_LAZER` longtext,
  `EMP_ENDERECO` longtext,
  `EMP_AND_FUNDACAO` tinyint(4) DEFAULT NULL,
  `EMP_AND_ESTRUTURA` tinyint(4) DEFAULT NULL,
  `EMP_AND_ALVENARIA` tinyint(4) DEFAULT NULL,
  `EMP_AND_PISO` tinyint(4) DEFAULT NULL,
  `EMP_AND_PAREDE` tinyint(4) DEFAULT NULL,
  `EMP_AND_REVEST_EXT` tinyint(4) DEFAULT NULL,
  `EMP_AND_PINTURA` tinyint(4) DEFAULT NULL,
  `EMP_AND_ELETRICA` tinyint(4) DEFAULT NULL,
  `EMP_AND_HIDRO` tinyint(4) DEFAULT NULL,
  `EMP_AND_ESQ_METALICAS` tinyint(4) DEFAULT NULL,
  `EMP_AND_ESQ_MADEIRAS` tinyint(4) DEFAULT NULL,
  `EMP_AND_OUTROS` tinyint(4) DEFAULT NULL,
  `EMP_STATUS` tinyint(4) DEFAULT NULL,
  `EMP_TAGS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EMP_COD`),
  KEY `PRJ_TIPO_CODIGO` (`EMPT_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_empreendimento_old` WRITE;
/*!40000 ALTER TABLE `tb_empreendimento_old` DISABLE KEYS */;

INSERT INTO `tb_empreendimento_old` (`EMP_COD`, `POS_COD_HOME`, `POS_COD_CANAL`, `EMPT_COD`, `EMP_ANO`, `EMP_NOME`, `EMP_DESCRICAO`, `EMP_INFOS_EMPREENDIMENTO`, `EMP_INFOS_TECNOLOGIA`, `EMP_INFOS_LAZER`, `EMP_ENDERECO`, `EMP_AND_FUNDACAO`, `EMP_AND_ESTRUTURA`, `EMP_AND_ALVENARIA`, `EMP_AND_PISO`, `EMP_AND_PAREDE`, `EMP_AND_REVEST_EXT`, `EMP_AND_PINTURA`, `EMP_AND_ELETRICA`, `EMP_AND_HIDRO`, `EMP_AND_ESQ_METALICAS`, `EMP_AND_ESQ_MADEIRAS`, `EMP_AND_OUTROS`, `EMP_STATUS`, `EMP_TAGS`)
VALUES
	(1,0,0,1,9999,'Residencial Altos da Serra Negra','Condomínio de Lotes com terrenos a partir de 360 m², Infraestrutura completa, completa portaria, Ruas Arborizadas, Piscinas adulto/infantil, Salão de festas com bar e lareira, 2 Churrasqueiras, Quadra poliesportiva, Fitness, Sauna.',NULL,NULL,NULL,'São Paulo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(2,0,0,1,9999,'Residencial Altos de Flores','Condomínio fechado de Casas com 3 quartos, sendo 1 suíte master e 2 semi-suítes, Piscinas Adulto e Infantil, Salão de Festas, Quadra poliesportiva, Quadra de areia, Playground, Ruas Arborizadas, Segurança 24h, Circuito interno fechado para monitoramento e da Portaria do Clube.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(3,0,0,1,2008,'Condomínio Residencial Vivenda das Samambaias','2 dormitórios, Sala, cozinha, Banheiro social, Portaria e Playground, Terreno de 212,5 metros quadrados.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(10,0,0,1,2013,'Tropical Manaus Business','Piscina com borda infinita, Bar e Restaurantes, Coffee shop, Fitness, Convention Roof Top, Salas de reuniões e eventos, Apartamentos com tecnologia de ponta.','<div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul><p></p></div></div>','<div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul>\r\n                            <p></p></div></div>','<div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul>\r\n                            <p></p></div></div>',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(4,0,0,1,9999,'Residencial Outeiros dos Nobres','Praças, Salão de jogos, Salão de festas, Churrasqueiras e fornos de pizza, Parque e Jardins, Quadra poliesportiva, Piscinas adulto e infantil com solarium, 3 dormitórios, sendo 1 suíte, 92 m² de área privativa.',NULL,NULL,NULL,'São Paulo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(11,0,0,3,2013,'Morada dos Pássaros',NULL,'<div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul><p></p></div>','<div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul>\r\n                            <p></p></div>','<div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul>\r\n                            <p></p></div>',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(12,0,0,2,2013,'Nascentes do Tarumã','•	O empreendimento Condomínio Residencial Nascente do Tarumã, localizado na Avenida do Turismo s/n,  próximo ao Café Joelza foi incorporado e lançado em agosto de 2011, pela Civilcorp Incorporações Ltda. O Projeto Paisagístico Benedito Abbud, tem previsão de entrega para  em Fevereiro de 2014. Possui 585 lotes e área da casa 70 m². A  Área do Terreno Padrão mede 225,00 m². A Área de lazer conta com  salão de festas, salão de jogos, piscina adulto/infantil, piscina natural, quadra poliesportiva, quadra de areia, playground, estacionamento visitante. Possui Área de Preservação de Mata, com nascente, lagoa com Tratamento Paisagístico nas Margens, Estação Ecológica de Tratamento de Esgoto, poço artesiano. segurança: portaria com vigilância 24h informatizada, muro em todo o perímetro com altura mínima de 2 metros, proteção perimetral com Cerca Pulsativa Setorizada, sistema de vídeo-Segurança, moto para ronda e Via de segurança. ','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li><li>xxxx</li><li>yyyy</li><li>xxxx</li></ul><p></p></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul>\r\n                            <p></p></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul>\r\n                            <p></p></div></div></div></div>',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(13,0,0,2,2013,'Passaredos','Além de uma estrutura completa de lazer e segurança, o Residencial Passaredo tem como diferencial a grande proximidade com a flora e a fauna da nossa região. Um privilégio para quem quer morar perto da natureza. Os proprietários do Residencial Passaredo, serão também donos da Reserva Particular do Patrimônio Natural Sócrates Bonfim. Esta RPPN tem 230.475 m² de floresta densa e foi criada a partir do Decreto Municipal nº 0152 de 8 de junho de 2009, abrigando mais de 100 espécies catalogadas da fauna e flora amazonense. Este empreendimento possui: piscina adulto com clube e infantil, salão de festa, quadra poliesportiva, quadra de areia, estacionamento para visitantes, espaço gourmet com churrasqueira e forno, segurança 24 horas, motocicleta para ronda, pontos eletrônicos com proteção perimetral,  com cerca pulsativa, muros com altura mínima de 2 metros, sistema de vídeo segurança, Estação Ecológica de Tratamento de esgoto, poço artesiano.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul><p></p></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul>\r\n                            <p></p></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul>\r\n                            <p></p></div></div></div>',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(14,0,0,2,2013,'Quinta das Marinas','Empreendimento Condomínio Residencial Quinta das Marinas, endereço Frederico Baird, S/n –Tarumã, possui 592 lotes e um exclusivo sistema de segurança, sem interferir na privacidade de seus moradores com portaria com segurança 24 horas, moto para ronda, câmeras distribuídas estrategicamente, proteção perimetral com cerca pulsativa, são lotes com muita privacidade para o seu conforto, pavimentação das ruas, paisagismo, estação ecológica, ciclovia, quadra poliesportiva, quadra de areia e playground, piscina adulto e infantil, salão de festas, poço artesiano e uma grande área de preservação ambiental permanente (APP) tudo para você viver com mais qualidade de vida e respeito ao meio ambiente.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Apartamento</li><li>de 181 a 221 m²</li><li>4 dormitórios</li><li>de 2 a 4 suítes</li></ul><p></p></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Terraço <br></li><li>Churrasqueira</li><li>Elevador privativo</li><li>Depósito no subsolo</li></ul>\r\n                            <p></p></div></div></div></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Brinquedoteca</li><li>Churrasqueira</li><li>Deck molhado</li><li>Espaço zen</li><li>Espelho d’água</li><li>Massagem</li><li>Piscina adulto</li><li>Piscina infantil</li><li>Playground</li><li>Praça</li><li>Quadra esportiva</li><li>Quadra poliesportiva</li><li>Salão de festas</li><li>Salão de jogos</li><li>Sauna</li><li>Fitness</li><li>Acesso Social</li><li>Terraço do Pub</li><li>Salão de jogos</li><li>Lounge aberto do Pub</li><li>Home theater</li><li>Solarium</li></ul>\r\n                            <p></p></div></div></div></div></div></div></div>','Rua Benta Pereira X Rua Damiana da Cunha - Bairro: Santana - Região: Zona Norte - Cidade: São Paulo, SP',50,30,50,80,10,10,35,22,0,0,0,0,1,NULL),
	(15,0,0,2,2013,'Vertentes do Tarumã','No Residencial Vertentes Tarumã você tem o conforto de morar em uma casa junto à natureza, em um condomínio com ótima infraestrutura de Lazer e Segurança. Casas com 70 m², 3 quartos sendo uma suíte, Clube com piscinas adulto/infantil, Salão de Festas, quadra poliesportiva, quadra de areia e Playground, estacionamento para visitantes, passarela suspensa e mirante para observação de pássaros, grande área de preservação de mata, vertentes d’água no terreno, trilha para visitação, portaria com vigilância 24h Informatizada, motocicleta para ronda com ponto eletrônico, proteção perimetral com cerca pulsativa setorizada, sistema de vídeo de segurança com 2 câmaras na portaria e 4 no clube, Poço Artesiano, Estação Ecológica de Tratamento de esgoto.','<div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul><p></p></div></div>','<div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul>\r\n                            <p></p></div></div>','<div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul>\r\n                            <p></p></div></div>',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(5,0,0,1,9999,'Residencial Terras de Santa Adélia','Lotes de 500 a 1.500m², Salão de festas, Salão de jogos, Quadras de tênis, Quadra Poliesportiva, Piscinas adulto e infantil, Lago, Trilha ecológica, Circuito de ginástica, Playground.',NULL,NULL,NULL,'São Paulo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(6,0,0,1,9999,'Condomínio Laranjeiras Premium','Condomínio Fechado com lotes a partir de 250,00 m2 - Piscinas adulto e infantil com deck, Quadra poliesportiva, Salão de festas e bar, Playground, Segurança 24h.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(7,0,0,1,9999,'Residencial Tiradentes','Condomínio fechado com 69 Lotes com o tamanho padrão 250,00 m2 - Vigilância 24h informatizada, Proteção Perimetral setorizada em tempo real, Ronda Informatizada, Salão de Festas, Fitness Center, Piscinas Adulto e Infantil, Espaço Gourmet, Playground, Quadra Poliesportiva Recreativa, Churrasqueira, Pergolado, Estacionamento, Sauna.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(8,0,0,1,9999,'Condomínio Resisdencial Ephigênio Salles','Lotes de 800m², Salão de festas, Playground, Quadras poliesportiva e de tênis, Miniquadras, Pista de Cooper, Jardins, Portaria informatizada, Sistema de vigilância 24h.',NULL,NULL,NULL,'Ephigênio Salles',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(9,0,0,1,9999,'Residencial Flores de Laet','Condomínio fechado de casas, 3 dormitórios, Salão de festas, Salão de jogos, Sala para ginástica, Piscina com deck, Quadra poliesportiva, Vestiários, Playground, Trilha para caminhadas, Segurança 24h.','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul><p></p></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul>\r\n                            <p></p></div></div></div></div>','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p></p><ul><li>Item xxx</li><li>Item yyy</li><li>Item zzz</li></ul>\r\n                            <p></p></div></div></div></div>','São Paulo',100,100,100,100,100,100,100,100,100,100,100,100,1,'t1, t2, t3, t4');

/*!40000 ALTER TABLE `tb_empreendimento_old` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_empreendimento_tipo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_empreendimento_tipo`;

CREATE TABLE `tb_empreendimento_tipo` (
  `EMPT_COD` int(11) NOT NULL AUTO_INCREMENT,
  `EMPT_NOME` varchar(255) DEFAULT NULL,
  `EMPT_DESCRICAO` longtext,
  PRIMARY KEY (`EMPT_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_empreendimento_tipo` WRITE;
/*!40000 ALTER TABLE `tb_empreendimento_tipo` DISABLE KEYS */;

INSERT INTO `tb_empreendimento_tipo` (`EMPT_COD`, `EMPT_NOME`, `EMPT_DESCRICAO`)
VALUES
	(1,'Entregues',NULL),
	(2,'Em Andamento','Vejam os empreendimentos que estão em andamento'),
	(3,'Futuros',NULL);

/*!40000 ALTER TABLE `tb_empreendimento_tipo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_equipe
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_equipe`;

CREATE TABLE `tb_equipe` (
  `EQP_COD` int(11) NOT NULL AUTO_INCREMENT,
  `EQP_NOME` varchar(100) DEFAULT NULL,
  `EQP_SOBRENOME` varchar(100) DEFAULT NULL,
  `EQP_TELEFONE` varchar(100) DEFAULT NULL,
  `EQP_EMAIL` varchar(100) DEFAULT NULL,
  `EQP_FACEBOOK` varchar(255) DEFAULT NULL,
  `EQP_SITE` varchar(255) DEFAULT NULL,
  `EQP_SEXO` varchar(1) DEFAULT NULL,
  `EQP_STATUS` tinyint(4) DEFAULT NULL,
  `EQP_CARGO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EQP_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_equipe` WRITE;
/*!40000 ALTER TABLE `tb_equipe` DISABLE KEYS */;

INSERT INTO `tb_equipe` (`EQP_COD`, `EQP_NOME`, `EQP_SOBRENOME`, `EQP_TELEFONE`, `EQP_EMAIL`, `EQP_FACEBOOK`, `EQP_SITE`, `EQP_SEXO`, `EQP_STATUS`, `EQP_CARGO`)
VALUES
	(1,'Marcos','Pacheco','92 9999-9999','email@manausaerotaxi.com','https://www.linkedin.com',NULL,'0',1,NULL),
	(2,'Marcos','Fernandes',NULL,NULL,NULL,NULL,'0',1,NULL);

/*!40000 ALTER TABLE `tb_equipe` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_evento
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_evento`;

CREATE TABLE `tb_evento` (
  `EVE_COD` int(11) NOT NULL AUTO_INCREMENT,
  `EVE_TITULO` varchar(255) DEFAULT NULL,
  `EVE_DESCRICAO` longtext,
  `EVE_DATA_DIA` int(11) DEFAULT NULL,
  `EVE_DATA_MES` int(11) DEFAULT NULL,
  `EVE_DATA_ANO` int(11) DEFAULT NULL,
  `EVE_LOCAL` varchar(255) DEFAULT NULL,
  `EVE_HORA` varchar(255) DEFAULT NULL,
  `EVE_STATUS` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`EVE_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump da tabela tb_faq
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_faq`;

CREATE TABLE `tb_faq` (
  `FAQ_COD` int(11) NOT NULL AUTO_INCREMENT,
  `POS_COD_HOME` int(11) DEFAULT NULL,
  `POS_COD_CANAL` int(11) DEFAULT NULL,
  `FAQ_TITULO` varchar(255) DEFAULT NULL,
  `FAQ_CORPO` longtext,
  `FAQ_STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`FAQ_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_faq` WRITE;
/*!40000 ALTER TABLE `tb_faq` DISABLE KEYS */;

INSERT INTO `tb_faq` (`FAQ_COD`, `POS_COD_HOME`, `POS_COD_CANAL`, `FAQ_TITULO`, `FAQ_CORPO`, `FAQ_STATUS`)
VALUES
	(1,1,1,'O que é compromisso de venda e compra de imóvel?','É o contrato particular ou público pelo qual alguém se compromete a adquirir um imóvel de outra pessoa (física ou jurídica), que se obriga a transferi-lo após o recebimento do preço ajustado, observadas as condições ali pactuadas. Com a assinatura do contrato, o comprador passa a ser titular de direitos aquisitivos do imóvel, e a lei assegura direito real do comprador em face do vendedor para exigir a efetiva transmissão do imóvel.',1),
	(3,0,0,'Quais as cláusulas essenciais que devem constar num contrato de venda e compra de imóvel?','No contrato de venda e compra são essenciais as cláusulas que disponham sobre: as características do imóvel e do empreendimento onde está inserido, preço e forma de pagamento, forma de cálculo da correção monetária, quando for o caso, incidência de juros, índice e quando de sua aplicabilidade, penalidades a que esteja sujeito o comprador na hipótese de inadimplemento e atraso no pagamento do preço na forma ajustada, prazo de entrega das unidades e demais obrigações assumidas pela incorporadora.\r\n',1),
	(2,0,0,'O que é cessão de direitos?','É o contrato, a título oneroso ou gratuito, pelo qual a pessoa titular de direitos (cedente) transfere a outra pessoa (cessionária) esses mesmos direitos, tornando-se o cessionário titular dos direitos até então do cedente. Em se tratando de imóveis, temos a cessão de direitos quando uma pessoa transfere a outra os direitos ao recebimento de unidade autônoma, que adquiriu mediante promessa de venda e compra, de modo que, por ocasião da escritura pública, o cessionário receba a titularidade do imóvel. As cessões de direitos sobre imóveis devem ser informadas na Declaração sobre Operações Imobiliárias (DOI) emitidas pelos cartórios e são sujeitas ao recolhimento do Imposto de Transmissão de Bens Imóveis (ITBI).\r\n',1),
	(4,0,0,'Qual a diferença entre contrato de venda e compra e escritura definitiva?','O contrato de venda e compra é o instrumento pelo qual uma das partes se compromete a vender à outra determinado imóvel, por determinado preço e condições. O contrato, ou promessa de venda e compra, pode ser efetivado por instrumento particular (e, nesse caso, há que se observar a presença de duas testemunhas, avaliação da qualificação das partes) ou por instrumento público (escritura de promessa de venda e compra) que, nesse caso, é lavrado pelo Cartório de Notas, que tem fé pública. Por outro lado, a escritura definitiva de compra e venda é o instrumento pelo qual alguém transmite definitivamente um bem imóvel a outro, muitas vezes em cumprimento a um contrato (promessa) previamente assinado. A escritura definitiva de uma unidade autônoma é lavrada quando a mesma está devidamente concluída, ou seja, com a averbação da construção do empreendimento junto ao Cartório de Registro de Imóveis competente, desde que a unidade esteja quitada, ou que o adquirente tenha obtido o financiamento necessário para o pagamento do saldo devedor.\r\n',1),
	(5,0,0,'Quando o comprador do imóvel é casado, seu cônjuge deve obrigatoriamente constar igualmente como adquirente?','Se os adquirentes forem casados sob o regime da separação absoluta de bens, não é necessário, pois, neste caso, cada cônjuge tem liberdade para administrar seu patrimônio, inclusive para contrair direitos e obrigações. Porém, nos demais tipos de regime de bens (comunhão total, comunhão parcial e participação final nos aquestos) é necessário o comparecimento do cônjuge uma vez que na celebração de um contrato de compromisso de compra e venda de unidades há diversas obrigações que são contraídas por ambos, como, por exemplo, do recebimento das chaves, concessão de garantias (ex.: hipoteca, Alienação Fiduciária). Também nesses casos, se a aquisição se der por procuração, é necessário que ambos os cônjuges nomeiem procurador através de procuração pública com poderes para a aquisição do imóvel e demais obrigações correlatas.\r\n',1),
	(6,0,0,'O que é a matrícula de um imóvel?','Pode ser feita uma comparação dizendo que a matrícula do imóvel é a sua “certidão de nascimento”. É o documento de identificação do imóvel em que constam todos os seus dados, tais como, descrição, características e metragens, histórico das aquisições e vendas, dados dos antecessores e atuais proprietários, existência de ônus e gravames, identificação fiscal do imóvel, etc.\r\n',1),
	(7,0,0,'Como se obtém a matrícula de um imóvel?','A matrícula do imóvel é obtida no Registro de Imóveis da circunscrição competente, podendo a solicitação ser feita através da informação do número da matrícula, do endereço do imóvel ou através do nome de seu proprietário.\r\n',1),
	(8,0,0,'A partir de que momento o imóvel tem uma matrícula?','A matrícula é aberta quando do primeiro registro de um determinado imóvel. No caso de unidades autônomas, a matrícula individualizada de cada unidade autônoma é criada, normalmente, quando da averbação da construção e instituição/especificação do condomínio ou, em alguns cartórios, desde o registro do memorial de incorporação e, nesses casos, normalmente em livro auxiliar do registro, até que a construção seja concluída.\r\n',1),
	(9,0,0,'O que é Alvará de Obra (Alvará de Execução)?','O Alvará de Obra é a licença para construção emitida pela municipalidade em conformidade com o projeto legal do empreendimento. A construção só pode ser iniciada com esse alvará em mãos.\r\nO que é averbação da construção e quando ocorre?\r\nCom a conclusão das obras, é necessário averbá-la junto à matrícula do imóvel (empreendimento). Isso é realizado com a apresentação, perante o Cartório de Registro de Imóveis competente, do Habite-se e da Certidão Negativa de Débitos perante o Instituto Nacional de Seguridade Social (CND_INSS). Somente após a análise pelo Oficial Registrador, que normalmente ocorre dentro de até 30 (trinta) dias contados do protocolo dos referidos documentos, é efetivada a averbação da construção junto à matrícula do imóvel.',1),
	(10,0,0,'O que é Certidão Negativa de Débito (CND)?','É um documento emitido pelo órgão responsável (INSS, Receita Federal, prefeitura, etc.) que comprova a regularização dos recolhimentos de tributos, impostos ou taxas.\r\n',1),
	(11,0,0,'O que é Habite-se - Certificado de Conclusão da Obra?','Trata-se de um certificado emitido pela prefeitura local atestando que o empreendimento foi construído de acordo com o projeto aprovado e as exigências estabelecidas.\r\n',1),
	(12,0,0,'Quando receberei a escritura definitiva do imóvel adquirido?','A escritura do imóvel será firmada ao adquirente após a averbação da construção e da especificação do condomínio, que por sua vez ocorrerá após a apresentação do Habite-se e da CND-INSS da obra junto ao cartório imobiliário, e desde que o preço esteja quitado na forma contratada e que não tenha mais ônus perante o imóvel e/ou financiamento contratado.\r\n',1);

/*!40000 ALTER TABLE `tb_faq` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_frases
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_frases`;

CREATE TABLE `tb_frases` (
  `FRA_COD` int(11) NOT NULL AUTO_INCREMENT,
  `FRA_FONTE` varchar(255) DEFAULT NULL,
  `FRA_FRASE` longtext,
  `FRA_STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`FRA_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_frases` WRITE;
/*!40000 ALTER TABLE `tb_frases` DISABLE KEYS */;

INSERT INTO `tb_frases` (`FRA_COD`, `FRA_FONTE`, `FRA_FRASE`, `FRA_STATUS`)
VALUES
	(1,'Meu Eterno Garantido - 2013','A arte, a fé se uniram e da promessa do poeta menino, surgiu meu boi Garantido.',0),
	(2,'Lena Souza Limaxxx','O profissionalismo que eu encontro no Diamond, me garante a certeza que o evento do meu cliente será um sucesso!',1),
	(3,'Nádia Israel, Gastronomia Ciesa 2012','O sonho realizado em um lugar que nos permite realizar sonhos. Nossa formatura foi incrível e possível!',1),
	(4,'Jaqueline Carriço, Direito Martha Falcão 2013','\"Entradas, buffet e café da manhã impecáveis!! Os convidados foram unânimes em elogiar o serviço prestado por vocês. Muito obrigada!\" 		',1),
	(5,'Tatianne Assayag','“Queridos, obrigada por tudo!!! Vocês novamente foram nota mil em um momento único de nossas vidas!!! Vocês – toda a equipe Diamond – moram em nossos corações!!! Bjs”',1),
	(6,'testetetet','Testete\r\n',0);

/*!40000 ALTER TABLE `tb_frases` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_indices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_indices`;

CREATE TABLE `tb_indices` (
  `IND_COD` int(11) NOT NULL AUTO_INCREMENT,
  `IND_MES` int(11) DEFAULT NULL,
  `IND_ANO` int(11) DEFAULT NULL,
  `IND_STATUS` int(11) DEFAULT NULL,
  `IND_INCC` double DEFAULT NULL,
  `IND_IGPM` double DEFAULT NULL,
  `IND_INCCV_MES` double DEFAULT NULL,
  `IND_INCCV` double DEFAULT NULL,
  `IND_IGPMV_MES` double DEFAULT NULL,
  `IND_IGPMV` double DEFAULT NULL,
  PRIMARY KEY (`IND_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_indices` WRITE;
/*!40000 ALTER TABLE `tb_indices` DISABLE KEYS */;

INSERT INTO `tb_indices` (`IND_COD`, `IND_MES`, `IND_ANO`, `IND_STATUS`, `IND_INCC`, `IND_IGPM`, `IND_INCCV_MES`, `IND_INCCV`, `IND_IGPMV_MES`, `IND_IGPMV`)
VALUES
	(1,1,2013,0,525.85,511.977,0.65,6.86,0.34,7.91),
	(2,2,2013,1,529.029,513.467,7.18,0.6,8.29,0.29),
	(3,3,2013,1,531.691,514.526,0.5,7.18,0.21,8.06),
	(4,4,2013,1,535.601,515.276,0.74,7.16,0.15,7.3);

/*!40000 ALTER TABLE `tb_indices` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_lojas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_lojas`;

CREATE TABLE `tb_lojas` (
  `LOJ_COD` int(11) NOT NULL AUTO_INCREMENT,
  `LOJ_NOME` varchar(255) DEFAULT NULL,
  `LOJ_ENDERECO` varchar(255) DEFAULT NULL,
  `LOJ_LOC_LAT` double DEFAULT NULL,
  `LOJ_LOC_LNG` double DEFAULT NULL,
  `LOJ_STATUS` int(11) DEFAULT NULL,
  `LOJ_URL` longtext,
  `LOJ_TELEFONE` varchar(255) DEFAULT NULL,
  `LOJ_EMAIL` varchar(255) DEFAULT NULL,
  `LOJ_WHATS` varchar(255) DEFAULT NULL,
  `LOJ_FUNCIONAMENTO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LOJ_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_lojas` WRITE;
/*!40000 ALTER TABLE `tb_lojas` DISABLE KEYS */;

INSERT INTO `tb_lojas` (`LOJ_COD`, `LOJ_NOME`, `LOJ_ENDERECO`, `LOJ_LOC_LAT`, `LOJ_LOC_LNG`, `LOJ_STATUS`, `LOJ_URL`, `LOJ_TELEFONE`, `LOJ_EMAIL`, `LOJ_WHATS`, `LOJ_FUNCIONAMENTO`)
VALUES
	(1,'iRestore Pará (Vieiralves)','Rua Pará, 120 - Vieiralves (Em frente ao CEL) Vieiralves',-3.107222,-60.022961,1,'https://www.google.com/maps/place/Irestore/@-3.10855,-60.023004,15z/data=!4m6!1m3!3m2!1s0x0:0x47f0723877ed4406!2sIrestore!3m1!1s0x0:0x47f0723877ed4406?hl=en-US','(92) 3877-9376','contato@irestore.com.br','(92) 98411-6798','Segunda à Sexta - 08h00 às 19h00 ~ Sábado - 08h00 às 18h00');

/*!40000 ALTER TABLE `tb_lojas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_materia
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_materia`;

CREATE TABLE `tb_materia` (
  `MAT_COD` int(11) NOT NULL AUTO_INCREMENT,
  `POS_COD_HOME` int(11) DEFAULT NULL,
  `POS_COD_CANAL` int(11) DEFAULT NULL,
  `MAT_TITULO` varchar(255) DEFAULT NULL,
  `MAT_CORPO` longtext,
  `MAT_CORPO_HOME` longtext,
  `MAT_FOTO_LEGENDA` varchar(255) DEFAULT NULL,
  `MAT_STATUS` int(11) DEFAULT NULL,
  `MAT_FONTE` varchar(255) DEFAULT NULL,
  `MAT_TAGS` varchar(255) DEFAULT NULL,
  `MAT_DATA_DIA` int(11) DEFAULT NULL,
  `MAT_DATA_MES` int(11) DEFAULT NULL,
  `MAT_DATA_ANO` int(11) DEFAULT NULL,
  PRIMARY KEY (`MAT_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_materia` WRITE;
/*!40000 ALTER TABLE `tb_materia` DISABLE KEYS */;

INSERT INTO `tb_materia` (`MAT_COD`, `POS_COD_HOME`, `POS_COD_CANAL`, `MAT_TITULO`, `MAT_CORPO`, `MAT_CORPO_HOME`, `MAT_FOTO_LEGENDA`, `MAT_STATUS`, `MAT_FONTE`, `MAT_TAGS`, `MAT_DATA_DIA`, `MAT_DATA_MES`, `MAT_DATA_ANO`)
VALUES
	(1,0,0,'Assembleia Vertentes do Tarumã','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\">No dia 08/03 às 19h00, será realizada&nbsp; a primeira assembleia de instalação do Condomínio Vertentes do Tarumã, onde os nossos clientes serão convidados para um delicioso jantar após a assembleia, no salão de festas do condomínio.<br><p><br><style><!--\r\n /* Font Definitions */\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-520092929 1073786111 9 0 415 0;}\r\n@font-face\r\n	{font-family:Cambria;\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-536870145 1073743103 0 0 415 0;}\r\n /* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:\"\";\r\n	margin:0cm;\r\n	margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:Cambria;\r\n	mso-ascii-font-family:Cambria;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Cambria;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Cambria;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n.MsoChpDefault\r\n	{mso-style-type:export-only;\r\n	mso-default-props:yes;\r\n	font-family:Cambria;\r\n	mso-ascii-font-family:Cambria;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Cambria;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Cambria;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n@page WordSection1\r\n	{size:612.0pt 792.0pt;\r\n	margin:72.0pt 90.0pt 72.0pt 90.0pt;\r\n	mso-header-margin:36.0pt;\r\n	mso-footer-margin:36.0pt;\r\n	mso-paper-source:0;}\r\ndiv.WordSection1\r\n	{page:WordSection1;}\r\n-->\r\n</style></p></div></div></div></div></div></div></div></div></div></div>','No dia 08/03 às 19h00 será realizada a primeira assembleia de instalação do Condomínio Vertentes do Tarumã. \r\n','enter your placeholder text here',1,'AC/Civil Corp',NULL,10,12,2012),
	(2,1,0,'Vistoria Residencial Vertentes do Tarumã','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p>No dia 11/03, após o evento de instalação do condomínio, o corpo de Engenheiros e Arquitetos da Civilcorp darão início as vistorias das unidades com cada um dos proprietário do Residencial Vertentes do Tarumã. Todos estarão sendo agendados para vistoriar suas unidades a partir desta data. Serão 15 atendimentos por dia de segunda à sexta-feira e nossas equipes estão ansiosas&nbsp; para agilizar a entrega das unidades.</p></div></div></div></div>','O corpo de Engenheiros e Arquitetos da Civilcorp darão início às vistorias das unidades com cada um dos proprietários do Residencial Vertentes do Tarumã.','enter your placeholder text here',1,'AC/Civil Corp','tag1 tag2 tag3',10,12,2012),
	(8,3,1,'Assembleia Residencial Passaredo','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p>Em breve será realizado a primeira assembleia de instalação do Residencial Passaredo. <br></p></div></div></div></div></div>','Será realizado a primeira assembleia de instalação do Residencial Passaredo. ','enter your placeholder text here',1,NULL,NULL,19,4,2013);

/*!40000 ALTER TABLE `tb_materia` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_midias
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_midias`;

CREATE TABLE `tb_midias` (
  `MID_COD` int(11) NOT NULL AUTO_INCREMENT,
  `MID_TITULO` varchar(255) DEFAULT NULL,
  `MID_DESC` varchar(255) DEFAULT NULL,
  `POS_COD_HOME` tinyint(4) DEFAULT NULL,
  `POS_COD_CANAL` tinyint(4) DEFAULT NULL,
  `MID_STATUS` tinyint(4) DEFAULT NULL,
  `MID_CODE_01` longtext,
  `MID_CODE_02` longtext,
  `MID_CODE_03` longtext,
  `MID_TAGS` varchar(255) DEFAULT NULL,
  `MIDT_COD` int(11) DEFAULT NULL,
  PRIMARY KEY (`MID_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_midias` WRITE;
/*!40000 ALTER TABLE `tb_midias` DISABLE KEYS */;

INSERT INTO `tb_midias` (`MID_COD`, `MID_TITULO`, `MID_DESC`, `POS_COD_HOME`, `POS_COD_CANAL`, `MID_STATUS`, `MID_CODE_01`, `MID_CODE_02`, `MID_CODE_03`, `MID_TAGS`, `MIDT_COD`)
VALUES
	(1,'Residencial Vertentes do Taruma&#771; ','Residencial Vertentes do Taruma&#771; ',1,1,1,NULL,'<iframe width=\"520\" height=\"180\" src=\"http://www.youtube.com/embed/nmYskbTGEDI\" frameborder=\"0\" allowfullscreen></iframe>',NULL,NULL,1),
	(2,'Nascentes do Tarumã','Nascentes do Tarumã',1,1,1,'#','<iframe width=\"520\" height=\"180\" src=\"http://www.youtube.com/embed/ilbGcYpf45I\" frameborder=\"0\" allowfullscreen></iframe>','#','civil corp, nascentes do tarumã, manaus, empreendimentos',1),
	(3,'Residencial Nascentes do Taruma&#771; ','Residencial Nascentes do Taruma&#771; ',1,1,1,NULL,'<iframe width=\"520\" height=\"180\" src=\"http://www.youtube.com/embed/nmAVM4L3BlQ\" frameborder=\"0\" allowfullscreen></iframe>',NULL,NULL,1),
	(4,'Condomínio Residencial Quinta Das Marinas ','Condomínio Residencial Quinta Das Marinas ',1,1,1,NULL,'<iframe width=\"520\" height=\"180\" src=\"http://www.youtube.com/embed/X__jZQ26tBs\" frameborder=\"0\" allowfullscreen></iframe>',NULL,'t1, t2, t3',1);

/*!40000 ALTER TABLE `tb_midias` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_midias_tipo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_midias_tipo`;

CREATE TABLE `tb_midias_tipo` (
  `MIDT_COD` int(11) NOT NULL AUTO_INCREMENT,
  `MIDT_NOME` varchar(255) DEFAULT NULL,
  `MIDT_DESCRICAO` longtext,
  PRIMARY KEY (`MIDT_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_midias_tipo` WRITE;
/*!40000 ALTER TABLE `tb_midias_tipo` DISABLE KEYS */;

INSERT INTO `tb_midias_tipo` (`MIDT_COD`, `MIDT_NOME`, `MIDT_DESCRICAO`)
VALUES
	(1,'Youtube','Mídias relacionadas ao youtube.'),
	(2,'Issuu','Serviços voltado para hospedagens de publicações em .pdf');

/*!40000 ALTER TABLE `tb_midias_tipo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_municipio
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_municipio`;

CREATE TABLE `tb_municipio` (
  `MUN_COD` int(11) NOT NULL AUTO_INCREMENT,
  `MUN_DESC` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MUN_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_municipio` WRITE;
/*!40000 ALTER TABLE `tb_municipio` DISABLE KEYS */;

INSERT INTO `tb_municipio` (`MUN_COD`, `MUN_DESC`)
VALUES
	(1,'Alvarães'),
	(2,'Amaturá'),
	(3,'Anamã'),
	(4,'Anori'),
	(5,'Apuí  '),
	(6,'Atalaia do Norte  '),
	(7,'Autazes  '),
	(8,'Barcelos  '),
	(9,'Barreirinha  '),
	(10,'Benjamim Constant  '),
	(11,'Beruri  '),
	(12,'Boa Vista do Ramos  '),
	(13,'Boca do Acre  '),
	(14,'Borba  '),
	(15,'Caapiranga  '),
	(16,'Canutama  '),
	(17,'Carauari  '),
	(18,'Careiro '),
	(19,'Careiro Castanho  '),
	(20,'Careiro da Várzea  '),
	(21,'Coari  '),
	(22,'Codajás  '),
	(23,'Eirunepé  '),
	(24,'Envira  '),
	(25,'Fonte Boa  '),
	(26,'Guajará  '),
	(27,'Humaitá  '),
	(28,'Ipixuna  '),
	(29,'Iranduba  '),
	(30,'Itacoatiara  '),
	(31,'Itamarati  '),
	(32,'Itapiranga  '),
	(33,'Japurá'),
	(34,'Juruá'),
	(35,'Jutaí'),
	(36,'Lábrea '),
	(37,'Manacapuru '),
	(38,'Manaquiri '),
	(39,'Manaus  '),
	(40,'Manicoré '),
	(41,'Maraã '),
	(42,'Maués '),
	(43,'Nhamundá '),
	(44,'Nova Olinda do Norte '),
	(45,'Novo Airão '),
	(46,'Novo Aripuanã '),
	(47,'Parintins '),
	(48,'Pauini '),
	(49,'Presidente Figueiredo '),
	(50,'Rio Preto da Eva '),
	(51,'Santa Isabel do Rio Negro '),
	(52,'Santo Antônio do Iça '),
	(53,'São Gabriel da Cachoeira '),
	(54,'São Paulo de Olivença '),
	(55,'São Sebastião do Uatumã '),
	(56,'Silves '),
	(57,'Tabatinga '),
	(58,'Tapauá '),
	(59,'Tefé '),
	(60,'Tonantins '),
	(61,'Uarini '),
	(62,'Urucará '),
	(63,'Urucurituba ');

/*!40000 ALTER TABLE `tb_municipio` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_newsletter
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_newsletter`;

CREATE TABLE `tb_newsletter` (
  `NEW_COD` int(11) NOT NULL AUTO_INCREMENT,
  `POS_COD_HOME` int(11) DEFAULT NULL,
  `POS_COD_CANAL` int(11) DEFAULT NULL,
  `NEW_TITULO` varchar(255) DEFAULT NULL,
  `NEW_CLIENTE` varchar(255) DEFAULT NULL,
  `NEW_CORPO` longtext,
  `NEW_STATUS` int(11) DEFAULT NULL,
  `NEW_ADS_TITULO` varchar(255) DEFAULT NULL,
  `NEW_ADS_CORPO` longtext,
  `NEW_ADS_LINK` longtext,
  PRIMARY KEY (`NEW_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_newsletter` WRITE;
/*!40000 ALTER TABLE `tb_newsletter` DISABLE KEYS */;

INSERT INTO `tb_newsletter` (`NEW_COD`, `POS_COD_HOME`, `POS_COD_CANAL`, `NEW_TITULO`, `NEW_CLIENTE`, `NEW_CORPO`, `NEW_STATUS`, `NEW_ADS_TITULO`, `NEW_ADS_CORPO`, `NEW_ADS_LINK`)
VALUES
	(1,NULL,NULL,'Saccaro Red','https://issuu.com/saccaromanaus/docs/catalogo-saccaro-red','Preços reduzidos para você\r\nrenovar o seu habitat com\r\no design Saccaro.\r\n\r\nATÉ 60% DE DESCONTO\r\n10 VEZES PARA PAGAR.',1,NULL,NULL,NULL),
	(2,NULL,NULL,'Saccaro Red','https://issuu.com/saccaromanaus/docs/catalogo-saccaro-red','Preços reduzidos para você\r\nrenovar o seu habitat com\r\no design Saccaro.\r\n\r\nATÉ 60% DE DESCONTO\r\n10 VEZES PARA PAGAR.',1,NULL,NULL,NULL),
	(3,NULL,NULL,'Saccaro Red','https://issuu.com/saccaromanaus/docs/catalogo-saccaro-red','Preços reduzidos para você\r\nrenovar o seu habitat com\r\no design Saccaro.\r\n\r\nATÉ 60% DE DESCONTO\r\n10 VEZES PARA PAGAR.',1,NULL,NULL,NULL),
	(4,NULL,NULL,'Saccaro Red','https://issuu.com/saccaromanaus/docs/catalogo-saccaro-red','Preços reduzidos para você\r\nrenovar o seu habitat com\r\no design Saccaro.\r\n\r\nATÉ 60% DE DESCONTO\r\n10 VEZES PARA PAGAR.',1,NULL,NULL,NULL),
	(5,NULL,NULL,'Saccaro Red','https://issuu.com/saccaromanaus/docs/catalogo-saccaro-red','Preços reduzidos para você\r\nrenovar o seu habitat com\r\no design Saccaro.\r\n\r\nATÉ 60% DE DESCONTO\r\n10 VEZES PARA PAGAR.',1,NULL,NULL,NULL),
	(6,NULL,NULL,'Saccaro Red','https://issuu.com/saccaromanaus/docs/catalogo-saccaro-red','Preços reduzidos para você\r\nrenovar o seu habitat com\r\no design Saccaro.\r\n\r\nATÉ 60% DE DESCONTO\r\n10 VEZES PARA PAGAR.',1,NULL,NULL,NULL),
	(7,NULL,NULL,'Saccaro Red','https://issuu.com/saccaromanaus/docs/catalogo-saccaro-red','Preços reduzidos para você\r\nrenovar o seu habitat com\r\no design Saccaro.\r\n\r\nATÉ 60% DE DESCONTO\r\n10 VEZES PARA PAGAR.',1,NULL,NULL,NULL),
	(8,NULL,NULL,'Saccaro Red','https://issuu.com/saccaromanaus/docs/catalogo-saccaro-red','Preços reduzidos para você\r\nrenovar o seu habitat com\r\no design Saccaro.\r\n\r\nATÉ 60% DE DESCONTO\r\n10 VEZES PARA PAGAR.',1,NULL,NULL,NULL),
	(9,NULL,NULL,'Saccaro Red','https://issuu.com/saccaromanaus/docs/catalogo-saccaro-red','Preços reduzidos para você\r\nrenovar o seu habitat com\r\no design Saccaro.\r\n\r\nATÉ 60% DE DESCONTO\r\n10 VEZES PARA PAGAR.',1,NULL,NULL,NULL),
	(10,NULL,NULL,'Feliz Dia das Mães','xxxx','xxx',1,NULL,NULL,NULL),
	(11,NULL,NULL,'Saccaro | 70 Anos Contando Histórias','https://www.youtube.com/watch?v=nP6_TSE9B2k','Um produto Saccaro é feito por muitas mãos. Mesmo com toda tecnologia, é a mão do homem, o talento das pessoas e a dedicação dos profissionais que faz com que cada peça seja original.',1,'Saccaro Red no Celular ou no Tablet','Acesse nosso catálogo completo da Promoção Red no seu computador, celular ou no tablet e confira uma gama de produtos que estão com preços promocionais. ','https://issuu.com/saccaromanaus/docs/catalogo-saccaro-red');

/*!40000 ALTER TABLE `tb_newsletter` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_parceiros
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_parceiros`;

CREATE TABLE `tb_parceiros` (
  `PAR_COD` int(11) NOT NULL AUTO_INCREMENT,
  `PAR_NOME` varchar(255) DEFAULT NULL,
  `PAR_RAMO` longtext,
  `PAR_TAGS` longtext,
  `PAR_STATUS` int(11) DEFAULT NULL,
  `PAR_URL` longtext,
  PRIMARY KEY (`PAR_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump da tabela tb_produtos_servicos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_produtos_servicos`;

CREATE TABLE `tb_produtos_servicos` (
  `PRD_COD` int(11) NOT NULL AUTO_INCREMENT,
  `POS_COD_HOME` int(11) DEFAULT NULL,
  `POS_COD_CANAL` int(11) DEFAULT NULL,
  `PRD_TITULO` varchar(255) DEFAULT NULL,
  `PRD_CORPO` longtext,
  `PRD_CORPO_HOME` longtext,
  `PRD_FOTO_LEGENDA` varchar(255) DEFAULT NULL,
  `PRD_STATUS` int(11) DEFAULT NULL,
  `PRD_TAGS` varchar(255) DEFAULT NULL,
  `PRDT_COD` int(11) DEFAULT NULL,
  PRIMARY KEY (`PRD_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_produtos_servicos` WRITE;
/*!40000 ALTER TABLE `tb_produtos_servicos` DISABLE KEYS */;

INSERT INTO `tb_produtos_servicos` (`PRD_COD`, `POS_COD_HOME`, `POS_COD_CANAL`, `PRD_TITULO`, `PRD_CORPO`, `PRD_CORPO_HOME`, `PRD_FOTO_LEGENDA`, `PRD_STATUS`, `PRD_TAGS`, `PRDT_COD`)
VALUES
	(1,0,0,'Portuguesa','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p class=\"p1\"><span class=\"s1\">Dispomos de máquinas para operações de escavação, carga, transporte, descarga, compactação e acabamento executados a fim de passar de um terreno em seu estado natural para uma nova conformação topográfica desejada.</span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<style><!--\r\n /* Font Definitions */\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-520092929 1073786111 9 0 415 0;}\r\n@font-face\r\n	{font-family:Cambria;\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-536870145 1073743103 0 0 415 0;}\r\n /* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:\"\";\r\n	margin:0cm;\r\n	margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:Cambria;\r\n	mso-ascii-font-family:Cambria;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Cambria;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Cambria;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n.MsoChpDefault\r\n	{mso-style-type:export-only;\r\n	mso-default-props:yes;\r\n	font-family:Cambria;\r\n	mso-ascii-font-family:Cambria;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Cambria;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Cambria;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n@page WordSection1\r\n	{size:612.0pt 792.0pt;\r\n	margin:72.0pt 90.0pt 72.0pt 90.0pt;\r\n	mso-header-margin:36.0pt;\r\n	mso-footer-margin:36.0pt;\r\n	mso-paper-source:0;}\r\ndiv.WordSection1\r\n	{page:WordSection1;}\r\n-->\r\n</style></p><p class=\"p1\"><span class=\"s1\">Qualquer que seja a configuração do terreno, disponibilizamos dos equipamentos ideais para seu projeto.&nbsp;</span></p></div></div></div></div></div></div></div></div></div></div></div></div></div>','Dispomos de máquinas para operações de escavação, carga, transporte, descarga, compactação e acabamento executados a fim de passar de um terreno em seu estado natural para uma nova conformação topográfica desejada.\r\n\r\nQualquer que seja a configuração do terreno, disponibilizamos dos equipamentos ideais para seu projeto. ','enter your placeholder text here',1,NULL,1),
	(2,0,0,'Calabresa','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"p1\"><span class=\"s1\">Provemos de locação de geradores para fornecimento temporário de energia total ou parcial, que assegura a não paralisação das obras, bem como as torres de iluminação portáteis, resistentes e de fácil locomoção que garantem a produtividade e segurança em trabalhos noturnos.</span></p></div></div></div></div></div></div></div></div></div></div></div>','Provemos de locação de geradores para fornecimento temporário de energia total ou parcial, que assegura a não paralisação das obras, bem como as torres de iluminação portáteis, resistentes e de fácil locomoção que garantem a produtividade e segurança em trabalhos noturnos.','enter your placeholder text here',1,'tag1 tag2 tag3',1),
	(8,0,0,'Mussarela','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p>Em breve será realizado a primeira assembleia de instalação do Residencial Passaredo. <br></p></div></div></div></div></div></div></div>','Será realizado a primeira assembleia de instalação do Residencial Passaredo. ','enter your placeholder text here',1,NULL,1),
	(9,0,1,'Stand Civilcorp no Feirão Caixa','<div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><div class=\"oneone\"><p><b>O 9º Feirão Caixa da Casa Própria aconteceu nos dias 07, 08 e 09 de \r\nJunho e reuniu construtoras e imobiliárias, bem como 70 funcionário \r\nCaixa, especialista em habitação. A Civilcorp marcou presença, recebeu o\r\n público em um confortável Stand de Vendas e sua equipe pôde ajudar o \r\ncliente à escolher o imóvel, tirar dúvidas sobre financiamento \r\nimobiliário e dar o primeiro passo para realizar o sonho da casa \r\nprópria.</b></p></div></div></div></div></div></div></div>','O 9º Feirão Caixa da Casa Própria aconteceu nos dias 07, 08 e 09 de Junho e reuniu construtoras e imobiliárias.','9º Feirão Caixa da Casa Própria',1,NULL,1),
	(10,0,0,NULL,NULL,NULL,'enter your placeholder text here',1,NULL,1),
	(11,0,0,'Içamento e Movimentação de Cargas','<div class=\"oneone\"><div class=\"oneone\"><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"p1\"><span class=\"s1\">Oferecemos soluções inovadoras e confiáveis com equipamentos diversificados, capazes de operar nas mais diversas condições e a qualquer demanda de peças excedentes em comprimento, largura, altura e peso. Estes equipamentos facilitam e ajudam a reduzir os prazos e custos operativos, elevando a produtividade de trabalho na construção, indústria, eventos e serviços.</span></p></div></div>','Oferecemos soluções inovadoras e confiáveis com equipamentos diversificados, capazes de operar nas mais diversas condições e a qualquer demanda de peças excedentes em comprimento, largura, altura e peso. Estes equipamentos facilitam e ajudam a reduzir os prazos e custos operativos, elevando a produtividade de trabalho na construção, indústria, eventos e serviços.','Teste Teste xxxx',1,'Teste Teste xxxx',2),
	(12,0,0,'Compressores de Ar','<div class=\"oneone\"><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"p1\"><span class=\"s1\">Dispomos de uma ampla variedade de compressores para locação, adaptados a todo o tipo de aplicações que incluem versões de alta e baixa pressão. Nossos equipamentos incorporam avanços tecnológicos e oferecem uma fonte rentável e contínua de ar comprimido. Auxiliam ainda no funcionamento de ferramentas pneumáticas e podem ser a diesel ou elétricos.</span></p></div>','Dispomos de uma ampla variedade de compressores para locação, adaptados a todo o tipo de aplicações que incluem versões de alta e baixa pressão. Nossos equipamentos incorporam avanços tecnológicos e oferecem uma fonte rentável e contínua de ar comprimido. Auxiliam ainda no funcionamento de ferramentas pneumáticas e podem ser a diesel ou elétricos.',NULL,1,NULL,2),
	(13,0,0,'Trabalho em Altura','\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"p1\"><span class=\"s1\">As plataformas aéreas são equipamentos ideais para movimentação vertical e trabalhos em altura, pois permitem o acesso a locais e terrenos difíceis com segurança. São diversos tipos de modelos e cada um se destaca para um tipo de aplicação.</span></p>','As plataformas aéreas são equipamentos ideais para movimentação vertical e trabalhos em altura, pois permitem o acesso a locais e terrenos difíceis com segurança. São diversos tipos de modelos e cada um se destaca para um tipo de aplicação.',NULL,1,NULL,2),
	(14,0,0,'Demolição','<div class=\"oneone\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"p1\"><span class=\"s1\">O serviço de Demolição é realizado através de máquinas, equipamentos e ferramentas adequadas. Dispomos de maquinários para realização da demolição, com elevada qualidade e tecnologia de ponta. Para isso, executamos um serviço com equipe técnica qualificada focada em prazo, segurança, eficácia e respeito ao meio ambiente.</span></p></div>','O serviço de Demolição é realizado através de máquinas, equipamentos e ferramentas adequadas. Dispomos de maquinários para realização da demolição, com elevada qualidade e tecnologia de ponta. Para isso, executamos um serviço com equipe técnica qualificada focada em prazo, segurança, eficácia e respeito ao meio ambiente.',NULL,1,NULL,1),
	(15,0,0,'Terraplanagem','<div class=\"oneone\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"p1\"><span class=\"s1\">A Leontech dispõe de toda a estrutura para executar serviços de terraplanagem compreendidos em uma técnica construtiva visando aplainar e aterrar um terreno atendendo a um projeto topográfico.</span></p></div>','A Leontech dispõe de toda a estrutura para executar serviços de terraplanagem compreendidos em uma técnica construtiva visando aplainar e aterrar um terreno atendendo a um projeto topográfico.',NULL,1,NULL,1),
	(16,0,0,'Drenagem','<div class=\"oneone\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"p1\"><span class=\"s1\">A Leontech dispõe de toda a estrutura para executar serviços de drenagem profunda ou superficial, aplicando sempre o comprometimento de sua equipe técnica em empregar evolução tecnológica nos processos produtivos.</span></p></div>','A Leontech dispõe de toda a estrutura para executar serviços de drenagem profunda ou superficial, aplicando sempre o comprometimento de sua equipe técnica em empregar evolução tecnológica nos processos produtivos.',NULL,1,NULL,1),
	(17,0,0,'Pavimentação','<div class=\"oneone\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"p1\"><span class=\"s1\">A Leontech conta com equipe especializada e uma linha completa de máquinas e equipamentos capacitados para execução dos mais diversos tipos de pavimentos rígidos e flexíveis.</span></p></div>','A Leontech conta com equipe especializada e uma linha completa de máquinas e equipamentos capacitados para execução dos mais diversos tipos de pavimentos rígidos e flexíveis.',NULL,1,NULL,1),
	(18,0,0,'Manutenção de Grupos Geradores','<div class=\"oneone\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"p1\"><span class=\"s1\">Com alto padrão técnico e constante qualificação dos profissionais, a Leontech oferece serviços de instalação, manutenções corretivas e preventivas, efetuando todas as verificações e medições necessárias ao perfeito funcionamento de Grupos Geradores multimarcas. A utilidade da manutenção de geradores de energia é evitar possíveis falhas e quebras através da intervenção no equipamento. A sua principal importância é garantir a confiabilidade aos equipamentos, melhorar a qualidade e principalmente diminuir desperdícios, preservando seu investimento.</span></p></div>','Com alto padrão técnico e constante qualificação dos profissionais, a Leontech oferece serviços de instalação, manutenções corretivas e preventivas, efetuando todas as verificações e medições necessárias ao perfeito funcionamento de Grupos Geradores multimarcas. A utilidade da manutenção de geradores de energia é evitar possíveis falhas e quebras através da intervenção no equipamento. A sua principal importância é garantir a confiabilidade aos equipamentos, melhorar a qualidade e principalmente diminuir desperdícios, preservando seu investimento.',NULL,1,NULL,1),
	(19,0,0,'Abastecimento','<div class=\"oneone\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"p1\"><span class=\"s1\">Somos uma empresa prestadora de serviço na área de saneamento básico que executa diversas obras de instalação de redes de água e esgoto e fornecimento de mão de obra especializada em apoio administrativo em diversos órgãos da iniciativa pública e privada.</span></p></div>','Somos uma empresa prestadora de serviço na área de saneamento básico que executa diversas obras de instalação de redes de água e esgoto e fornecimento de mão de obra especializada em apoio administrativo em diversos órgãos da iniciativa pública e privada.',NULL,1,NULL,1),
	(20,0,0,'Transporte de Máquinas','<div class=\"oneone\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"p1\"><span class=\"s1\">Oferecemos serviços de transportes de máquinas pesadas implantando sempre as melhores soluções para quaisquer necessidades dos clientes, desenvolvendo operações com planejamento e segurança.</span></p></div>','Oferecemos serviços de transportes de máquinas pesadas implantando sempre as melhores soluções para quaisquer necessidades dos clientes, desenvolvendo operações com planejamento e segurança.',NULL,1,NULL,1),
	(21,0,0,'Manutenção em plataformas de trabalho em altura','<div class=\"oneone\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"p1\"><span class=\"s1\"><b>Manutenção em plataformas de trabalho em altura</b></span></p></div>','Manutenção em plataformas de trabalho em altura',NULL,1,NULL,1),
	(22,0,0,'Construção Civil','<div class=\"oneone\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"p1\"><span class=\"s1\">Somos uma empresa especializada em na execução de obras comerciais e industriais. Possuímos grande experiência nos mais diversos tipos de serviços oferecendo equipe técnica voltada para satisfazer as necessidades de nossos clientes.</span></p></div>','Somos uma empresa especializada em na execução de obras comerciais e industriais. Possuímos grande experiência nos mais diversos tipos de serviços oferecendo equipe técnica voltada para satisfazer as necessidades de nossos clientes.',NULL,1,NULL,1),
	(23,0,0,'Remoção e Içamento de cargas ','<div class=\"oneone\"><div class=\"oneone\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"p1\">A Leontech trabalha com transporte e remoção de equipamentos sensíveis que requerem procedimentos específicos que exigem experiência e segurança. Cada serviço recebe um tratamento personalizado. Dispomos de uma frota moderna de guindastes, muncks, cavalos mecânicos e carretas, apropriados para um serviço rápido e seguro.</p><p class=\"p1\">Planejamos, avaliamos e executamos com maior segurança, praticidade, baixo custo e mão-de-obra especializada, atendendo aos mais diversos tipos de remoções técnicas, internas ou externas, içamento de peças, auxilio à montagem de painéis, fachadas, entre outros.</p></div></div>','A Leontech trabalha com transporte e remoção de equipamentos sensíveis que requerem procedimentos específicos que exigem experiência e segurança. Cada serviço recebe um tratamento personalizado. Dispomos de uma frota moderna de guindastes, muncks, cavalos mecânicos e carretas, apropriados para um serviço rápido e seguro.',NULL,1,NULL,1);

/*!40000 ALTER TABLE `tb_produtos_servicos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_produtos_servicos_subitens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_produtos_servicos_subitens`;

CREATE TABLE `tb_produtos_servicos_subitens` (
  `PRDS_COD` int(11) NOT NULL AUTO_INCREMENT,
  `PRDS_NOME` varchar(255) DEFAULT NULL,
  `PRDS_DESCRICAO` longtext,
  `PRD_COD` int(11) DEFAULT NULL,
  `PRDS_STATUS` int(11) DEFAULT NULL,
  `POS_COD_HOME` int(11) DEFAULT NULL,
  PRIMARY KEY (`PRDS_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_produtos_servicos_subitens` WRITE;
/*!40000 ALTER TABLE `tb_produtos_servicos_subitens` DISABLE KEYS */;

INSERT INTO `tb_produtos_servicos_subitens` (`PRDS_COD`, `PRDS_NOME`, `PRDS_DESCRICAO`, `PRD_COD`, `PRDS_STATUS`, `POS_COD_HOME`)
VALUES
	(1,'Caminhão Comboio','Caminhão Comboio',1,1,1),
	(2,'Retroescavadeira','Retroescavadeira',1,1,1),
	(3,'Escavadeira Hidráulica','Escavadeira Hidráulica',1,1,1),
	(4,'Mini Carregadeira','Mini Carregadeira',1,1,1),
	(5,'Mini Escavadeira','Mini Escavadeira',1,1,NULL),
	(6,'Motoniveladora','Motoniveladora',1,1,NULL),
	(7,'Pá Carregadeira','Pá Carregadeira',1,1,NULL),
	(8,'Rolo Compactador','Rolo Compactador',1,1,NULL),
	(9,'Mini Retroescavadeira','Mini Retroescavadeira',1,1,1),
	(10,'Plataforma Carrega Tudo','Plataforma Carrega Tudo',1,1,1),
	(11,'Mini Rolo Compactador','MIni Rolo Compactador',1,1,0),
	(12,'Trator Esteira','Trator Esteira',1,1,1),
	(13,'Compressor de Ar','Compressor de Ar',12,1,1),
	(14,'Manipulador Telescópico','Manipulador Telescopico',11,1,1),
	(15,'Caminhão Munck','Caminhão Munck',11,1,0),
	(16,'Guindaste','Guindaste',11,1,1),
	(17,'Plataforma Tesoura','Plataforma Tesoura',13,1,1),
	(18,'Plataforma Articulada','Plataforma Articulada',13,1,1),
	(19,'Escavadeira Hidráulica com Rompendor','Escavadeira Hidráulica com Rompendor',14,1,0),
	(20,'Escavadeira Hidráulica com Rompendor','Escavadeira Hidráulica com Rompendor',14,0,0),
	(21,'Demolição #03','Demolição #03',14,0,NULL),
	(22,'Demolição #04','Demolição #04',14,0,NULL),
	(23,'Demolição #05','Demolição #05',14,0,NULL),
	(24,'Terraplenagem #1',NULL,15,1,NULL),
	(25,'Terraplenagem #2',NULL,15,1,NULL),
	(26,'Terraplenagem #3',NULL,15,1,NULL),
	(27,'Terraplenagem #4',NULL,15,1,NULL),
	(28,'Terraplenagem #5',NULL,15,1,NULL),
	(29,'Terraplenagem #6',NULL,14,0,NULL),
	(30,'Terraplenagem #6',NULL,15,0,NULL),
	(31,'Terraplenagem #7',NULL,15,1,NULL),
	(32,'Terraplenagem #8',NULL,15,1,NULL),
	(33,'Terraplenagem #9',NULL,15,1,NULL),
	(34,'Terraplenagem #10',NULL,15,1,NULL),
	(35,'Drenagem #1',NULL,16,1,NULL),
	(36,'Drenagem #2',NULL,16,1,NULL),
	(37,'Drenagem #3',NULL,16,1,NULL),
	(38,'Drenagem #4',NULL,16,1,NULL),
	(39,'Drenagem #5',NULL,16,1,NULL),
	(40,'Drenagem #6',NULL,16,1,NULL),
	(41,'Drenagem #7',NULL,16,1,NULL),
	(42,'Drenagem #8',NULL,16,1,NULL),
	(43,'Manutenção de Grupos Geradores #1',NULL,18,1,NULL),
	(44,'Pavimentação #1',NULL,17,1,NULL),
	(45,'Pavimentação #2',NULL,17,1,NULL),
	(46,'Pavimentação #3',NULL,17,1,NULL),
	(47,'Pavimentação #4',NULL,17,1,NULL),
	(48,'Pavimentação #5',NULL,17,1,NULL),
	(49,'Remoção e Içamento de cargas #1',NULL,23,1,NULL),
	(50,'Remoção e Içamento de cargas #2',NULL,23,1,NULL),
	(51,'Remoção e Içamento de cargas #3',NULL,23,1,NULL),
	(52,'Remoção e Içamento de cargas #4',NULL,23,1,NULL),
	(53,'Remoção e Içamento de cargas #5',NULL,23,1,NULL),
	(54,'Remoção e Içamento de cargas #6',NULL,23,1,NULL),
	(55,'Remoção e Içamento de cargas #7',NULL,23,1,NULL),
	(56,'Remoção e Içamento de cargas #8',NULL,23,1,NULL),
	(57,'Remoção e Içamento de cargas #9',NULL,23,1,NULL),
	(58,'Remoção e Içamento de cargas #10',NULL,23,1,NULL),
	(59,'Transporte de Máquinas #1',NULL,20,1,NULL),
	(60,'Transporte de Máquinas #2',NULL,14,0,NULL),
	(61,'Transporte de Máquinas #2',NULL,20,1,NULL),
	(62,'Transporte de Máquinas #3',NULL,20,1,NULL),
	(63,'Transporte de Máquinas #4',NULL,20,1,NULL),
	(64,'Transporte de Máquinas #5',NULL,20,1,NULL),
	(65,'Torre de Iluminação','Torre de Iluminação',2,1,1),
	(66,'Grupo Gerador','Grupo Gerador',2,1,1),
	(67,'Terraplanagem',NULL,15,1,0),
	(68,'Abastecimento','Abastecimento',19,1,0);

/*!40000 ALTER TABLE `tb_produtos_servicos_subitens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_produtos_servicos_tipo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_produtos_servicos_tipo`;

CREATE TABLE `tb_produtos_servicos_tipo` (
  `PRDT_COD` int(11) NOT NULL AUTO_INCREMENT,
  `PRDT_NOME` varchar(255) DEFAULT NULL,
  `PRDT_DESCRICAO` longtext,
  PRIMARY KEY (`PRDT_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_produtos_servicos_tipo` WRITE;
/*!40000 ALTER TABLE `tb_produtos_servicos_tipo` DISABLE KEYS */;

INSERT INTO `tb_produtos_servicos_tipo` (`PRDT_COD`, `PRDT_NOME`, `PRDT_DESCRICAO`)
VALUES
	(1,'Tradicionais','Tradicionais'),
	(2,'Especiais','Especiais'),
	(3,'Doces','Doces');

/*!40000 ALTER TABLE `tb_produtos_servicos_tipo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_publicidade
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_publicidade`;

CREATE TABLE `tb_publicidade` (
  `PUB_COD` int(11) NOT NULL AUTO_INCREMENT,
  `POS_COD_HOME` int(11) DEFAULT NULL,
  `POS_COD_CANAL` int(11) DEFAULT NULL,
  `PUB_TITULO` varchar(255) DEFAULT NULL,
  `PUB_LINK` longtext,
  `PUB_STATUS` int(11) DEFAULT NULL,
  `PUB_DESC` longtext,
  `PUB_TIPO` int(11) DEFAULT NULL,
  PRIMARY KEY (`PUB_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_publicidade` WRITE;
/*!40000 ALTER TABLE `tb_publicidade` DISABLE KEYS */;

INSERT INTO `tb_publicidade` (`PUB_COD`, `POS_COD_HOME`, `POS_COD_CANAL`, `PUB_TITULO`, `PUB_LINK`, `PUB_STATUS`, `PUB_DESC`, `PUB_TIPO`)
VALUES
	(1,1,1,'Ingressos Space Ibizaxxx','http://www.sevenamazon.com/content/eventos-detail.asp?URL_EVE_COD=11',1,NULL,1),
	(2,0,0,'Testexxx','http://p0214.92dpi.com.br/content/kids.asp',1,NULL,NULL),
	(3,0,0,'teste 2','http://p0214.92dpi.com.br/content/kids.asp',1,NULL,NULL),
	(4,0,0,'teste 3','http://p0214.92dpi.com.br/content/kids.asp',1,NULL,NULL);

/*!40000 ALTER TABLE `tb_publicidade` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_usuario
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_usuario`;

CREATE TABLE `tb_usuario` (
  `USR_COD` int(11) NOT NULL AUTO_INCREMENT,
  `MUN_COD` int(11) DEFAULT NULL,
  `USR_NOME` varchar(100) DEFAULT NULL,
  `USR_SOBRENOME` varchar(100) DEFAULT NULL,
  `USR_EMAIL` varchar(100) DEFAULT NULL,
  `USR_DATA_NASC` varchar(10) DEFAULT NULL,
  `USR_ESTADO_CIVIL` varchar(50) DEFAULT NULL,
  `USR_SEXO` varchar(1) DEFAULT NULL,
  `USR_ESCOLARIDADE` varchar(100) DEFAULT NULL,
  `USR_PROFISSIONAL` varchar(100) DEFAULT NULL,
  `USR_CEP` varchar(50) DEFAULT NULL,
  `USR_SENHA` varchar(6) DEFAULT NULL,
  `USR_UF` varchar(2) DEFAULT NULL,
  `USR_SEND_NEWS` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`USR_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;

INSERT INTO `tb_usuario` (`USR_COD`, `MUN_COD`, `USR_NOME`, `USR_SOBRENOME`, `USR_EMAIL`, `USR_DATA_NASC`, `USR_ESTADO_CIVIL`, `USR_SEXO`, `USR_ESCOLARIDADE`, `USR_PROFISSIONAL`, `USR_CEP`, `USR_SENHA`, `USR_UF`, `USR_SEND_NEWS`)
VALUES
	(1,39,'Jusley','Smaly','jusley@hotmail.com','29/08/1979','Solteiro','M','SC','Designer','69000000','123456','AM','Y'),
	(2,39,'Alexandre ','Gonzaga','ext-alexandre.gonzaga@nokia.com','0512077','Solteiro','M','SC','Analista de Materiais Pleno','','gonzag','AM','N');

/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_usuario_sgc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_usuario_sgc`;

CREATE TABLE `tb_usuario_sgc` (
  `USR_COD` int(11) NOT NULL AUTO_INCREMENT,
  `USR_LOGIN` varchar(10) DEFAULT NULL,
  `USR_PWD` varchar(8) DEFAULT NULL,
  `USR_NOME` varchar(50) DEFAULT NULL,
  `USR_PERMISSION` int(11) DEFAULT NULL,
  `USR_DESC` varchar(255) DEFAULT NULL,
  `USR_STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`USR_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_usuario_sgc` WRITE;
/*!40000 ALTER TABLE `tb_usuario_sgc` DISABLE KEYS */;

INSERT INTO `tb_usuario_sgc` (`USR_COD`, `USR_LOGIN`, `USR_PWD`, `USR_NOME`, `USR_PERMISSION`, `USR_DESC`, `USR_STATUS`)
VALUES
	(1,'jsmaly','m41F6L','Administrator',9,'Administrador',1),
	(2,'up','up','update',1,NULL,1);

/*!40000 ALTER TABLE `tb_usuario_sgc` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela tb_vagas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_vagas`;

CREATE TABLE `tb_vagas` (
  `VAG_COD` int(11) NOT NULL AUTO_INCREMENT,
  `POS_COD_HOME` int(11) DEFAULT NULL,
  `POS_COD_CANAL` int(11) DEFAULT NULL,
  `VAG_TITULO` varchar(255) DEFAULT NULL,
  `VAG_CORPO` longtext,
  `VAG_STATUS` int(11) DEFAULT NULL,
  `VAG_DATA_DIA` int(11) DEFAULT NULL,
  `VAG_DATA_MES` int(11) DEFAULT NULL,
  `VAG_DATA_ANO` int(11) DEFAULT NULL,
  `VAG_QUANTIDADE` int(11) DEFAULT NULL,
  PRIMARY KEY (`VAG_COD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tb_vagas` WRITE;
/*!40000 ALTER TABLE `tb_vagas` DISABLE KEYS */;

INSERT INTO `tb_vagas` (`VAG_COD`, `POS_COD_HOME`, `POS_COD_CANAL`, `VAG_TITULO`, `VAG_CORPO`, `VAG_STATUS`, `VAG_DATA_DIA`, `VAG_DATA_MES`, `VAG_DATA_ANO`, `VAG_QUANTIDADE`)
VALUES
	(1,0,0,'Gerente','Faixa salarial em torno de R$ 4.000,00.\r\nBenefícios: Convênio médico e odontológico, refeição no local, reembolso de Km\r\nHORARIO: À partir das 06h00 ( abertura da loja ) eventualmente até às 18h00.\r\nLocal de trabalho: Campinas',0,23,1,2013,10);

/*!40000 ALTER TABLE `tb_vagas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela vw_dicas_tipo
# ------------------------------------------------------------

DROP VIEW IF EXISTS `vw_dicas_tipo`;

CREATE TABLE `vw_dicas_tipo` (
   `DIC_COD` INT(11) NOT NULL DEFAULT '0',
   `POS_COD_HOME` INT(11) NULL DEFAULT NULL,
   `POS_COD_CANAL` INT(11) NULL DEFAULT NULL,
   `DIC_TITULO` VARCHAR(255) NULL DEFAULT NULL,
   `DIC_CORPO` LONGTEXT NULL DEFAULT NULL,
   `DIC_CORPO_HOME` LONGTEXT NULL DEFAULT NULL,
   `DIC_FOTO_LEGENDA` VARCHAR(255) NULL DEFAULT NULL,
   `DIC_STATUS` INT(11) NULL DEFAULT NULL,
   `DIC_FONTE` VARCHAR(255) NULL DEFAULT NULL,
   `DIC_TAGS` VARCHAR(255) NULL DEFAULT NULL,
   `DIC_DATA_DIA` INT(11) NULL DEFAULT NULL,
   `DIC_DATA_MES` INT(11) NULL DEFAULT NULL,
   `DIC_DATA_ANO` INT(11) NULL DEFAULT NULL,
   `DICT_NOME` VARCHAR(255) NULL DEFAULT NULL,
   `DICT_DESCRICAO` LONGTEXT NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump da tabela vw_empreendimento_tipo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vw_empreendimento_tipo`;

CREATE TABLE `vw_empreendimento_tipo` (
  `EMPT_COD` int(11) DEFAULT NULL,
  `EMP_COD` int(11) DEFAULT NULL,
  `POS_COD_HOME` tinyint(4) DEFAULT NULL,
  `POS_COD_CANAL` tinyint(4) DEFAULT NULL,
  `EMP_ANO` int(11) DEFAULT NULL,
  `EMP_NOME` varchar(255) DEFAULT NULL,
  `EMPT_NOME` varchar(255) DEFAULT NULL,
  `EMPT_DESCRICAO` longtext,
  `EMP_STATUS` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump da tabela vw_midias_tipo
# ------------------------------------------------------------

DROP VIEW IF EXISTS `vw_midias_tipo`;

CREATE TABLE `vw_midias_tipo` (
   `MID_COD` INT(11) NOT NULL DEFAULT '0',
   `MID_TITULO` VARCHAR(255) NULL DEFAULT NULL,
   `MID_DESC` VARCHAR(255) NULL DEFAULT NULL,
   `POS_COD_HOME` TINYINT(4) NULL DEFAULT NULL,
   `POS_COD_CANAL` TINYINT(4) NULL DEFAULT NULL,
   `MID_STATUS` TINYINT(4) NULL DEFAULT NULL,
   `MID_CODE_01` LONGTEXT NULL DEFAULT NULL,
   `MID_CODE_02` LONGTEXT NULL DEFAULT NULL,
   `MID_CODE_03` LONGTEXT NULL DEFAULT NULL,
   `MID_TAGS` VARCHAR(255) NULL DEFAULT NULL,
   `MIDT_COD` INT(11) NULL DEFAULT NULL,
   `MIDT_NOME` VARCHAR(255) NULL DEFAULT NULL,
   `MIDT_DESCRICAO` LONGTEXT NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump da tabela vw_produtos_servicos_subitens
# ------------------------------------------------------------

DROP VIEW IF EXISTS `vw_produtos_servicos_subitens`;

CREATE TABLE `vw_produtos_servicos_subitens` (
   `PRDS_COD` INT(11) NOT NULL DEFAULT '0',
   `PRDS_NOME` VARCHAR(255) NULL DEFAULT NULL,
   `PRDS_DESCRICAO` LONGTEXT NULL DEFAULT NULL,
   `PRD_COD` INT(11) NULL DEFAULT NULL,
   `PRD_TITULO` VARCHAR(255) NULL DEFAULT NULL,
   `POS_COD_CANAL` INT(11) NULL DEFAULT NULL,
   `PRD_CORPO` LONGTEXT NULL DEFAULT NULL,
   `PRD_CORPO_HOME` LONGTEXT NULL DEFAULT NULL,
   `PRD_FOTO_LEGENDA` VARCHAR(255) NULL DEFAULT NULL,
   `PRD_STATUS` INT(11) NULL DEFAULT NULL,
   `PRD_TAGS` VARCHAR(255) NULL DEFAULT NULL,
   `PRDT_COD` INT(11) NULL DEFAULT NULL,
   `PRDS_STATUS` INT(11) NULL DEFAULT NULL,
   `POS_COD_HOME` INT(11) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump da tabela vw_produtos_servicos_tipo
# ------------------------------------------------------------

DROP VIEW IF EXISTS `vw_produtos_servicos_tipo`;

CREATE TABLE `vw_produtos_servicos_tipo` (
   `PRD_COD` INT(11) NOT NULL DEFAULT '0',
   `POS_COD_HOME` INT(11) NULL DEFAULT NULL,
   `POS_COD_CANAL` INT(11) NULL DEFAULT NULL,
   `PRD_TITULO` VARCHAR(255) NULL DEFAULT NULL,
   `PRD_CORPO` LONGTEXT NULL DEFAULT NULL,
   `PRD_CORPO_HOME` LONGTEXT NULL DEFAULT NULL,
   `PRD_FOTO_LEGENDA` VARCHAR(255) NULL DEFAULT NULL,
   `PRD_STATUS` INT(11) NULL DEFAULT NULL,
   `PRD_TAGS` VARCHAR(255) NULL DEFAULT NULL,
   `PRDT_NOME` VARCHAR(255) NULL DEFAULT NULL,
   `PRDT_DESCRICAO` LONGTEXT NULL DEFAULT NULL
) ENGINE=MyISAM;





# Replace placeholder table for vw_dicas_tipo with correct view syntax
# ------------------------------------------------------------

DROP TABLE `vw_dicas_tipo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`idcom_admin320`@`%` SQL SECURITY DEFINER VIEW `vw_dicas_tipo`
AS SELECT
   `tb_dicas`.`DIC_COD` AS `DIC_COD`,
   `tb_dicas`.`POS_COD_HOME` AS `POS_COD_HOME`,
   `tb_dicas`.`POS_COD_CANAL` AS `POS_COD_CANAL`,
   `tb_dicas`.`DIC_TITULO` AS `DIC_TITULO`,
   `tb_dicas`.`DIC_CORPO` AS `DIC_CORPO`,
   `tb_dicas`.`DIC_CORPO_HOME` AS `DIC_CORPO_HOME`,
   `tb_dicas`.`DIC_FOTO_LEGENDA` AS `DIC_FOTO_LEGENDA`,
   `tb_dicas`.`DIC_STATUS` AS `DIC_STATUS`,
   `tb_dicas`.`DIC_FONTE` AS `DIC_FONTE`,
   `tb_dicas`.`DIC_TAGS` AS `DIC_TAGS`,
   `tb_dicas`.`DIC_DATA_DIA` AS `DIC_DATA_DIA`,
   `tb_dicas`.`DIC_DATA_MES` AS `DIC_DATA_MES`,
   `tb_dicas`.`DIC_DATA_ANO` AS `DIC_DATA_ANO`,
   `tb_dicas_tipo`.`DICT_NOME` AS `DICT_NOME`,
   `tb_dicas_tipo`.`DICT_DESCRICAO` AS `DICT_DESCRICAO`
FROM (`tb_dicas` join `tb_dicas_tipo` on((`tb_dicas`.`DICT_COD` = `tb_dicas_tipo`.`DICT_COD`)));


# Replace placeholder table for vw_produtos_servicos_tipo with correct view syntax
# ------------------------------------------------------------

DROP TABLE `vw_produtos_servicos_tipo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`idcom_admin320`@`%` SQL SECURITY DEFINER VIEW `vw_produtos_servicos_tipo`
AS SELECT
   `tb_produtos_servicos`.`PRD_COD` AS `PRD_COD`,
   `tb_produtos_servicos`.`POS_COD_HOME` AS `POS_COD_HOME`,
   `tb_produtos_servicos`.`POS_COD_CANAL` AS `POS_COD_CANAL`,
   `tb_produtos_servicos`.`PRD_TITULO` AS `PRD_TITULO`,
   `tb_produtos_servicos`.`PRD_CORPO` AS `PRD_CORPO`,
   `tb_produtos_servicos`.`PRD_CORPO_HOME` AS `PRD_CORPO_HOME`,
   `tb_produtos_servicos`.`PRD_FOTO_LEGENDA` AS `PRD_FOTO_LEGENDA`,
   `tb_produtos_servicos`.`PRD_STATUS` AS `PRD_STATUS`,
   `tb_produtos_servicos`.`PRD_TAGS` AS `PRD_TAGS`,
   `tb_produtos_servicos_tipo`.`PRDT_NOME` AS `PRDT_NOME`,
   `tb_produtos_servicos_tipo`.`PRDT_DESCRICAO` AS `PRDT_DESCRICAO`
FROM (`tb_produtos_servicos` join `tb_produtos_servicos_tipo` on((`tb_produtos_servicos`.`PRDT_COD` = `tb_produtos_servicos_tipo`.`PRDT_COD`)));


# Replace placeholder table for vw_produtos_servicos_subitens with correct view syntax
# ------------------------------------------------------------

DROP TABLE `vw_produtos_servicos_subitens`;

CREATE ALGORITHM=UNDEFINED DEFINER=`idcom_admin320`@`%` SQL SECURITY DEFINER VIEW `vw_produtos_servicos_subitens`
AS SELECT
   `tb_produtos_servicos_subitens`.`PRDS_COD` AS `PRDS_COD`,
   `tb_produtos_servicos_subitens`.`PRDS_NOME` AS `PRDS_NOME`,
   `tb_produtos_servicos_subitens`.`PRDS_DESCRICAO` AS `PRDS_DESCRICAO`,
   `tb_produtos_servicos_subitens`.`PRD_COD` AS `PRD_COD`,
   `tb_produtos_servicos`.`PRD_TITULO` AS `PRD_TITULO`,
   `tb_produtos_servicos`.`POS_COD_CANAL` AS `POS_COD_CANAL`,
   `tb_produtos_servicos`.`PRD_CORPO` AS `PRD_CORPO`,
   `tb_produtos_servicos`.`PRD_CORPO_HOME` AS `PRD_CORPO_HOME`,
   `tb_produtos_servicos`.`PRD_FOTO_LEGENDA` AS `PRD_FOTO_LEGENDA`,
   `tb_produtos_servicos`.`PRD_STATUS` AS `PRD_STATUS`,
   `tb_produtos_servicos`.`PRD_TAGS` AS `PRD_TAGS`,
   `tb_produtos_servicos`.`PRDT_COD` AS `PRDT_COD`,
   `tb_produtos_servicos_subitens`.`PRDS_STATUS` AS `PRDS_STATUS`,
   `tb_produtos_servicos_subitens`.`POS_COD_HOME` AS `POS_COD_HOME`
FROM (`tb_produtos_servicos_subitens` join `tb_produtos_servicos` on((`tb_produtos_servicos_subitens`.`PRD_COD` = `tb_produtos_servicos`.`PRD_COD`)));


# Replace placeholder table for vw_midias_tipo with correct view syntax
# ------------------------------------------------------------

DROP TABLE `vw_midias_tipo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`idcom_admin320`@`%` SQL SECURITY DEFINER VIEW `vw_midias_tipo`
AS SELECT
   `tb_midias`.`MID_COD` AS `MID_COD`,
   `tb_midias`.`MID_TITULO` AS `MID_TITULO`,
   `tb_midias`.`MID_DESC` AS `MID_DESC`,
   `tb_midias`.`POS_COD_HOME` AS `POS_COD_HOME`,
   `tb_midias`.`POS_COD_CANAL` AS `POS_COD_CANAL`,
   `tb_midias`.`MID_STATUS` AS `MID_STATUS`,
   `tb_midias`.`MID_CODE_01` AS `MID_CODE_01`,
   `tb_midias`.`MID_CODE_02` AS `MID_CODE_02`,
   `tb_midias`.`MID_CODE_03` AS `MID_CODE_03`,
   `tb_midias`.`MID_TAGS` AS `MID_TAGS`,
   `tb_midias`.`MIDT_COD` AS `MIDT_COD`,
   `tb_midias_tipo`.`MIDT_NOME` AS `MIDT_NOME`,
   `tb_midias_tipo`.`MIDT_DESCRICAO` AS `MIDT_DESCRICAO`
FROM (`tb_midias` join `tb_midias_tipo` on((`tb_midias`.`MIDT_COD` = `tb_midias_tipo`.`MIDT_COD`)));

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
