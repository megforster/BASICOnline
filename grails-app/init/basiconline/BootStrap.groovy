package basiconline

class BootStrap {

    def init = { servletContext ->
        new Users(firstName: "Guest", lastName: "User", emailAddress: "-", password: "guest").save()
        new Workflow(title: "Let's Get Shopping!", directions: "Add any item to the cart", solution: "There are a number of solutions. One would be to click 'Womens' then 'Active Wear'. On the page that loads click any of the images and then the orange 'Add to cart' button.", number:1, correct:"Okay").save()
        new Workflow(title: "Cleaning Up The Cart", directions: "Navigate to the shopping cart and delete any items in the cart", solution:"Click the shopping cart icon to navigate to the shopping cart page. Once there, click the red 'Remove' button next to each item in the cart to remove it", number:2, correct:"okay").save()
    }
    def destroy = {
    }
}
