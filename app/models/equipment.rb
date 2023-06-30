class Equipment < ApplicationRecord
  has_many :comments, dependent: :destroy
end
