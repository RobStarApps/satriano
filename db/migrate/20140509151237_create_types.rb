class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|

      t.timestamps
    end
      	   add_column :types, :slug, :string
  end
end
