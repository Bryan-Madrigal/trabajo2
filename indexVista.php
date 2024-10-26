<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Oasis Tour</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="vista/css/style.css"> <!-- Enlace al archivo CSS -->
</head>
<body>

    <!-- Encabezado -->
    <?php include 'js/header.php'; ?>

    <!-- Video de fondo -->
    <div class="video-container">
        <video class="video-background" autoplay muted loop>
            <source src="vista/video/video.mp4" type="video/mp4">
            Tu navegador no soporta videos.
        </video>
        <div class="welcome-header text-center">
            <h1>OASIS TOUR</h1>
            <p>¡Bienvenido a Chiapas, donde la belleza natural se encuentra con la cultura!</p>
        </div>
    </div>

    <!-- Sección Destinos -->
    <div class="section destinos">
        <div class="section-content">
            <h2>Destinos</h2>
            <p>Explora los mejores destinos turísticos de Chiapas, con paisajes impresionantes y aventuras inolvidables.</p>
            <a href="#reservaciones" class="btn">Reservar ahora</a>
        </div>
    </div>

    <!-- Sección Reservaciones -->
    <div class="section reservaciones" id="reservaciones">
        <div class="section-content">
            <h2>Reservaciones</h2>
            <p>Haz tu reservación de manera fácil y rápida, y prepárate para una experiencia única.</p>
            <a href="#blog-viajes" class="btn">Leer el Blog</a>
        </div>
    </div>

    <!-- Sección Blog de Viajes -->
    <div class="section blog-viajes" id="blog-viajes">
        <div class="section-content">
            <h2>Blog de Viajes</h2>
            <p>Lee nuestras recomendaciones y consejos para sacar el máximo provecho de tu visita a Chiapas.</p>
            <a href="#servicios-turisticos" class="btn">Ver Servicios</a>
        </div>
    </div>

    <!-- Sección Servicios Turísticos -->
    <div class="section servicios-turisticos" id="servicios-turisticos">
        <div class="section-content">
            <h2>Servicios Turísticos</h2>
            <p>Encuentra los mejores servicios turísticos para hacer de tu viaje una experiencia inolvidable.</p>
            <a href="#chiapas" class="btn">Saber más de Chiapas</a>
        </div>
    </div>

    <!-- Sección Chiapas -->
    <div class="section chiapas" id="chiapas">
        <div class="section-content">
            <h2>Chiapas</h2>
            <p>Descubre la historia, cultura y biodiversidad de este increíble estado.</p>
            <a href="#contacto" class="btn">Contacto</a>
        </div>
    </div>

    <!-- Sección Contacto -->
    <div class="section contacto" id="contacto">
        <div class="section-content">
            <h2>Contacto</h2>
            <p>Contáctanos para más información o para resolver cualquier duda que tengas.</p>
            <a href="#header" class="btn">Volver al inicio</a>
        </div>
    </div>

    <!-- Pie de página -->
    <?php include 'js/footer.php'; ?>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
