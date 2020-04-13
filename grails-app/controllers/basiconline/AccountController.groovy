package basiconline

class AccountController {

    //Every controller should have an index action even if it is blank
    def index() {

    }

    //Every view should have an action in its controller, even if it's blank
    def logIn(){

    }

    //Every view should have an action in its controller, even if it's blank
    def newUser(){

    }

    //Logic that handles associating the user with an existing account
    def submit(){
        def email = params.emailAddress
        def passwrd = params.password
        def usr = Users.findByEmailAddressAndPassword(email, passwrd)
        if(usr!=null) {
            render(view: "workflows", model: [usr:usr])
        }else{
            render(view:"incorrectInput")
        }
    }

    //Logic that handles creating a new account and saving it in the directory
    def create(){
        def email = params.emailAddress
        if(Users.findByEmailAddress(email)!=null){
            render(view:"alreadyExists")
        }else{
            def user = new Users(params)
            user.save()
            render(view:"newUserLogIn")
        }
    }

    //Lists out all users in the database
    def list(){
        def list = Users.list()
        [userList:list]
    }

    //Every view should have an action in its controller, even if it's blank
    def guestView(){

    }

    //Logic handles logging a user in as a guest using a default guest account auto-populated into the database
    def guestUsr(){
        def usr = Users.findByEmailAddressAndPassword("-", "guest")
        render(view: "workflows", model: [usr: usr])
    }

    /* Not currently in use as the placement exam was backlogged
    //Logic for displaying placement exam results
    def results(){
        def usr = Users.findOrSaveByEmailAddressAndPassword(params.emailAddress, params.password) //finds the current user's account
        usr.setPlacementExam(true)//change the user's placement exam status to true
        //usr. placementLevel =
        usr.save(flush:true) //saves the account update to the database

        //render(usr.placementExam)
       render(view: "results", model: [usr: usr]) //renders the results view and passes it the user
    }*/

    //Logic for displaying workflow selection
    def workflows(){
        def usr = Users.findByEmailAddressAndPassword(params.emailAddress, params.password)
        render(view: "workflows")
    }

}
