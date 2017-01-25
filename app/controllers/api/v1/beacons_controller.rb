class Api::V1::BeaconsController < ApplicationController

  respond_to :json

  def index
    major = JSON.parse params[:major]
    minor = JSON.parse params[:minor]
    @beacons = Beacon.includes(coupons: :content).by_major_minor(major,minor).enabled
  end

end
