<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="GreenEra.Products" %>

<!DOCTYPE html>
<html lang="en">

<head>
        <style>
       /*Card css*/


body {
  background: #e2e2e2;
  width: 100%;
  height: 100vh;
}
.card-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    

}

.card {
    width: 300px;
    background-color: #ffffff;
    border: 1px solid #e0e0e0;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.card img {
    width: 100%;
    height: auto;
    border-bottom: 1px solid #e0e0e0;
}

.card-content {
    padding: 20px;
}

.product-name {
    margin-top: 0;
    margin-bottom: 10px;
    font-size: 20px;
}

.product-description {
    color: #666666;
    margin-bottom: 15px;
}

.product-price {
    font-size: 18px;
    font-weight: bold;
    color: #007bff;
    margin-bottom: 15px;
}

.purchase-button {
    background-color: #007bff;
    color: #ffffff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

.purchase-button:hover {
    background-color: #0056b3;
}

.new-row {
    flex-basis: 100%; /* Force new row to start */
    height: 0; /* Ensure no height is taken up */
    margin-bottom: 20px; /* Add spacing between rows */
}
    </style>
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
    <!-- Spinner Start -->
   
    <!-- Spinner End -->




    <!-- Navbar Start -->
   <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="HomePage.aspx" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h1 class="m-0">Agrionic</h1>
        </a>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="HomePage.aspx" class="nav-item nav-link ">Home</a>
                <a href="About.aspx" class="nav-item nav-link">About</a>
                 <a href="Products.aspx" class="nav-item nav-link active">Products</a>
               
                <a href="Contact.aspx" class="nav-item nav-link">Contact</a>
                <a href="UserLogin.aspx" class="nav-item nav-link">Logout</a>

            </div>
        </div>
    </nav>
    <!-- Navbar End -->
 <!-- Page Header Start -->
 <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
     <div class="container text-center py-5">
         <h1 class="display-3 text-white mb-4 animated slideInDown"> Products </h1>
       
     </div>
 </div>
 <!-- Page Header End -->
        <%--Card Start--%>

      <%--  <% for (int i = 0; i < pname.Length; i++) { %>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<div id="container">	
	
	<div class="product-details">
		
	<h1><%=pname[i]%></h1>
		<br /><br /><p class="information"><%=pabout[i]%></p>
          <br />
<div class="btn btn-block btn-primary py-2">
  
    <a href='Checkout.aspx?id=<%=pid[i]%>' style="color:black; margin-bottom:10px;">Buy Now</a>
    <br />
</div>
			
</div>
	 
<div class="product-image">
	
	<img src="<%=pimage[i]%>">
	
<div class="info">
	<h2 style="color:white">Addition Information</h2>
	<ul>
		<li><strong>Item Form : </strong><%=pform[i]%></li>
		<li><strong>Skin Type : </strong><%=pskintype[i]%></li>
		<li><strong>Scent: </strong><%=pscent[i]%></li>
		<li><strong>Material Type: </strong><%=pmaterial[i]%></li>
        <li><strong>Age Range : </strong><%=prange[i]%> </li>
		<li><strong>Net Quantity : </strong><%=pquantity[i]%></li>
		<li><strong>Price: </strong><%=pprice[i]%></li>
	</ul>
</div>
</div>
</div>
        <br/><br/><br/>

          <% }%>--%>

    
  
            

    
  <%-- <br><br>
<div class='card1'>
  <div class='card_left1'>
    <img src="<%=pimage[i]%>">
  </div>
  <div class='card_right1'>
    <h1><%=pname[i]%></h1>
    <div class='card_right__details1'>
	<br>

    <ul><li>Price : <%=pprice[i] %></li></ul>

     
      <div class='card_right__review1'>
        <p>
		• Quantity: <%=pquantity[i]%> <br><br>
          • Description: <%= pabout[i]%></p>
       <br>   </div>
      <div class='card_right__button1'>
        <a href='Checkout.aspx?id=<%=pid[i] %>' >Buy Now</a>
      </div>
    </div>
  </div>
</div>
<br>--%>

    <% for (int i = 0; i < pname.Length; i++)
        { %>
    <div class="card">
        <img src="<%=pimage[i]%>" alt="Product Image">
        <div class="card-content">
            <h2 class="product-name"><%=pname[i]%></h2>
            <p class="product-description">This is a description of the product.</p>
            <p class="product-price">$ <%=pprice[i] %></p>
            <button class="purchase-button">Purchase Now</button>
        </div>
    </div>
   
    

    <% }%>
   
 
 



    <%--Card End--%>

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
</body>

</html>