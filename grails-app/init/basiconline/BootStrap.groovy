package basiconline

class BootStrap {

    def init = { servletContext ->
        new Users(firstName: "Guest", lastName: "User", emailAddress: "-", password: "guest").save()
        new Workflow(title: "Let's Get Shopping!", directions: "Add any item to the cart", solution: "There are a number of solutions. One would be to click 'Womens' then 'Active Wear'. On the page that loads click any of the images and then the orange 'Add to cart' button.", number: 01, correct:"Okay").save()
    }
    def destroy = {
    }
}
