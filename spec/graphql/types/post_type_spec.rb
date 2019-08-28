require 'rails_helper'

RSpec.describe Types::PostType do
  describe '.fields' do
    subject { described_class.fields }
    example { expect(subject['id'].type.to_graphql.to_s).to eq 'Int!' }
    example { expect(subject['title'].type.to_graphql.to_s).to eq 'String!' }
    example { expect(subject['description'].type.to_graphql.to_s).to eq 'String!' }
    example { expect(subject['comments'].type.to_graphql.to_s).to eq '[Comment!]!' }
  end
end
