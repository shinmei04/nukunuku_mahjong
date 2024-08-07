# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :sender
  belongs_to :destination
  belongs_to :package

  accepts_nested_attributes_for :destination
  accepts_nested_attributes_for :sender
  accepts_nested_attributes_for :package
end
