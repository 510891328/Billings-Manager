class ReminderMailer < ApplicationMailer
  def remind_bill
    Billing.all.each do |bill|
      if bill.date.day - DateTime.now.day == 1
        @billing = bill
        @user = bill.user
        mail(to: @user.email, subject: "Your billing is expire tomorrow")
      end
    end
  end
end
