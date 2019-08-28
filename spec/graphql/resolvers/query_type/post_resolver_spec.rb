require 'rails_helper'

RSpec.describe Resolvers::QueryType::PostResolver do
  let!(:post) { create(:post, title: 'PostOneName') }
  let(:attributes) { { id: post.id } }
  subject(:resolver) { described_class.new(object: nil, context: nil) }

  describe '#resolve' do
    example { expect(resolver.resolve(attributes).title).to eq('PostOneName')}
  end
end
