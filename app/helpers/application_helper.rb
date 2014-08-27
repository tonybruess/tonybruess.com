module ApplicationHelper
    def placehold(x, y)
        "//placehold.it/" + x.to_s + "x" + y.to_s + "&text=Coming%20soon!&break.png"
    end
end
