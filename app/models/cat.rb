class Cat
  include Mongoid::Document
  include ActiveModel::Validations

  # fields

  field :name
  field :url, :type => String

  # validations

  validates_uniqueness_of :name
  validates_format_of :url, :with => /http:\/\/.+/ # lets keep it small

end
