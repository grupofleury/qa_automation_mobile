Dado('que clico no card Unidades') do
  @home.enter_card_unit
  @permissions.deny
end

Quando('eu selecionar a unidade {string}') do |unit|
  @units.select(unit)
end

Quando('devo visualizar o endereço {string}') do |address|
  expect(@details_unit.address).to eql address
end
