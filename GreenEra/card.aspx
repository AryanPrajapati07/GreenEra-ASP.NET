<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="card.aspx.cs" Inherits="GreenEra.card" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
</head>


<body>
    <form id="form1" runat="server">


       <div class="card-container">
    <% for (int i = 0; i < 6; i++)
    { %>
       <div class="card">
    <img src="your_image_url.jpg" alt="Product Image">
    <div class="card-content">
        <h2 class="product-name">Product Name</h2>
        <p class="product-description">This is a description of the product.</p>
        <p class="product-price">$XX.XX</p>
        <button class="purchase-button">Purchase Now</button>
    </div>
</div>


           <% if ((i + 1) % 3 == 0 && i != 0)
           { %>
               <div class="new-row"></div> <!-- Start new row after every 3 cards except for the first row -->
        <% } %>

    <% } %>
</div>



    </form>
</body>
</html>
