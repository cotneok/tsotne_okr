class ConvenienceStore
  include Enumerable
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each
    snacks.each do |snack|
      yield snack
    end
  end
end

nikora = ConvenienceStore.new
nikora.add_snack("Barambo")
nikora.add_snack("pikniki")
nikora.add_snack("snickers")

p nikora.map {|snack| snack.upcase}
