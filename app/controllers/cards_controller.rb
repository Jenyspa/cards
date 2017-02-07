class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def edit
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def update
    @card =
  end

  def create
    @card = Card.new
    @card.portuguese = params[:card][:portuguese]
    @card.english = params[:card][:english]
    @card.save

    redirect_to card_url(@card.id)
  end

end
