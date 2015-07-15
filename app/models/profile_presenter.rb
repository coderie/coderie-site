require 'delegate'

class ProfilePresenter < SimpleDelegator

  def name
    email
  end

  def photo
    'http://placehold.it/150x150'
  end
end
