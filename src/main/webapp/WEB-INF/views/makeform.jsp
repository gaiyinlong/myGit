<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>表单编辑器</title>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="基于Bootstrap的web表单构造器，通过拖拽组件的方式生成完整可用的表单">
    <meta name="keywords" content="Bootstrap,Form,表单,拖拽">
    <meta name="author" content="Bootstrap中文网">

    <link href="http://cdn.bootcss.com/twitter-bootstrap/2.0.4/css/bootstrap.min.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
        padding-bottom: 10px;
      }
      #components{
        min-height: 600px;
      }
      #target{
        min-height: 200px;
        border: 1px solid #ccc;
        padding: 5px;
      }
      #target .component{
        border: 1px solid #fff;
      }
      #temp{
        width: 500px;
        background: white;
        border: 1px dotted #ccc;
        border-radius: 10px;
      }

      .popover-content form {
        margin: 0 auto;
        width: 213px;
      }
      .popover-content form .btn{
        margin-right: 10px
      }
      #source{
        min-height: 500px;
      }
    </style>
   

    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
  </head>

  <body>

    
    <div  class="container">
      <div class="row clearfix">
        <div class="span6">
          <div class="clearfix">
            <h2>你的表单</h2>
            <hr>
            <div id="build">
              <form id="target" class="form-horizontal">
                <fieldset>
                  <div id="legend" class="component" rel="popover" title="Form Title" trigger="manual"
                    data-content="
                    <form class='form'>
                      <div class='controls'>
                        <label class='control-label'>Title</label> <input class='input-large' type='text' name='title' id='text'>
                        <hr/>
                        <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                      </div>
                    </form>"
                    >
                    <legend class="valtype" data-valtype="text">表单名</legend>
                  </div>
                </fieldset>
              </form>
            </div>
          </div>
        </div>

        <div class="span6">
            <h2>拖拽下面的组件到左侧</h2>
            <hr>
          <div class="tabbable">
            <ul class="nav nav-tabs" id="navtab">
              <li class="active"><a href="#1" data-toggle="tab">输入框</a></li>
              <li class><a href="#2" data-toggle="tab">Select</a></li>
              <li class><a href="#3" data-toggle="tab">Checkbox / Radio</a></li>
              <li class><a href="#4" data-toggle="tab">文件 / 按钮</a></li>
              <li class><a id="sourcetab" href="#5" data-toggle="tab">生成代码</a></li>
            </ul>
            <form class="form-horizontal" id="components">
              <fieldset>
                <div class="tab-content">

                  <div class="tab-pane active" id="1">

                    <div class="control-group component" data-type="text" rel="popover" title="Text Input" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <label class='control-label'>Placeholder</label> <input type='text' name='placeholder' id='placeholder'>
                          <label class='control-label'>Help Text</label> <input type='text' name='help' id='help'>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >

                      <!-- Text input-->
                      <label class="control-label valtype" for="input01" data-valtype='label'>Text input</label>
                      <div class="controls">
                        <input type="text" placeholder="placeholder" class="input-xlarge valtype" data-valtype="placeholder" >
                        <p class="help-block valtype" data-valtype='help'>Supporting help text</p>
                      </div>
                    </div>


                    <div class="control-group component" data-type="search" rel="popover" title="Search Input" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <label class='control-label'>Placeholder</label> <input type='text' name='placeholder' id='placeholder'>
                          <label class='control-label'>Help Text</label> <input type='text' name='help' id='help'>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >

                      <!-- Search input-->
                      <label class="control-label valtype" data-valtype="label">Search input</label>
                      <div class="controls">
                        <input type="text" placeholder="placeholder" class="input-xlarge search-query valtype" data-valtype="placeholder">
                        <p class="help-block valtype" data-valtype="help">Supporting help text</p>
                      </div>

                    </div>


                    <div class="control-group component" data-type="prep-text" rel="popover" title="Prepended Text Input" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <label class='control-label'>Prepend</label> <input type='text' name='prepend' id='prepend'>
                          <label class='control-label'>Placeholder</label> <input type='text' name='placeholder' id='placeholder'>
                          <label class='control-label'>Help Text</label> <input type='text' name='help' id='help'>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >

                      <!-- Prepended text-->
                      <label class="control-label valtype" data-valtype="label">Prepended text</label>
                      <div class="controls">
                        <div class="input-prepend">
                          <span class="add-on valtype" data-valtype="prepend">^_^</span>
                          <input class="span2 valtype" placeholder="placeholder" id="prependedInput" type="text" data-valtype="placeholder">
                        </div>
                        <p class="help-block valtype" data-valtype="help">Supporting help text</p>
                      </div>

                    </div>

                    <div class="control-group component" data-type="app-text" rel="popover" title="Appended Text Input" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <label class='control-label'>Appepend</label> <input type='text' name='append' id='append'>
                          <label class='control-label'>Placeholder</label> <input type='text' name='placeholder' id='placeholder'>
                          <label class='control-label'>Help Text</label> <input type='text' name='help' id='help'>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >

                      <!-- Appended input-->
                      <label class="control-label valtype" data-valtype="label">Appended text</label>
                      <div class="controls">
                        <div class="input-append">
                          <input class="span2 valtype" data-valtype="placeholder" placeholder="placeholder" type="text">
                          <span class="add-on valtype" data-valtype="append">^_^</span>
                        </div>
                        <p class="help-block valtype" data-valtype="help">Supporting help text</p>
                      </div>

                    </div>

                    <div class="control-group component" rel="popover" title="Search Input" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <label class='control-label'>Placeholder</label> <input type='text' name='placeholder' id='placeholder'>
                          <label class='control-label'>Help Text</label> <input type='text' name='help' id='help'>
                          <label class='checkbox'><input type='checkbox' class='input-inline' name='checked' id='checkbox'>Checked</label>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >

                      <!-- Prepended checkbox -->
                      <label class="control-label valtype" data-valtype="label">Prepended checkbox</label>
                      <div class="controls">
                        <div class="input-prepend">
                          <span class="add-on">
                            <label class="checkbox">
                              <input type="checkbox" class="valtype" data-valtype="checkbox">
                            </label>
                          </span>
                          <input class="span2 valtype" placeholder="placeholder" type="text" data-valtype="placeholder">
                        </div>
                        <p class="help-block valtype" data-valtype="help">Supporting help text</p>
                      </div>

                    </div>

                    <div class="control-group component" rel="popover" title="Search Input" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <label class='control-label'>Placeholder</label> <input type='text' name='placeholder' id='placeholder'>
                          <label class='control-label'>Help Text</label> <input type='text' name='help' id='help'>
                          <label class='checkbox'><input type='checkbox' class='input-inline' name='checked' id='checkbox'>Checked</label>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >

                      <!-- Appended checkbox -->
                      <label class="control-label valtype" data-valtype="label">Append checkbox</label>
                      <div class="controls">
                        <div class="input-append">
                          <input class="span2 valtype" placeholder="placeholder" type="text" data-valtype="placeholder">
                          <span class="add-on">
                            <label class="checkbox" for="appendedCheckbox">
                              <input type="checkbox" class="valtype" data-valtype="checkbox">
                            </label>
                          </span>
                        </div>
                        <p class="help-block valtype" data-valtype="help">Supporting help text</p>
                      </div>
                    </div>

                    <div class="control-group component" rel="popover" title="Search Input" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >

                      <!-- Textarea -->
                      <label class="control-label valtype" data-valtype="label">Textarea</label>
                      <div class="controls">
                        <div class="textarea">
                              <textarea type="" class="valtype" data-valtype="checkbox" /> </textarea>
                        </div>
                      </div>
                    </div>

                  </div>

                  <div class="tab-pane" id="2">

                    <div class="control-group component" rel="popover" title="Search Input" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <label class='control-label'>Options: </label>
                          <textarea style='min-height: 200px' id='option'> </textarea>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >

                      <!-- Select Basic -->
                      <label class="control-label valtype" data-valtype="label">Select - Basic</label>
                      <div class="controls">
                        <select class="input-xlarge valtype" data-valtype="option">
                          <option>Enter</option>
                          <option>Your</option>
                          <option>Options</option>
                          <option>Here!</option>
                        </select>
                      </div>

                    </div>

                    <div class="control-group component" rel="popover" title="Search Input" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <label class='control-label'>Options: </label>
                          <textarea style='min-height: 200px' id='option'></textarea>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >

                      <!-- Select Multiple -->
                      <label class="control-label valtype" data-valtype="label">Select - Multiple</label>
                      <div class="controls">
                        <select class="input-xlarge valtype" multiple="multiple" data-valtype="option">
                          <option>Enter</option>
                          <option>Your</option>
                          <option>Options</option>
                          <option>Here!</option>
                        </select>
                      </div>
                    </div>

                  </div>

                  <div class="tab-pane" id="3">

                    <div class="control-group component" rel="popover" title="Multiple Checkboxes" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <label class='control-label'>Options: </label>
                          <textarea style='min-height: 200px' id='checkboxes'> </textarea>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >
                      <label class="control-label valtype" data-valtype="label">Checkboxes</label>
                      <div class="controls valtype" data-valtype="checkboxes">

                        <!-- Multiple Checkboxes -->
                        <label class="checkbox">
                          <input type="checkbox" value="Option one">
                          Option one
                        </label>
                        <label class="checkbox">
                          <input type="checkbox" value="Option two">
                          Option two
                        </label>
                      </div>

                    </div>

                    <div class="control-group component" rel="popover" title="Multiple Radios" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <label class='control-label'>Group Name Attribute</label> <input class='input-large' type='text' name='name' id='name'>
                          <label class='control-label'>Options: </label>
                          <textarea style='min-height: 200px' id='radios'></textarea>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >
                      <label class="control-label valtype" data-valtype="label">Radio buttons</label>
                      <div class="controls valtype" data-valtype="radios">

                        <!-- Multiple Radios -->
                        <label class="radio">
                          <input type="radio" value="Option one" name="group" checked="checked">
                          Option one
                        </label>
                        <label class="radio">
                          <input type="radio" value="Option two" name="group">
                          Option two
                        </label>
                      </div>

                    </div>

                    <div class="control-group component" rel="popover" title="Inline Checkboxes" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <textarea style='min-height: 200px' id='inline-checkboxes'></textarea>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >
                      <label class="control-label valtype" data-valtype="label">Inline Checkboxes</label>

                      <!-- Multiple Checkboxes -->
                      <div class="controls valtype" data-valtype="inline-checkboxes">
                        <label class="checkbox inline">
                          <input type="checkbox" value="1"> 1
                        </label>
                        <label class="checkbox inline">
                          <input type="checkbox" value="2"> 2
                        </label>
                        <label class="checkbox inline">
                          <input type="checkbox" value="3"> 3
                        </label>
                      </div>

                    </div>

                    <div class="control-group component" rel="popover" title="Inline radioes" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <label class='control-label'>Group Name Attribute</label> <input class='input-large' type='text' name='name' id='name'>
                          <textarea style='min-height: 200px' id='inline-radios'></textarea>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >
                      <label class="control-label valtype" data-valtype="label">Inline radios</label>
                      <div class="controls valtype" data-valtype="inline-radios">

                        <!-- Inline Radios -->
                        <label class="radio inline">
                          <input type="radio" value="1" checked="checked" name="group">
                          1
                        </label>
                        <label class="radio inline">
                          <input type="radio" value="2" name="group">
                          2
                        </label>
                        <label class="radio inline">
                          <input type="radio" value="3">
                          3
                        </label>
                      </div>
                    </div>

                  </div>

                  <div class="tab-pane" id="4">
                    <div class="control-group component" rel="popover" title="File Upload" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >
                      <label class="control-label valtype" data-valtype="label">File Button</label>

                      <!-- File Upload -->
                      <div class="controls">
                        <input class="input-file" id="fileInput" type="file">
                      </div>
                    </div>

                    <div class="control-group component" rel="popover" title="Search Input" trigger="manual"
                      data-content="
                      <form class='form'>
                        <div class='controls'>
                          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                          <label class='control-label'>Button Text</label> <input class='input-large' type='text' name='label' id='button'>
                          <label class='control-label' id=''>Type: </label>
                          <select class='input' id='color'>
                            <option id='btn-default'>Default</option>
                            <option id='btn-primary'>Primary</option>
                            <option id='btn-info'>Info</option>
                            <option id='btn-success'>Success</option>
                            <option id='btn-warning'>Warning</option>
                            <option id='btn-danger'>Danger</option>
                            <option id='btn-inverse'>Inverse</option>
                          </select>
                          <hr/>
                          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                        </div>
                      </form>"
                      >
                      <label class="control-label valtype" data-valtype="label">Button</label>

                      <!-- Button -->
                      <div class="controls valtype"  data-valtype="button">
                        <button class='btn btn-success'>Button</button>
                      </div>
                    </div>
                  </div>


                  <div class="tab-pane" id="5">
                    <textarea id="source" class="span6"></textarea>
                  </div>
                </fieldset>
              </form>
            </div>
          </div> <!-- row -->
          <div class="row clearfix">
            <div class="span12">
              <hr>
              By Adam Moore (<a href="http://twitter.com/minikomi" >@minikomi</a>).<br/>
              Source on (<a href="http://github.com/minikomi" >Github</a>).
          
            </div>
          </div>
        </div> <!-- /container -->
        <script src="http://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
        <script src="http://cdn.bootcss.com/twitter-bootstrap/2.0.4/bootstrap.min.js"></script>

        <script src="js/fb.js"></script>

    <script src="js/projects.js"></script>
      </body>
    </html>
