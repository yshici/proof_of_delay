class TemporarySchedule
  include ActiveModel::Model

  attr_accessor :destination_name, :destination_lat_lng, :destination_address, :start_point_name, :start_point_lat_lng, :start_point_address

  validates :destination_name, presence: true
  validates :start_point_name, presence: true
  # validates :destination_lat_lng, presence: true
  # validates :destination_address, presence: true

  def adjust_latlng(lat_lng)
    lat, lng = lat_lng.delete("()").split(/,/)
    return lat.to_f, lng.to_f
  end
end
