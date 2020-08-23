//
//  TODOClass.swift
//  TestFramework
//
//  Created by Ashish Awasthi on 21/08/20.
//  Copyright © 2020 Ashish Awasthi. All rights reserved.
//

import Foundation

@objc(ResultDict)

public class ResultDict: NSObject {
  @objc public var contentType: String = ""
  @objc public var dict: [String : Any] = [:]
    public override init() {
        super.init()
    }
}

@objc(ResultData)

public class ResultData: NSObject {
  @objc public var contentType: String = ""
  @objc public var data: Data = Data()
    public override init() {
        super.init()
    }
}


import TestStaticLibSwift
@objc(TODOClass)
open class TODOClass: NSObject {
    @objc public override init() {
        super.init()
    }
    @objc public func doSothingWithResultDict()->ResultDict {
        let result = ResultDict()
        result.contentType = "Generic resposne"
        return result
    }
    @objc public func doSothingWithResultData()->ResultData {
        let result = ResultData()
        result.contentType = "Generic data resposne"
        return result
    }
    /// Access Swift Static LibraryC lassesFromS wift Framework With Object Wrapper

    @objc public func takeSwiftStaticLibAction()-> String {
        let swiftObjC = SwiftAndObjectCompatibale()
        let result = swiftObjC.doSothingWithResultDict()
        print("Lib Version:- \(result.contentType)")
        let pureSwft = PureSwiftClass()
        print("Lib Version:- \(pureSwft.swiftLibVersion())")
        return result.contentType
    }
}
