<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accueil</title>
    <link rel="stylesheet" href="../css_files/Footer.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        /* Ajout d'un style rapide pour le rendu */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .footer {
            background-color: #004d00; /* Vert foncé */
            color: #ffffff;
            padding: 30px 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .footer-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            width: 90%;
            max-width: 1200px;
            gap: 20px;
        }

        .footer-section {
            flex: 1;
            min-width: 250px;
        }

        .footer-section h3 {
            font-size: 18px;
            margin-bottom: 15px;
            color: #33cc33; /* Vert clair */
        }

        .footer-section p {
            line-height: 1.6;
        }

        .footer-section ul {
            list-style: none;
            padding: 0;
        }

        .footer-section ul li {
            margin: 10px 0;
        }

        .footer-section ul li a {
            color: #ffffff;
            text-decoration: none;
        }

        .footer-section ul li a:hover {
            color: #33cc33; /* Vert clair */
        }

        .footer-section .footer-logo h1 {
            font-size: 24px;
            color: #33cc33; /* Vert clair */
        }

        .footer-section .footer-logo span {
            color: #ffffff;
        }

        .footer-bottom {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #bfbfbf;
        }

        .social-icons {
            display: flex;
            gap: 15px;
        }

        .social-icons a {
            color: #ffffff;
            font-size: 20px;
            transition: color 0.3s;
        }

        .social-icons a:hover {
            color: #33cc33; /* Vert clair */
        }
    </style>
</head>
<body>
    <!-- Nouveau footer -->
    <footer class="footer">
        <div class="footer-container">
            <!-- Section 1 : Logo et description -->
            <div class="footer-section logo-description">
                <a href="Accueil.php" class="footer-logo">
                    <h1><span>A propos</span></h1>
                </a>
                <p>
                    Ce site est destiné à aider les étudiants internationaux qui arrivent à Limoges
                </p>
            </div>

            <!-- Section 2 : Liens rapides -->
            <div class="footer-section quick-links">
                <h3>Liens rapides</h3>
                <ul>
                    <li><a href="Accueil.php"><i class="fas fa-home"></i> Accueil</a></li>
                    <li><a href="Apropos.php"><i class="fas fa-info-circle"></i> À propos</a></li>
                    <li><a href="Contact.php"><i class="fas fa-envelope"></i> Contactez-nous</a></li>
                </ul>
            </div>

            <!-- Section 3 : Contact -->
            <div class="footer-section contact-info">
                <h3>Contactez-nous</h3>
                <ul>
                    <li><i class="fas fa-phone"></i> 0611436239</li>
                    <li><i href="accueil@3il.fr" class="fas fa-envelope"></i> Un soucis en particulier ?</li>
                </ul>
                <div class="social-icons">
                    <a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook-square"></i></a>
                    <a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
                    <a href="https://www.twitter.com" target="_blank"><i class="fab fa-twitter"></i></a>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>
