class Posts::Filter::Params
  extend ActiveModel::Naming
  extend Enumerize

  def initialize(raw_params)
    @page = raw_params[:page]
    @q = raw_params[:q]
    @set = raw_params[:set] || :most_covered
    @time = raw_params[:time] || :daily
  end

  attr_reader :page, :q

  enumerize :set, in: [:new, :most_read, :highly_voted, :most_covered], default: :most_covered

  enumerize :time, in: [:hourly, :daily, :weekly, :monthly, :annually, :all_time], default: :daily, predicates: true
end
