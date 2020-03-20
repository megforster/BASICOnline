package basiconline

class InstructionsController {

    def index() { }

    def placeholder(){
        render(view: "placeholder")
    }

    def store(){
       render(view: "test")
    }

    def storetwo(){
        redirect(controller:"basicOnlineStore",action:"renderFinalView")
    }


}
