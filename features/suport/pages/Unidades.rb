class Unidades
    def clica_unidade(unidade)
        find_element(:uiautomator, "new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().text(\"#{unidade}\").instance(0));").click
    end
end

