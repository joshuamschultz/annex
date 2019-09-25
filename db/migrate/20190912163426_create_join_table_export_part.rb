class CreateJoinTableExportPart < ActiveRecord::Migration[6.0]
  def change
    create_join_table :exports, :parts do |t|
      # t.index [:export_id, :part_id]
      # t.index [:part_id, :export_id]
    end
  end
end
