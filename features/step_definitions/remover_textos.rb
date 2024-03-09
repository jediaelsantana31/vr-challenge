######### DADO #########

Dado('que a string de entrada é "{string}"') do |input_string|
    @input_string = input_string
end

Dado('os marcadores são "{string}"') do |markers|
    @markers = markers.split(',') # Separa os marcadores em uma lista de marcadores
end

######### ENTAO #########

Então('a saída esperada é "{string}"') do |expected_output|
    actual_output = TextProcessor.remove_text_after_symbols(@input_string, @markers)
    expect(actual_output).to eq(expected_output)
end
  