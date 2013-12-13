class TraitJoin < ActiveRecord::Base
  attr_accessible :trait_id, :traitable_id, :traitable_type
  validates_uniqueness_of :trait_id, :scope => [:traitable_id, :traitable_type]
  belongs_to :traitable, :polymorphic => true
  belongs_to :trait
end
