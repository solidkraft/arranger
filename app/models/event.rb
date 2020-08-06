Event = Struct.new(:where, :when) do
  def schedule
    "#{where} - #{self.when}"
  end
end
