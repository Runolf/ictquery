module PortfoliosHelper

    def checked(area)
        @portfolio.strength.nil? ?  false : @portfolio.strength.match(area)
    end
end
