<?php
header('Content-Type: application/json; charset=utf-8');

// Database credentials
$host = "localhost";
$db_name = "feedback_db";
$username = "root";
$password = "";

// Connect to database
$conn = new mysqli($host, $username, $password, $db_name);
$conn->set_charset("utf8mb4");

if ($conn->connect_error) {
  http_response_code(500);
  echo json_encode(["error" => "Database connection failed"]);
  exit;
}

// Read JSON body
$input = json_decode(file_get_contents('php://input'), true);
$feedback_type = $input['feedback'] ?? '';

if (!$feedback_type) {
  http_response_code(400);
  echo json_encode(["error" => "Invalid feedback"]);
  exit;
}

// Optional: log to file for debugging
file_put_contents('feedback_log.txt', "Received: " . $feedback_type . PHP_EOL, FILE_APPEND);

// Save to database
$stmt = $conn->prepare("INSERT INTO feedback (feedback_type) VALUES (?)");
$stmt->bind_param("s", $feedback_type);

if ($stmt->execute()) {
  echo json_encode(["status" => "success"]);
} else {
  http_response_code(500);
  echo json_encode([
    "error" => "Failed to save feedback",
    "mysqli_error" => $conn->error // Debug only
  ]);
}

$stmt->close();
$conn->close();
?>
