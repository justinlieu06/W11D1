json.partial! 'guest', guest: @guest

gifts = @guest.gifts #array
json.gifts do 
  gifts.each do |guest_gift|
    json.set! guest_gift.id, guest_gift
  end
end
# json.array! gifts do |gift|
#   json.extract! gift, :title, :description
# end