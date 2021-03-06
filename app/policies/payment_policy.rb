class PaymentPolicy < ApplicationPolicy
  def new?
    record.profile.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
