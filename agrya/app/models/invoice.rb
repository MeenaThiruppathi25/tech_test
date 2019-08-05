class Invoice < ApplicationRecord
  def self.collection(reference)
    Invoice.where(reference: reference)
  end
end
