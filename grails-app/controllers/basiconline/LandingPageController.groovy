package basiconline

import javax.servlet.http.Cookie

class LandingPageController {

    def index() {
        //cookie stuff
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
    } //default action that comes with every controller

    def goToLandingPage() {
        render(view: "index") //renders the specified view
    }
}


