class ApplicationController < ActionController::Base
  include StoreLocations

  include ErrorHandlers

end
