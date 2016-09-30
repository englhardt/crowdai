class Event < ActiveRecord::Base
  has_paper_trail
  belongs_to :challenge

  default_scope { order('seq') }

  validates :seq,             presence: true
  validates :event,           presence: true
  validates :event_time,      presence: true
end
