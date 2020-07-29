<?php
include('../db/db.php');

$userid = isset($_GET['id']) ? $_GET['id'] : $_GET['id']=1;
if(empty($userid)) {
	echo "Please pass studnet id";exit;
}
$student_sql = "SELECT working_days, present_days,absent_days, month FROM students WHERE id=".$userid;
$student_result = mysqli_query($conn, $student_sql);
$student = mysqli_fetch_assoc($student_result);
$dataPoints = array(
	array("y" => $student['working_days'], "label" => $student['month']." Working Days"),
	array("y" => $student['present_days'], "label" => $student['month']." Present Days"),
	array("y" => $student['absent_days'], "label" => $student['month']." Absent Days")
);


$students = array();
$students_sql = "SELECT * FROM students";
$students_result = mysqli_query($conn, $students_sql);
while($student = $students_result->fetch_assoc()) {
	$students[] = $student;
}
?>
<!DOCTYPE HTML>
<html>
<head>
	<title>Student Monthly Attendance</title>
	<!-- custom / created by me css file -->
	<link rel="stylesheet" href="../src/css/style.css">

	<!-- Bootstrap and JQuery related css and javascript files -->
	<link rel="stylesheet" href="../src/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

	<!-- Graphs related javascript files -->
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script>
	window.onload = function () {
	 
		var chart = new CanvasJS.Chart("chartContainer", {
			title: {
				text: "Student’s Monthly Attendance"
			},
			axisY: {
				title: "Number of Days"
			},
			data: [{
				type: "line",
				dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
			}]
		});
		chart.render();
	}
	</script>
</head>
<body>
	<div id="chartContainer" class="mar-all graph"></div>
	<div id="student_data" class="mar-all">
		<table class="table table-striped" border="2">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Month</th>
					<th scope="col">Working Days</th>
					<th scope="col">Present Days</th>
					<th scope="col">Absent Days</th>
				</tr>
			</thead>
			<tbody>
				<?php if ($students > 0) { 
						foreach ($students as $student) {
					?>
						<tr>
							<td><?php echo $student['id']; ?></td>
							<td><?php echo $student['firstname']; ?></td>
							<td><?php echo $student['lastname']; ?></td>
							<td><?php echo $student['month']; ?></td>
							<td><?php echo $student['working_days']; ?></td>
							<td><?php echo $student['present_days']; ?></td>
							<td><?php echo $student['absent_days']; ?></td>
						</tr>
				<?php }
					} else { ?>
						<tr>
							<td><?php echo "Data not found." ?></td>
						</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
</body>
</html>