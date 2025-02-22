# == Schema Information
#
# Table name: people
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  phone :string           not null
#  email        :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  company_id   :integer
#

class Person < ApplicationRecord
  paginates_per 10
  has_and_belongs_to_many :company, optional: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
