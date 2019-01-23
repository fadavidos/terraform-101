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
Este proyecto básico es capaz de crea un [EC2](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html) con un [EIP](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)


## A tener en cuenta
Debe reemplazar los atributos `ami` y el `key_name` en el archivo `./instances.tf`, ya que ambas pertenecen a mi cuenta de AWS. 

