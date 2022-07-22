//
//  Constants.swift
//  Millicast SDK Sample App in Swift
//
//  Created by CoSMo Software on 11/8/21.
//

import Foundation

struct Constants {
    
    // Set the following as default values if desired.
    
    //Set Millicast account ID here.
    static let ACCOUNT_ID = ""
    // Set publishing stream name here. Optional if not publishing.
    static let PUB_STREAM_NAME = ""
    // Set subscribing stream name here. Optional if not subscribing.
    static let SUB_STREAM_NAME = ""
    // Set publishing token here. Optional if not publishing.
    static let PUBLISH_TOKEN = ""
    // Set the publish API url here.
    static let PUBLISH_URL = "https://director.millicast.com/api/director/publish"
    // Set the subscribe API url here.
    static let SUBSCRIBE_URL = "https://director.millicast.com/api/director/subscribe"
    // Set subscribing token here. Optional if not subscribing or not using subscribe token.
    static let SUBSCRIBE_TOKEN = ""
    
}
