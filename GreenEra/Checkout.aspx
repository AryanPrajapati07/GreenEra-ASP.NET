<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="GreenEra.Checkout" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <title>Agrionic</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;500&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <form runat="server">
        <!-- Spinner Start -->

        <!-- Spinner End -->


        <!-- Topbar Start -->
        <%--<div class="container-fluid bg-dark text-light px-0 py-2">
        <div class="row gx-0 d-none d-lg-flex">
            <div class="col-lg-7 px-5 text-start">
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <span class="fa fa-phone-alt me-2"></span>
                    <span>+012 345 6789</span>
                </div>
                <div class="h-100 d-inline-flex align-items-center">
                    <span class="far fa-envelope me-2"></span>
                    <span>info@example.com</span>
                </div>
            </div>
            <div class="col-lg-5 px-5 text-end">
                <div class="h-100 d-inline-flex align-items-center mx-n2">
                    <span>Follow Us:</span>
                    <a class="btn btn-link text-light" href=""><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-link text-light" href=""><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-link text-light" href=""><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-link text-light" href=""><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>--%>
        <!-- Topbar End -->


        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
            <a href="HomePage.aspx" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
                <h1 class="m-0">Agrionic</h1>
            </a>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="HomePage.aspx" class="nav-item nav-link active">Home</a>
                    <a href="About.aspx" class="nav-item nav-link">About</a>
                    <a href="Products.aspx" class="nav-item nav-link">Products</a>
                    <a href="Contact.aspx" class="nav-item nav-link">Contact</a>
                    <a href="UserLogin.aspx" class="nav-item nav-link">Logout</a>
                </div>
            </div>
        </nav>
        <!-- Navbar End -->


        <!-- Page Header Start -->
        <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container text-center py-5">
                <h1 class="display-3 text-white mb-4 animated slideInDown">CheckOut</h1>

            </div>
        </div>
        <!-- Page Header End -->


        <!--  Booking Start -->
        <br />
        <br />
        <div class="container-fluid pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <h2 class="mb-4">Personal Detail</h2>
                        <div class="mb-5">
                            <div class="row">
                                <div class="col-6 form-group">
                                    <asp:TextBox ID="b_first_name" class="form-control p-4" MaxLength="50" PlaceHolder="First Name" runat="server" required />
                                </div>
                                <div class="col-6 form-group">
                                    <asp:TextBox ID="b_last_name" class="form-control p-4" MaxLength="50" PlaceHolder="Last Name" runat="server" required />
                                </div>
                                <br />
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-6 form-group">
                                    <asp:TextBox ID="b_email" class="form-control p-4" MaxLength="50" PlaceHolder="Email" runat="server" required Textmod="Email" />
                                </div>
                                <br />
                                <div class="col-6 form-group">
                                    <asp:TextBox ID="b_phone" class="form-control p-4" MaxLength="10" PlaceHolder="Phone Number" runat="server" required />
                                </div>
                            </div>
                        </div>
                        <h2 class="mb-4">Booking Detail</h2>
                        <div class="mb-5">
                            <div class="row">
                                <div class="col-6 form-group">

                                    <asp:TextBox ID="b_Addline1" class="form-control p-4" MaxLength="50" PlaceHolder="Enter Address line 1" runat="server" required />
                                </div>
                                <div class="col-6 form-group">

                                    <asp:TextBox ID="b_Addline2" class="form-control p-4" MaxLength="50" PlaceHolder="Enter Address line 2" runat="server" required />
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-6 form-group">

                                    <asp:TextBox ID="b_nearplace" class="form-control p-4" MaxLength="50" PlaceHolder="Nearest Place" runat="server" required />
                                </div>
                                <div class="col-6 form-group">

                                    <asp:TextBox ID="b_area" class="form-control p-4" MaxLength="50" PlaceHolder="Area" runat="server" required />
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-6 form-group">

                                    <asp:TextBox ID="b_city" class="form-control p-4" MaxLength="50" PlaceHolder="City" runat="server" required />
                                </div>
                                <div class="col-6 form-group">

                                    <asp:TextBox ID="b_state" class="form-control p-4" MaxLength="50" PlaceHolder="State" runat="server" required />
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-6 form-group">

                                    <asp:TextBox ID="b_zipcode" class="form-control p-4" MaxLength="50" PlaceHolder="Zip Code" runat="server" required />
                                </div>

                            </div>
                            <br />
                            <div class="form-group">
                                <asp:TextBox class="form-control py-3 px-4" ID="b_special_req" MaxLength="50" PlaceHolder="Message" runat="server" TextMode="Multiline" required />
                            </div>
                            <div class="form-group">
                                <br />
                                <h3>Payment Methods</h3>
                                <br />
                                <div class="custom-control custom-radio">
                                    <asp:RadioButton ID="Cash" runat="server" GroupName="pay" Text="Cash On Delivery" Font-Bold="true"></asp:RadioButton>
                                    <br>
                                    <asp:RadioButton ID="Cash1" runat="server" GroupName="pay" Text="Net Banking" Font-Bold="true"></asp:RadioButton>
                                    <br>
                                    <asp:RadioButton ID="Cash2" runat="server" GroupName="pay" Text="Debit Card" Font-Bold="true"></asp:RadioButton>

                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:Button class="btn btn-block btn-primary py-3" ID="bookbtn" runat="server" Text="Purchase Now" Style="font-size: larger;" OnClick="book_now" />
                </div>

            </div>
        </div>



        <!-- Booking End -->



        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-light footer mt-5 py-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h4 class="text-white mb-4">Our Office</h4>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>123 Street, Ahmedabad, Gujarat</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>greenera@gmail.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-square btn-outline-light rounded-circle me-2" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square btn-outline-light rounded-circle me-2" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square btn-outline-light rounded-circle me-2" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-square btn-outline-light rounded-circle me-2" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4 class="text-white mb-4">Services</h4>
                        <a class="btn btn-link" href="">Educational Resources</a>
                        <a class="btn btn-link" href="">Ingredient Transparency</a>
                        <a class="btn btn-link" href="">Blog and Content Hub</a>
                        <a class="btn btn-link" href="">Product Certification Information</a>
                        <a class="btn btn-link" href="">Secure Online Shopping</a>
                        <a class="btn btn-link" href="">Health and Wellness Consultations</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4 class="text-white mb-4">Quick Links</h4>
                        <a class="btn btn-link" href="About.aspx">About Us</a>
                        <a class="btn btn-link" href="Contact.aspx">Contact Us</a>
                        <a class="btn btn-link" href="Service.aspx">Our Services</a>
                        <a class="btn btn-link" href="">Terms & Condition</a>
                        <a class="btn btn-link" href="">Blog</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4 class="text-white mb-4">Newsletter</h4>
                        <p>Embrace eco-friendliness with our sustainable household products, helping you live a greener life and support our planet's protection.</p>
                        <div class="position-relative w-100">
                            <input class="form-control bg-light border-light w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                            <button class="btn btn py-2 position-absolute top-0 end-0 mt-2 me-2" style="color: azure"><a href="UserRegistration.aspx">Sign Up</a></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Copyright Start -->

        <!-- Copyright End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>


        <!-- JavaScript Libraries -->

        <script>
            function payWithRazorpay() {
                var amount = p_price; // Sample amount, replace this with your dynamic amount
                var options = {
                    "key": "rzp_test_zQE8K7rsDm7qpp",
                    "amount": amount * 100, // Amount in paisa (1 INR = 100 paisa)
                    "currency": "INR",
                    "name": "Agrionic",
                    "description": "Test Payment",
                    "handler": function (response) {
                        alert("Payment successful: " + response.razorpay_payment_id);
                        // Handle success callback here, like updating database, showing success message, etc.
                    },
                    "prefill": {
                        "name": "John Doe",
                        "email": "john@example.com"
                    },
                    "theme": {
                        "color": "#3399cc"
                    }
                };
                var rzp = new Razorpay(options);
                rzp.open();
            }
        </script>


        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/parallax/parallax.min.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </form>
</body>

</html>
