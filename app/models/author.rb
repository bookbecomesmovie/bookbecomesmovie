require 'elasticsearch/model'

class Author
	include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
	include Mongoid::Document
	include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  

  # index name for keeping consistency among existing environments
  index_name "authors-#{Rails.env}"
	
	field :name, type: String
	field :alternate_names, type: Array
	field :birth_date, type: String  
	field :death_date, type: String  
	field :fuller_name, type: String  
	field :links, type: Array
	field :location, type: String  
	field :publishers, type: Array
	field :website, type: String  
	field :wikipedia, type: String  
	field :bio, type: Array 
	field :imageauthor, type: String  

	def as_indexed_json
    as_json(except: [:id, :_id])
  end

end