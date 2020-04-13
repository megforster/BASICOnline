package basiconline

//Database table format for workflow object (activities)
class Workflow {
    String title
    String directions
    String solution
    int number
    //Currently completion criteria are hard coded into workflowCompletion.js
    String correct
    static constraints = {

    }
}
