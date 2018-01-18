rails new TravelApp
bundle install
rails generate model Tag # Generate a model named Tag
rails generate model Destination
# In app/models/tag.rb add a has_many method, like this:

class Tag < ActiveRecord::Base
  has_many :destinations
end

# In app/models/destination.rb, add a belongs_to method:

belongs_to :tag

Open the migration file in db/migrate/ for the tags table, and add the following columns:

a string column called title
a string column called image

move on to the rest of the request/response cycle and create a controller, a route, and a view.

Generate a controller named Tags

rails generate controller Tags
