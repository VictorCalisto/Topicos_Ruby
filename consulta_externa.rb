def consulta_externa(parametros_da_consulta)
  # A consulta SQL que será executada na base de dados
  sql = <<~SQL
    SELECT 
      coluna1,       -- Descrição da coluna 1
      coluna2,       -- Descrição da coluna 2
      exemplo        -- Exemplo e um caso para se tomar como referência
    FROM 
      tabela1        -- Descrição da tabela 1
    JOIN
      pessoas       -- Tabela que armazena dados das pessoas físicas e jurídicas
    ON
      tabela1.coluna1 = pessoas.coluna_correspondente -- Descrição do relacionamento
    WHERE 
      tabela1.coluna2 = $1  -- Parâmetro da consulta (por exemplo, 'parametro_da_consulta')
    AND
      pessoas.coluna3 = $2 -- Outro parâmetro da consulta
  SQL

  # Configuração da conexão externa
  conexao_externa = ActiveRecord::Base.configurations['conexao_externa']

  # Criação de uma nova conexão usando a configuração de leitura exclusiva
  conexao_externa_connection = ActiveRecord::Base.postgresql_connection(conexao_externa)

  begin
    # Executa a consulta, passando os parâmetros necessários
    result = conexao_externa_connection.exec_query(sql, 'SQL', [
      [nil, parametros_da_consulta[:parametro1]],
      [nil, parametros_da_consulta[:parametro2]]
    ])

    # Retorna o resultado da consulta
    result
  ensure
    # Sempre fecha a conexão depois de realizar a consulta
    conexao_externa_connection.disconnect!
  end
end


resultados = consulta_externa(parametro1: 'valor1', parametro2: 'valor2')

# Exibindo o resultado da consulta
puts resultados.to_a  # Converte o resultado para um array


# como isso fica no database.yml
production:
  primary:
    <<: *default
    
  conexao_externa:
    <<: *default
    database: nome_do_banco_externo
    host: endereco_do_servidor_externo
    username: usuario_externo
    password: senha_externa
