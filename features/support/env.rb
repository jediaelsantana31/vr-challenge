    require "cucumber"
	require "httparty"
	require "httparty/request"
	require "httparty/response/headers"
	require "rspec"
	require 'json'
	require 'yaml'
	

	#Modulo
	require_relative '../services/vrpat_service'

	
	# Define o ambiente global
	$environment = ENV['ENVIRONMENT'] || 'development'

	# Carrega as URLs correspondentes ao ambiente
	file_path = File.join(File.dirname(__FILE__), '..', 'support', 'environment', 'urls.yml')
	$urls = YAML.load_file(file_path)[$environment]