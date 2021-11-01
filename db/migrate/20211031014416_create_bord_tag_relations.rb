class CreateBordTagRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :bord_tag_relations do |t|
      t.references :bord
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
