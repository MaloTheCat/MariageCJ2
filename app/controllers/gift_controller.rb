Airrecord.api_key = ENV["AIRTABLE_API_KEY"]

class GiftController < ApplicationController
  # before_action :find_contributor, only: [:index, :show]
  before_action :check_contributor, only: []

  def index
    @gifts = Gift.all(sort: { "id" => "asc" })
    @contributors = Contributor.all

  end

  def show
    @gift = Gift.find(params[:id])
    # @gift.contributors

    # @contributors = Contributor.all
    # @gift.contributors = @contributors  # => list de tous les contributeurs du gift

    # select @contributor for id_gift == id of @gift
    # @contributor = Contributor.find(params[:id])
    # @contributor["gift_id"] => @gift["id"]
  end

  def new
    @new_gift = Gift.new(
      "gift" => "",
      "name" => "",
      "initialPrice" => "",
      "remainingPrice" => ""
    )
  end

  def create
    @new_gift = Gift.create(
      "id" => params[:gift][:id].to_i,
      "gift" => params[:gift][:gift],
      "name" => params[:gift][:name],
      "initialPrice" => params[:gift][:initialPrice].to_i,
      "remainingPrice" => params[:gift][:remainingPrice].to_i
    )
    @new_gift.save
    redirect_to root_path, notice: "OK"
  end

  def edit
    @gift_update = Gift.find(params[:id])
  end

  def update
    @gift_update = Gift.find(params[:id])
    #@gift_update["id"] = params[:gift][:id].to_i
    #@gift_update["gift"] = params[:gift][:gift]
    #@gift_update["name"] = params[:gift][:name]
    #@gift_update["initialPrice"] = params[:gift][:initialPrice].to_i
    # redirect_to root_path unless
    unless @gift_update["name"].nil?
      @gift_update["name"] = @gift_update["name"] + ', ' + params[:gift][:name]
    else
      @gift_update["name"] = params[:gift][:name]
    end

    if @gift_update["remainingPrice"] > 0
      @gift_update["remainingPrice"] -= params[:gift][:remainingPrice].to_i
    else
      raise ArgumentError, "Vous ne pouvez pas contribuer plus que le total. Faites l'appoint. Merci"
    end

    # unless @gift_update["remainingPrice"] > @gift_update["initialPrice"]
    #   @gift_update["remainingPrice"] -= params[:gift][:remainingPrice].to_i
    # else
    #   raise
    #   # redirect_to root_path
    # end

    @gift_update.save
    redirect_to root_path, notice: "Ok"
  end

  private

  # def check_contributors
  #   if contributor["gift_id"] == gift.fields["id"]

  #   end
  # end

   #def gift_params
   #  params.require(:gifts).permit(
   #    :gift,
   #    :name,
   #    :initialPrice,
   #    :remainingPrice
 #    )
  #end

end
