<div class="intro-section" id="home-section">

  <div class="slide-1" style="background-image: url('<?= base_url('assets/oneschool/'); ?>images/santri4.jpg');"
    data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-12">
          <div class="row align-items-center">
            <div class="col-lg-6 mb-4">
              <h1 data-aos="fade-up" data-aos-delay="100"><span style="color: darkolivegreen">IHBS</span> Counseling Guidance</h1>
              <p class="mb-4" data-aos="fade-up" data-aos-delay="200">Welcome to <span style="color: darkolivegreen">IHBS</span> Counseling Information System.</p>

            </div>

            <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="500">
              <form action="<?= base_url('home/login'); ?>" method="post" class="form-box">
                <h3 class="h4 text-black mb-4">Log In
                </h3>
                <div class="form-group">
                  <input type="text" name="username" class="form-control" placeholder="Username" autocomplete="off">
                  <?php echo form_error('username', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <div class="form-group">
                  <input type="password" name="password" class="form-control" placeholder="Password" autocomplete="off">
                  <?php echo form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <div class="form-group">
                  <input type="submit" class="btn btn-primary btn-pill" value="Log In">
                </div>
              </form>

            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>


<div class="site-section bg-light" id="about-section">
  <div class="container">

    <div class="row">
      <div class="col-md-6">
        <h3>About <span style="color: darkolivegreen">IHBS</span>CG</h3>
        <p>This information system was created to 
          facilitate teachers and guardians of students in monitoring the development of adab and morals of students while in the mahad.
        </p>
        <p>
        In language, CG comes from the words guidance and counselling. Guidance has the meaning of providing assistance to others who need 
        it with the aim of making it easier for them to solve the problems faced and find the potential that exists in themselves.
        Referring to this conclusion, the intended guidance is given to students or learners so that they can find solutions to the problems 
        they face. Guidance is also given to help students discover their potential and abilities. Meanwhile, the definition of counselling
        is assistance given to someone with the aim that the person concerned is able to solve the problems faced through methods tailored to 
        the individual's condition, for example by interviewing. So that from the meaning of the two words it can be concluded that Guidance 
        Counselling (BK) is a series of activities that aim to provide assistance by experts to individuals through face-to-face, providing 
        additional knowledge and other ways that are given systematically and continuously. At school, the task of the counselling teacher 
        is to provide assistance to students so that they can achieve their developmental tasks optimally in their role as a person, social 
        being and creature of Allah.
        </p>
      </div>

      <!-- <div class="col-md-6 ml-auto">
        <img src="assets/oneschool/images/santri1.jpg">
      </div> -->
      <div class="col-md-6 ml-auto">
        <h1><center><span style="color: white">.</span></center></h1>
        <img src="assets/oneschool/images/santri5.jpg" style="display:block; margin:auto;">
      </div>


    </div>
  </div>
</div>