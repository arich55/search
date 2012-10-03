class SearchController < ApplicationController

	def index
		@categories = Array['Local','Social','Feeds','News','Web']
		@name = "Andre"

	end


	# POST /query
	def query	
		@data = Array[
			'Local' => Array['Local 1','Local 2','Local 3'],
			'Social' => Array['Social 1','Social 2','Social 3'],
			'Feeds' => Array['Feeds 1','Feeds 2','Feeds 3'],
			'News' => Array['News 1','News 2','News 3'],
			'Web' => Array['Web 1','Web 2','Web 3'],
		]

		@response = Array[
			'status'	=> '200',
			'data' 		=> @data,
		]

		respond_to do |format|
			format.html #query.html.erb
			format.json { render json:@response}
		end
	end

end
