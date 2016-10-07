Pod::Spec.new do |s|

  s.name         = "SSPagarME"
  s.version      = "1.0"
  s.summary      = "Facilitador do gateway de pagamento pagar.me"
  s.description  = <<-DESC
                  "Facilita a transação com cartão de crédito com o pagar.me, gerando o card_hash necessário."
                   DESC

  s.homepage     = "https://github.com/smart-side/SSPagarME"
  s.license      = "MIT"
  s.author             = { "Rodrigo Priolo" => "priolo@smartside.com.br" }
  s.platform     = :ios, '8.0'
  s.source       = { :git => "https://github.com/smart-side/SSPagarME.git", :tag => s.version.to_s }
  s.source_files  = "Pod", "Pod/Classes/*.{swift,h,m}"
  s.requires_arc = true
  s.frameworks = 'Foundation'
  s.dependency 'SwiftyRSA', '~> 0.5.0'

end