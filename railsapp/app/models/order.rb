class Order < ApplicationRecord
  belongs_to :sender
  belongs_to :destination
  belongs_to :package
end
