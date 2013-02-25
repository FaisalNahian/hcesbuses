module TrackersHelper
  def format_phones(phones)
    output = []
    phones.each do |phone|
      output.push number_to_phone(phone.number)
    end
    output.join(', ')
  end
end
