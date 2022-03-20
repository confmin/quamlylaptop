<?php
class Database
{
    private $host = "localhost";
    private $user = "root";
    private $password = "";
    private $database = "laptop";
    public function __construct()
    {
        $this->conn =new mysqli($this->host,$this->user,$this->password,$this->database);
        if ($this->conn->connect_error)
        {
            die("connect failed".$this->db->connect_error);
            echo "Không thành công";
        }

    }

    public function execute($sql)
    {
        $result= mysqli_query($this->conn, $sql);
        return $result;

    }

    public function executeResult($sql)
    {
        $result = mysqli_query($this->conn,$sql);
        $list = [];
        while ($row = mysqli_fetch_array($result, 1)) {
            $list[] = $row;
        }
        return $list;
    }
}
?>