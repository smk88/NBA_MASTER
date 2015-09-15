<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>   
    <script src="//cdnjs.cloudflare.com/ajax/libs/less.js/2.5.1/less.min.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <link  rel ="stylesheet" href="$createtoLink(dir:'css',file:'login.css')" type="text/css">
    <link rel="stylesheet/less" type="text/css" href="$createtoLink(dir:'css',file:'login.less')" />
  </head><body>
    <footer class="hidden-md section section-primary">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <h1>Vishawakarma Institute of Technology, Pune</h1>
            <p>@2015, DPP, PHR,SMK,VRC,PSV,NPP,AJD</p>
            <p>NBA Software</p>
          </div>
          <div class="col-sm-6">
            <p class="text-info text-right">
              <br>
              <br>
            </p>
            <div class="row">
              <div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12 hidden-xs text-right">
                <a href="#"><i class="fa fa-3x fa-fw fa-instagram fa-spin text-danger"></i></a>
                <a href="http://www.twitter.com"><i class="fa fa-3x fa-fw fa-spin fa-twitter text-warning"></i></a>
                <a href="http://www.facebook.com"><i class="fa fa-3x fa-facebook fa-fw fa-spin text-info"></i></a>
                <a href="http://www.github.com"><i class="fa fa-3x fa-fw fa-github fa-spin text-inverse"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <form class="form-horizontal text-justify" role="form">
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="inputEmail3" class="control-label">USERNAME</label>
                </div>
                <div class="col-sm-10">
                  <input type="email" class="form-control input-lg" id="inputEmail3" placeholder="username">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="inputPassword3" class="control-label">PASSWORD</label>
                </div>
                <div class="col-sm-10">
                  <input type="password" class="form-control input-lg" id="inputPassword3" placeholder="Password">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">Remember me</label>
                  </div>
                </div>
              </div>
              <div>
                <a class="btn btn-block btn-info btn-lg">Sign in</a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  

</body></html>
