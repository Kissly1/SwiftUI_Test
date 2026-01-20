import SwiftUI

struct ContentView: View {
  
    
    @State private var name: String = ""
    @State private var codingLevel: Int = 1
    @State private var isReadyForWork: Bool = false

    
    var body: some View {
        
    ZStack {
           
            Color(UIColor.systemGroupedBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
    VStack(spacing: 10) {
            Image(systemName: isReadyForWork ? "briefcase.fill" : "studentdesk")
                    .font(.system(size: 60))
                    .foregroundColor(isReadyForWork ? .green : .orange)
                    .padding()
                    
            Text(name.isEmpty ? "Твое Имя" : name)
                        .font(.title)
                        .bold()
                    
            Text("Уровень Swift: \(codingLevel)")
                        .font(.headline)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 5)
                .padding(.horizontal)
                
                VStack(spacing: 20) {
                    
                    
            TextField("Введите имя", text: $name)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                    
            HStack {
                        Text("Скилл:")
                        
                        Spacer()
                        
                        Button(action: {
                            if codingLevel > 0 { codingLevel -= 1 }
                        }) {
                            Image(systemName: "minus.square.fill")
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        
                        Button(action: {
                            codingLevel += 1
                        }) {
                            Image(systemName: "plus.square.fill")
                                .font(.largeTitle)
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.horizontal)
                    
                    Toggle(isOn: $isReadyForWork) {
                        Text("Готов к работе?")
                            .bold()
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
                }
                
                Spacer()
            }
            .padding(.top, 50)
        }
    }
}

#Preview {
    ContentView()
}
