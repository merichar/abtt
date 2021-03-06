class AttachmentsController < ApplicationController
  layout "application2"

  # GET /attachments/
  def index
    @attachments = Attachment.find(:all)

    respond_to do |format|
      format.html
    end
  end

  # DELETE /attachments/
  def destroy
    @attachment = Attachment.find(params[:id])

    @attachment.destroy

    respond_to do |format|
      flash[:notice] = "Attachment has been deleted."
      format.html { redirect_to :back }
    end
  end
end
