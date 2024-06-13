CREATE MODEL text_embeddings INPUT(content STRING(MAX))
OUTPUT(
 embeddings
   STRUCT<
     statistics STRUCT<truncated BOOL, token_count FLOAT64>,
     values ARRAY<FLOAT64>>
)
REMOTE OPTIONS (
 endpoint = '//aiplatform.googleapis.com/projects/<<YOUR_PROJECT_ID>>/locations/us-central1/publishers/google/models/textembedding-gecko@003');
 