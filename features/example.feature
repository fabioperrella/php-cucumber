Feature: AntiSpam Settings

Background:
  Given I am logged
  When I follow "Configurações" within "#taskbar"
  And I click in element "tr#rcmrowantispam td" with text "Filtro anti-spam"
  
Scenario: Activating and deactivating anti-spam filter
  When I choose "Filtro anti-spam ligado" within "iframe_prefs-frame"
  And I select "Média-baixa" from "level" within "iframe_prefs-frame"
  And I press "Salvar" within "iframe_prefs-frame"
  Then I should see "Gravado com sucesso"
  When I click in element "tr#rcmrowfolders td" with text "Pastas especiais"
  And I click in element "tr#rcmrowantispam td" with text "Filtro anti-spam"
  Then the "Sensibilidade do filtro anti-spam" field within "iframe_prefs-frame" should contain "-30"
  #teste para desativacao do antispam
  When I choose "Filtro anti-spam desligado" within "iframe_prefs-frame"
  And I press "Salvar" within "iframe_prefs-frame"
  Then I should see "Gravado com sucesso"
