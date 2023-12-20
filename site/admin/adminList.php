<?php
include 'header.php';
include 'db.php';
?>
<div class="container">
    <div class="head" style="padding-top: 10px; padding-bottom:10px;text-align:center; ">
        <h1>Админы жагсаалт </h1>
    </div>
<table class="table caption-top">
  <caption>
Хэрэглэгчдийн жагсаалт</caption>
  <thead class="table-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Хэрэглэгчийн нэр</th>
      <th scope="col">Нууц үг</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <?php
  $query="SELECT * from admin";
  $run = mysqli_query($con,$query);
  if($run) {
    while ($row=mysqli_fetch_assoc($run)) {

  ?>
  <tbody>
    <tr>
      <th scope="row"><?php echo $row['admin_id'];?></th>
      <td><?php echo $row['uname'];?></td>
      <td><pre>Password Encrypted</pre></td>
      <td><a class="btn btn-danger" href="deleteAdmin.php?unameid=<?php echo $row['admin_id'];?>">Delete</a></td>
    </tr>
    <?php
    }
    }
    ?>
  </tbody>
</table>
</div>