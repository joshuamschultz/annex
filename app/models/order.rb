class Order < ApplicationRecord
  belongs_to :part
  belongs_to :supplier
end
