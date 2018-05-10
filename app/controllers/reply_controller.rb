class ReplyController < ApplicationController
  def create
    @reply = Reply.new
    @reply.post_id = params[:id]
    @reply.content = params[:content]
    @reply.save

    redirect_to :back
  end

  def destroy
    @reply = Reply.find(params[:id])
    @reply.destroy

    redirect_to :back
  end
end
