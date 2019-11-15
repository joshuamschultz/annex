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
				(0..11).each do |i|
					part_hash[i] = usage[@keys[i]]
				end
			    response << part_hash
			end
			render json: {data: response}
			
    	}
    end

  end

  def inventory
  end

  def annex24
  end
end
