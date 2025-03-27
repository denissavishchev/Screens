import SwiftUI

struct ColorPickerView: View {
    
    var body: some View {
        VStack{
            ColorPickerSliderView()
            Spacer()
                .frame(height: 50)
            CircularColorPicker()
            Spacer()
                .frame(height: 50)
            
            VStack(spacing: 40){
                
            }
        }
    }
}

#Preview {
    ColorPickerView()
}



