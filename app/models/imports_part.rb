class ImportsPart < ApplicationRecord
    belongs_to :import
    belongs_to :part
  end