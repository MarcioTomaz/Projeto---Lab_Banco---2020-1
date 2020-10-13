
/*************************** 
  NOTE - COMENTARIOS TABELA CARTAS
  ****************************/
COMMENT ON TABLE CARTAS IS 'Tabela com todas as informacoes que serao usadas pelas variantes de cartas';
    COMMENT ON COLUMN CARTAS.car_nome IS 'Nome das cartas da loja';
    COMMENT ON COLUMN CARTAS. car_atributo IS 'Atributo da carta ex: trevas, vento etc';
    COMMENT ON COLUMN CARTAS.car_tipo IS 'Tipo da carta ARRUMAR';
    COMMENT ON COLUMN CARTAS.car_desc IS 'descricao das cartas, efeitos ou historias';
    COMMENT ON COLUMN CARTAS.car_col_fk IS 'chave de ligacao com a colecao da carta';
    COMMENT ON COLUMN CARTAS.car_id IS 'Chave primaria da tabela';

/*************************** 
  NOTE - COMENTARIOS TABELA CLIENTES
  ****************************/
COMMENT ON TABLE CLIENTES IS 'Tabela para armazenar dados de contado do cliente, endereco, telefone etc';
    COMMENT ON COLUMN CLIENTES.cli_id IS 'Chave primaria da tabela CLIENTES';
    COMMENT ON COLUMN CLIENTES.cli_nome IS 'Primeiro do cliente';
    COMMENT ON COLUMN CLIENTES.cli_nome_meio IS 'Nome do meio do cliente';
    COMMENT ON COLUMN CLIENTES.cli_ultimo_nome IS 'Ultimo nome do cliente';
    COMMENT ON COLUMN CLIENTES.cli_email IS 'Email de contado do cliente';
    COMMENT ON COLUMN CLIENTES.cli_cpf IS 'Cpf de identificacao do cliente';
    COMMENT ON COLUMN CLIENTES.cli_municipio IS 'Municipio do cliente para efetuar a entrega dos produtos';
    COMMENT ON COLUMN CLIENTES.cli_bairro IS 'Bairro do cliente para efetuar a entrega';
    COMMENT ON COLUMN CLIENTES.cli_contato IS 'Numero de contado do cliente';
    COMMENT ON COLUMN CLIENTES.cli_cep IS ' cep do cliente';
    
/*************************** 
  NOTE - COMENTARIOS TABELA colecoes
  ****************************/
    COMMENT ON TABLE COLECOES IS 'Tabela para armazenar os temas das colecoes que forem lancadas';
    COMMENT ON COLUMN COLECOES.col_tema IS 'Tema da colecao que for lancada';
    COMMENT ON COLUMN colecoes.col_pdt_id IS 'Chave primaria da tabela colecoes';


/*************************** 
  NOTE - COMENTARIOS TABELA MAGICAS
  ****************************/
    COMMENT ON TABLE MAGICAS IS 'Tabela para armazenar as cartas magicas da loja e suas particularidade';
    COMMENT ON COLUMN MAGICAS.mag_efeito IS 'Tipos de efeitos das cartas ex: equipamento, continuas, campo etc ';
    COMMENT ON COLUMN MAGICAS.MAG_velocidade IS 'Velocidade da carta ex: 1,2,3. Dependendo do numero a carta pode ou nao ser ativada em determinado momento';
    COMMENT ON COLUMN MAGICAS.mag_car_id IS 'Chave primaria da tabela magicas';

/*************************** 
  NOTE - COMENTARIOS TABELA MONSTROS
  ****************************/
COMMENT ON TABLE MONSTROS IS 'Tabela para armazenar ataque e defesa dos monstros que eh um atributo comum a todos';
    COMMENT ON COLUMN MONSTROS.mon_atk IS 'Valor do ataque do monstro';
    COMMENT ON COLUMN MONSTROS.mon_def IS 'Valor da defesa do monstro';
    COMMENT ON COLUMN MONSTROS.mon_car_id IS 'id para fazer referencia a carta cadastrada';


/*************************** 
  NOTE - COMENTARIOS TABELA NML_MONSTROS
  ****************************/
    COMMENT ON TABLE NML_MONSTROS IS 'Tabela para armazenas os monstros que possuem estrelas que sao os normais, efeitos, ';
    COMMENT ON COLUMN NML_MONSTROS.nml_estrelas IS 'Estrelas sao necessarias para as condicoes de invocacoes dos monstros';
    COMMENT ON COLUMN NML_MONSTROS.nml_mon_id IS 'Chave primaria da tabela nml monstros';

/*************************** 
  NOTE - COMENTARIOS TABELA PENDULOS
  ****************************/
COMMENT ON TABLE PENDULOS IS 'Tabela para armazenar as particularidades dos monstros pendulo';
    COMMENT ON COLUMN PENDULOS.pen_escala IS 'escala pendulo eh um numero que eh necessarios para eventuais condicoes de invocacao especial';
    COMMENT ON COLUMN PENDULOS.pen_efeito IS 'Efeito extra que somente monstros pendulo possuem';
    COMMENT ON COLUMN PENDULOS.pen_car_mon_id IS 'Chave primaria da tabela pendulos';

/*************************** 
  NOTE - COMENTARIOS TABELA PLAYMATCHS
  ****************************/
    COMMENT ON TABLE PLAYMATCHS IS 'Tabela para armazenar os tipos de campos personalizados da loja';
    COMMENT ON COLUMN PLAYMATCHS.plt_tamanho IS 'Largura do campo';
    COMMENT ON COLUMN PLAYMATCHS.plt_cor IS 'Cor do campo';
    COMMENT ON COLUMN PLAYMATCHS.plt_pdt_id IS 'Chave primaria da tabela playmatchs';

    /*************************** 
  NOTE - COMENTARIOS TABELA PRODUTOS
  ****************************/
COMMENT ON TABLE PRODUTOS IS 'Tabela para armazenar informacoes gerais dos produtos da loja';
    COMMENT ON COLUMN PRODUTOS.pdt_id IS 'Chave primaria da tabela produtos';
    COMMENT ON COLUMN PRODUTOS.pdt_nome IS 'Nome dos produtos da loja';
    COMMENT ON COLUMN PRODUTOS.pdt_descricao IS 'descricao geral do que se trata o produto';
    COMMENT ON COLUMN PRODUTOS.pdt_preco IS 'Valor do produto';
    COMMENT ON COLUMN PRODUTOS.pdt_data_aquisicao IS 'Data de registro do produto';

 /*************************** 
  NOTE - COMENTARIOS TABELA PRODUTOS_CLIENTES
  ****************************/
COMMENT ON TABLE PRODUTOS_CLIENTES IS 'Tabela de relação entre produtos e clientes';
    COMMENT ON COLUMN PRODUTOS_CLIENTES.cps_cli_id IS 'Id do cliente que esta relacioando ao produto';
    COMMENT ON COLUMN PRODUTOS_CLIENTES.cps_pdt_id IS 'Id do produto que esta relacionado';
    COMMENT ON COLUMN PRODUTOS_CLIENTES.cps_data_compra IS 'Data em que foi efetuado a compra';

  /*************************** 
  NOTE - COMENTARIOS TABELA SLEEVES
  ****************************/
  COMMENT ON TABLE SLEEVES IS 'Tabela para armazenar dados referentes ao produto sleeve que eh um protetor de cartas';
    COMMENT ON COLUMN SLEEVES.slv_marca IS 'Marca do sleeve';
    COMMENT ON COLUMN SLEEVES.slv_pdt_id IS 'Chave primaria da tabela sleeves';

 /*************************** 
  NOTE - COMENTARIOS TABELA XYZS
  ****************************/
  COMMENT ON TABLE XYZS IS 'Tabela para armazenar as peculiaridades das cartas tipo xyz';
    COMMENT ON COLUMN XYZS.xyz_rank IS 'Rank eh um numero exclusivo de invocoes xyz que eh necessario para eventuais condicoes de invocacao especial';
    COMMENT ON COLUMN XYZS.xyz_mon_id IS 'Chave primaria da tabela xyzs';