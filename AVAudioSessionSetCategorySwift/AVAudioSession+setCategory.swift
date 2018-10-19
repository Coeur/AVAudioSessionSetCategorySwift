//  Created by Antoine Cœur on 2018/10/19.
//  To be built with Swift 4.1 for Swift 4.2 compatibility
//  http://www.openradar.me/45397675

import AVFoundation

extension AVAudioSession {
    @available (iOS 3.0, tvOS 9.0, watchOS 2.0, *)
    @objc open func setCategorySwift(_ category: String) throws {
        // https://developer.apple.com/documentation/avfoundation/avaudiosession/1616583-setcategory
        try setCategory(category)
    }
}
