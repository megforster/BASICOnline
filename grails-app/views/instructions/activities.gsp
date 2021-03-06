<%--
  Created by IntelliJ IDEA.
  User: alexandra
  Date: 11/12/19
  Time: 12:04 PM
--%>

%{--Page displayed when user enters an activity--}%
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>BASIC Online Activity</title>
    <asset:link rel="icon" href="BASICLogo.jpg" type="image/x-ico"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
            integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
            integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'modal.css')}" type="text/css">
</head>

<body>
<h4 id="wf">Activity #${workflow.number}: ${workflow.title}</h4>

<div class="input-box">
    <input type="button" value="Task Instructions" class="btn btn-primary" data-toggle="modal"
           data-target="#instructionModal">
</div>

<div class="modal fade" id="instructionModal" tabindex="-1" role="dialog" aria-labelledby="instructionModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="instructionModalLabel">Instructions</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>${workflow.directions}</p>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script>$(document).ready(function () {
    $('#instructionModal').modal('show');
});</script>

<div class="input-box2">
    <input type="button" value="Task Solutions" class="btn btn-primary" data-toggle="modal"
           data-target="#solutionModal">
</div>

<div class="modal fade" id="solutionModal" tabindex="-1" role="dialog" aria-labelledby="solutionModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="solutionModalLabel">Solution</h5>
            </div>

            <div class="modal-body">
                <p>${workflow.solution}</p>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="activityComplete" tabindex="-1" role="dialog" aria-labelledby="activityCompleteLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="activityCompleteLabel">You Completed the Activity!</h5>
            </div>

            <div class="modal-body">
                <p id="wf#"></p>
                <a href="${g.createLink(controller: 'account', action: 'workflows', params: [])}">
                        <input type="button"
                        <g:actionSubmit value="Select Next Activity"/>
                    </input>
                </a>
            </div>
        </div>
    </div>
</div>

%{--<div id="placeHolderBack" style="visibility: hidden">
    <a href="${g.createLink(controller: 'account', action: 'workflows', params: [])}">
        <div class="input-box3">
            <input type="button"
                <g:actionSubmit value="Select Next Activity"/>
            </input>
        </div>
    </a>
</div>--}%
<br>

<iframe src="store" class="myIframe" width="100%" style = "padding-top: 50px; border:none" >

</iframe>
<script type="text/javascript" language="javascript">
    $('.myIframe').css('height', $(window).height()+'px');
</script>

<asset:javascript src="cart.js"/>
<asset:javascript src="workflowCompletion.js"/>
</body>
</html>
</body>
</html>



