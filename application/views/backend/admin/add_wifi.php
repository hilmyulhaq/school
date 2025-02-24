<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-info">
            <div class="panel-heading"> 
                <i class="fa fa-plus"></i>&nbsp;&nbsp;Tambah WiFi Account
            </div>
            <div class="panel-body">

                <?php echo form_open(base_url().'admin/wifi/insert', array('class' => 'form-horizontal form-groups-bordered validate', 'enctype'=>'multipart/form-data'));?>

                <div class="form-group">
                    <label class="col-md-12" for="example-text">Username</label>
                    <div class="col-sm-12">
                        <input type="text" name="username" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="example-text">Password</label>
                    <div class="col-sm-12">
                        <input type="password" name="password" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="example-text">Profile</label>
                    <div class="col-sm-12">
                        <input type="text" name="profile" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-info btn-block btn-rounded btn-sm">
                        <i class="fa fa-plus"></i>&nbsp;&nbsp;Save
                    </button>
                </div>

                <?php echo form_close();?>

            </div>
        </div>
    </div>
</div>
