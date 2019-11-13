require 'spec_helper'

describe Avatax::Api::Definitions, :vcr do
  let(:client) do
    Avatax::Client.new(
      username: ENV['AVATAX_USERNAME'],
      password: ENV['AVATAX_PASSWORD'],
      env: :sandbox
    )
  end

  describe '#crossborder' do
    subject { client.definitions.crossborder('UK', '620342') }

    its(:success?) { is_expected.to eql true }
  end
end
