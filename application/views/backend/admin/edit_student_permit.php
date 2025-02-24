
<?php

$permits = $this->db->get_where('student_permits', array('id' => $param2))->result_array();
foreach ($permits as $permit):


?>

<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                <i class="fa fa-edit"></i>&nbsp;&nbsp;Edit Student Permit
            </div>
            <div class="panel-body">
                <?php
                $students = $this->db->get('student')->result();
               
                
                echo form_open(base_url() . 'admin/student_permits/update/' . $permit['id'], array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));
                ?>

                <div class="form-group">
                    <label class="col-md-12" for="student_id">Select Student</label>
                    <div class="col-sm-12">
                        <select readonly name="student_id" class="form-control" required>
                            <option value="">Student</option>
                            <?php foreach ($students as $student): ?>
                                <option value="<?= $student->student_id ?>" <?= ($student->student_id == $permit['student_id']) ? 'selected' : '' ?>><?= $student->name ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="permit_type">Permit Type</label>
                    <div class="col-sm-12">
                        <select name="permit_type" class="form-control" required>
                            <option value="">- Select Permit Type -</option>
                            <?php 
                            $permit_types = ["Study Trip", "Competition", "Exam Leave", "Sick Leave", "Medical Appointment", "Personal Leave", "Family Emergency", "Bereavement Leave", "School Event", "Extracurricular Event", "Field Trip", "Suspension", "Detention", "Early Leave", "Late Arrival", "Other"];
                            foreach ($permit_types as $type): ?>
                                <option value="<?= $type ?>" <?= ($permit['permit_type'] == $type) ? 'selected' : '' ?>><?= $type ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="reason">Reason</label>
                    <div class="col-sm-12">
                        <textarea name="reason" class="form-control" required><?= $permit['reason'] ?></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="start_date">Date Start</label>
                    <div class="col-sm-12">
                        <input type="date" name="start_date" class="form-control" value="<?= $permit['start_date'] ?>" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="end_date">Date End</label>
                    <div class="col-sm-12">
                        <input type="date" name="end_date" class="form-control" value="<?= $permit['end_date'] ?>" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="status">Status</label>
                    <div class="col-sm-12">
                        <select name="status" class="form-control" required>
                            <option value="Pending" <?= ($permit['status'] == "Pending") ? 'selected' : '' ?>>Pending</option>
                            <option value="Approved" <?= ($permit['status'] == "Approved") ? 'selected' : '' ?>>Approved</option>
                            <option value="Rejected" <?= ($permit['status'] == "Rejected") ? 'selected' : '' ?>>Rejected</option>
                        </select>
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