class Stock < ActiveRecord::Base
  attr_accessible :symbol, :pretty_symbol, :symbol_lookup_url, :company, :exchange, :exchange_timezone, :exchange_utc_offset, :exchange_closing, :divisor, :currency, :last, :high, :low, :volume, :avg_volume, :market_cap,:open, :y_close, :change,:perc_change,:delay, :trade_timestamp, :trade_date_utc,:trade_time_utc, :current_date_utc, :current_time_utc, :symbol_url, :chart_url, :disclaimer_url, :ecn_url, :isld_last, :isld_trade_date_utc, :isld_trade_time_ut, :brut_last, :brut_trade_date_utc, :brut_trade_time_utc, :daylight_savings

  has_many :user_stocks
  
  before_save :refresh
  
  def refresh
    if updated_at.nil? or updated_at >=  1.hour.ago
      data = StockQuote::Stock.quote(symbol)
      data.instance_values.map do |k,v| 
        self[k] = v
      end
    end
  end
  
end
