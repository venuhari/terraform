resource "time_static" "time_stamp" {

}

resource "local_file" "file2" {
    filename = "test1234"
    content = "this file is created at ${time_static.time_stamp.id}"
}