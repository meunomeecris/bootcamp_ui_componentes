import SwiftUI

public struct LoadableViewComponent<Data, Content: View>: View {
    let data: Data?
    let errorMessage: String?
    let loadingText: String
    let content: (Data) -> Content
    
    public init(
        data: Data?,
        errorMessage: String?,
        loadingText: String,
        @ViewBuilder content: @escaping (Data) -> Content
    ) {
        self.data = data
        self.errorMessage = errorMessage
        self.loadingText = loadingText
        self.content = content
    }
    
    public var body: some View {
        if let data = data {
            content(data)
        } else if let error = errorMessage {
            Text(error)
                .font(.callout)
                .bold()
        } else {
            ProgressView(loadingText)
                .font(.callout)
                .bold()
        }
    }
}
