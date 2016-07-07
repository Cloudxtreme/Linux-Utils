<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Practica Mysql</title>
        <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    </head>
<body>
<div class="container">
<h1>Form bootstrap </h1>

<pre>
&lt;form role=&quot;form&quot;&gt;

&lt;form class=&quot;form-horizontal&quot; role=&quot;form&quot;&gt;
</pre>

    <form class="form" role="form">
        <!-- Text Area -->
<div class="alert alert-info">
    <div class="form-group">
        <label for="textarea1">Text Area</label>
        <textarea id="textarea1" class="form-control" rows="3"></textarea>
    </div>
<pre>
&lt;div class=&quot;form-group&quot;&gt;
    &lt;label for=&quot;textarea1&quot;&gt;Text Area&lt;/label&gt;
    &lt;textarea id=&quot;textarea1&quot; class=&quot;form-control&quot; rows=&quot;3&quot;&gt;&lt;/textarea&gt;
&lt;/div&gt;
</pre>
</div>


        <!-- Field Input-->
<div class="alert alert-info">
    <div class="form-group">
      <label class="control-label" for="inputSuccess">Input </label>
      <input type="text" class="form-control" id="inputSuccess">
    </div>
<pre>
&lt;div class=&quot;form-group&quot;&gt;
    &lt;label class=&quot;control-label&quot; for=&quot;inputSuccess&quot;&gt;Input &lt;/label&gt;
    &lt;input type=&quot;text&quot; class=&quot;form-control&quot; id=&quot;inputSuccess&quot;&gt;
&lt;/div&gt;
</pre>
</div>


        <!-- E-mail -->
<div class="alert alert-info">
    <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
    </div>
<pre>
&lt;div class=&quot;form-group&quot;&gt;<br/>    &lt;label for=&quot;exampleInputEmail1&quot;&gt;Email address&lt;/label&gt;<br/>    &lt;input type=&quot;email&quot; class=&quot;form-control&quot; id=&quot;exampleInputEmail1&quot; placeholder=&quot;Enter email&quot;&gt;<br/>&lt;/div&gt;
</pre>
</div>


        <!-- Pass -->
<div class="alert alert-info">
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
    </div>
<pre>
&lt;div class=&quot;form-group&quot;&gt;<br/>    &lt;label for=&quot;exampleInputPassword1&quot;&gt;Password&lt;/label&gt;<br/>    &lt;input type=&quot;password&quot; class=&quot;form-control&quot; id=&quot;exampleInputPassword1&quot; placeholder=&quot;Password&quot;&gt;<br/>&lt;/div&gt;
</pre>
</div>


        <!-- File -->
<div class="alert alert-info">
    <div class="form-group">
        <label for="exampleInputFile">File input</label>
        <input type="file" id="exampleInputFile">
        <p class="help-block">Example block-level help text here.</p>
    </div>
<pre>
&lt;div class=&quot;form-group&quot;&gt;<br/>    &lt;label for=&quot;exampleInputFile&quot;&gt;File input&lt;/label&gt;<br/>    &lt;input type=&quot;file&quot; id=&quot;exampleInputFile&quot;&gt;<br/>    &lt;p class=&quot;help-block&quot;&gt;Example block-level help text here.&lt;/p&gt;<br/>&lt;/div&gt;
</pre>
</div>

        <!-- Check -->
<div class="alert alert-info">
    <div class="checkbox">
        <label>
            <input type="checkbox"> Check me out
        </label>
    </div>
<pre>
&lt;div class=&quot;checkbox&quot;&gt;<br/>    &lt;label&gt;<br/>        &lt;input type=&quot;checkbox&quot;&gt; Check me out<br/>    &lt;/label&gt;<br/>&lt;/div&gt;
</pre>
</div>

        <!-- Button -->
<div class="alert alert-info">
    <button type="submit" class="btn btn-default">Submit</button>
<pre>
&lt;button type=&quot;submit&quot; class=&quot;btn btn-default&quot;&gt;Submit&lt;/button&gt;
</pre>
</div>

    </form><!-- END Form -->


<div class="alert alert-info">
    <form class="form-horizontal" role="form">
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-4">
                <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
            </div>
        </div>

        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-4">
                <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-6">
                <button type="submit" class="btn btn-danger">Sign in</button>
            </div>
        </div>
    </form><!-- END form -->
<pre>
&lt;form class=&quot;form-horizontal&quot; role=&quot;form&quot;&gt;<br/><br/>    &lt;div class=&quot;form-group&quot;&gt;<br/>        &lt;label for=&quot;inputEmail3&quot; class=&quot;col-sm-2 control-label&quot;&gt;Email&lt;/label&gt;<br/>        &lt;div class=&quot;col-sm-4&quot;&gt;<br/>            &lt;input type=&quot;email&quot; class=&quot;form-control&quot; id=&quot;inputEmail3&quot; placeholder=&quot;Email&quot;&gt;<br/>        &lt;/div&gt;<br/>    &lt;/div&gt;<br/><br/><br/>    &lt;div class=&quot;form-group&quot;&gt;<br/>        &lt;label for=&quot;inputPassword3&quot; class=&quot;col-sm-2 control-label&quot;&gt;Password&lt;/label&gt;<br/>        &lt;div class=&quot;col-sm-4&quot;&gt;<br/>            &lt;input type=&quot;password&quot; class=&quot;form-control&quot; id=&quot;inputPassword3&quot; placeholder=&quot;Password&quot;&gt;<br/>        &lt;/div&gt;<br/>    &lt;/div&gt;<br/><br/><br/>    &lt;div class=&quot;form-group&quot;&gt;<br/>        &lt;div class=&quot;col-sm-offset-2 col-sm-6&quot;&gt;<br/>            &lt;button type=&quot;submit&quot; class=&quot;btn btn-danger&quot;&gt;Sign in&lt;/button&gt;<br/>        &lt;/div&gt;<br/>    &lt;/div&gt;<br/>    <br/>&lt;/form&gt;
</pre>
</div>

</div><!-- END container -->



</body>
</html>
