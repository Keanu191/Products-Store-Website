<?php
/*
    9/01/2025
    AUTHOR: Keanu Farro
    The Functions PHP file will essentially be the skeletal structure of the front-end website
    which will connect to the SQL database, have the latest bootstrap 5 CDN referenced and have 
    a bootstrap nav bar which will be on every web page, and have a method to write whatever you want
    when debugging into the inspect element's console
*/

/* A Function to debug whatever is happening to
* the inspect element console rather than echoing text onto the webpage
*/
function debug_to_console($data): void {
    $output = $data;
    if (is_array(value: $output))
        $output = implode(separator: ',', array: $output);

    echo "<script>console.log('Debug : " . $output . "' );</script>";
}

// A function to connect to the SQL database
function connectSQL($DB_HOST, $DB_USER, $DB_PASSWORD, $DB_NAME): void
{
    try {
        $conn = new PDO(dsn: "mysql:host=$DB_HOST;dbname=$DB_NAME", username: $DB_USER, password: $DB_PASSWORD);
        // set the PDO error mode to exception
        $conn->setAttribute(attribute: PDO::ATTR_ERRMODE, value: PDO::ERRMODE_EXCEPTION);
        debug_to_console(data: "Connected successfully to the online store!");
    }
    catch (PDOException $e)
    {
        debug_to_console(data: "Connection to the online store failed: " . $e->getMessage());
    }

}

/* Call the SQL connection method and initalise the parameters of the method
with the connection details of the database, setting a password here can be optional
*/
connectSQL(DB_HOST: 'localhost', DB_USER: 'root', DB_PASSWORD: '', DB_NAME: 'online_store');

// Set the title for the tab
$title = 'Functions Page';
?>
<!doctype html>
<html>
  <head>
    <!-- Call Bootstrap 5.3.3 CSS-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <!-- Reference the latest version of font awesome v5, due to v6 not having CDN support -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" rel="stylesheet"/>
  <!-- Call Styles.css -->
  <link href='assets\css\styles.css?<?php echo time(); ?>' rel='stylesheet'>
  <!-- navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <img class="logo" src="assets/img/Logo.png" alt="Logo"/>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="functions.php">Functions</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Link
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <i class="fa-solid fa-cart-shopping"></i>
          <i class="fa-solid fa-user"></i>
        </li>
        <li class="nav-item">
          
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<!-- end navbar -->
    <title><?php echo $title?></title>
  </head>
  <body>
</div>
<!-- Call Bootstrap 5.3.3 JavaScript-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>