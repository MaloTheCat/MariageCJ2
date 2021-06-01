Airrecord.api_key = ENV["AIRTABLE_API_KEY"]

class ContributorController < ApplicationController
  def index
    @contributors = Contributor.all(sort: { "id" => "desc" })
  end

  def show
    @contributor = Contributor.find(params[:id])
  end

  def new
    @new_contribution = Contributor.new(
      "gift_id" => "",
      "name" => "",
      "contribution" => "",
    )
  end

  def create
    selected_gift = Gift.find(params[:contributor][:gift_id])
    @new_contribution = Contributor.create(
      "id" => params[:contributor][:id].to_i,
      "gift_id" => selected_gift["id"].to_i,
      "name" => params[:contributor][:name],
      "contribution" => params[:contributor][:contribution].to_i,
    )
    @new_contribution.save

    selected_gift["remainingPrice"] -= params[:contributor][:contribution].to_i
    selected_gift.save

    redirect_to root_path


  end

  def edit
  end

end
