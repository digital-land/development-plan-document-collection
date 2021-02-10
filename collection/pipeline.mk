DEVELOPMENT_PLAN_DOCUMENT_DATASET=$(DATASET_DIR)development-plan-document.csv
DEVELOPMENT_PLAN_DOCUMENT_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)development-plan-document/10632f854d77def275091e2f9ac6a2c24d68bdbb97d23d5e5867934baffd5b66.csv\
    $(TRANSFORMED_DIR)development-plan-document/38b0ad2d68f5a454945da5ff7482e11a22b9f25ba2abdae2ae46a2f1c498b209.csv

$(TRANSFORMED_DIR)development-plan-document/10632f854d77def275091e2f9ac6a2c24d68bdbb97d23d5e5867934baffd5b66.csv: collection/resource/10632f854d77def275091e2f9ac6a2c24d68bdbb97d23d5e5867934baffd5b66
	$(run-pipeline)

$(TRANSFORMED_DIR)development-plan-document/38b0ad2d68f5a454945da5ff7482e11a22b9f25ba2abdae2ae46a2f1c498b209.csv: collection/resource/38b0ad2d68f5a454945da5ff7482e11a22b9f25ba2abdae2ae46a2f1c498b209
	$(run-pipeline)

$(DEVELOPMENT_PLAN_DOCUMENT_DATASET): $(DEVELOPMENT_PLAN_DOCUMENT_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(DEVELOPMENT_PLAN_DOCUMENT_TRANSFORMED_FILES)

dataset:: $(DEVELOPMENT_PLAN_DOCUMENT_DATASET)
