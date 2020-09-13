# classe para mapear os elementos e funcoes do popup de permissoes
# que sao solitadas ao usuario (localizacao, acesso a arquivos e etc)
class PermissionsPage
  def elements
    {
      # id's
      deny: 'com.android.packageinstaller:id/permission_deny_button'
    }
  end

  def deny
    wait_true { $stdin.find_element(:id, elements[:deny]) }.click
  end
end
