require 'rails_helper'

RSpec.describe Mutations::Comments::CreateComment do
  subject(:mutation) { described_class.new(object: nil, context: nil) }
  let!(:post) { create(:post) }
  let(:attributes) { attributes_for(:comment, content: Faker::App.name, post_id: post.id) }

  describe '#resolve' do
    subject { mutation.resolve(attributes) }
    it 'creates a Comment' do
      expect(subject[:comment].content).to eq attributes[:content]
    end
  end
end
