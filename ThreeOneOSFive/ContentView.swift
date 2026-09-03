import SwiftUI

struct ContentView: View {
    // Pengaturan 2 Kolom menu kotak (Grid Layout)
    let gridColumns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Bagian Header Merek Kustom Anda
            VStack(alignment: .leading, spacing: 6) {
                Text("FREE FIRE TOOLKIT")
                    .font(.caption2)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                HStack {
                    Text("ZaynixFile")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                    Spacer()
                    // Logo kustom folder sistem untuk merek Anda
                    Image(systemName: "folder.badge.gearshape")
                        .font(.system(size: 32))
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 20)
            
            // Status Akses Aplikasi bawaan 3105
            HStack {
                Circle()
                    .fill(Color.green)
                    .frame(width: 8, height: 8)
                Text("Access layer ready")
                    .font(.subheadline)
                    .foregroundColor(.white)
            }
            .padding(10)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(white: 0.12))
            .cornerRadius(8)
            
            Text("QUICK LAUNCH")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .padding(.top, 10)
            
            // Perubahan Menu List Menjadi Tampilan Kotak 2x2
            LazyVGrid(columns: gridColumns, spacing: 16) {
                MenuBoxItem(icon: "bolt.fill", title: "Inject", subtitle: "Choose game target")
                MenuBoxItem(icon: "folder.fill", title: "Zaynix Library", subtitle: "Import packages")
                MenuBoxItem(icon: "sparkles", title: "Cleaner", subtitle: "Review workspace")
                MenuBoxItem(icon: "gearshape.fill", title: "Settings", subtitle: "Device & access")
            }
            
            Spacer()
        }
        .padding()
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

// Komponen Pembentuk Kotak Menu
struct MenuBoxItem: View {
    var icon: String
    var title: String
    var subtitle: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                Text(subtitle)
                    .font(.caption2)
                    .foregroundColor(.gray)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color(white: 0.18))
        .cornerRadius(12)
    }
}
