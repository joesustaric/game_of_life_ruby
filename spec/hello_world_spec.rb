require 'spec_helper'
require 'hello_world'

describe 'hello world' do
  it 'says hello world' do
    expect(say_hello_world).to eq 'hello world'
  end
end
