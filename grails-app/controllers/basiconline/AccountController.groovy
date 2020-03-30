package basiconline

class AccountController {

    def index() { } //default action that comes with every controller
    def logIn(){ //does not have logic, but is used to get to the logIn view

    }

    def newUser(){ //does not have logic, but is used to get to the newUser view

    }

    //Logic that handles associating the user with an existing account
    def submit(){
        def email = params.emailAddress //sets a variable named email to have a value passed to it associated with the key emailAddress
        def passwrd = params.password //sets a variable named passwrd to have a value passed to it associated with the key password
        def usr = Users.findByEmailAddressAndPassword(email, passwrd) //uses a dynamic finder to search the database for an instance with the
                                                                      // specified variables
        if(usr!=null) {
            render(view: "workflows", model: [usr:usr])
        }else{
            render("You either entered an incorrect email or password, or you do not have an account yet!!") //prints text to the screen
        }
    }

    //Logic that handles creating a new account and saving it in the directory
    def create(){
        def email = params.emailAddress //sets a variable named email to have a value passed to it associated with the key emailAddress
        if(Users.findByEmailAddress(email)!=null){ //uses a dynamic finder to search the database for an instance with the specified variables
            render(view:"alreadyExists")
        }else{
            def user = new Users(params) //create an instance in the database and populates it with passed parameters
            user.save() //saves the instance created
            render(view:"newUserLogIn") //renders text ons screen
        }
    }

    //Lists out all users in the database
    def list(){
        def list = Users.list() //creates a variable set to every instance in the Users database
        [userList:list] //list out every instance
    }

    def guestView(){ //does not have logic, but is used to get to the guestView view

    }

    //Logic handles logging a user in as a guest using a default guest account auto-populated into the database
    def guestUsr(){
        def usr = Users.findByEmailAddressAndPassword("-", "guest") //uses a dynamic finder to
                                                                                          // search the database for an instance with
                                                                                          //the specified variables
        render(view: "workflows", model: [usr: usr]) //renders the view users can select workflows
                                                         // from and passes the view the users information
    }

    /*//Displays user's result from the placement exam and updates their account info to reflect they've completed the placement exam and their result
    def results(){
        def usr = Users.findOrSaveByEmailAddressAndPassword(params.emailAddress, params.password) //finds the current user's account
        usr.setPlacementExam(true)//change the user's placement exam status to true
        //usr. placementLevel =
        usr.save(flush:true) //saves the account update to the database

        //render(usr.placementExam)
       render(view: "results", model: [usr: usr]) //renders the results view and passes it the user
    }*/

    def workflows(){
        def usr = Users.findByEmailAddressAndPassword(params.emailAddress, params.password) //finds the current user's account
        render(view: "workflows") //renders the workflows view and passes it the user's first name
    }

}
