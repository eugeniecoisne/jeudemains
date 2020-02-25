class ReviewPolicy < ApplicationPolicy
  def create?
    user
  end

  def update?
    record.profile.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
