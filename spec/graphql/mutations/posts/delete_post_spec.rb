require 'rails_helper'

RSpec.describe Mutations::Posts::DeletePost do
  let!(:post) { create(:post) }
  let(:attributes) { attributes_for(:post, id: post.id) }
  subject(:mutation) { described_class.new(object: nil, context: nil) }

  describe '#resolve' do
    subject { mutation.resolve(attributes) }
    it 'deletes a Post' do
      expect{ subject }.to change(Post, :count).by(-1)
    end
  end
end
