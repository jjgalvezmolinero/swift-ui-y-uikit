//
//  ContentView.swift
//  GameStream
//
//  Created by Juan Galvez on 29/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 19/255, green: 30/255, blue: 53/255, opacity: 1.0).ignoresSafeArea()
            VStack{
                Image("appLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 250)
                InicioYRegistroView()
            }
        }
    }
}

struct InicioYRegistroView: View {
    @State var tipoInicioSesion = true
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button("INICIA SESIÓN"){
                    print("Inciia sesión")
                    tipoInicioSesion = true
                }
                Spacer()
                Spacer()
                Button("REGÍSTRARTE"){
                    tipoInicioSesion = false
                    print("Registrate")
                }
                Spacer()
            }
            if tipoInicioSesion {
                InicioSesionView()
            } else {
                RegistroView()
            }
        }
    }
}
struct InicioSesionView: View {
    var body: some View{
        Text("InicioSesionView")
    }
}

struct RegistroView: View {
    var body: some View {
        Text("RegistroView")
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
