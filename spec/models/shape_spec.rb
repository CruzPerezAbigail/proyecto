require 'rails_helper'

RSpec.describe Shape, type: :model do
  it {should belong_to :equipment}
end
