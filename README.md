# SSPagarME

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

SSPagarME is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SSPagarME"
```

### Init

Store initial keys

```swift
// https://dashboard.pagar.me/#/myaccount/apikeys
SSPagarME(apiKey:"api_key", encryptionKey: "credential_key")
```

### Transaction

####Card Hash

```swift
let pagarME = SSPagarME.sharedInstance

// card
pagarME.card.cardNumber = "xxxxxxxxxxxxxxxx"
pagarME.card.cardHolderName = "Name Owner Card"
pagarME.card.cardExpirationMonth = "12"
pagarME.card.cardExpirationYear = "17"
pagarME.card.cardCVV = "111"

// get card hash
SSPagarME.sharedInstance.generateCardHash(success: { (card_hash) in
print("card_hash: \(card_hash)")
}) { (message) in
print("error message: \(message)")
}
```



####Pay

```swift
let pagarME = SSPagarME.sharedInstance

// card
pagarME.card.cardNumber = "xxxxxxxxxxxxxxxx"
pagarME.card.cardHolderName = "Name Owner Card"
pagarME.card.cardExpirationMonth = "12"
pagarME.card.cardExpirationYear = "17"
pagarME.card.cardCVV = "111"

// customer
pagarME.customer.name = "Onwer Card"
pagarME.customer.document_number = "09809889011"
pagarME.customer.email = "owner@card.com"
pagarME.customer.street = "Street"
pagarME.customer.neighborhood = "Neightborhood"
pagarME.customer.zipcode = "00000"
pagarME.customer.street_number = "1"
pagarME.customer.complementary = "Apt 805"
pagarME.customer.ddd = "031"
pagarME.customer.number = "986932196"

// transition
SSPagarME.sharedInstance.transaction(amount: "1000", success: { (data) in
print("data transaction: \(data)")
})
{ (message) in
print("error message: \(message)")
}
```

## Author

Rodrigo Priolo, priolo@smartside.com.br
Project based <a href="https://github.com/tiagobsbraga/TBPagarME">TBPagarME</a>

## License

SSPagarME is available under the MIT license. See the LICENSE file for more info.
