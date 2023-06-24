//
//  AssetHelper.swift
//  Common
//
//  Created by Arya Moehammad Ilham on 24/06/23.
//

import Foundation
import UIKit

public class AssetHelper {
    public static func getImage(name: String) -> UIImage? {
        return UIImage.init(named: name, in: Bundle(for: self), with: nil)
    }
}
