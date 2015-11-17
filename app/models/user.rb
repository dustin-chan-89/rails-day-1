class User < ActiveRecord::Base
  validates :user_name, presence: true, uniqueness: true

  has_many :contacts,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: "Contact",
  dependent: :destroy

  has_many :contact_shares,
  class_name: "ContactShare",
  foreign_key: :user_id,
  primary_key: :id,
  dependent: :destroy

  has_many :shared_contacts,
  through: :contact_shares,
  source: :contact

end
