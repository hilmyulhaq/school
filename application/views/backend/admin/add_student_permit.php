<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                <i class="fa fa-plus"></i>&nbsp;&nbsp;Add Student Permit
            </div>
            <div class="panel-body">

                <?php

                $students = $this->db->get('student')->result();

                echo form_open(base_url() . 'admin/student_permits/insert', array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));
                ?>

                <div class="form-group">
                    <label class="col-md-12" for="student_id">Select Student</label>
                    <div class="col-sm-12">
                        <select name="student_id" class="form-control" required>
                            <option value="">Student</option>
                            <?php foreach ($students as $student): ?>
                                <option value="<?= $student->student_id ?>"><?= $student->name ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="permit_type">Permit Type</label>
                    <div class="col-sm-12">
                        <select name="permit_type" class="form-control" required>
                            <option value="">- Select Permit Type -</option>
                            <option value="Study Trip">Study Trip</option>
                            <option value="Competition">Competition</option>
                            <option value="Exam Leave">Exam Leave</option>
                            <option value="Sick Leave">Sick Leave</option>
                            <option value="Medical Appointment">Medical Appointment</option>
                            <option value="Personal Leave">Personal Leave</option>
                            <option value="Family Emergency">Family Emergency</option>
                            <option value="Bereavement Leave">Bereavement Leave</option>
                            <option value="School Event">School Event</option>
                            <option value="Extracurricular Event">Extracurricular Event</option>
                            <option value="Field Trip">Field Trip</option>
                            <option value="Suspension">Suspension</option>
                            <option value="Detention">Detention</option>
                            <option value="Early Leave">Early Leave</option>
                            <option value="Late Arrival">Late Arrival</option>
                            <option value="Other">Other</option>

                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="reason">Reason</label>
                    <div class="col-sm-12">
                        <textarea name="reason" class="form-control" required></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="start_date">Date Start</label>
                    <div class="col-sm-12">
                        <input type="date" name="start_date" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="end_date">Date End</label>
                    <div class="col-sm-12">
                        <input type="date" name="end_date" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="status">Status</label>
                    <div class="col-sm-12">
                        <select name="status" class="form-control" required>
                            <option value="Pending">Pending</option>
                            <option value="Approved">Approved</option>
                            <option value="Rejected">Rejected</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-info btn-block btn-rounded btn-sm">
                        <i class="fa fa-plus"></i>&nbsp;&nbsp;Save
                    </button>
                </div>

                <?php echo form_close(); ?>

            </div>
        </div>
    </div>
</div>