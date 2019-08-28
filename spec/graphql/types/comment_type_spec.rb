require 'rails_helper'

RSpec.describe Types::CommentType do
  describe '.fields' do
    subject { described_class.fields }
    example { expect(subject['id'].type.to_graphql.to_s).to eq 'ID!' }
    example { expect(subject['content'].type.to_graphql.to_s).to eq 'String!' }
    example { expect(subject['post'].type.to_graphql.to_s).to eq 'Post!' }
  end
end
