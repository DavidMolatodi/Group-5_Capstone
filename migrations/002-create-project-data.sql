INSERT INTO Names (Personas)
values ("Henry"),
       ("John"),
       ("Katharine");

INSERT INTO Denominations (Race)
values ("European"),
       ("African"),
       ("Asian");


INSERT INTO Agegroup (Age)
values ("46-65"),
       ("26-45"),
       ("12-25");


INSERT INTO Gender (Sex)
values ("Male"),
       ("Female");


INSERT INTO Skintexture (typesOfSkin)
values ("Normal skin"),
       ("Oily skin"),
       ("Dry skin");


INSERT INTO Recommendations (ProductsIngredients)
values ("Retimol/Niacinamide"),
       ("Ceramides/Peptide"),
       ("Glycerine/Petrolatum/Lanolin");

    
INSERT INTO NDSR ( Name_id, Race_id, Agegroup_id, Gender_id, Skintexture_id, Recommendations_id)
values ("1", "1", "1", "1", "2", "2"),
       ("2", "2", "1", "2", "1", "1"),
       ("3", "3", "2", "3", "3", "3");