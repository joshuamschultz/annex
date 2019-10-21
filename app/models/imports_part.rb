class ImportsPart < ApplicationRecord
    belongs_to :import
    belongs_to :part

    def assigned_number
      import.assigned_number
    end
  end