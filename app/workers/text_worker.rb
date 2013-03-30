class TextWorker
  include Sidekiq::Worker

  def perform(number, carrier, text)
    sms_fu = SMSFu::Client.configure(:delivery => :pony, :pony_config => { :via => :sendmail })
    sms_fu.deliver(number, carrier, text)
  end
end
