class TextProcessor
    # Método estático para remover texto após símbolos específicos em uma string.
    #
    # Parâmetros:
    # - input_string: A string de entrada da qual o texto será removido.
    # - symbols: Um array contendo os símbolos após os quais o texto será removido.
    #
    # Retorna:
    # Uma nova string com o texto removido após os símbolos especificados.
    def self.remove_text_after_symbols(input_string, markers)
        # Imprime o texto inicial
        puts "Texto inicial: #{input_string}"
        
        # Cria uma expressão regular a partir dos símbolos fornecidos
        symbols_regex = Regexp.union(markers)
        
        # Imprime a expressão regular utilizada
        puts "Expressão regular utilizada: /#{symbols_regex}/"
        
        # Remove todo o texto após qualquer um dos símbolos fornecidos
        result = input_string.gsub(/#{symbols_regex}.*/, '').strip  # Remover espaços extras
        
        # Imprime o resultado após a remoção
        puts "Resultado: #{result}"
        
        return result
      end
  end
  