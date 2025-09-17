import Foundation
import SwiftUI

public struct CardImageComponent: View {
    let url: URL?
    let placeholderText: String
    
    public init(url: URL?, placeholderText: String) {
        self.url = url
        self.placeholderText = placeholderText
    }
    
    public var body: some View {
        VStack {
            if let url = url {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                    Text(placeholderText)
                        .font(.callout)
                        .bold()
                }
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}
