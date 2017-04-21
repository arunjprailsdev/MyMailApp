class BankMailer < ActionMailer::Base
def bank_created(user)
	mail(to: user.email,
		from: "arunjprails.dev@gmail.com",
		subject: "Post Created",
		body: " This is arun Post Created"
		)
	end
end