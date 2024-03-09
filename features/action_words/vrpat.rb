class Vrpat < BaseService
  
  def get_products
    return load_json_file('produto')
  end

  def get_establishment_types
    return load_json_file('tipo_estabelecimento')
  end

  def validate_establishment_types(data)
    type_list = data[:typeList]
    expected_items_list = data[:expected_items_list]
    vrpat_resp = data[:vrpat_resp]
  
    # Verifica se o response contém a lista desejada (de estabelecimento ou produto)
    expect(vrpat_resp).to have_key(type_list)

    # Verifica se a lista esperada está presente na resposta
    expect(vrpat_resp[type_list]).to match_array(expected_items_list)
  end
  
end
