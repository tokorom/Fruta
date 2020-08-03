/*
See LICENSE folder for this sample’s licensing information.

Abstract:
StoreKit product extension to the button that unlocks all recipes.
*/

import StoreKit

extension RecipeUnlockButton {
    struct Product {
        var title: String
        var description: String
        var availability: Availability
    }
    
    enum Availability {
        case available(price: NSDecimalNumber, locale: Locale)
        case unavailable
    }
}

extension RecipeUnlockButton.Product {
    init(for product: SKProduct) {
        title = product.localizedTitle
        description = product.localizedDescription
        availability = .available(price: product.price, locale: product.priceLocale)
    }
}
