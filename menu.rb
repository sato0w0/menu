class Menu
  attr_accessor :name
  attr_accessor :price

  # 商品の情報
  def initialize(name:,price:)
    self.name = name
    self.price = price
  end

  # 商品の情報表示用
  def info
    return "#{self.name} #{self.price}円"
  end
  
  # 合計金額の算出用
  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      return total_price - 100
    end
    return total_price
  end
end