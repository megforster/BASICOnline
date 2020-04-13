package basiconline

class InstructionsController {

    //Every controller should have an index action even if it is blank
    def index() {

    }

    //Renders activity view with workflow #1 information
    def activity1() {
        def activityInfo = Workflow.findByNumber(01)
        render(view: "activities", model: [workflow: activityInfo])
    }

    //Renders activity view with workflow #2 information
    def activity2() {
        def activityInfo = Workflow.findByNumber(02)
        render(view: "activities", model: [workflow: activityInfo])
    }

    //Renders activity view with workflow #3 information
    def activity3() {
        def activityInfo = Workflow.findByNumber(03)
        render(view: "activities", model: [workflow: activityInfo])
    }

    //Renders activity view with workflow #4 information
    def activity4() {
        def activityInfo = Workflow.findByNumber(04)
        render(view: "activities", model: [workflow: activityInfo])
    }
    /*
    //Renders activity view with workflow #5 information
    def activity5(){
        def activityInfo = Workflow.findByNumber(05)
        render(view: "activities", model: [workflow:activityInfo])
    }*/

    //Renders the online store landing page
    def store() {
        redirect(controller: "basicOnlineStore", action: "renderFinalView")
    }
}
