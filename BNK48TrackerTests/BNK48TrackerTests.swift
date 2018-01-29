import XCTest
@testable import BNK48Tracker

class BNK48TrackerTests: XCTestCase {
   
    func testInitailizationSuccess() {
       let zeroRatingMeal = Meal.init(name: "Pizza", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
    }
    
}
