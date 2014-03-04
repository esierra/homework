class Dessert
  def initialize(name, calories)
    @name=name
    @calories=calories
  end
  def name
    @name
  end
  def calories
    @calories
  end
  def name=(name)
    @name=name
  end
  def calories=(calories)
    @calories=calories
  end
  def healthy?
    return true if calories <200 

  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor=flavor
    @calories=5
    @name=@flavor+ " jelly bean"
  end
  def flavor
    @flavor
  end
  def flavor=(flavor)
    @flavor=flavor
  end
  def delicious?
    return true unless @flavor=="licorice"
end
end
