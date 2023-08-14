resource "aws_lightsail_instance" "example_instance" {
  name              = "VShopify"    #aqui vcs definem um nome qualquer, coloquei o do trabalho de vcs
  availability_zone = "us-east-1a"  #onde ele estara disponivel, aqui e um valor default ou vcs podem alterar depois se necessario (mas eu acho que nao precisa)
  blueprint_id      = "linux_2_0"   #define a imagem da instancia, vcs querem linux
  bundle_id         = "2xlarge_2_0" #tamanho da instância, incluindo a quantidade de memória, núcleos de CPU, armazenamento e largura de banda. 
  #esse que coloquei tem 4 GB de memória e 2 núcleos de CPU, como vcs pediram

  key_pair_name = "your-ssh-key-pair" # aqui vcs tem que criar uma chave ssh na aws antes e subistituir o nome aqui.
  # mas como nao sera aplicado agora, pode deixar assim que depois criamos se necessario

  tags = {
    Name = "MyLightsailInstance"
  }
}
