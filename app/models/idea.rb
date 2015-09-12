class Idea < ActiveRecord::Base
  mount_uploader :picture, PictureUploader

  def upcase_name
    self.name = self.name.upcase if self.name
  end

  def save_with_upcase
    upcase_name
    save
  end
end
