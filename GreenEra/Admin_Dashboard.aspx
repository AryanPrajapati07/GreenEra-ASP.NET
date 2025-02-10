<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Dashboard.aspx.cs" Inherits="GreenEra.Admin_Dashboard" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <title>Admin - Dashboard</title>

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="Admin_lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="Admin_lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="Admin_css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="Admin_css/style.css" rel="stylesheet">
    <style>
        table {
            width: 100%;
            border: 2px solid black;
            border-radius: 5px;
        }


        .dataview th {
            padding: 15px 20px;
            border-radius: 100px;
            border: 1px solid black;
            padding-bottom: 4px;
            padding-top: 4px;
            background-color: darkgray;
        }

        .dataview td {
            padding: 10px 7px;
            border: 1px solid black;
            padding-bottom: 4px;
            padding-top: 4px;
            text-align: center;
        }
    </style>
</head>

<body>
    <form runat="server">
        <div class="container-xxl position-relative bg-white d-flex p-0">
            <!-- Spinner Start -->
            <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </div>
            <!-- Spinner End -->


            <!-- Sidebar Start -->
            <div class="sidebar pe-4 pb-3">
                <nav class="navbar bg-light navbar-light">
                    <a href="#" class="navbar-brand mx-4 mb-3">
                        <h3 class="text-primary"><i class="fa  me-2">Agrionic</i></h3>
                    </a>
                    <div class="d-flex align-items-center ms-4 mb-4">
                        <div class="position-relative">
                            <i class="fa fa-user me-2"></i>
                            <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                        </div>
                        <div class="ms-3">
                            <h6 class="mb-0">
                                
                            </h6>
                            <span>Admin</span>
                        </div>
                    </div>
                    <div class="navbar-nav w-100">

                        <a href="Admin_Dashboard.aspx" class="nav-item nav-link active"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                        <a href="AddProduct.aspx" class="nav-item nav-link"><i class="fa fa-plus me-2"></i>Add Product</a>
                        <a href="Admin_userInfo.aspx" class="nav-item nav-link"><i class="fa fa-table me-2"></i>User</a>
                        <a href="Admin_adminInfo.aspx" class="nav-item nav-link"><i class="fa fa-table me-2"></i>Admin</a>
                        <a href="Admin_contactInfo.aspx" class="nav-item nav-link"><i class="fa fa-table me-2"></i>Contact</a>
                        <a href="AdminLogin.aspx" class="nav-item nav-link"><i class="fa fa-user me-2"></i>Logout</a>

                    </div>
            </div>
            </nav>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Sale & Revenue Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-line fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Today Sale</p>
                                <h6 class="mb-0">2000</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-bar fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Total Sale</p>
                                <h6 class="mb-0">60,000</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-area fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Today Revenue</p>
                                <h6 class="mb-0">2000</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-pie fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Total Revenue</p>
                                <h6 class="mb-0">60,000</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sale & Revenue End -->


           


            <%--Table Start --%> 
            <br /><br />
                <center><h1 style="background-color:cornflowerblue; padding:10px 10px; border-radius:20px;">View Purchase History</h1></center>

<br>

               <table class="dataview">

                   <tr>
                      
                       <td><b>FirstName</b></td>
                       <td><b>LastName</b></td>
                       <td><b>Email</b></td>
                       <td><b>Phone</b></td>
                       <td><b>Area</b></td>
                       <td><b>City</b></td>
                       <td><b>State</b></td>
                       <td><b>Zipcode</b></td>
                       <td><b>Payment</b></td>
                       <td><b>Productname</b></td>
                       <td><b>Price</b></td>


                   </tr>

                    <% for (int i = 0; i < p_fname.Length; i++) { %>


                   <tr>
                       
                       
                   
                       <td><%=p_fname[i]%></td>
                       <td><%=p_lname[i]%></td>
                       <td><%=p_email[i]%></td>
                       <td><%=p_phone[i]%></td>
                       <td><%=p_area[i]%></td>
                       <td><%=p_city[i]%></td>
                       <td><%=p_state[i]%></td>
                       <td><%=p_zipcode[i]%></td>
                       <td><%=p_payment[i]%></td>
                       <td><%=p_productname[i]%></td>
                       <td><%=p_price[i]%></td>

                       </tr>
                     <% }%>
                   </table>
            <%--Table End --%>
        </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="Admin_lib/chart/chart.min.js"></script>
        <script src="Admin_lib/easing/easing.min.js"></script>
        <script src="Admin_lib/waypoints/waypoints.min.js"></script>
        <script src="Admin_lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="Admin_lib/tempusdominus/js/moment.min.js"></script>
        <script src="Admin_lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="Admin_lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Template Javascript -->
        <script src="Admin_js/main.js"></script>
    </form>
</body>

</html>
