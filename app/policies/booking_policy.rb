class BookingPolicy < ApplicationPolicy

  def create?
    user
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
