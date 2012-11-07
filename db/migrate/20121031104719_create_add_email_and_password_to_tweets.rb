class CreateAddEmailAndPasswordToTweets < ActiveRecord::Migration
  def change
     create_table :password_email do |t|
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
