# Exercice 1
# resource "null_ressource" "Exo1" {
#   provisioner "local-exec" {
#     command = "echo 'Nom du film' >> film.txt"
#   }
# }

# Exercice 2
# variable "movie" {
#   type        = string
#   default     = "film quelconque"
# }

# resource "null_ressource" "Exo2" {
#   provisioner "local-exec" {
#     command = "echo '${var.movie}' >> film.txt"
#   }
# }

# output "Confirmation" {
#   value = "Fichier film.txt créer"
# }

# Exercice 3
variable "movies_name" {
  type = map(string)
  default = {
    film1  = "Nom film1"
    film2  = "Nom film2"
    film3 = "Nom film3"
  }
}

resource "null_ressource" "Exo2" {
  provisioner "local-exec" {
    for_each = var.movies_name
    command = "echo '${var.movie}' >> Movies.txt"
  }
}