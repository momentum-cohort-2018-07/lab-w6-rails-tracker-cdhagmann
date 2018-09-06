class API::NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]

  # GET api/creatures/:creature_id/notes
  def index
    @notes = Note.all.where('creature_id=?', params[:creature_id])
  end

  # GET api/creatures/:creature_id/notes/:note_id
  def show
  end

  # POST api/creatures/:creature_id/notes
  def create
    @note = Note.new(creature_id: params[:creature_id], body: note_params[:body])
    @creature = @note.creature
    if @note.save
      render :show, status: :created, location: api_creature_note_path(@creature, @note)
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT api/creatures/:creature_id/notes/:note_id
  def update
    if @note.update(note_params)
      render :show
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # DELETE api/creatures/:creature_id/notes/:note_id
  def destroy
    @note.destroy
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
      @creature = @note.creature
    end

    # Only allow a trusted parameter "white list" through.
    def note_params
      params.require(:note).permit(:body)
    end
end
