<html>
<head>
    <title>Leave Feedback</title>
    <link rel="stylesheet" href="feedback.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/e-favicon.svg" />
</head>
<%
    String oid = request.getParameter("id");
    String STUDENTID = (String) session.getAttribute("STUDENTID");
    if (STUDENTID== null)
    { response.sendRedirect("studentLogin.jsp")
    ;}
%>
<body>
<br><br><br><br>
<div class="container">
    <div class="row d-flex justify-content-center align-items-center height">
        <div class="col-md-8">
            <div class="card">
                <div style=" background-color: #eeeeeea8;" class="p-3 border-bottom d-flex align-items-center justify-content-center">
                    <h5>Feedback</h5>
                </div>
                <br>
                <p class="text-center mb-0">Your feedback help us to improve. Please let us know about your order experience.</p>

                <div class="p-3 px-4 py-4 border-bottom"><span class="font-weight-normal">Message</span>
                    <form method="post" action="${pageContext.request.contextPath}/studentFeedbackServlet">
                    <div class="form"> <textarea name="FEEDBACKMESSAGE" class="form-control mb-3 description-area" placeholder="Leave your feedback message here..."></textarea></div>
                    <div class="d-flex flex-column">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class=" px-4">
                                <p class="mb-0"></p>
                            </div>
                            <input type="hidden" name="oid" value="<%=oid%>">
                            <div class="button"> <button type="submit" name="Action" value="Send Feedback" class="btn btn-danger send">SEND</button> </div>
                        </div>
                    </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>