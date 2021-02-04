class HomeScreen < BaseScreen
  def elementos
    {
      btn_unidades: 'br.com.grupofleury.fleury.hml:id/image_points_of_care',
      btn_deny: 'com.android.permissioncontroller:id/permission_deny_button',
      btn_unidade_bra: "//*[@text='Brasília']",
      txt_unidade_bra: 'br.com.grupofleury.fleury.hml:id/point_of_care_full_address'
    }
  end

  def acessar_unidades
    click_id elementos[:btn_unidades]
    click_id elementos[:btn_deny]
    @driver.scroll_to_exact('Brasil II (Exclusivamente testes COVID-19)')
    click_xpath elementos[:btn_unidade_bra]
  end
end
