# Exercice 1
# resource "null_ressource" "Exo1" {
#   provisioner "local-exec" {
#     command = "echo 'Nom du film' >> film.txt"
#   }
# }

# Exercice 2
variable "movie" {
  type        = string
  default     = "film quelconque"
}

resource "null_ressource" "Exo2" {
  provisioner "local-exec" {
    command = "echo '${var.movie}' >> film.txt"
  }
}

output "Confirmation" {
  value = "Fichier film.txt créer"
}

# Exercice 3