require 'spec_helper'

describe Traitable do
  it "allows adding the same trait to different traitable models" do
    t = Trait.create!(:name => "test")
    s = Spot.create!({
      :buy_value => 1000,
      :paid_views_left => 10,
      :view_value => 10
    })
    u = User.create!
    p = u.profile
    s.trait_ids = [t.id]
    p.trait_ids = [t.id]
    s.traits.should == p.traits
  end
end
