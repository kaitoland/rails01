class Response < ApplicationRecord
  belongs_to :Topic, optional: true
end
