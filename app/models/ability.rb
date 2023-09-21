# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Category, user_id: user.id
    can :manage, Spend, category: { user_id: user.id }
    can :read, Spend
  end
end
