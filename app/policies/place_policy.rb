class PlacePolicy < ApplicationPolicy

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.profile.user == user
  end

  def destroy?
    update?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
