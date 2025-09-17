import SwiftUI

public struct TitleViewComponent: View {
    let title: String
    
    public init(title: String) {
        self.title = title
    }
    
    public var body: some View {
        Text(title)
            .font(.largeTitle)
            .bold()
    }
}

public struct ProgressViewComponent: View {
    let text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        ProgressView(text)
            .font(.callout)
            .bold()
    }
}

public struct MessageErrorComponent: View {
    let error: String
    
    public init(error: String) {
        self.error = error
    }
    
    public var body: some View {
        Text(error)
            .font(.callout)
            .bold()
    }
}

