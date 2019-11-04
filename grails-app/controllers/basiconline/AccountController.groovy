package basiconline

class AccountController {

    def index() { }

    def logIn(){

    }

    def newUser(){

    }

    def submit(){
        def email = params.emailAddress
        def passwrd = params.password
        def usr = Users.findByEmailAddressAndPassword(email, passwrd)
        if(usr!=null){
            render("Welcome Back $usr.firstName")
        }else{
            render("You either entered an incorrect email or password, or you do not have an account yet!!")
        }
    }

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
    def list(){
        def list = Users.list()
        [userList:list]
    }

    def goToLandingPage(){
        render(view: "/landingPage/index")
    }

}
