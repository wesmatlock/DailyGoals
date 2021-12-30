import Foundation

final class AddNewGoalViewModel: ObservableObject {
  @Published var title = ""
  @Published var icon: String?

  let icons: [String] = GoalIcon.all

  func save() {
    fatalError("TBD")
  }
}
