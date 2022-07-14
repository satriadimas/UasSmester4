<?php
foreach ($antrian1 as $key => $data) { ?>
    <tr>
        <td><?php echo $key + 1; ?></td>
        <td><?php echo $data["id"]; ?></td>
        <td><?php echo $data["loket_id"]; ?></td>

    </tr>
<?php } ?>

<?php foreach ($antrian2 as $key => $data) { ?>
    <tr>
        <td><?php echo $key + 1; ?></td>
        <td><?php echo $data["id"]; ?></td>
        <td><?php echo $data["loket_id"]; ?></td>

    </tr>
<?php } ?>