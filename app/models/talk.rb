class Talk < ApplicationRecord
  has_many :talks, dependent: :destroy
end
