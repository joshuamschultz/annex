class CreateJoinTableImportPart < ActiveRecord::Migration[6.0]
  def change
    create_join_table :imports, :parts do |t|
      # t.index [:import_id, :part_id]
      # t.index [:part_id, :import_id]
    end
  end
end
