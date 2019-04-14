class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = TUQNZ20KDVQXIC1OOMRPNHTD3LNT3LRBKRFRMQWAFVM5RDJF
      req.params['client_secret'] = 0FPKN41EKDXL3JHSTSPOX11NJXDRQTBZ4ON0SDOAAA5YLSKQ
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
