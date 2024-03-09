######### DADO #########

Dado('a lista de produtos da plataforma VR') do
   @vrpat = Vrpat.new
   @scenario_context.set(:expected_items_list, @vrpat.get_products)
end

######### QUANDO #########

######### ENTAO #########
