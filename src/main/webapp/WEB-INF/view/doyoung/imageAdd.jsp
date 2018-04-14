<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
		
 <!-- Main container -->
      <section class="no-border-bottom">
        <div class="container">
          <header class="section-header">
            <span>Upload</span>
            <h2>Add shot</h2>
            <p>Give a title, upload an image, and write a description to create a shot.</p>
          </header>

          <form  class="form-horizontal1" method="POST" enctype="multipart/form-data">
            <div class="row">  
              <div class="col-sm-12 col-md-12">
                <div class="card">
                  <div class="card-header">  
                    <h6>Shot details</h6>
                  </div>
               <div class="form-group" style="    margin: 0 auto; width: 270px;     padding: 10px;">
                      <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-bolt"></i></div>
                        <select class="form-control">
                          <option>스포츠</option>
                          <option>성형</option>
                          <option>패션</option>
                          <option>피부</option>
                          <option>헤어</option>
                        </select>
                      </div>
                    </div>
                    
                          <div class="form-group" style="margin: 0 auto; width: 270px;padding: 10px;">
                      <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-bolt"></i></div>
                        <select class="form-control">
                          <option>Lisence</option>
                          <option>GPL</option>
                          <option>MIT</option>
                          <option>Apache</option>
                          <option>BSD</option>
                          <option>CC0</option>
                          <option>Other</option>
                        </select>
                        <input type="hidden" value ="1" name ="fieldNo" id ="fieldNo">
                      </div>
                    </div>
                  <div class="card-block">
                    <div class="form-group">
                      <input type="text" class="form-control input-lg" placeholder="subject" name ="title">
                    </div>

                      <div class="form-group">
                      <label>Preview image</label>
                      <input type="file" class="dropify" name ="report">
                      <span class="help-block">The best image size is 800x600 pixels</span>
                    </div>
                    <div class="form-group">  
                      <label for="input-desc">Description</label>
                      <textarea class="form-control" id="input-desc" rows="6" name ="contents"></textarea>
                    </div>
                  </div>
                </div>   
              </div>
                </div>
               <button class="btn btn-primary btn-block" type="submit">Submit shot</button>
</form>
              </div>

      </section>
      

    <!-- END Main container -->

</body>
	
</html>