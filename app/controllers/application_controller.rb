class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Welcome to your mediocre travel site" }.to_json
  end

  get "/destinations" do
    destinations = Destination.destination_order
    destinations.to_json

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

  patch "/destinations/:id" do
    update_destination = Destination.find(params[:id])
    update_destination.update(
      destination: params[:destination],
      geography: params[:geography],
      rating: params[:rating],
      country_id: params[:country_id],
      tourist_id: params[:tourist_id]
    )
    update_destination.to_json
  end

  delete "/destination/:id" do
    delete_destination = Destination.find(params[:id])
    delete_destination.destroy
    delete_destination.to_json
  end


end
