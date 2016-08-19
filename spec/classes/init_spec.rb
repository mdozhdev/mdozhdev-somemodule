require 'spec_helper'
describe 'somemodule' do

  context 'with defaults for all parameters' do
    it { should contain_class('somemodule') }
  end
end
