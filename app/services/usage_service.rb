class UsageService

    def initialize(part) 
        @part = part
        @history = ExportsPart.where(part: @part.id)
    end

    def usage
        @usage = @history.group_by_month(:export_date, reverse: true, last: 13, format: "%b %Y", default_value: 0).sum(:quantity)
    end

end