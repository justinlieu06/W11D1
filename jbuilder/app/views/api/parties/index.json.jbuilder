json.array! @parties do |party|
  json.extract! party, :name, :location
  # debugger
  json.guests do 
    # party.guests.each do |guest|
    #   json.set! guest.id, guest.name
    # end
    json.array! party.guests do |guest|
      json.set! guest.id, guest.name
    end
  end
end


# gifts = @guest.gifts #array
# json.gifts do 
#   gifts.each do |guest_gift|
#     json.set! guest_gift.id, guest_gift
#   end
# end