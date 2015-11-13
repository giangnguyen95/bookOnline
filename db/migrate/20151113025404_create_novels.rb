class CreateNovels < ActiveRecord::Migration
  def change
    create_table :novels do |t|
      t.string :title
      t.string :author
      t.text :description

      t.timestamps
    end
  end
end
