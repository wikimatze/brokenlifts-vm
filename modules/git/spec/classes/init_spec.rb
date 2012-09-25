require 'spec_helper'

describe 'git::init' do
  it { should create_class('git::install')}
end
