class ProfilePolicy < ApplicationPolicy
  def show?
    record.user == user
  end

  def update?
    show?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
