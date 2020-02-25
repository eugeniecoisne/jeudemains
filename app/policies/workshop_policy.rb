class WorkshopPolicy < ApplicationPolicy

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    record.place.profile.user == user
  end

  def edit?
    update?
  end

  def destroy?
    record.place.profile.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
