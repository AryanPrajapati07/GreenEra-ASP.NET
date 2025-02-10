<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product_update.aspx.cs" Inherits="GreenEra.Product_update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Admin - ProductUpdate</title>
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
    </head>

    <body>
    <form runat="server">
        <center>
            <div class="container-fluid pb-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <h2 class="mb-4">Add Product Details</h2>
                <div class="mb-5">
                    <div class="row">

                        <div class="col-6 form-group">
                            <asp:TextBox ID="TextBox1" class="form-control p-4" MaxLength="50" PlaceHolder="Product Name" runat="server"  autocomplete="off" />
                            <br />
                        </div>
                        
                        
                    </div>
                    <div class="row">
                        <div class="col-6 form-group">

                            <asp:TextBox ID="TextBox7" class="form-control p-4" MaxLength="50" PlaceHolder="Net Quantity" runat="server"  autocomplete="off" />
                            <br />
                        </div>
                        <div class="col-6 form-group">

                            <asp:TextBox ID="TextBox8" class="form-control p-4" MaxLength="50" PlaceHolder="Price" runat="server"  autocomplete="off" />
                            <br />
                        </div>
                        <div class="col-12 row- form-group">

                            <asp:TextBox ID="TextBox9" class="form-control p-4" MaxLength="500" PlaceHolder="About Product" runat="server"  autocomplete="off" />
                            <br />
                        </div>
                    </div>
                   

                    <br />
                   <asp:Button class="btn btn-block btn-primary py-2" runat="server" Text="Retrive Detail" OnClick="retrive_data"/><br /><br />
                   <asp:Button class="btn btn-block btn-primary py-2" runat="server" Text="Update Detail" OnClick="update_data"/><br />
                </div>
            </div>
        </div>

    </div>

</div>
            </center>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
