<%@ page import="java.util.List" %>
<%@ page import="com.constraction.constructionxpert.model.Projet" %>
<jsp:include page="../header.jsp" />
<%
    List<Projet> projets = (List<Projet>) request.getAttribute("projets");
%>

<div class="content-wrapper">
    <div class="page-header">
        <h3 class="page-title"> La Liste des Projets </h3>
    </div>
    <div class="row">
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>Nom</th>
                            <th>Description</th>
                            <th>Date de Debut</th>
                            <th>Date de Fin</th>
                            <th>Budget</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <% if (projets != null && !projets.isEmpty()) {
                            for (Projet projet : projets) { %>
                        <tr>
                            <td><%= projet.getNom() %></td>
                            <td><%= projet.getDescription()%></td>
                            <td><%= projet.getDateDeDebut()%></td>
                            <td><%= projet.getDateDeFin() %></td>
                            <td><%= projet.getBudget() %></td>
                            <td>
                                <a href="${pageContext.request.contextPath}/projet?action=modifier&id=<%= projet.getProjetid() %>"
                                   class="btn btn-primary btn-sm">
                                    <i class="fas fa-edit"></i> Modifier
                                </a>
                                <form action="${pageContext.request.contextPath}/projet?action=supprimerProjet&id=<%= projet.getProjetid() %>"
                                      method="post" style="display:inline;">
                                    <button type="submit" class="btn btn-danger btn-sm"
                                            onclick="return confirm('Etes-vous sur de vouloir supprimer ce projet ?');">
                                        <i class="fas fa-trash-alt"></i> Supprimer
                                    </button>
                                </form>
                            </td>
                        </tr>
                        <% }
                        } else { %>
                        <tr>
                            <td colspan="6" class="text-center">Aucun projet disponible.</td>
                        </tr>
                        <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../footer.jsp" />
