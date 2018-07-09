class Guide < ApplicationRecord
  validates_presence_of :title, :content
end
