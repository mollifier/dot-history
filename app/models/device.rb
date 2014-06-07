class Device < ActiveRecord::Base
  belongs_to :user

  # TODO : format with /\A\w+\z/
  validates :token,
    presence: true,
    uniqueness: true,
    length: { minimum: 1, maximum: 255 }

  validates :name,
    length: { maximum: 255 }
end
