<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Our Story</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
  <link rel="Shortcut Icon" href="${pageContext.request.contextPath}/img/miniapple.png" type="image/x-icon">
</head>
<body>
<jsp:include page="./layouts/header.jsp"/>
<div id="header-img">
  <img src="${pageContext.request.contextPath}/img/header4.jpg" width="100%" height="400" alt="header">
  <div id="story-ad">
    <p>How we started our journey</p>
  </div>

  <section class="story1">
    <img src="${pageContext.request.contextPath}/img/story1.png" width="50%" height="450px">
    <div class="story11">
      <p>Create a better food system</p>
    </div>
    <div class="story111">
      <p>Every day, we deliver directly to our customers thousands of food baskets filled with our rooftop-grown veggies.
        We meet this daily challenge with a vision: to create a better food system, encompassing our rooftop farms and local agriculture in all shapes and sizes.
        This means farming on rooftops in cities, partnering up with local farmers and food makers, and creating a community of pick-up points to deliver all this
        food as directly as possible.</p>
    </div>

  </section>
  <section class="story2">
    <div class="story22">

      <p>From Farm Fresh to your plate</p>
    </div>

    <div class="story222">
      <p>We developed a community of hundreds of neighbourhood pick-up points to get food from our rooftops and partners to Farm Freshers as directly as possible. The idea is efficiency, convenience, and community-building.</p>
    </div>

    <div class="story2222">
      <img src="${pageContext.request.contextPath}/img/story2.png" width="50%" height="450px"></right>

    </div>
  </section>
  <section class="video-section">
    <div class="video-container ">
      <br>
      <h2><center>Farm Fresh is on Youtube!</center></h2>
      <br>
      <iframe id="iframe1" width="500" height="315" src="https://www.youtube.com/embed/Qw5vtdvuFLs?start=23" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      <iframe id="iframe2" width="500" height="315" src="https://www.youtube.com/embed/_gnIwb2rJJE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      <br>
    </div>
    <section>

<jsp:include page="./layouts/footer.jsp"/>
</body>

</html>
