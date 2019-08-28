require 'rails_helper'

RSpec.describe Mutations::Posts::CreatePost do
  subject(:mutation) { described_class.new(object: nil, context: nil) }
  let(:attributes) { attributes_for(:post, title: Faker::App.name) }

  describe '#resolve' do
    subject { mutation.resolve(attributes) }
    it 'creates a Post' do
      expect(subject[:post].title).to eq attributes[:title]
    end
  end
end
