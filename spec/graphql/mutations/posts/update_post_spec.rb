require 'rails_helper'

RSpec.describe Mutations::Posts::UpdatePost do
  let!(:post) { create(:post) }
  subject(:mutation) { described_class.new(object: nil, context: nil) }
  let(:attributes) { attributes_for(:post, id: post.id, title: 'New Title') }

  describe '#resolve' do
    subject { mutation.resolve(attributes) }
    it 'updates a Post' do
      expect(subject[:post].title).to eq 'New Title'
    end
  end
end
