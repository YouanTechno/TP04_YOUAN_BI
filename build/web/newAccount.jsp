<%-- 
    Document   : newAccount
    Created on : 5 févr. 2021, 20:48:28
    Author     : youan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div align="center">
            <h1>Gestionnaire d'utilisateurs</h1>
            <ol>
           <a href="servlet?action=creerComptDeTest">Créer 4 utilisateurs de test</a>
            <br>
            <a href="listAccount.jsp">Liste des comptes </a>
            <h3>Créer un Compt</h3> <br>
            <form action="servlet" method="get"> <br>
                Num de compt : <input type="text" name="numcompt"/><br> <br>
                Nom : <input type="text" name="nom"/><br> <br>
                Prénom : <input type="text" name="prenom"/><br> <br>
                Montant : <input type="number" name="montant"/><br> <br>
                <!-- Astuce pour passer des paramètres à une servlet depuis un formulaire JSP !-->
                <input type="hidden" name="action" value="creerCompt"/>
                <input type="submit" value="Créer l'utilisateur" name="submit"/>
            </form>
            <br>
            <h3><a href="listAccount.jsp">Liste des comptes </a></h3> 
          </ol>
        </div>
       </body>
</html>
