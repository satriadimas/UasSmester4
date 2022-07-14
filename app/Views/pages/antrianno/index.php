<?php foreach ($antrian1 as $key => $data1) {
  $aa = $data1["id"];
} ?>
<?php foreach ($antrian2 as $key => $data2) {
  $bb = $data2["id"];
} ?>
<?php foreach ($antrian3 as $key => $data3) {
  $cc = $data3["id"];
} ?>
<?php foreach ($antrian4 as $key => $data4) {
  $dd = $data4["id"];
} ?>
<?= $this->extend('layouts/tempelate'); ?>
<?= $this->section('content'); ?>
<!-- Begin Page Content -->
<div class="container">
  <div class="card-body">
    <div class="row justify-content-center">
      <!-- Page Heading -->
      <div class="col-12"> 
        <h3>Layar Antrian</h3>
        <p id="time"></p>
      </div>

      <div class="antrian">
        <h5>Panggilan Antrian</h5>
        <p> A <?php echo $aa; ?> </p>
        <h5>Loket 1</h5>
      </div>
      <div class="antrian-layar">
        <tr>
          <td><img height="270" src="https://i.gifer.com/3Ezi.gif" alt=""></td>
        </tr>

      </div>

      <br>
      <br>
      <div class="loket">
        <p>A <?php echo $aa; ?> </p>
        <h5>Loket 1</h5>
      </div>
      <div class="loket">
        <p>B <?php echo $bb; ?> </p>
        <h5>Loket 2</h5>
      </div>
      <div class="loket">
        <p>C <?php echo $cc; ?> </p>
        <h5>Loket 3</h5>
      </div>
      <div class="loket">
        <p>D <?php echo $dd; ?> </p>
        <h5>Loket 4</h5>
      </div>
    </div>

  </div>
</div>
</div>
<!-- /.container-fluid -->
</div>
<!-- End of Main Content -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
  var timestamp = '<?= time(); ?>';

  function updateTime() {
    $('#time').html(Date(timestamp));
    timestamp++;
  }
  $(function() {
    setInterval(updateTime, 1000);
  });
</script>
<?= $this->endSection(); ?>