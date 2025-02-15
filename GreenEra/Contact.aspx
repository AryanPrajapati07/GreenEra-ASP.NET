﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GreenEra.Contact" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <title>Agrionic</title>

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
                <a href="HomePage.aspx" class="nav-item nav-link ">Home</a>
                <a href="About.aspx" class="nav-item nav-link">About</a>
                 <a href="Products.aspx" class="nav-item nav-link">Products</a>
             
                <a href="Contact.aspx" class="nav-item nav-link active">Contact</a>
                <a href="UserLogin.aspx" class="nav-item nav-link">Logout</a>

            </div>
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5">
            <h1 class="display-3 text-white mb-4 animated slideInDown">Contact Us</h1>
            
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <p class="fs-5 fw-bold text-primary">Contact Us</p>
                    <h1 class="display-5 mb-5">If You Have Any Query, Please Contact Us</h1>
                    <p class="mb-4">For inquiries and support, please don't hesitate to reach out to our GreenEra team—we're here to assist you on your eco-friendly journey.</p>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <%--<input type="text" class="form-control" id="name" placeholder="Your Name">--%>
                                    <asp:TextBox ID="name" class="form-control" MaxLength="25" PlaceHolder="Your Name" runat="server" required="required"/>
                                    <label for="name">Your Name</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <%--<input type="email" class="form-control" id="email" placeholder="Your Email">--%>
                                    <asp:TextBox ID="email" class="form-control" MaxLength="25" PlaceHolder="Email" runat="server" required="required"/>
                                    <label for="email">Your Email</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <%--<input type="text" class="form-control" id="subject" placeholder="Subject">--%>
                                    <asp:TextBox ID="Subject" class="form-control" MaxLength="25" PlaceHolder="Subject" runat="server" required="required"/>
                                    <label for="subject">Subject</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <%--<textarea class="form-control" placeholder="Leave a message here" id="message" ></textarea>--%>
                                    <asp:TextBox class="form-control" ID="Message" MaxLength="50" PlaceHolder="Message" runat="server" style="height: 100px" TextMode="Multiline" required="required"/>
                                   <label for="message">Message</label>
                                </div>
                            </div>
                            <div class="col-12">
                               <asp:Button class="btn btn-primary py-3" ID="button_contact" Text="Send Message" runat="server" OnClick="button_Message" />
                                <%--<button class="btn btn-primary py-3 px-4" type="submit">Send Message</button>--%>
                            </div>
                        </div>
                  
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="min-height: 450px;">
                    <div class="position-relative rounded overflow-hidden h-100">
                        <iframe class="position-relative w-100 h-100" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30773372.380620293!2d61.02452930232927!3d19.69067874516688!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30635ff06b92b791%3A0xd78c4fa1854213a6!2sIndia!5e0!3m2!1sen!2sin!4v1703139612987!5m2!1sen!2sin" 
     frameborder="0" style="min-height: 450px; border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer mt-5 py-5 wow fadeIn" data-wow-delay="0.1s">
     <div class="container py-5">
         <div class="row g-5">
             <div class="col-lg-3 col-md-6">
                 <h4 class="text-white mb-4">Our Office</h4>
                 <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>123 Street, Ahmedabad, Gujarat</p>
                 <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                 <p class="mb-2"><i class="fa fa-envelope me-3"></i>agrionic11@gmail.com</p>
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
                     <button class="btn btn py-2 position-absolute top-0 end-0 mt-2 me-2" style="color:azure"><a href="UserRegistration.aspx">Sign Up</a></button>
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