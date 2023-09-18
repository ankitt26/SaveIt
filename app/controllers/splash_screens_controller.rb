class SplashScreensController < ApplicationController
  before_action :set_splash_screen, only: %i[ show edit update destroy ]

  # GET /splash_screens or /splash_screens.json
  def index
  end

end
