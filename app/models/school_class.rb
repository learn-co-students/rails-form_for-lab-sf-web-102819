class SchoolClass < ActiveRecord::Base
  def to_s
    room_num = self.room_number.to_s
    self.title + " " + room_num
  end
end
