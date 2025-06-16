# Define carpeta base
$baseDir = "90-dias-devops"

# Define semanas
$semanas = @(
    "semana-01",
    "semana-02",
    "semana-03",
    "semana-04",
    "semana-05",
    "semana-06",
    "semana-07",
    "semana-08",
    "semana-09",
    "semana-10",
    "semana-11",
    "semana-12",
    "semana-13"
)

# Subestructura interna para cada semana
$subDirs = @(
    "ejercicios/dia-01",
    "ejercicios/dia-02",
    "ejercicios/dia-03",
    "ejercicios/dia-04",
    "ejercicios/dia-05",
    "ejercicios/dia-06",
    "ejercicios/proyecto-semanal"
)

# Crear carpeta base
New-Item -Path $baseDir -ItemType Directory -Force | Out-Null

# Crear estructura para cada semana
foreach ($semana in $semanas) {
    $semanaPath = Join-Path $baseDir $semana
    New-Item -Path $semanaPath -ItemType Directory -Force | Out-Null

    # Crear archivo README.md
    New-Item -Path (Join-Path $semanaPath "README.md") -ItemType File -Force | Out-Null

    # Crear subdirectorios
    foreach ($sub in $subDirs) {
        $fullSubPath = Join-Path $semanaPath $sub
        New-Item -Path $fullSubPath -ItemType Directory -Force | Out-Null
    }
}

# Mensaje de éxito
Write-Host "Estructura creada exitosamente." -ForegroundColor Green
