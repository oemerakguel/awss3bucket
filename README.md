
# Terraform AWS S3 Research

## Beschreibung
Diese Aufgabe bestand darin, den AWS Provider in Terraform zu erforschen und eine spezifische Ressource, einen S3 Bucket, zu erstellen.  
Das Ziel war es, zu verstehen, wie man AWS-Ressourcen mit Terraform verwaltet und wie man die dazugehörige Dokumentation nutzt.

## Speicherort der Ergebnisse
Alle Dateien, inklusive der Terraform Konfiguration (`.tf` Dateien) und der Dokumentation, befinden sich im Verzeichnis:

```
terraform/aws-s3-research/
```

---


### 1. Was macht der AWS Provider in Terraform?
Der AWS Provider verbindet Terraform mit AWS. Er sorgt dafür, dass Terraform die AWS API nutzen kann, um Ressourcen zu erstellen, zu ändern oder zu löschen. Ohne Provider wüsste Terraform nicht, wie es mit AWS kommunizieren soll.

### 2. Wie habe ich den AWS Provider konfiguriert und warum?
Ich habe den Provider so eingestellt:

```hcl
provider "aws" {
  region  = "eu-central-1"
  profile = "Student-474668396358"
}
```

Die Region ist Frankfurt, weil ich in Europa arbeite. Das Profil ist mein AWS SSO Profil, damit meine Zugangsdaten nicht direkt in der Datei stehen. So sind meine Secrets sicher.

### 3. Was ist ein aws_s3_bucket in AWS?
Ein `aws_s3_bucket` ist ein Speicherort in AWS, wo man Dateien ablegen kann – wie ein Ordner in der Cloud. Man kann dort z.B. Backups, Webseiten oder andere Dateien speichern.

### 4. Wo habe ich die Dokumentation gefunden?
Ich habe die Dokumentation auf der Terraform Registry gefunden:  
- Für den AWS Provider: https://registry.terraform.io/providers/hashicorp/aws/latest  
- Für den S3 Bucket: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

### 5. Was ist der Unterschied zwischen "Argument Reference" und "Attribute Reference"?
- *Argument Reference* sagt mir, welche Eingaben ich machen muss, um eine Ressource zu erstellen (z.B. Name des Buckets).  
- *Attribute Reference* zeigt, was ich später über die Ressource erfahren kann (z.B. die ID oder ARN, die ich in Outputs nutzen kann).

### 6. Was macht mein Terraform Code?
Mein Code erstellt einen S3 Bucket mit einem einzigartigen Namen, damit es keinen Namenskonflikt gibt.  
Ich lasse mir auch den ARN und die Domain des Buckets ausgeben, damit ich diese Infos nach der Erstellung habe.

---

## Screenshots
(Screenshots befinden sich im Ordner `terraform/aws-s3-research/screenshots/`)

---

## Wie man das Projekt ausführt
1. `terraform init` – lädt benötigte Provider.  
2. `terraform plan` – zeigt, was geändert wird.  
3. `terraform apply` – erstellt den Bucket.  
4. `terraform destroy` – löscht den Bucket wieder.

---

