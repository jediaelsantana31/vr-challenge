# Classe responsável por armazenar e gerenciar o contexto do cenário,
# incluindo diferentes tipos de dados que será compartilhados entre steps definitions.
class ScenarioContext
    # Define um atributo de acesso para o hash que armazena os dados do contexto.
    attr_accessor :data
  
    # Inicializa o contexto do cenário criando um hash vazio para armazenar os dados.
    def initialize
      @data = {}
    end
   
    # Método para definir um valor para uma chave específica no contexto do cenário.
    def set(key, value)
      @data[key] = value
    end
  
    # Método para obter o valor associado a uma chave específica no contexto do cenário.
    def get(key)
      @data[key]
    end
  end
  