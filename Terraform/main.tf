resource "terraform_data" "Exo1" {
  provisioner "local-exec" {
    command = "echo 'Nom du film' >> film.txt"
  }
}

# Exercice 2
# Le but de cet exercice est de créer une configuration Terraform (main.tf) qui écrit le nom de votre film préféré dans le fichier film.txt le nom du film doit être contenu dans une variable nommé movie_name.
# De plus vous devez ajouté un output « Fichier film.txt créer ».
# Utilisation d’une variable de type String.
# variable name {
#   type        = string
#   default     = "film quelconque"
# }

# resource "terraform_data" "Exo2" {
#   movie_name = "Nom du film"
#   provisioner "local-exec" {
#     command = "echo >> film.txt"
#   }
#   provisioner "local-exec" {
#     command = "echo >> film.txt"
#   }
# }
# }

