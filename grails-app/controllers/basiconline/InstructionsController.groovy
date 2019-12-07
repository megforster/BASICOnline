package basiconline

class InstructionsController {

    def index() { }

    def goToMainInstructions(){
        render(view: "mainInstruction") <%--renders calls the main instruction view--%>
    }
}
