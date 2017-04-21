class CommentsController < ApplicationController
	def create
		@bank = Bank.find(params[:bank_id])
		@comment = @bank.comments.create(comments_params)

		CommentMailer.comment_created(current_user,@bank.user,@comment.content).deliver
		redirect_to bank_path(@bank)
	end
	private
	def comments_params
		params.require(:comment).permit(:content)
	end
end