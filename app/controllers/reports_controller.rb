class ReportsController < ApplicationController
  def usage
    @parts = Part.all
    @keys = UsageService.new(Part.first).usage.keys
    respond_to do |format|
    	format.html
    	format.json {
    		response = Array.new
		    @parts.each do |part|
			    part_hash = {}
			    usage = UsageService.new(part).usage
			    part_hash['Part Number'] = part.part_number
			    part_hash['This Month'] = usage[@keys[0]]
			    part_hash['Last Month'] = usage[@keys[1]]
			    (2..12).each do |i|
			    	part_hash[@keys[i]] = usage[@keys[i]]
			    end
			    response << part_hash
			end
    		render json: {aaData: response}
    	}
    end

  end

  def inventory
  end

  def annex24
  end
end
