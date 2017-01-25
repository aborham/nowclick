json.status_code 200
json.status_message 'success'
json.beacons @beacons do |beacon|
  json.id beacon.id
  json.name beacon.name
  json.major beacon.major
  json.minor beacon.minor
  json.uuid beacon.uuid
  json.coupons beacon.coupons do |coupon|
    json.trigger coupon.trigger
    json.type coupon.content.content_type
    json.message coupon.content.message if coupon.content.content_type == "plain_text"
    json.url coupon.content.url if coupon.content.content_type == "url"
    json.image coupon.content.image.url(:medium) if coupon.content.content_type == "image"
  end

end