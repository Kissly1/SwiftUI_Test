import SwiftUI


struct TechItem: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    var isLearned: Bool
}

struct ContentView: View {
    
   
    @State private var technologies = [
        TechItem(name: "Swift Language", icon: "swift", isLearned: true),
        TechItem(name: "SwiftUI", icon: "paintbrush.fill", isLearned: true),
        TechItem(name: "Networking (API)", icon: "globe", isLearned: false),
        TechItem(name: "CoreData / SwiftData", icon: "externaldrive.fill", isLearned: false),
        TechItem(name: "Архитектура (MVVM)", icon: "building.columns.fill", isLearned: false)
    ]
    
    var body: some View {
       
        NavigationStack {
            
           
            List($technologies) { $tech in
                
               
                HStack {
                    Image(systemName: tech.icon)
                        .foregroundColor(.blue)
                        .font(.title2)
                        .frame(width: 30)
                    
                    Text(tech.name)
                        .font(.headline)
                    
                    Spacer()
                    
                    OnTapButton(isChecked: $tech.isLearned)
                }
                .padding(.vertical, 5)
            }
            .navigationTitle("Мой Roadmap")
        }
    }
}

struct OnTapButton: View {
    @Binding var isChecked: Bool
    
    var body: some View {
        Button(action: {
            withAnimation {
                isChecked.toggle()
            }
        }) {
            Image(systemName: isChecked ? "checkmark.circle.fill" : "circle")
                .foregroundColor(isChecked ? .green : .gray)
                .font(.title)
        }
        .buttonStyle(PlainButtonStyle()) 
    }
}

#Preview {
    ContentView()
}
