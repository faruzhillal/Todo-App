//
//  EmptyListView.swift
//  Todo App
//
//  Created by Faruz Hillal Albany on 19/02/21.
//

import SwiftUI

struct EmptyListView: View {
    
    //MARK : Properties
    let image: [String] = [
        "illustration-no1",
        "illustration-no2",
        "illustration-no3"
    ]
    
    let tips: [String] = [
        "Gunakan waktu mu dengan baik",
        "Lambat dan mantap memenangkan perlombaan",
        "Tetap ada untuk mu",
        "Setiap malam jadwal untuk besok"
    ]
    
    var body: some View {
        ZStack{
            VStack{
                Image("\(image.randomElement() ?? self.image[0])")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 256, idealWidth: 280, maxWidth: 360, minHeight: 256, idealHeight: 280, maxHeight: 360, alignment: .center)
                    .layoutPriority(1)
                
                Text("\(tips.randomElement() ?? self.tips[0])")
                    .layoutPriority(0.5)
                    .font(.system(.headline,design:.rounded))
                
            }//:VStack
        }//:ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color("ColorBase"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct EmptyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyListView()
    }
}
