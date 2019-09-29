class AutenticacaoScreen < BaseScreen
 include UnitsModule
 
 # esse tipo de identificação é mais limpo e organizado, para nao ficar usando find_element e populando variaveis.
identificator(:list_name){[:uiautomator, 'new UiSelector().textContains("trocar")']}

end