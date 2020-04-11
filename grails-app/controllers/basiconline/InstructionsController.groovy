package basiconline

class InstructionsController {

    def index() { }

    def placeholder1(){
        def placeHolderWorkflow = Workflow.findByNumber(01)
        render(view: "placeholder", model: [workflow:placeHolderWorkflow])
    }

    def placeholder2(){
        def placeHolderWorkflow = Workflow.findByNumber(02)
        render(view: "placeholder", model: [workflow:placeHolderWorkflow])
    }

   def placeholder3(){
        def placeHolderWorkflow = Workflow.findByNumber(03)
        render(view: "placeholder", model: [workflow:placeHolderWorkflow])
    }
    def placeholder4(){
        def placeHolderWorkflow = Workflow.findByNumber(04)
        render(view: "placeholder", model: [workflow:placeHolderWorkflow])
    }


    /*
    def placeholder5(){
        def placeHolderWorkflow = Workflow.findByNumber(01)
        render(view: "placeholder", model: [workflow:placeHolderWorkflow])
    }*/

    def store(){
       render(view: "test")
    }

    def storetwo(){
        redirect(controller:"basicOnlineStore",action:"renderFinalView")
    }


}
