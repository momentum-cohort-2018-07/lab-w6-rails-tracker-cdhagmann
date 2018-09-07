class API::CreaturesController < ApplicationController
  before_action :set_creature, only: [:show, :update, :destroy]

  # GET api/creatures
  def index
    @creatures = Creature.all
  end

  # GET api/creatures/1
  def show

  end

  # POST api/creatures
  def create
    @creature = Creature.new(creature_params)

    if @creature.save
      render :show, status: :created, location: api_creature_path(@creature)
    else
      render json: @creature.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT api/creatures/1
  def update
    if @creature.update(creature_params)
      render :show
    else
      render json: @creature.errors, status: :unprocessable_entity
    end
  end

  # DELETE api/creatures/1
  def destroy
    @creature.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creature
      @creature = Creature.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def creature_params
      params.require(:creature).permit(:name, :monster_type, :size, :rating)
    end
end
