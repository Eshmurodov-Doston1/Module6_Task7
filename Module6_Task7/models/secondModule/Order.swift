
import Foundation

class Order:Decodable {
    var orderno:String?
    var date:String?
    var trackingno:String?
    var custid:String?
    var customer:[Customer]
}
