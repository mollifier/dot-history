class History < ActiveRecord::Base
  belongs_to :device

  validates :raw_line,
    presence: true,
    length: { minimum: 1, maximum: 10000 }

  validates :command_name,
    length: { maximum: 255 }

  validates :command_argument,
    length: { maximum: 10000 }

  validates :comment,
    length: { maximum: 10000 }

end
