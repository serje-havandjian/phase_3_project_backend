class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    File.read(File.join("public", "index.html"))
  end

  get "/continent/:continent_name" do 
    continent = Destination.filter_by_continent(params[:continent_name])
    puts "hello world"
    continent.to_json(include: [:tourist, :country])
  end

  get "/destinations" do
    destinations = Destination.destination_order
    destinations.to_json

  end

  get "/tourists" do 
    tourists = Tourist.all
    tourists.to_json
  end

  get "/countries" do
    countries = Country.all
    countries.to_json
  end

  post "/tourists" do
    new_tourist = Tourist.create(
      name: params[:name]
    )
    new_tourist.to_json
  end

  get "/continent" do
    continent = Destination.all
    continent.to_json
  end

  delete "/destination/:id" do
    delete_destination = Destination.find(params[:id])
    delete_destination.destroy
    delete_destination.to_json
  end


  post "/destinations" do
    new_destination = Destination.create(
      destination: params[:destination],
      geography: params[:geography],
      rating: params[:rating],
      country_id: params[:country_id],
      tourist_id: params[:tourist_id]
    )
    new_destination.to_json
  end

  patch "/tourists/:id" do
    update_tourist = Tourist.find(params[:id])
    update_tourist.update(
      name: params[:name]
    )
    update_tourist.to_json
  end

end
