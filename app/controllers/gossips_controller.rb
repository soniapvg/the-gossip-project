class GossipsController < ApplicationController
  before_action :set_gossip, only: [:show, :edit, :update, :destroy]

  def index
    @gossips = Gossip.all
  end

  def show
    # @comment = Comment.new
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(
      gossip_params(
        :title,
        :content,
        user_attributes: [:first_name]
      )
    )

    if @gossip.save
      redirect_to gossips_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @gossip.update(
      gossip_params(
        :title,
        :content,
        user_attributes: [:first_name]
      )
    )

    if @gossip.save
      redirect_to gossips_path
    else
      render 'edit'
    end
  end

  def destroy
    @gossip.destroy
    redirect_to gossips_path
  end

  private

  def gossip_params(*args)
    params.require(:gossip).permit(*args)
  end

  def set_gossip
    @gossip = Gossip.find(params[:id])
  end
end