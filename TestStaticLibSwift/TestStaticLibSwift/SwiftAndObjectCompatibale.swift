//
//  TODOClass.swift
//  TestFramework
//
//  Created by Ashish Awasthi on 21/08/20.
//  Copyright © 2020 Ashish Awasthi. All rights reserved.
//

import Foundation

@objc(SResultDict)

public class SResultDict: NSObject {
  @objc public var contentType: String = ""
  @objc public var dict: [String : Any] = [:]
    public override init() {
        super.init()
    }
}

@objc(SResultData)

public class  SResultData: NSObject {
  @objc public var contentType: String = ""
  @objc public var data: Data = Data()
    public override init() {
        super.init()
    }
}

@objc(SwiftAndObjectCompatibale)

open class SwiftAndObjectCompatibale: NSObject {
    @objc public override init() {
        super.init()
    }
    @objc public func doSothingWithResultDict()->SResultDict {
        let result = SResultDict()
        result.contentType = "This class we can access with swift and objective c both. Generic dict content"
        return result
    }
    @objc public func doSothingWithResultData()->SResultData {
        let result = SResultData()
        result.contentType = "This class we can access with swift and objective c both."
        return result
    }
}
