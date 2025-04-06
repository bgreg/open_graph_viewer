class PreviewsController < ApplicationController
  before_action :set_preview, only: %i[destroy]

  # GET /previews or /previews.json
  def index
    @preview = Preview.new
    @previews = Preview.all
  end

  def create
    og = OpenGraph.new(preview_params[:url].squish)
    attributes = {
      title: og.title,
      og_type: og.type,
      url: og.url,
      image: og.images.first,
      user_id: current_user.id
    }
    preview = Preview.new(attributes)

    respond_to do |format|
      if preview.save
        format.turbo_stream do
          render(
            turbo_stream: turbo_stream.append(:previews,
              partial: "previews/preview",
              locals: {preview: preview})
          )
        end
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /previews/1 or /previews/1.json
  def destroy
    @preview.destroy!

    respond_to do |format|
      format.html { redirect_to previews_path, status: :see_other, notice: "Preview was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_preview
    @preview = Preview.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def preview_params
    params.expect(preview: [:url])
  end
end
