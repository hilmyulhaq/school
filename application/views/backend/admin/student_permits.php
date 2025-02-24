<div class="row">
    <div class="col-sm-12">
		<div class="panel panel-info">
            <div class="panel-heading"> <?php echo get_phrase('All Student Permits');?>
            
            <button onclick="showAjaxModal('<?php echo base_url();?>modal/popup/add_student_permit');" 
    class="btn btn-info btn-xs pull-right">
        <i class="fa fa-plus"></i><?php echo get_phrase('add_permits'); ?>
</button>
            
            </div>
                <div class="panel-body table-responsive">


         <table id="example23" class="display nowrap" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>#</th>
                    <th><?php echo get_phrase ('Student Name');?></th>
                    <th><?php echo get_phrase ('Permite Type');?></th>
                    <th><?php echo get_phrase ('Start Date');?></th>
                    <th><?php echo get_phrase ('End Date');?></th>
                    <th><?php echo get_phrase ('Reason');?></th>
                    <th><?php echo get_phrase ('Status');?></th>
                    <th><?php echo get_phrase ('Submit At');?></th>
                    <th><?php echo get_phrase ('option');?></th>
                </tr>
             </thead>

             <tbody>
    <?php foreach ($student_permits as $key => $row):?>
             <tr>
                    <td><?php echo $row['id'];?></td>
                    <td><?php echo $row['name'];?></td>
                    <td><?php echo $row['permit_type'];?></td>
                    <td><?php echo $row['start_date'];?></td>
                    <td><?php echo $row['end_date'];?></td>
                    <td><?php echo $row['reason'];?></td>
                    <td><?php echo $row['status'];?></td>
                    <td><?php echo $row['created_at'];?></td>
                    <td>
                    
                    <a onclick="showAjaxModal('<?php echo base_url();?>modal/popup/edit_student_permit/<?php echo $row['id'];?>')" class="btn btn-info btn-circle btn-xs"><i class="fa fa-edit"></i></a>
                    <a href="<?php echo base_url();?>admin/student_permits/delete/<?php echo $row['id'];?>" onclick="return confirm('Are you sure want to delete?');" class="btn btn-danger btn-circle btn-xs" style="color:white"><i class="fa fa-times"></i></a>
                    
                    
                    </td>
            </tr>
    <?php endforeach;?>

            </tbody>
        </table>



                </div>
        </div>
    </div>
</div>