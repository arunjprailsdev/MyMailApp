class CreateBanks < ActiveRecord::Migration[5.0]
  def change
    create_table :banks do |t|
      t.date :PostDate
      t.string :BankName
      t.string :PostName
      t.string :Qualification
      t.date :LastDate
      t.text :Description
      t.text :Qualification_desc
      t.integer :TotalPost
      t.text :AgeLimit
      t.text :SelectionProcess
      t.text :ApplicationFees
      t.text :ApplyLink
      t.date :LastDate
      t.date :LastDateOnlineApplication
      t.text :CallLetter
      t.text :CallLetterLink
      t.date :DateofExam
      t.text :HowtoApply
      t.text :OfficialNotification
      t.integer :user_id

      t.timestamps
    end
  end
end
