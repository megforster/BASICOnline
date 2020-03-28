package basiconline

class InstructionsController {

    def index() { }

    def placeholder(){
        def placeHolderWorkflow = Workflow.findByNumber(42)
        render(view: "placeholder", model: [workflow:placeHolderWorkflow])
    }

    def store(){
       render(view: "test")
    }

    def storetwo(){
        redirect(controller:"basicOnlineStore",action:"renderFinalView")
    }


}
