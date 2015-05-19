require 'twilio-ruby'

account_sid = 'ACed3ed813257f8acedfce46a695216257'
auth_token = 'cb1dd832eda91ea39319fe6827f1650b'


@client = Twilio::REST::Client.new(account_sid, auth_token)

@client.messages.create(
  from: '+14342605034',
  to: '+1phonenumbergoeshere',
  body: 'Hey there!'
)