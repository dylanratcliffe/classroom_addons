require 'spec_helper'
describe 'classroom_addons' do

  context 'with defaults for all parameters' do
    it { should contain_class('classroom_addons') }
  end
end
