<jsp:include page="../header.jsp" />

<div class="content-wrapper">

    <div class="row">
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Ajouter Un Projet</h4>
                    <form class="forms-sample" action="${pageContext.request.contextPath}/projet?action=ajouterProjet" method="post">
                        <div class="form-group">
                            <label for="exampleInputName1">Nom</label>
                            <input type="text" class="form-control" name="nom" id="exampleInputName1" placeholder="Nom">
                        </div>
                        <div class="form-group">
                            <label for="exampleTextarea1">Description</label>
                            <textarea class="form-control" name="description" id="exampleTextarea1" rows="4"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputCity1">Date de debut</label>
                            <input type="date" class="form-control" name="dateDeDebut" id="exampleInputCity1" placeholder="date de debut">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputCity1">Date de fin</label>
                            <input type="date" class="form-control" name="dateDeFin" placeholder="date de fin ">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputCity1">Budget</label>
                            <input type="number" class="form-control" name="budget" placeholder="budget">
                        </div>
                        <button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
                        <button class="btn btn-light">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../footer.jsp" />
