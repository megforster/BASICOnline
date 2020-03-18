<%--
  Created by IntelliJ IDEA.
  User: alexandra
  Date: 11/12/19
  Time: 12:04 PM
--%>
<html lang = "en">
<head>
    <meta charset="UTF-8">
    <!-- Bootstrap CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>BASIC Online Temp Instructions</title> <%--Title for Main Instruction view--%>
<asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/> <%--Changes browser tab icon--%>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'modal.css')}" type="text/css">
</head>

<body><%--Text displayed--%>
<p style="margin: 10px;"><h4>Workflow # ?: Title</h4></p>
<!-- Button trigger modal -->
<button type="button"  class="btn btn-primary" data-toggle="modal" data-target="#instructionModal">
    Task Instructions
</button>

<!-- Modal -->
<div class="modal fade" id="instructionModal" tabindex="-1" role="dialog" aria-labelledby="instructionModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="instructionModalLabel">Instructions</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Here are the task instructions</p>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Button trigger modal -->
<button type="button"  class="btn btn-primary" data-toggle="modal" data-target="#solutionModal">
    Task Solution
</button>

<!-- Modal -->
<div class="modal fade" id="solutionModal" tabindex="-1" role="dialog" aria-labelledby="solutionModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="solutionModalLabel">Solution</h5>
            </div>
            <div class="modal-body">
                <p>Here are the step by step solutions</p>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<div>
    <iframe id="containsOnlineStore" title="BASIC Online Store" width = "1280" height = "550" src = "../../OnlineStore/Views/index.html" >
    </iframe>
</div>

</body>
</html>



