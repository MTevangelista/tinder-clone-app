import SwiftUI

extension View {
    
    @ViewBuilder
    func `if`<Transform: View>(
        _ condition: Bool,
        transform: (Self) -> Transform
    ) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
        //
        //        condition
        //            ? transform(self) as! Self
        //            : self
    }
}
