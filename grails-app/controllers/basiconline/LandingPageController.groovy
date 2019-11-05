package basiconline

class LandingPageController {

    def index() {} //default action that comes with every controller

    def goToLandingPage() {
        render(view: "index") //renders the specified view
    }
}


