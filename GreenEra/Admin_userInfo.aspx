<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_userInfo.aspx.cs" Inherits="GreenEra.Admin_userInfo" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

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
            <!-- Sidebar Start -->
            <div class="sidebar pe-4 pb-3">
                <nav class="navbar bg-light navbar-light">
                    <a href="#" class="navbar-brand mx-4 mb-3">
                        <h3 class="text-primary"><i class="fa  me-2">GreenEra</i></h3>
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

                        <a href="Admin_Dashboard.aspx" class="nav-item nav-link"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                        <a href="AddProduct.aspx" class="nav-item nav-link"><i class="fa fa-plus me-2"></i>Add Product</a>
                        <a href="Admin_userInfo.aspx" class="nav-item nav-link active"><i class="fa fa-table me-2"></i>User</a>
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

            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <div class="col-12">
                        <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">User Table</h6>
                            <asp:GridView ID="UserView2" Width="100%" runat="server" ForeColor="#333333" BorderStyle="None">
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                                <HeaderStyle Font-Bold="True" ForeColor="black" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Start -->
        <div class="container-fluid pt-4 px-4">
            <div class="bg-light rounded-top p-4">
                <div class="row">
                    <div class="col-12 col-sm-6 text-center text-sm-start">
                        &copy; <a href="#">Royal Bikes</a>, All Right Reserved. 
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->

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
