<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css?<?php echo $_SERVER['REQUEST_TIME']; ?>" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css?<?php echo $_SERVER['REQUEST_TIME']; ?>" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-0VY2S6806B"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-0VY2S6806B');
</script>
</head>
<body class="<?php echo $class; ?>">

<div class="ui-header">
  <div class="ui-container">
    <div class="container">
      <div class="loginres">
        <?php if (!$logged) { ?>
        <?php echo $text_welcome; ?>
        <?php } else { ?>
        <?php echo $text_logged; ?>
        <?php } ?>
      </div>

      <?php echo $search; ?>

      <div class="ui-cart-box"><?php echo $cart; ?></div>

    </div>
  </div>
</div>

<header class="module-container">
  <div class="container">
    <div class="row ui-header-logo" flex="dir:left">
      <div id="logo">
        <?php if ($logo) { ?>
        <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
        <?php } else { ?>
        <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
        <?php } ?>
      </div>

      <div class="ui-introduce" flex="main:center cross:center">
        <div>
          <p>WE ARE STILL OPEN AND TRADING !! </p>
          <p>RESTRINGS WHILE YOU WAIT !! </p>
          <p>THURSDAYS WILL NOW BE 10-5.30( No Late Night)</p>
        </div>
      </div>
      <!--<div class="module-notice">
        <h3>HOLIDAY TRADING HOURS</h3>
        <div class="ui-notice" flex="box:mean">
          <ul>
            <li><a>25/12 Christmas day - CLOSED</a></li>
            <li><a>26/12 Boxing day - CLOSED</a></li>
            <li><a>27/12 Sunday - CLOSED</a></li>
          </ul>
          <ul>
            <li><a>28/12 OPEN 10am -4pm ##</a></li>
            <li><a>29/12 OPEN 10am-5.30pm</a></li>
            <li><a>30/12 OPEN 10am-5.30pm</a></li>
            <li><a>31/12 OPEN 10am-3pm ##</a></li>
          </ul>
          <ul>
            <li><a>1/1/21 CLOSED</a></li>
            <li><a>2/1/21 OPEN 9am-5.00pm</a></li>
            <li><a>3/1/21 OPEN 10am-5.00pm</a></li>
          </ul>
        </div>
      </div>-->
    </div>

    <div class="ui-contactus">
      <span>PHONE: <a href="tel:98163666"> (02) 98163666</a></span>
      <span>EMAIL: <a class="email" href="https://web.archive.org/web/20200320233721/mailto:trumps@tennisranch.com.au">trumps@tennisranch.com.au</a></span>
      <span>ADDRESS: 128 Victoria Road Gladesville , NSW, 2111</span>
    </div>
  </div>
</header>

<div class="module-container">
  <?php if ($categories) { ?>
  <div class="container">
    <nav class="module-menu navbar" flex="dir:left">
      <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
        <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
      </div>

      <h4 flex="main:center cross:center">
        <a href="<?php echo $categories[0]['href']; ?>"><?php echo $categories[0]['name']; ?></a>
      </h4>

      <div class="navbar-collapse navbar-ex1-collapse collapse" aria-expanded="false" style="height:1px;">
        <ul class="nav navbar-nav">
            <li>
                <a href="<?php echo $home; ?>">HOME</a>
            </li>
          <?php foreach ($categories[0]['children'] as $category) { ?>

          <li class="cell-path"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>

          <?php } ?>
        </ul>
      </div>
    </nav>
  </div>
  <?php } ?>
</div>
