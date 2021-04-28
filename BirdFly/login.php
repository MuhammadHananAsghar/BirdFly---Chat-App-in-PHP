<?php
include_once "header.php";
?>
  <body>
    <div class="wrapper">
      <section class="form login">
        <header>
          <i class="fab fa-earlybirds"></i>
          BirdFly
        </header>
        <form action="#" method="post" autocomplete="off">
          <div class="error-txt">
            This is an error message.
          </div>
          <div class="field input">
            <label>Email Address</label>
            <input type="email" name="email" placeholder="Enter your email">
          </div>
          <div class="field input">
            <label>Password</label>
            <input type="password" name="password" placeholder="Password">
            <i class="fas fa-eye"></i>
          </div>
          <div class="field button">
            <input type="submit" value="Continue to Chat">
          </div>
        </form>
        <div class="link">
          Not yet signed up? <a href="index.php">Signup now</a>
        </div>
      </section>
    </div>
    <script type="text/javascript" src="js/pass-show-hide.js"></script>
    <script type="text/javascript" src="js/login.js"></script>
  </body>
</html>
