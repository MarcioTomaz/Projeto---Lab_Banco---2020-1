
/*************************** 
  NOTE - CREATE TABLES 
  ****************************/

CREATE TABLE CARTAS 
    ( 
     car_nome VARCHAR2 (100)  NOT NULL , 
     car_atributo VARCHAR2 (30)  NOT NULL , 
     car_tipo VARCHAR2 (30)  NOT NULL , 
     car_desc VARCHAR2 (500)  NOT NULL , 
     car_col_fk NUMBER (6)  NOT NULL , 
     car_id NUMBER (6)  NOT NULL 
    ) 
;

CREATE TABLE CLIENTES 
    ( 
     cli_id NUMBER (6)  NOT NULL , 
     cli_nome VARCHAR2 (60)  NOT NULL , 
     cli_nome_meio VARCHAR2 (60) , 
     cli_ultimo_nome VARCHAR2 (60)  NOT NULL , 
     cli_email VARCHAR2 (80)  NOT NULL , 
     cli_cpf VARCHAR2 (11)  NOT NULL , 
     cli_cep VARCHAR2 (30)  NOT NULL , 
     cli_municipio VARCHAR2 (30) , 
     cli_bairro VARCHAR2 (30) , 
     cli_contato NUMBER (12)  NOT NULL 
    ) 
;

CREATE TABLE COLECOES 
    ( 
     col_tema VARCHAR2 (200)  NOT NULL , 
     col_pdt_id NUMBER (6)  NOT NULL 
    ) 
;

CREATE TABLE MAGICAS 
    ( 
     mag_efeito VARCHAR2 (30)  NOT NULL , 
     mag_velocidade NUMBER (6)  NOT NULL , 
     mag_car_id NUMBER (6)  NOT NULL 
    ) 
;

CREATE TABLE MONSTROS 
    ( 
     mon_atk NUMBER (30) , 
     mon_def NUMBER (30) , 
     mon_car_id NUMBER (6)  NOT NULL 
    ) 
;


CREATE TABLE NML_MONSTROS 
    ( 
     nml_estrelas NUMBER (30)  NOT NULL , 
     nml_mon_id NUMBER (6)  NOT NULL 
    ) 
;


CREATE TABLE PENDULOS 
    ( 
     pen_escala NUMBER (30)  NOT NULL , 
     pen_efeito VARCHAR2 (500) , 
     pen_car_mon_id NUMBER (6)  NOT NULL 
    ) 
;

CREATE TABLE PLAYMATCHS 
    ( 
     plt_tamanho VARCHAR2 (20) , 
     plt_cor VARCHAR2 (30) , 
     plt_pdt_id NUMBER (6)  NOT NULL 
    ) 
;

CREATE TABLE PRODUTOS 
    ( 
     pdt_id NUMBER (6)  NOT NULL , 
     pdt_nome VARCHAR2 (60)  NOT NULL , 
     pdt_descricao VARCHAR2 (255)  NOT NULL , 
     pdt_preco NUMBER (8,2)  NOT NULL , 
     pdt_data_aquisicao DATE  NOT NULL 
    ) 
;

CREATE TABLE PRODUTOS_CLIENTES 
    ( 
     cps_cli_id NUMBER (6)  NOT NULL , 
     cps_pdt_id NUMBER (6)  NOT NULL , 
     cps_data_compra DATE  NOT NULL 
    ) 
;    

CREATE TABLE SLEEVES 
    ( 
     slv_marca VARCHAR2 (60)  NOT NULL , 
     slv_pdt_id NUMBER (6)  NOT NULL 
    ) 
;    

CREATE TABLE XYZS 
    ( 
     xyz_rank NUMBER (30)  NOT NULL , 
     xyz_mon_id NUMBER (6)  NOT NULL 
    ) 
;


/*************************** 
  NOTE - ALTER TABLES
****************************/

ALTER TABLE CARTAS 
    ADD CONSTRAINT PK_car PRIMARY KEY ( car_id ) ;


ALTER TABLE CLIENTES 
    ADD CONSTRAINT PK_cli PRIMARY KEY ( cli_id ) ;

ALTER TABLE COLECOES 
    ADD CONSTRAINT PK_col PRIMARY KEY ( col_pdt_id ) ;

ALTER TABLE MAGICAS 
    ADD CONSTRAINT PK_mag PRIMARY KEY ( mag_car_id ) ;

ALTER TABLE MONSTROS 
    ADD CONSTRAINT PK_mon PRIMARY KEY ( mon_car_id ) ;

ALTER TABLE NML_MONSTROS 
    ADD CONSTRAINT PK_nml PRIMARY KEY ( nml_mon_id ) ;

ALTER TABLE PENDULOS 
    ADD CONSTRAINT PK_pen PRIMARY KEY ( pen_car_mon_id ) ;

ALTER TABLE PLAYMATCHS 
    ADD CONSTRAINT PK_plt PRIMARY KEY ( plt_pdt_id ) ;

ALTER TABLE PRODUTOS 
    ADD CONSTRAINT PK_pdt PRIMARY KEY ( pdt_id ) ;


ALTER TABLE PRODUTOS_CLIENTES 
    ADD CONSTRAINT PK_cps PRIMARY KEY ( cps_cli_id, cps_pdt_id, cps_data_compra ) ;

ALTER TABLE SLEEVES 
    ADD CONSTRAINT slv_pdt_PK PRIMARY KEY ( slv_pdt_id ) ;

ALTER TABLE XYZS 
    ADD CONSTRAINT PK_xyz PRIMARY KEY ( xyz_mon_id ) ;





ALTER TABLE CARTAS 
    ADD CONSTRAINT FK_car_col FOREIGN KEY 
    ( 
     car_col_fk
    ) 
    REFERENCES COLECOES 
    ( 
     col_pdt_id
    ) 
;


ALTER TABLE COLECOES 
    ADD CONSTRAINT FK_pdt_col FOREIGN KEY 
    ( 
     col_pdt_id
    ) 
    REFERENCES PRODUTOS 
    ( 
     pdt_id
    ) 
;


ALTER TABLE MAGICAS 
    ADD CONSTRAINT FK_mag_car FOREIGN KEY 
    ( 
     mag_car_id
    ) 
    REFERENCES CARTAS 
    ( 
     car_id
    ) 
;


ALTER TABLE MONSTROS 
    ADD CONSTRAINT FK_mon_car FOREIGN KEY 
    ( 
     mon_car_id
    ) 
    REFERENCES CARTAS 
    ( 
     car_id
    ) 
;


ALTER TABLE NML_MONSTROS 
    ADD CONSTRAINT FK_nml_mon FOREIGN KEY 
    ( 
     nml_mon_id
    ) 
    REFERENCES MONSTROS 
    ( 
     mon_car_id
    ) 
;


ALTER TABLE PENDULOS 
    ADD CONSTRAINT FK_pen_mon FOREIGN KEY 
    ( 
     pen_car_mon_id
    ) 
    REFERENCES MONSTROS 
    ( 
     mon_car_id
    ) 
;


ALTER TABLE PLAYMATCHS 
    ADD CONSTRAINT FK_plt_pdt FOREIGN KEY 
    ( 
     plt_pdt_id
    ) 
    REFERENCES PRODUTOS 
    ( 
     pdt_id
    ) 
;


ALTER TABLE PRODUTOS_CLIENTES 
    ADD CONSTRAINT "FK_cps_cli " FOREIGN KEY 
    ( 
     cps_cli_id
    ) 
    REFERENCES CLIENTES 
    ( 
     cli_id
    ) 
;


ALTER TABLE PRODUTOS_CLIENTES 
    ADD CONSTRAINT FK_cps_pdt FOREIGN KEY 
    ( 
     cps_pdt_id
    ) 
    REFERENCES PRODUTOS 
    ( 
     pdt_id
    ) 
;


ALTER TABLE SLEEVES 
    ADD CONSTRAINT FK_slv_pdt FOREIGN KEY 
    ( 
     slv_pdt_id
    ) 
    REFERENCES PRODUTOS 
    ( 
     pdt_id
    ) 
;


ALTER TABLE XYZS 
    ADD CONSTRAINT FK_xyz_mon FOREIGN KEY 
    ( 
     xyz_mon_id
    ) 
    REFERENCES MONSTROS 
    ( 
     mon_car_id
    ) 
;