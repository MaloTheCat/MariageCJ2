Airrecord.api_key = "keylk6lasIPdUmmEI"

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
    @new_contribution = Contributor.create(
      "id" => params[:contributor][:id].to_i,
      "gift_id" => params[:contributor][:gift_id].to_i,
      "name" => params[:contributor][:name],
      "contribution" => params[:contributor][:contribution].to_i,
    )
    @new_contribution.save
    redirect_to root_path
  end

  def edit
  end

end
