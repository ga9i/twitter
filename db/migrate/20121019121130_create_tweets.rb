class CreateTweets < ActiveRecord::Migration
 # def up
  #  create_table :tweets do |t|
   #   t.string :message

    #  t.timestamps

  #end

  #def down
  #  drop_table :tweets
 # end

  def change
   create_table :tweets do |t|
    t.string :message

   t.timestamps
  end
  end
end
