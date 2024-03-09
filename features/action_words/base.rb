
class BaseService
    include RSpec::Matchers
  
    def validate_status_code(response, expected_status)
      expect(response.code).to eq(expected_status)
    end

    def get_random_item_from_response(bdd_list_param, response)
      # Obtém a lista de tipos de estabelecimento da resposta
      resp_type_list = response[bdd_list_param]
  
      # Verifica se a lista não está vazia
      if resp_type_list.nil? || resp_type_list.empty?
        puts "A lista está vazia ou não existe."
        return
      end
  
      # Escolhe aleatoriamente um item da lista
      random_item = resp_type_list.sample
  
      # Imprime o item no console
      puts "Item aleatório da lista:"
      puts JSON.pretty_generate(random_item)
    end

    def load_json_file(file_name)
      file_path = File.join(File.dirname(__FILE__), '..', 'support', 'data', file_name + '.json')
      file = File.read(file_path)
      JSON.parse(file)
    end
    
  end