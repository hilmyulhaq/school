<div class="col-sm-12">
				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-list"></i>&nbsp;&nbsp;<?php echo get_phrase('Select Class');?></div>
                            <div class="panel-wrapper collapse in" aria-expanded="true">
                                <div class="panel-body table-responsive">
                    
                                <div class="form-group">
                    <div class="col-sm-12">
                    <select id="class_id" class="form-control">
                    <option value=""><?php echo get_phrase('select_class');?></option>

                    <?php $class =  $this->db->get('class')->result_array();
                    foreach($class as $key => $class):?>
                    <option value="<?php echo $class['class_id'];?>"
                    <?php if($class_id == $class['class_id']) echo 'selected';?>><?php echo $class['name'];?></option>
                    <?php endforeach;?>
                   </select>

                  </div>
                 </div>
                 <button type="button" id="find" class="btn btn-success btn-rounded btn-sm btn-block"><?php echo get_phrase(' Generate Mass ID Card');?></button>
                 <hr>
				
 				<!-- PHP that includes table for subject starts here  ------>
                <div id="data">
                <div class="printableArea">
                <?php include 'studentMassIdentityCardPage.php';?>
                </div>

                </div>
                <!-- PHP that includes table for subject ends here  ------>


				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {

		$('#class_id').select2();
		$('#find').on('click', function() 
		{
			var class_id = $('#class_id').val();
			 if (class_id == "") {
           $.toast({
            text: 'Please select class before clicking generate mass id card button',
            position: 'top-right',
            loaderBg: '#f56954',
            icon: 'warning',
            hideAfter: 3500,
            stack: 6
        })
            return false;
        }
			$.ajax({
				url: '<?php echo site_url('admin/studentMassIdentityCardPage/');?>' + class_id
			}).done(function(response) {
				$('#data').html(response);
			});
		});

	});


</script>