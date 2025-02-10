<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="GreenEra.About" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Agrionic</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">


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
                <a href="About.aspx" class="nav-item nav-link active">About</a>

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
            <h1 class="display-3 text-white mb-4 animated slideInDown">About Us</h1>
           
        </div>
    </div>
    <!-- Page Header End -->


    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5 align-items-end">
                <div class="col-lg-3 col-md-5 wow fadeInUp" data-wow-delay="0.1s">
                    <img class="img-fluid rounded" data-wow-delay="0.1s" src="img/about_img.jpg" style="height:550px;"">
                </div>
                <div class="col-lg-6 col-md-7 wow fadeInUp" data-wow-delay="0.3s">
                    <h2 class="display-1 text-primary mb-0">3</h2>
                    <p class="text-primary mb-4">Year of Experience</p>
                    <h1 class="display-5 mb-4">Our Planet, Our Future : Agrionic Cares</h1>
                    <p class="mb-4">&nbsp;&nbsp;&nbsp;
Agrionic, a premier online platform dedicated to organic fruits, offers a tantalizing array of nature's bounty at your fingertips. With a commitment to purity and sustainability, Agrionic showcases a diverse selection of premium organic fruits sourced from trusted growers worldwide. From succulent strawberries to exotic mangoes, each fruit embodies the essence of freshness and nutritional richness.<br /><br />&nbsp;&nbsp;&nbsp; Navigating through Agrionic's user-friendly interface, customers can explore detailed descriptions, nutritional profiles, and farming practices, empowering them to make informed choices that align with their values and health goals.</p>
                    <%--<a class="btn btn-primary py-3 px-4" href="">Explore More</a>--%>
                </div>
                <div class="col-lg-3 col-md-12 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="row g-5">
                        <div class="col-12 col-sm-6 col-lg-12">
                            <div class="border-start ps-4">
                               <i class="fa fa-bullseye fa-3x text-primary mb-3"></i>
                                <h4 class="mb-3">Our Mission</h4>
                                <span>"At Agrionic, our mission is rooted in a commitment to providing premium organic fruits while fostering sustainability and promoting healthier lifestyles."</span>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-lg-12">
                            <div class="border-start ps-4">
                                <i class="fa fa-eye fa-3x text-primary mb-3"></i>
                                <h4 class="mb-3">Our Vision</h4>
                                <span>We believe in fostering a harmonious relationship between nature and agriculture, prioritizing the well-being of both consumers and the environment.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


    <!-- Facts Start -->
  <div class="container-fluid facts my-5 py-5" data-parallax="scroll" data-image-src="img/bg.jpg">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-sm-6 col-lg-3 text-center wow fadeIn" data-wow-delay="0.1s">
                <h1 class="display-4 text-white" data-toggle="counter-up">100</h1>
                <span class="fs-5 fw-semi-bold text-light">Happy Clients</span>
            </div>
            <div class="col-sm-6 col-lg-3 text-center wow fadeIn" data-wow-delay="0.3s">
                <h1 class="display-4 text-white" data-toggle="counter-up">60</h1>
                <span class="fs-5 fw-semi-bold text-light">Order Complated</span>
            </div>
            <div class="col-sm-6 col-lg-3 text-center wow fadeIn" data-wow-delay="0.5s">
                <h1 class="display-4 text-white" data-toggle="counter-up">20</h1>
                <span class="fs-5 fw-semi-bold text-light">Dedicated Staff</span>
            </div>
            <div class="col-sm-6 col-lg-3 text-center wow fadeIn" data-wow-delay="0.7s">
                <h1 class="display-4 text-white" data-toggle="counter-up">5</h1>
                <span class="fs-5 fw-semi-bold text-light">Awards Achieved</span>
            </div>
        </div>
    </div>
</div>
    <!-- Facts End -->

    <div class="container py-5">
        <h1 class="display-5 mb-4">Our Story</h1>
        <p class="text-primary mb-4">Ummee’s naturals is a brand that creates beauty care goodies for skincare, haircare, and babycare. Formulated exclusively using locally available herbs through traditional methods, Ummees leaves you thinking about the vastness of our culture. A culture that empowers women like Anciya to step forth and take charge. She made use of the tried and- tested traditional secrets that are passed on to her by her ummachi. When Anciya was a teenager, her ummachi would grind the medicinal herbs in their garden and make cosmetic concoctions. But Anciya being an enthusiastic teenager, she swore that these hacks would never replace the luxe beauty brands she yearned for. As she grew older, became a wife and a mother, using her ummachi’s hand-pound mixtures was a rite of passage. Later her enthusiasm was replaced by admiration.</p>
        <p class="text-primary mb-4">It was not with much thought that she posted a tribute to her ummachi and her hair oil on Facebook. But to say a Facebook post changed her life overnight wouldn’t be an exaggeration. By finding her way back to the cultural roots, Today, Anciya is an entrepreneur that helps people to experience the magical power of natural beauty and self-care products. She is supported by her husband who quit his job to pursue her vision of success.</p>

        <hr>

        <h1 class="display-5 mb-4">Who We Are</h1>
        <p class="text-primary mb-4">We are a team deeply passionate about nature and committed to ethical and eco-friendly practices. Our journey started with a vision to create a brand that prioritizes both individual health and the well-being of our planet. From responsibly sourced natural ingredients to sustainable packaging, we work tirelessly to reduce our environmental impact while delivering products that nurture both your well-being and our shared love for nature. Our team is a community united by a common purpose, striving to make a positive impact on the world, one eco-conscious choice at a time.</p>

        <hr>

        <h1 class="display-5 mb-4">What We Offer</h1>
        <p class="text-primary mb-4">Our product line is a meticulously curated selection of natural, organic, and eco-friendly items, spanning skincare, wellness, and household essentials. Each product is chosen with utmost care, sourced for quality, and crafted to meet the highest standards of sustainability. We prioritize safe, chemical-free ingredients and eco-conscious practices at every stage, from sourcing to packaging. Our diverse range empowers customers to integrate mindful, planet-friendly choices into their daily lives, making it a reflection of our unwavering commitment to quality, sustainability, and personal and environmental well-being.</p>
    </div>


    <!-- Team Start -->
    <%--<div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <p class="fs-5 fw-bold text-primary">Our Team</p>
                <h1 class="display-5 mb-5">Dedicated & Experienced Team Members</h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item rounded">
                        <img class="img-fluid" src="img/team-1.jpg" alt="">
                        <div class="team-text">
                            <h4 class="mb-0">Doris Jordan</h4>
                            <p class="text-primary">Landscape Designer</p>
                            <div class="team-social d-flex">
                                <a class="btn btn-square rounded-circle me-2" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square rounded-circle me-2" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square rounded-circle me-2" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="team-item rounded">
                        <img class="img-fluid" src="img/team-2.jpg" alt="">
                        <div class="team-text">
                            <h4 class="mb-0">Johnny Ramirez</h4>
                            <p class="text-primary">Garden Designer</p>
                            <div class="team-social d-flex">
                                <a class="btn btn-square rounded-circle me-2" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square rounded-circle me-2" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square rounded-circle me-2" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item rounded">
                        <img class="img-fluid" src="img/team-3.jpg" alt="">
                        <div class="team-text">
                            <h4 class="mb-0">Diana Wagner</h4>
                            <p class="text-primary">Senior Gardener</p>
                            <div class="team-social d-flex">
                                <a class="btn btn-square rounded-circle me-2" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square rounded-circle me-2" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square rounded-circle me-2" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <!-- Team End -->


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
                     <button class="btn btn py-2 position-absolute top-0 end-0 mt-2 me-2" style="color:azure"><a href="UserRegistration.aspx">Sign Up</a></button>
                 </div>
             </div>
         </div>
     </div>
 </div>
    <!-- Footer End -->


  


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
</body>

</html>