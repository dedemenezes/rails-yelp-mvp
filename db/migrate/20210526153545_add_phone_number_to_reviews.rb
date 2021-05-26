class AddPhoneNumberToReviews < ActiveRecord::Migration[6.0]
  def change
    change_column :phone_number, :reviews, :string
  end
end
