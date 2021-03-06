package basiconline

class UrlMappings {

    //Controls BASIC Online pathing format
    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        //Changes the default home page
        "/"{
            controller = "landingPage"
            action = "index"
        }
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
