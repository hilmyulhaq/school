<?php

$wifi_data = $this->db->get_where('wifi_accounts', array('id' => $param2))->result_array();
foreach ($wifi_data as $wifi):

?>

<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-info">
            <div class="panel-heading"> 
                <i class="fa fa-edit"></i>&nbsp;&nbsp;Edit WiFi Account
            </div>
            <div class="panel-body">

                <?php echo form_open(base_url() . 'admin/wifi/update/' . $wifi['id'], array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data')); ?>

                <div class="form-group">
                    <label class="col-md-12" for="example-text">Username</label>
                    <div class="col-sm-12">
                        <input type="text" name="username" value="<?php echo $wifi['username']; ?>" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="example-text">Password</label>
                    <div class="col-sm-12">
                        <input type="password" name="password" value="<?php echo $wifi['password']; ?>" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="example-text">Profile</label>
                    <div class="col-sm-12">
                        <input type="text" name="profile" value="<?php echo $wifi['profile']; ?>" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-info btn-block btn-rounded btn-sm">
                        <i class="fa fa-save"></i>&nbsp;&nbsp;Update
                    </button>
                </div>

                <?php echo form_close(); ?>

            </div>
        </div>
    </div>
</div>

<?php endforeach; ?>
