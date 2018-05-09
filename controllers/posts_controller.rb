class PostsController < Sinatra::Base
  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  # index
  get "/" do
  end

  # NEW

  get "/new" do
    "SHOW: This is the form"
  end

  # SHOW
  get "/:id" do

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
