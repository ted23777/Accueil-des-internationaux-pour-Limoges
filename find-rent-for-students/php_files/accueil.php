<!--index.php-->
<?php
    session_start();
    if(isset($_SESSION['pageEtud']))header('locatoin:pageEtudiant.php');;;
    if(isset($_SESSION['pageProp']))header('locatoin:pagePropiétaire.php');
    if(isset($_SESSION['pageEtud']))header('locatoin:pageAdministrateur.php'); 
    include_once 'header.php';
    include_once '../php_baseDonnée_files/connexionAuDataBase.php';
?>

        <!-- highbody -->
<div class="high-body">
    <div class="textPublicitaire">
        <h1>BIENVENUE À LIMOGES</h1>
        <h2>Commençons par votre logement</h2>
    </div>
    <div class="formulaire">
        <form action="Rechereche.php" method="post">
            <h2>Que recherchez-vous ?</h2><br>
            <table>
                <tr>
                    <td>
                        <h4>Votre faculté ou Université</h4>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" placeholder="Université" class="autoApi" id="univ" name="u">
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>Budget :</h4>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input class="pos" type="text" placeholder="Prix min (DH)" name="pmi">
                        <input class="pos" type="text" placeholder="Prix max (DH)" name="pma">
                    </td>
                </tr>
                <tr class="plusDeFormulaire">
                    <td>
                        <h4>Type :</h4>
                    </td>
                </tr>
                <tr class="plusDeFormulaire">
                    <td>
                        <select name="t" id="" class="autoApi">
                            <option></option>
                            <option value="Appartement">Appartement</option>
                            <option value="Chambre">Chambre</option>
                            <option value="Studio">Studio</option>
                            <option value="Villa">Villa</option>
                            <option value="Logement">Autre</option>
                        </select>
                    </td>
                </tr>
                <tr class="plusDeFormulaire">
                    <td>
                        <h4>Surface :</h4>
                    </td>
                </tr>
                <tr class="plusDeFormulaire">
                    <td>
                        <input type="text" class="pos" placeholder="Min m²" name="smi">
                        <input type="text" class="pos" placeholder="Max m²" name="sma">
                    </td>
                </tr>
                <tr class="plusDeFormulaire">
                    <td>
                        <h4>Nombre des chambres :</h4>
                    </td>
                </tr>
                <tr class="plusDeFormulaire">
                    <td>
                        <input class="autoApi" type="text" placeholder="Nombre des chambres" name="ch">
                    </td>
                </tr>
                <tr class="plusDeFormulaire">
                    <td>
                        <h4>Colocation :</h4>
                    </td>
                </tr>
                <tr class="plusDeFormulaire">
                    <td>
                        <label class="checkformlabel" onclick="checkform(0)">
                            <input type="radio" class="checkform" name="colocation" value="1">&nbsp;&nbsp;Oui
                        </label>
                        <label class="checkformlabel" onclick="checkform(1)">
                            <input type="radio" class="checkform" name="colocation" value="0">&nbsp;&nbsp;Non
                        </label>
                    </td>
                </tr>
                <tr class="plusDeFormulaire">
                    <td>
                        <h4>Logements meublés :</h4>
                    </td>
                </tr>
                <tr class="plusDeFormulaire">
                    <td>
                        <label class="checkformlabel" onclick="checkform(2)">
                            <input type="radio" class="checkform" name="meublée" value="1">&nbsp;&nbsp;Oui
                        </label>
                        <label class="checkformlabel" onclick="checkform(3)">
                            <input type="radio" class="checkform" name="meublée" value="0">&nbsp;&nbsp;Non
                        </label>
                    </td>
                </tr>
            </table>
            <div class="divcherchebtn">
                <button class="cherchebtn" type="submit" name="chercheranonc">Rechercher</button>
                <button type="button" class="buttonPlusInfo" onclick="agrandirFormulaire()">Plus d'informations</button>
            </div>
        </form>
    </div>
</div>

<?php
    include 'footer.php';
?>