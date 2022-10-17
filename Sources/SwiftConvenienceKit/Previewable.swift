import Foundation

/// プレビューができるようにするprotocol
///
/// 動作確認をするときや、SwiftUIのPreviewProviderを動かすために使うと便利
public protocol Previewable {
    /// プレビューを返すプロパティ
    static var preview: Self { get }
    
    /// プレビューの配列を返すプロパティ
    static var previews: [Self] { get }
}

extension Previewable {
    ///プレビューを配列で取得するためのプロパティ。初期値は５個。
    public static var previews: [Self] {
        Self.createPreviewArray()
    }
    
    ///プレビューを配列で作成するメソッド。初期値は５個。引数に配列の数を指定できる。
    public static func createPreviewArray(_ count: Int = 5) -> [Self] {
        var previews: [Self] = []
        
        for _ in 0...count {
            previews.append(Self.preview)
        }
        
        return previews
    }
}
