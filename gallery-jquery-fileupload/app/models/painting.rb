class Painting < ActiveRecord::Base
  attr_accessible :image_url, :name
  before_create :default_name

  def default_name
    self.name ||= File.basename(image_url, '.*').titleize if image_url
  end
end
