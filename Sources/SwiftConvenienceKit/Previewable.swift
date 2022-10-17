import Foundation

/// プレビューができるようにするprotocol
///
/// 動作確認をするときや、SwiftUIのPreviewProviderを動かすために使うと便利
///
public protocol Previewable {
    /// プレビューを返すプロパティ
    static var preview: Self { get }
    
    /// プレビューのための配列を返すプロパティ
    static var previews: [Self] { get }
}
