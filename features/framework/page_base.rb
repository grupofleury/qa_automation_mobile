module PageBase

  # faz a importacao dos metodos do appium para a classe.
  Appium.promote_singleton_appium_methods PageBase

  @type = nil
  @value = nil

  def find(args)
    @type, @value = args if args.is_a? Array
    raise 'O valor deve ser um Array [:type, "value"]' unless args.is_a? Array
    find_element(@type, @value)
  end

  def all(args)
    @type, @value = args if args.is_a? Array
    raise 'O valor deve ser um Array [:type, "value"]' unless args.is_a? Array
    find_elements(@type, @value)
  end

end
