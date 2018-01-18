# In the routes file, create a route that maps the URL /messages
# to the Messages controller's index action.

get '/messages' => 'messages#index'

# In the routes file, create a route that maps requests to messages/new to
# the Message controller's new action.
get '/messages/new' => 'messages#new'

# In the routes file, add a new route that maps requests to /tags
# to the Tags controller's index action
get '/tags' => 'tags#index'

# In the routes file, add this route to map requests to the Message controller's create action:

post 'messages' => 'messages#create'

# in the Tags controller, add the index action to display a list of all tags.
# To do this, fetch all tags from the database and store them in variable @tags.
# /app/controllers/tags_controller.rb
def index
    @tags = Tag.all
end

# In app/views/tags/index.html.erb at line 12, iterate through each tag
# in the @tags array. Then for each tag, display its title and image.

# start a Rails development server.
rails server
