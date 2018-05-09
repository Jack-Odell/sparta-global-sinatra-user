class PostsController < Sinatra::Base
  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end


  $posts = [{
      email: "email_1@gmail.com",
      first_name: "John",
      last_name: "Smith",
      age: 34
    },
    {
      email: "email_2@gmail.com",
      first_name: "Jane",
      last_name: "Smalls",
      age: 17
    },
    {
      email: "email_3@gmail.com",
      first_name: "Sam",
      last_name: "Danes",
      age: 45
    }]


  # index
  get "/" do
    @posts = $posts
    erb :"posts/index"
  end
  
  # NEW
  get "/new" do
    "SHOW: This is the form to CREATE"
  end

  # SHOW
  get "/:id" do
    id = params[:id]
    @f_name = $posts[id.to_i][:first_name]
    @l_name = $posts[id.to_i][:last_name]
    @age = $posts[id.to_i][:age]
    @email = $posts[id.to_i][:email]
    erb :"posts/show"
  end

  # EDIT
  get "/:id/edit" do
    "SHOW: This is the EDIT"
  end

  # POST
  post "/" do
    "SHOW: This is to POST"
  end

  # DELETE
  delete "/:id" do
    "SHOW: This is to DELETE"
  end

  # UPDATE
  put "/:id" do
    "SHOW: This is to UPDATE"
  end
end
