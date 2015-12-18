class AddRestnameToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :restname, :string
  end
end
