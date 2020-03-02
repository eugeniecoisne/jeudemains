class WorkshopDatePolicy < ApplicationPolicy

  def create?
    true
  end

  def search_places?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
