import XCTest
import CoreMotion
@testable import CoreMotionGesture

final class CoreMotionGestureTests: XCTestCase
{
    func test_detector_creation() throws
    {
        let motionManager = CMMotionManager()
        let motionEventStream = MockMotionEventStream()
        MonitorAxis.allCases.forEach
        {
            _ = DoubleShakeDetector(
                motionManager: motionManager,
                monitorAxis: $0,
                motionEventStream: motionEventStream
            )
        }
    }
}
