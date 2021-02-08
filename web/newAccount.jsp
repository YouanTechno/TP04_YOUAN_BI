<%-- 
    Document   : newAccount
    Created on : 5 févr. 2021, 20:48:28
    Author     : youan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="backliste.css">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body id="page2">
        
        <div align="center">
            <h1 id="titre">Gestion des Comptes Bancaires</h1>
            <ol>
           <a href="servlet?action=creerComptDeTest">Créer 4 Comptes de test</a>
            <br>
            <a href="listAccount.jsp">Liste des comptes </a>
            <h3 id="titre2">Créer un Compte</h3> <br>
            <div id="tab2">
            <form action="servlet" method="get"> <br>
                
                Nom : <input type="text" name="nom"/><br> <br>
                Prénom : <input type="text" name="prenom"/><br> <br>
                Num de compt : <input type="text" name="numcompt"/><br> <br>
                Montant : <input type="number" name="montant"/><br> <br>

                <!-- Astuce pour passer des paramètres à une servlet depuis un formulaire JSP !-->
                <input type="hidden" name="action" value="creerCompt"/>
                <input type="submit" value="Créer" name="submit"/>
            </form>
            </div>
            <br>
            <h3 id="lienp"><a href="listAccount.jsp" >Liste des comptes </a></h3> 
          </ol>
        </div>
       </body>
</html>
