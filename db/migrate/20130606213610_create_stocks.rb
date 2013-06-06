class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.string :pretty_symbol
      t.string :symbol_lookup_url
      t.string :company
      t.string :exchange
      t.string :exchange_timezone
      t.string :exchange_utc_offset
      t.string :exchange_closing
      t.string :divisor
      t.string :currency
      t.string :last
      t.string :high
      t.string :low
      t.string :volume
      t.string :avg_volume
      t.string :market_cap
      t.string :open
      t.string :y_close
      t.string :change
      t.string :perc_change
      t.string :delay
      t.string :trade_timestamp
      t.string :trade_date_utc
      t.string :trade_time_utc
      t.string :current_date_utc
      t.string :current_time_utc
      t.string :symbol_url
      t.string :chart_url
      t.string :disclaimer_url
      t.string :ecn_url
      t.string :isld_last
      t.string :isld_trade_date_utc
      t.string :isld_trade_time_utc
      t.string :brut_last
      t.string :brut_trade_date_utc
      t.string :brut_trade_time_utc
      t.string :daylight_savings
      t.timestamps
    end
  end
end
