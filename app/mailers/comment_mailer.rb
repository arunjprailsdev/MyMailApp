class CommentMailer < ActionMailer::Base
def comment_created(current_user,bank_user,content)
	@current_user = current_user
	@bank_user = bank_user
	@content = content

	mail(to: bank_user.email,
		from: "arunjprails.dev@gmail.com",
		subject: "Comment Created",
		)
	end
end