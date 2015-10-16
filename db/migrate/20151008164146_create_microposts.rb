class CreateMicroposts < ActiveRecord::Migration
  def change
  	#drop_table :users
    create_table :microposts do |t|
    #change_table(:users) do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
