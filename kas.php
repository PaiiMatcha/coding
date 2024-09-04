`<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Introduction</title>
    <link rel="icon" href="images/images.png" />
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
    <header>
        <h1>SMKN 17 JAKARTA</h1>
        <nav>
            <ul>
                <li><a href="index2.html">Home</a></li>
                <li><a href="manajemen.html">Manajemen</a></li>
                <li><a href="kas.php">Kas</a></li>
            </ul>
        </nav>
    </header>
    <main>
    <table>
          <tr>
            <th>No</th>
            <th>Nama Siswa</th>
            <th>Jumlah Uang</th>
            <th>Tanggal</th>
            <th>Tipe Kas</th>
            <th>Deskripsi</th>
            <th>Aksi</th>
          </tr>
          <?php
            include 'connection.php';
            $sql = "SELECT name,amount,data,kas_type,description,kas_id FROM test_database";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
              // output data of each row
              $count = 1;
              while($row = mysqli_fetch_assoc($result)) {
                ?>
                <tr>
                  <td><?php echo $count++ ?></td>
                  <td><?php echo $row['name'] ?></td>
                  <td><?php echo $row['amount'] ?></td>
                  <td><?php echo $row['data'] ?></td>
                  <td>
                    <?php 
                    if($row['kas_type']=='k'){
                      echo "Kredit";
                    }else{
                      echo "Debet";
                    }
                    ?>
                  </td>
                  <td><?php echo $row['description'] ?></td>
                  <td>
                    <div class="action-buttons">
                    <img src="images/edit.svg" />  
                    <img src="images/delete.svg" />  
                  </div>
                  </td>
                </tr>
                <?php
              }
            }else{
          ?>
            <tr>
              <td colspan="6">0 Hasil</td>
            </tr>
          <?php  
            }
            mysqli_close($conn);
          ?>
        </table>
    </main>
</body>
</html>`