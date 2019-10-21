class ReportsController < ApplicationController
  def usage
    @parts = Part.all
    @keys = UsageService.new(Part.first).usage.keys
  end

  def inventory
  end

  def annex24
  end
end
