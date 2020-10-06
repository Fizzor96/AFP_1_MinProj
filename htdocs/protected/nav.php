<?php
require_once PROTECTED_DIR.'user/login.php'; 
?>
<ul class="nav justify-content-center" style="border: 1px solid #3b6978; width:1000px; margin:0 auto; background-color: #3b6978; margin-bottom:50px; ">
  <li class="nav-item">
  <a class="nav-link" href="index.php?P=home" style="color:white">Főoldal</a>
  </li>
  
  <li class="nav-item">
    <a class="nav-link" data-toggle="modal" href="#exampleModal"style="color:white" >Bejelentkezés</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="index.php?P=register"style="color:white">Regisztráció</a>
  </li>
  <li class="nav-item">
  <a class="nav-link" href="index.php?P=betekinto" style="color:white">Betekintő</a>
  </li>
  
	<?php if(isset($_SESSION['jog']) && $_SESSION['jog'] == 1) : ?>
	<li class="nav-item">
    <a class="nav-link" href="index.php?P=felhasznalolista" style="color:white">Felhasználók listája</a>
    </li>
	<li class="nav-item">
    <a class="nav-link" href="index.php?P=konyvlista" style="color:white">Könyvek listája</a>
    </li>
	<?php endif;?>
	<li class="nav-item">
    <a class="nav-link" href="index.php?P=konyvek" style="color:white">Könyvek</a>
    </li>