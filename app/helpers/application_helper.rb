module ApplicationHelper
    def rot_to_tooltip(int)
        case int
        when 0, 45, 315
            "tt-left"
        when 135, 180, 225
            "tt-right"
        when 90
            "tt-top"
        else # 180
            "tt-bottom"
        end
    end
end
