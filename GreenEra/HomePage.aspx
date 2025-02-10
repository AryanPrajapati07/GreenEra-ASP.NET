<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="GreenEra.HomePage" %>
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
   <%-- <div class="container-fluid bg-dark text-light px-0 py-2">
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
<!-- Carousel Start -->
    <div class="container-fluid p-0 wow fadeIn" data-wow-delay="0.1s">
        <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="img/bg1.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <h1 class="display-1 text-white mb-5 animated slideInDown">Empower Your Life, the Natural Way</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="img/bg2.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-7">
                                    <h1 class="display-1 text-white mb-5 animated slideInDown">Your Journey to Wellness Begins with Nature's Finest</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- Carousel End -->
<!-- Top Feature Start -->
    <div class="container-fluid top-feature py-5 pt-lg-0">
        <div class="container py-5 pt-lg-0">
            <div class="row gx-0">
                <div class="col-lg-4 wow fadeIn" data-wow-delay="0.1s">
                    <div class="bg-white shadow d-flex align-items-center h-100 px-5" style="min-height: 160px;">
                        <div class="d-flex">
                            <div class="flex-shrink-0 btn-lg-square rounded-circle bg-light">
                                <i class="fa fa-times text-primary"></i>
                            </div>
                            <div class="ps-3">
                                <h4>No Hidden Cost</h4>
                                <%--<span>Clita erat ipsum lorem sit sed stet duo justo</span>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 wow fadeIn" data-wow-delay="0.3s">
                    <div class="bg-white shadow d-flex align-items-center h-100 px-5" style="min-height: 160px;">
                        <div class="d-flex">
                            <div class="flex-shrink-0 btn-lg-square rounded-circle bg-light">
                                <i class="fa fa-users text-primary"></i>
                            </div>
                            <div class="ps-3">
                                <h4>Dedicated Team</h4>
                                <%--<span>Clita erat ipsum lorem sit sed stet duo justo</span>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 wow fadeIn" data-wow-delay="0.5s">
                    <div class="bg-white shadow d-flex align-items-center h-100 px-5" style="min-height: 160px;">
                        <div class="d-flex">
                            <div class="flex-shrink-0 btn-lg-square rounded-circle bg-light">
                                <i class="fa fa-phone text-primary"></i>
                            </div>
                            <div class="ps-3">
                                <h4>24/7 Available</h4>
                                <%--<span>Clita erat ipsum lorem sit sed stet duo justo</span>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Top Feature End -->
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
<!-- Features Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <p class="fs-5 fw-bold text-primary">Why Choosing Us!</p>
                    <h1 class="display-5 mb-4">Few Reasons Why People Choosing Us!</h1>
                    <p class="mb-4"><ul><li>  
                                        <b>Quality Assurance</b>: Agrionic prioritizes quality at every step, ensuring that customers receive the freshest, most flavorful organic fruits available.
                                        </li><br />
                                        <li>
                                          <b>Transparency</b>: Agrionic believes in transparency and strives to provide customers with all the information they need about our farming practices, sourcing, and product offerings.
                                        </li><br />
                                        <li>
                                           <b>Commitment to Organic Practices</b>: We are dedicated to organic farming practices that prioritize environmental sustainability, biodiversity, and soil health.
                                        </li>
                                    </ul></p>
                    <%--<a class="btn btn-primary py-3 px-4" href="">Explore More</a>--%>
                </div>
                <div class="col-lg-6">
                    <div class="row g-4 align-items-center">
                        <div class="col-md-6">
                            <div class="row g-4">
                                <div class="col-12 wow fadeIn" data-wow-delay="0.3s">
                                    <div class="text-center rounded py-5 px-4" style="box-shadow: 0 0 45px rgba(0,0,0,.08);">
                                        <div class="btn-square bg-light rounded-circle mx-auto mb-4" style="width: 90px; height: 90px;">
                                            <i class="fa fa-check fa-3x text-primary"></i>
                                        </div>
                                        <h4 class="mb-0">100% Satisfaction</h4>
                                    </div>
                                </div>
                                <div class="col-12 wow fadeIn" data-wow-delay="0.5s">
                                    <div class="text-center rounded py-5 px-4" style="box-shadow: 0 0 45px rgba(0,0,0,.08);">
                                        <div class="btn-square bg-light rounded-circle mx-auto mb-4" style="width: 90px; height: 90px;">
                                            <i class="fa fa-users fa-3x text-primary"></i>
                                        </div>
                                        <h4 class="mb-0">Dedicated Team</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 wow fadeIn" data-wow-delay="0.7s">
                            <div class="text-center rounded py-5 px-4" style="box-shadow: 0 0 45px rgba(0,0,0,.08);">
                                <div class="btn-square bg-light rounded-circle mx-auto mb-4" style="width: 90px; height: 90px;">
                                    <i class="fa fa-tools fa-3x text-primary"></i>
                                </div>
                                <h4 class="mb-0">Modern Technology</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Features End -->

<!-- Service Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <p class="fs-5 fw-bold text-primary">Our Services</p>
                <h1 class="display-5 mb-5">Services That We Offer For You</h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item rounded d-flex h-100">
                        <div class="service-img rounded">
                            <img class="img-fluid" src="img/service-4.jpg" alt="">
                        </div>
                        <div class="service-text rounded p-5">
                            <div class="btn-square rounded-circle mx-auto mb-3">
                                <img class="img-fluid" src="img/icon/5.png" alt="Icon">
</div>
                            <h4 class="mb-3">Product Certification Information</h4>
                            <p class="mb-4">Providing information about product certifications and third-party testing.</p>
                            <%--<a class="btn btn-sm" href=""><i class="fa fa-plus text-primary me-2"></i>Read More</a>--%>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item rounded d-flex h-100">
                        <div class="service-img rounded">
                            <img class="img-fluid" src="img/service-5.jpg" alt="">
                        </div>
                        <div class="service-text rounded p-5">
                            <div class="btn-square rounded-circle mx-auto mb-3">
                                <img class="img-fluid" src="img/icon/6.png" alt="Icon">
                            </div>
                            <h4 class="mb-3">Secure Online Shopping</h4>
                            <p class="mb-4">Ensuring a secure and user-friendly e-commerce experience with multiple payment options and encrypted data protection.</p>
                            <%--<a class="btn btn-sm" href=""><i class="fa fa-plus text-primary me-2"></i>Read More</a>--%>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="service-item rounded d-flex h-100">
                        <div class="service-img rounded">
                            <img class="img-fluid" src="img/service-6.jpg" alt="">
                        </div>
                        <div class="service-text rounded p-5">
                            <div class="btn-square rounded-circle mx-auto mb-3">
                                <img class="img-fluid" src="img/icon/7.png" alt="Icon">
                            </div>
                            <h4 class="mb-3">Health and Wellness Consultations</h4>
                            <p class="mb-4">Providing access to wellness experts or offering virtual consultations to address specific health concerns or product recommendations.</p>
                            <%--<a class="btn btn-sm" href=""><i class="fa fa-plus text-primary me-2"></i>Read More</a>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->
<!-- Quote Start -->
    
    <!-- Quote End -->
<!-- Projects Start -->
    <%--<div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h1 class="display-5 mb-5">Some Of Our Wonderful Products</h1>
            </div>
            <div class="row wow fadeInUp" data-wow-delay="0.3s">

            </div>
            <div class="row g-4 portfolio-container">
                <div class="col-lg-4 col-md-6 portfolio-item first wow fadeInUp" data-wow-delay="0.1s">
                    <div class="portfolio-inner rounded">
                        <img class="img-fluid" src="img/p-1.jpg" alt="">
                        
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 portfolio-item second wow fadeInUp" data-wow-delay="0.3s">
                    <div class="portfolio-inner rounded">
                        <img class="img-fluid" src="img/p-2.jpg" alt="">
                       
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 portfolio-item first wow fadeInUp" data-wow-delay="0.5s">
                    <div class="portfolio-inner rounded">
                        <img class="img-fluid" src="img/p-3.jpg" alt="">
                        
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 portfolio-item second wow fadeInUp" data-wow-delay="0.1s">
                    <div class="portfolio-inner rounded">
                        <img class="img-fluid" src="img/p-4.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 portfolio-item first wow fadeInUp" data-wow-delay="0.3s">
                    <div class="portfolio-inner rounded">
                        <img class="img-fluid" src="img/p-5.jpg" alt="">
                       
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 portfolio-item second wow fadeInUp" data-wow-delay="0.5s">
                    <div class="portfolio-inner rounded">
                        <img class="img-fluid" src="img/p-6.jpg" alt="">
                      
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <!-- Projects End -->


    <!-- Team Start -->
   <%-- <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <p class="fs-5 fw-bold text-primary">Our Team</p>
                <h1 class="display-5 mb-5">Dedicated & Experienced Team Members</h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item rounded">
                        <img class="img-fluid" src="img/neel.jpg" alt="">
                        <div class="team-text">
                            <h4 class="mb-0">Neel Gorana</h4>
                            <p class="text-primary">Graphic Designer</p>
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
                        <img class="img-fluid" src="img/dhaval.jpg" alt="">
                        <div class="team-text">
                            <h4 class="mb-0">Dhaval Gohel</h4>
                            <p class="text-primary">Project Manager</p>
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
                        <img class="img-fluid" src="img/meet.jpg" alt="">
                        <div class="team-text">
                            <h4 class="mb-0">Meet Soni</h4>
                            <p class="text-primary">Database Administrator</p>
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

    <br>
    <br>
    <!-- Testimonial Start -->
   <%--<div class="container-xxl py-5">
     <div class="container">
         <div class="row g-5">
             <div class="col-lg-5 wow fadeInUp" data-wow-delay="0.1s">
                 <p class="fs-5 fw-bold text-primary">Testimonial</p>
                 <h1 class="display-5 mb-5">What Our Clients Say About Us!</h1>
                 <a class="btn btn-primary py-3 px-4" href="">See More</a>
             </div>
             <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.5s">
                 <div class="owl-carousel testimonial-carousel">
                     <div class="testimonial-item">
                         <img class="img-fluid rounded mb-3" src="img/testimonial-1.jpg" alt="">
                         <p class="fs-5">This website has been a game-changer for me. Their commitment to quality and transparency is unmatched. From skincare to supplements, I trust their natural products completely.</p>
                         <h4>Harshita kanadiya</h4>
                         <span>Student</span>
                     </div>
                     <div class="testimonial-item">
                          <img class="img-fluid rounded mb-3" src="img/testimonial-2.jpg" alt="">
                          <p class="fs-5">If Mother Nature had an online store, this would be it. From skincare that feels like a forest breeze to supplements that are pure vitality, this site is a natural wonder.</p>
                          <h4>Parthiv Kalal</h4>
                          <span>Student</span>
                     </div>
                     <div class="testimonial-item">
                          <img class="img-fluid rounded mb-3" src="img/testimonial-3.jpg" alt="">
                          <p class="fs-5">This website isn't just about products; it's a journey into the heart of wellness. It's where I discovered the alchemy of nature and the art of self-care.</p>
                          <h4>Patel Arya</h4>
                          <span>Student</span>
                     </div>
                     <div class="testimonial-item">
                         <img class="img-fluid rounded mb-3" src="img/testimonial-4.jpg" alt="">
                         <p class="fs-5">Their natural dietary supplements have improved my well-being. This website is all about quality, authenticity, and well-being – I'm a proud supporter!</p>
                         <h4>Harsh Sonara</h4>
                         <span>Artist</span>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>--%>
    <!-- Testimonial End -->

    
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
                           <asp:Button class="btn btn-primary py-3" ID="button_contact" Text="Send Message" runat="server"   />
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