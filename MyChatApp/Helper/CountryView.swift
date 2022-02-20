//
//  CountryView.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI
        
    struct CountryView: View {
            
            @State private var selectedCountry = ""
            @State private var selectedCountryId = ""
            @State private var showsCountryPicker = false
            
            let countryId = Locale.isoRegionCodes
            let countryArray = Locale.isoRegionCodes.compactMap { Locale.current.localizedString(forRegionCode: $0) }
        
            var body: some View {

                VStack {
                    Text("Country:")
                        .foregroundColor(.blue)
                        .font(.system(size: 17))
                    Spacer()
                                
                    Text("")
                    if selectedCountry != "" {
                        Text("\(selectedCountry)")
                            .font(.system(size: 17))
                            .foregroundColor(Color("WhiteText"))
                    } else {
                            Text("Select Country")
                                .font(.system(size: 17))
                                .foregroundColor(Color("GrayText"))
                    }
                                
                    
                            
                    
            
            Picker("Country", selection: $selectedCountry) {
                    ForEach(countryArray, id: \.self) {
                        Text($0)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    .padding()
                    .labelsHidden()
                    }
                .onTapGesture {
                    self.showsCountryPicker.toggle()
                }
            }
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView()
    }
}



