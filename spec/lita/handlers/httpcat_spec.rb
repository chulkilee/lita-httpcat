require 'spec_helper'

describe Lita::Handlers::Httpcat, lita_handler: true do
  it 'shows the image link for httpcat 500' do
    send_message('httpcat 500')
    expect(replies.last).to eq('https://http.cat/500.jpg')
  end
end
