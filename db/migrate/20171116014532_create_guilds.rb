class CreateGuilds < ActiveRecord::Migration[5.1]
  def change
    create_table :guilds do |t|
      t.string :name
      t.references :officer 

      t.timestamps
    end
  end
end
