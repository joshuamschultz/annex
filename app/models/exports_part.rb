class ExportsPart < ApplicationRecord
    belongs_to :export
    belongs_to :part
    belongs_to :imports_part
  end