class AnalyticsServiceSpy: AnalyticsService {
  private(set) var processedEvents: [AnalyticsEvent] = []

  func sendAnalyticsEvent(_ analyticsEvent: AnalyticsEvent) {
    processedEvents.append(analyticsEvent)
  }

  func clearEvents() {
    processedEvents = []
  }
}
