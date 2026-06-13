import SpacexCore

@main
struct SpacexCLI {
    static func main() {
        print(MissionStatusReport.current().render())
    }
}
