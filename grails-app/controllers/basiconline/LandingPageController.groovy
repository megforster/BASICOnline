package basiconline

class LandingPageController {

    //Cookie code for BASIC Online landing page
    def index() {
        println("In index")
        def valueString = request.getCookie("count")
        def value = 0
        if (valueString != null) {
            value = Integer.parseInt(valueString)
        }
        value += 1
        valueString = value.toString()
        response.setCookie("count", valueString)
        println("Count = " + valueString)
        [
                count2: valueString
        ]
    }

    //Renders BASIC Online landing page
    def goToLandingPage() {
        render(view: "index")
    }
}


