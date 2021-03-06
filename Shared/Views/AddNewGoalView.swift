import SwiftUI

struct AddNewGoalView: View {
  @Environment(\.presentationMode) var presentationMode

  @StateObject private var viewModel = AddNewGoalViewModel()

  var body: some View {
    VStack(spacing: 0) {
      HStack {
        Button(action: {
          presentationMode.wrappedValue.dismiss()
        }, label: {
          Text("Cancel")
            .padding()
        })
        Spacer()
        Button(action: {
          if !viewModel.title.isEmpty {
            viewModel.save()
            presentationMode.wrappedValue.dismiss()
          }
        }, label: {
          Text("Create")
            .bold()
            .padding()
        })
      }
      .overlay(Divider(), alignment: .bottom)
      Form {
        Section {
          TextField("Title", text: $viewModel.title)
        }
        Section(header: Text("Icon")) {
          Picker("Icon", selection: $viewModel.icon) {
            ForEach(viewModel.icons, id: \.self) {
              Text($0)
            }
          }
          .pickerStyle(WheelPickerStyle())
        }
      }
    }
  }
}
