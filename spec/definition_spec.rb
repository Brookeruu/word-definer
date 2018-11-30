require 'rspec'
require 'pry'
require './lib/definition'

describe('Definition') do

  before()do
    Definition.clear_new_defs
  end

describe('.all_new_defs') do
  it('display empty array for new definitions') do
    expect(Definition.all_new_defs).to(eq([]))
  end
end

end
