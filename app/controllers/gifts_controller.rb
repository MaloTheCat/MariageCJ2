# Airrecord.api_key = ENV["AIRTABLE_API_KEY"]
Airrecord.api_key = "keylk6lasIPdUmmEI"

class GiftsController < ApplicationController
  def index
    @gifts = Gift.all(sort: { "id" => "asc" })
  end

  def show
    @gift = Gift.find(params[:id])
  end

  private

  def gift_params

  end

end
