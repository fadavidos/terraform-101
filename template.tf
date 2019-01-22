data "template_file" "user_data" {
  template = "${file("templates/user-data.sh.tpl")}"
  vars = {
    mensajeHolaMundo = "Hola Mundo desde EC2"
  }
}