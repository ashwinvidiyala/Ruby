class TimesController < ApplicationController
  def main
    @time = Time.now.utc
  end
end
