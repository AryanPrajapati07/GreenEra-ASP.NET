<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Farmer_Product.aspx.cs" Inherits="GreenEra.Farmer_Product" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Farmer - Dashboard</title>
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
                            <span>Farmer</span>
                        </div>
                    </div>
                    <div class="navbar-nav w-100">

                        
                        <a href="Farmer_Product.aspx" class="nav-item nav-link active"><i class="fa fa-plus me-2"></i>Add Product</a>
                        
                        <a href="Farmer_Login.aspx" class="nav-item nav-link"><i class="fa fa-user me-2"></i>Logout</a>

                    </div>
            </div>
            </nav>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">

            <%--Add Form--%>
            <br />
            <br />
            <div class="container-fluid pb-5">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <h2 class="mb-4">Add Product Details</h2>
                            <div class="mb-5">
                                <div class="row">

                                    <div class="col-6 form-group">
                                        <asp:TextBox ID="product_name" class="form-control p-4" MaxLength="50" PlaceHolder="Product Name" runat="server" required />
                                        <br />
                                    </div>
                                   
                                <div class="row">
                                    <div class="col-6 form-group">

                                        <asp:TextBox ID="product_netquantity" class="form-control p-4" MaxLength="50" PlaceHolder="Net Quantity" runat="server" required />
                                        <br />
                                    </div>
                                    <div class="col-6 form-group">

                                        <asp:TextBox ID="product_price" class="form-control p-4" MaxLength="50" PlaceHolder="Price" runat="server" required />
                                        <br />
                                    </div>
                                    <div class="col-12 row- form-group">

                                        <asp:TextBox ID="product_about" class="form-control p-4" MaxLength="500" PlaceHolder="About Product" runat="server" required />
                                        <br />
                                    </div>
                                </div>
                                <br />
                              
                                <div class="col-6 form-group">

                                    <asp:FileUpload ID="bike_image" class="form-control p-2" runat="server" required /><br />
                                </div>

                                <br />
                                <asp:Button class="btn btn-block btn-primary py-2" runat="server" Text="Add Detail" OnClick="add_product"/><br />
                            </div>
                        </div>
                    </div>

                </div>

            </div>
            <center>
                <h1 style="background-color: cornflowerblue; padding: 10px 10px; border-radius: 20px;">View Details</h1>
            </center>

              <br>

                 <table class="dataview">

                     <tr>

                       
                        
                         <td><b>Name</b></td>
                         <td><b>NetQuantity</b></td>
                         <td><b>Price</b></td>
                         <td><b>About</b></td>
                         <td><b>Image</b></td>
                         
                         <td><b>Delete</b></td>


                     </tr>

                      <% for (int i = 0; i < pname.Length; i++) { %>


                     <tr>
                         
                         <td><%=pname[i]%></td>
                         <td><%=pquantity[i]%></td>
                         <td><%=pprice[i]%></td>
                         <td><%=pabout[i]%></td>
                         
                         <td><img src="<%=pimage[i]%>" height="100px" width="100px"></td>
                         
                         <td><a href="Farmer_Delete.aspx?id= <%=pid[i]%>">❌</a></td>
                    
                      <%--   <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="delete" CommandArgument='shubham'>javatpoint</asp:LinkButton>--%>

                     </tr>

                 
               
                 <% }%>

                     </table>


            <br>
            <!-- Back to Top -->
            <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        </div>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/chart/chart.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/tempusdominus/js/moment.min.js"></script>
        <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Template Javascript -->
        <script src="Admin_js/main.js"></script>
    </form>
</body>

</html>

