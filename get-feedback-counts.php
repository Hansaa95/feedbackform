<?php
header('Content-Type: application/json; charset=utf-8');

$host = "localhost";
$db_name = "feedback_db";
$username = "root";
$password = "";

$conn = new mysqli($host, $username, $password, $db_name);
$conn->set_charset("utf8mb4");

if ($conn->connect_error) {
  http_response_code(500);
  echo json_encode(["error" => "Database connection failed"]);
  exit;
}

$sql = "SELECT feedback_type, COUNT(*) as count FROM feedback GROUP BY feedback_type";
$result = $conn->query($sql);

$data = [];

if ($result) {
  while ($row = $result->fetch_assoc()) {
    $data[$row['feedback_type']] = (int)$row['count'];
  }
  echo json_encode($data);
} else {
  http_response_code(500);
  echo json_encode(["error" => "Query failed"]);
}

$conn->close();
?>
