class PlacePolicy < ApplicationPolicy

  def create?
    true
  end

  def update?
    record.profile.user == user
  end

  def destroy?
    record.profile.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
