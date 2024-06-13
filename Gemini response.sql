INSERT INTO patents_data_embeddings (id, patents_embeddings)
SELECT id, embeddings.values as patents_embeddings
FROM ML.PREDICT(MODEL text_embeddings,
(SELECT id, gemini_response as content FROM patents_data_gemini));
