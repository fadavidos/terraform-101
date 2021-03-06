# Terraform-101

## Prerequisitos:
- Instalar [pip](https://en.wikipedia.org/wiki/Pip_(package_manager))
- Instalar [awscli](https://aws.amazon.com/cli/)
- Instalar [Terraform](https://www.terraform.io/downloads.html)
- Crear una cuenta en [AWS](https://aws.amazon.com/)

#### Instalar pip
- `sudo apt-get install python-pip`

#### Isntalar awscli
- `sudo pip install awscli`

#### Instalar Terraform
- `unzip terraform_xx.xx.xx_linux_amd64.zip`
- `mv terraform /usr/local/bin/`


## Descripción


Este proyecto básico es capaz de crea un [EC2](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html) con un [EIP](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html).

En la instancia de EC2 instala apache2 y hace un "Hola mundo" en la página index.html.

Los valores de las instancias están almacenadas en el archivo de variables `variables.tfvars`.

- Para ejecutar el plan se debe usar el comando: `TF_LOG=TRACE TF_LOG_PATH=./terraform.log terraform plan -var-file=variables.tfvars`
- Para aplicar el script en AWS se debe usar el comando: `TF_LOG=TRACE TF_LOG_PATH=./terraform.log terraform apply -var-file=variables.tfvars`


## A tener en cuenta
La `ami` usada esta vacía y esta disponible para la región us-east-2.

`TF_LOG=TRACE TF_LOG_PATH=./terraform.log` permite activar la salida de log y guardarlo en un archivo .log.

Debe reemplazar los atributos 
- `key_name` 

En el archivo `./instances.tf`, ya que pertenecen a mi cuenta de AWS. 

## Script
- `sudo apt-get update`
- `sudo apt-get install apache2`
- `cd /var/www/html`
- `sudo rm index.html `
- `cd ..`
- `sudo chmod 777 html/`
- `cd html`
- `echo "Hola mundo desde EC2" >> index.html`
