<?php
  session_start();
  include_once "php/config.php";
  if(!isset($_SESSION['unique_id'])){
    header("Location: login.php");
  }
?>


<?php
include_once "header.php";
?>
  <body>
    <div class="wrapper">
      <section class="chat-area">
        <header>
          <?php
            $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
            $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$user_id}");
            if(mysqli_num_rows($sql) > 0){
              $row = mysqli_fetch_assoc($sql);
            }
          ?>
          <a href="users.php" class="back-icon"><i class="fas fa-arrow-left"></i></a>
          <img src="php/images/<?php echo $row['image']; ?>" alt="" style="border-radius: 50%; object-fit: cover;">
            <div class="details">
              <span><?php echo $row['fname'] . " " . $row['lname']; ?></span>
              <p><?php echo $row['status']; ?></p>
            </div>
        </header>
        <div class="chat-box">
        </div>
        <form action="#" class="typing-area">
          <input type="text" value="<?php echo $user_id; ?>" name="incoming_id" hidden>
          <input type="text" name="message" placeholder="Type a message here...." class="input-field" autocomplete="off">
          <button><i class="fab fa-telegram-plane"></i></button>
        </form>
      </section>
    </div>
    <script type="text/javascript" src="js/chat.js"></script>
  </body>
</html>
