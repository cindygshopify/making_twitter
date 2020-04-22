class Like < ApplicationRecord
  #alias_attribute :user, :liker
  belongs_to :tweet
  belongs_to :user, foreign_key: 'liker_id'
end
