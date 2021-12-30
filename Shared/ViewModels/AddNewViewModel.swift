import Foundation

final class AddNewGoalModel: ObservableObject {
  @Published var title = ""
  @Published var icon = GoalIcon.all[0]

  let icons: [String] = GoalIcon.all

  private let dataManager: GoalDataManagerProtocol

  init(dataManager: GoalDataManagerProtocol = DataManager.shared) {
    self.dataManager = dataManager
  }

  func save() {
    guard !title.isEmpty else { return }
    dataManager.createGoal(title: title, icon: icon)
  }
}
