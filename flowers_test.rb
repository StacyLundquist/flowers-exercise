require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'Flowers'

Minitest::Reporters.use!

describe 'Flowers' do
  describe '#sell a flower' do
    #it does something to update quantity
    # it does something to update total sold
  end

  describe '#restock a flower' do
    #it stays under the maximum
    #it restocks as much as possible
    # it has certain bundles
    # it updates quantity available
  end
end