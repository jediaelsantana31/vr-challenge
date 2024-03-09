
module VRPATService
  include HTTParty

  def self.base_uri_from_variable
    base_uri $urls['BASE_URI']
  end

  def self.get_vrpat
    base_uri_from_variable
    get('/VRPAT')
  end

end