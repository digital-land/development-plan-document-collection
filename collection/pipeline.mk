DEVELOPMENT_PLAN_DOCUMENT_DATASET=$(DATASET_DIR)development-plan-document.csv
DEVELOPMENT_PLAN_DOCUMENT_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)development-plan-document/10632f854d77def275091e2f9ac6a2c24d68bdbb97d23d5e5867934baffd5b66.csv

$(TRANSFORMED_DIR)development-plan-document/10632f854d77def275091e2f9ac6a2c24d68bdbb97d23d5e5867934baffd5b66.csv: collection/resource/10632f854d77def275091e2f9ac6a2c24d68bdbb97d23d5e5867934baffd5b66
	$(run-pipeline)

$(DEVELOPMENT_PLAN_DOCUMENT_DATASET): $(DEVELOPMENT_PLAN_DOCUMENT_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(DEVELOPMENT_PLAN_DOCUMENT_TRANSFORMED_FILES)

dataset:: $(DEVELOPMENT_PLAN_DOCUMENT_DATASET)
