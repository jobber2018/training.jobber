<style>
.navbar-nav .active {
    background-color: #0e374c!important;
}
</style>
<header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <!--<a class="navbar-brand" href="#">IT Training</a>-->
    <img src="http://jobber.vn/images/logo-while.png" width="150px"/>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="#">Trang chủ </a>
        </li>
        <li class="nav-item <?php if(@$_GET["mact"]=="ios-swift") echo "active"?>">
          <a class="nav-link" href="/khoa-hoc-ios-swift.html">Khóa học iOS Swift</a>
        </li>
        <li class="nav-item <?php if(@$_GET["mact"]=="java") echo "active"?>">
          <a class="nav-link" href="/khoa-hoc-spring-hibernate.html">Khóa học java Spring - Hibernate</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Hỗ trợ việc làm</a>
        </li>
      </ul>
    </div>
  </nav>
</header>
