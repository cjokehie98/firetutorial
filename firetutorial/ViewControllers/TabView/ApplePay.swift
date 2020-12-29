//
//  ApplePay.swift
//  firetutorial
//
//  Created by Charles Okehie on 12/11/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI
import iPaymentButton

struct ApplePay: View {
    var body: some View {
        iPaymentButton {
            //payment code
            iPaymentButton.applePayDemo()
        }.padding()
    }
}

struct ApplePay_Previews: PreviewProvider {
    static var previews: some View {
        ApplePay()
    }
}
