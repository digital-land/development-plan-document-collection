DEVELOPMENT_PLAN_DOCUMENT_DATASET=$(DATASET_DIR)development-plan-document.csv
DEVELOPMENT_PLAN_DOCUMENT_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)development-plan-document/21957225f593ecf63a6bef3d1554cc709ca0435f1a7c8c3beff954bcffdfb3ea.csv\
    $(TRANSFORMED_DIR)development-plan-document/25d7608524d30ef8d6b62ca697926f10698c7cb699d52d539f574fd3ac22b5b0.csv\
    $(TRANSFORMED_DIR)development-plan-document/37236e7dbb9f3899ebf5f7c074827b210937a2a515ca426490dc6d364e087052.csv\
    $(TRANSFORMED_DIR)development-plan-document/5a2146a11519805b4ecd9f3b954cf4d1578428cada0b3586834de16ccf42756c.csv\
    $(TRANSFORMED_DIR)development-plan-document/d949e93c7f803360311208c92f9246584389e13cb7010fc7d06879b87ea758e7.csv

$(TRANSFORMED_DIR)development-plan-document/21957225f593ecf63a6bef3d1554cc709ca0435f1a7c8c3beff954bcffdfb3ea.csv: collection/resource/21957225f593ecf63a6bef3d1554cc709ca0435f1a7c8c3beff954bcffdfb3ea
	$(run-pipeline)

$(TRANSFORMED_DIR)development-plan-document/25d7608524d30ef8d6b62ca697926f10698c7cb699d52d539f574fd3ac22b5b0.csv: collection/resource/25d7608524d30ef8d6b62ca697926f10698c7cb699d52d539f574fd3ac22b5b0
	$(run-pipeline)

$(TRANSFORMED_DIR)development-plan-document/37236e7dbb9f3899ebf5f7c074827b210937a2a515ca426490dc6d364e087052.csv: collection/resource/37236e7dbb9f3899ebf5f7c074827b210937a2a515ca426490dc6d364e087052
	$(run-pipeline)

$(TRANSFORMED_DIR)development-plan-document/5a2146a11519805b4ecd9f3b954cf4d1578428cada0b3586834de16ccf42756c.csv: collection/resource/5a2146a11519805b4ecd9f3b954cf4d1578428cada0b3586834de16ccf42756c
	$(run-pipeline)

$(TRANSFORMED_DIR)development-plan-document/d949e93c7f803360311208c92f9246584389e13cb7010fc7d06879b87ea758e7.csv: collection/resource/d949e93c7f803360311208c92f9246584389e13cb7010fc7d06879b87ea758e7
	$(run-pipeline)

$(DEVELOPMENT_PLAN_DOCUMENT_DATASET): $(DEVELOPMENT_PLAN_DOCUMENT_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(DEVELOPMENT_PLAN_DOCUMENT_TRANSFORMED_FILES)

dataset:: $(DEVELOPMENT_PLAN_DOCUMENT_DATASET)
