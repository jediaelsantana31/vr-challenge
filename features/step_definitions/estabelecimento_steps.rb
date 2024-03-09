######### DADO #########

Dado('os tipos de estabelecimentos da VR') do
   @vrpat = Vrpat.new
   @scenario_context.set(:expected_items_list, @vrpat.get_establishment_types)
end


######### QUANDO #########

Quando('consulto as informacoes dos produtos e estabelecimentos') do
    @scenario_context.set(:get_vrpat_resp, VRPATService.get_vrpat)
end


######### ENTAO #########

Entao('deve retornar a lista {string} com as informacoes esperada') do |typeList|
    expected_items_list = @scenario_context.get(:expected_items_list)
    vrpat_resp = @scenario_context.get(:get_vrpat_resp)
    
    @vrpat.validate_status_code(vrpat_resp, 200)
    @vrpat.validate_establishment_types({
      typeList: typeList,
      expected_items_list: expected_items_list,
      vrpat_resp: vrpat_resp
    })

    @scenario_context.set(:bdd_list_param, typeList)
end

Entao('devo visualizar um item aleatorio da lista') do
    bdd_list_param = @scenario_context.get(:bdd_list_param)
    resp_establishment_type = @scenario_context.get(:get_vrpat_resp)
    
    @vrpat.get_random_item_from_response(bdd_list_param, resp_establishment_type)
end