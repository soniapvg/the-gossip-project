class GossipsController < ApplicationController
  before_action :set_gossip, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user, except: [:index, :show]

  def index
    @gossips = Gossip.order(created_at: :desc)
  end

  def show
    # @comment = Comment.new
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(
      title: params[:gossip][:title],
      content: params[:gossip][:content],
      user: current_user
    )

    if @gossip.save
      flash[:success] = "Ton potin est bien enregistré"
      redirect_to gossips_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @gossip.update(
      title: params[:gossip][:title],
      content: params[:gossip][:content],
      user: current_user
    )

    if @gossip.save
      flash[:success] = "Ton potin est bien mis à jour"
      redirect_to gossips_path
    else
      render 'edit'
    end
  end

  def destroy
    @gossip.destroy
    flash[:success] = "Ton potin a bien été supprimé"
    redirect_to(gossips_path)
  end

  private

  def gossip_params(*args)
    params.require(:gossip).permit(*args)
  end

  def set_gossip
    @gossip = Gossip.find(params[:id])
  end

  def authenticate_user
    unless current_user
      flash[:warning] = "Connexion obligatoire"
      redirect_to(new_session_path)
    end
  end
end