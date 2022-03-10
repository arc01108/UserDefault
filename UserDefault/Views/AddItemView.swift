//
//  AddItemView.swift
//  UserDefault
//
//  Created by Ara Mac Mini on 2022/03/10.
//

import SwiftUI

struct AddItemView: View {
    @State var input = ""
    @EnvironmentObject var dataViewModel: DataViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            TextField("Write something", text: $input)
                .padding()
                .background(.gray)
                .padding(.vertical)
                .opacity(0.3)
                
            Button(action: pushSaveButton, label: {Text("SAVE")})
                .padding()
                .frame(maxWidth:.infinity)
                .background(.blue)
                .foregroundColor(.white)
            Spacer()
        }
        .padding()
        .navigationTitle("Input something to do")
    }
    
    func pushSaveButton(){
        dataViewModel.addItem(text: input)
        presentationMode.wrappedValue.dismiss()
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddItemView()
        }
        .environmentObject(DataViewModel())
       
    }
}
