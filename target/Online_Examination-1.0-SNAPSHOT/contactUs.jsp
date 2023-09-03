<%-- 
    Document   : contactUs
    Created on : Mar 26, 2023, 3:56:07 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
   <!-- <title> Responsive Contact Us Form  | CodingLab </title>-->
    <link rel="stylesheet" href="contact.css">
    <!-- Fontawesome CDN Link -->
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="container">
    <div class="content">
      <div class="left-side">
        <div class="address details">
          <i class="fas fa-map-marker-alt"></i>
          <div class="topic">Address</div>
          <div class="text-one">Kanpur,</div>
          <div class="text-two">Ramadevi,208001</div>
        </div>
        <div class="phone details">
          <i class="fas fa-phone-alt"></i>
          <div class="topic">Phone</div>
          <div class="text-one">6388282410</div>
          <div class="text-two">6393747433</div>
        </div>
        <div class="email details">
          <i class="fas fa-envelope"></i>
          <div class="topic">Email</div>
          <div class="text-one">jayshreeprajapati426@gmail.com</div>
          <div class="text-two">jayshreeprajapati1523@gmail.com</div>
        </div>
      </div>
      <div class="right-side">
        <div class="topic-text">Send us a message</div>
        <p>If you have any work from me or any types of quries related to my project, you can send me message from here. It's my pleasure to help you.</p>
      <form action="contact.jsp">
        <div class="input-box">
          <input type="text" name="name" placeholder="Enter your name">
        </div>
        <div class="input-box">
          <input type="email" name="email" placeholder="Enter your email">
        </div>
        <div class="input-box message-box">
            <textarea type="text" name="message"></textarea>
        </div>
          <div class="button">
            <input type="submit" value="Send Now">
        </div>
      </form>
    </div>
    </div>
  </div>
</body>
</html>
