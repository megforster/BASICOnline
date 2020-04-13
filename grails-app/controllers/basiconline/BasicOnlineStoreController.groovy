package basiconline

class BasicOnlineStoreController {

    //Every controller should have an index action even if it is blank
    def index() {

    }

    //Renders the store's landing page
    def renderFinalView(){
        render(view: "storeLandingPage")
    }

    //Renders women's swimwear page
    def womensSwimWear() {
        render(view:"WomensSwimWear")
    }

    //Renders kid's jeans page
    def kidsJeans() {
        render(view:"KidsJeans")
    }

    //Renders bath page
    def bath(){
        render(view: "Bath")
    }

    //Renders a bath accessory set product page
    def bathAccessorySet(){
        render(view: "BathAccessorySet")
    }

    //Renders bedding page
    def bedding(){
        render(view: "Bedding")
    }

    //Renders decour page
    def decor(){
        render(view: "Decour")
    }

    //Renders graphic tee item product page
    def graphicTeeOne(){
        render(view: "GraphicTee1")
    }

    //Renders graphic tee item product page
    def graphicTeeTwo(){
        render(view: "GraphicTee2")
    }

    //Renders graphic tee item product page
    def graphicTeeThree(){
        render(view: "GraphicTee3")
    }

    //Renders kid's coats page
    def kidsCoats(){
        render(view: "KidsCoats")
    }

    //Renders kid's dresses page
    def kidsDresses(){
        render(view: "KidsDresses")
    }

    //Renders kid's graphic tees page
    def kidsGraphicTees(){
        render(view: "KidsGraphicTees")
    }

    //Renders kid's shoes page
    def kidsShoes(){
        render(view: "KidsShoes")
    }

    //Renders kids shoes product page
    def kidsSneaker(){
        render(view: "KidsSneaker")
    }

    //Renders kid's tops page
    def kidsTops(){
        render(view: "KidsTops")
    }

    //Renders men's active wear page
    def mensActiveWear(){
        render(view: "MensActiveWear")
    }

    //Render men's bottoms page
    def mensBottoms(){
        render(view: "MensBottoms")
    }

    //Renders men's coats page
    def mensCoats(){
        render(view: "MensCoats")
    }

    //Renders men's read coat product page
    def mensRedCoat(){
        render(view: "MensRedCoat")
    }

    //Renders men's shoes page
    def mensShoes(){
        render(view: "MensShoes")
    }

    //Render men's tops page
    def mensTops(){
        render(view: "MensTops")
    }

    //Renders shopping cart page
    def shoppingCart(){
        render(view: "ShoppingCart")
    }

    //Renders sports bra product page
    def sportsBraOne(){
        render(view: "SportsBra1")
    }

    //Renders sports bra product page
    def sportsBraTwo(){
        render(view: "SportsBra2")
    }

    //Renders sports bra product page
    def sportsBraThree(){
        render(view: "SportsBra3")
    }

    //Renders women's active wear page
    def womensActiveWear(){
        render(view: "WomensActiveWear")
    }

    //Renders women's bottoms page
    def womensBottoms(){
        render(view: "WomensBottoms")
    }

    //Render women's coats page
    def womensCoats(){
        render(view: "WomensCoats")
    }

    //Renders women's leggings product page
    def womensLeggings(){
        render(view: "WomensLeggings")
    }

    //Renders women's  shoes page
    def womensShoes(){
        render(view: "WomensShoes")
    }

    //Renders women's tops page
    def womensTops(){
        render(view: "WomensTops")
    }

    //Renders header navigation menu
    def header(){
        render(view: "everypage")
    }

}