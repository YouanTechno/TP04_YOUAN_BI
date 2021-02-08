<%-- 
    Document   : listAccount
    Created on : 5 févr. 2021, 20:48:52
    Author     : youan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="backliste.css">
    </head>
    <body>
        <div align="center">
         <h1 id="titre">Gestion des Compts Bancaire</h1>
      
        <!-- Message qui s'affiche lorsque la page est appelé avec un paramètre http message -->

        <h2>Menu de gestion des Comptes</h2>
        <ul>
            <a href="servlet?action=listeAccount" id="lien">Afficher/raffraichir la liste de tous les Compts</a>
            <p>
        </ul>
           
        <!-- Fin du menu -->

        <!-- Zone qui affiche les utilisateurs si le paramètre action vaut listerComptes -->
        <c:if test="${param['action'] == 'listeAccount'}" >
            <h2>Liste des Comptes</h2>
            <div id="tab">
            <table border="10">
                <!-- La ligne de titre du tableau des comptes -->
                <tr>
                    <td><b>Nom</b></td>
                    <td><b>Prénom</b></td>
                    <td><b>Numéro de Compt</b></td>
                    <td><b>Sold</b></td>
                </tr>

                <!-- Ici on affiche les lignes, une par utilisateur -->
                <!-- cette variable montre comment on peut utiliser JSTL et EL pour calculer -->
                <c:set var="total" value="0"/>

               <c:forEach var="compt" items="${requestScope['listeDesCompts']}">
                    <tr>
                        <td>${compt.firstName}</td>
                        <td>${compt.lastName}</td>
                        <td>${compt.accountNumber}</td>
                        <td>${compt.balance}</td>
                        <!-- On compte le nombre de users -->
                        <c:set var="total" value="${total+1}"/>
                    </tr>
                </c:forEach>

                <!-- Affichage du solde total dans la dernière ligne du tableau -->
                <tr><td><b>TOTAL</b></td><td></td><td><b>${total}</b></td><td></td></tr>
            </table>
            </div>
            <br>
            <h3><a href="newAccount.jsp">Ajouter un compte</a></h3> 
        </c:if>
            </div>
    </body>
</html>
