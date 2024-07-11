SELECT a.id, a.title, a.abstract, 'A new Natural Language Processing related Machine Learning Model' search_text, COSINE_DISTANCE(c.patents_embeddings,
(SELECT embeddings.values
FROM ML.PREDICT(
MODEL text_embeddings,
(SELECT 'A new Natural Language Processing related Machine Learning Model' as content)))) as distance
FROM patents_data a inner join (SELECT id, embeddings.values as patents_embeddings
FROM ML.PREDICT(MODEL text_embeddings,
(SELECT id, gemini_response as content FROM (SELECT id, content as gemini_response
FROM ML.PREDICT(MODEL gemini_pro_model,
(select id, concat ('Identify the areas of work or keywords in this abstract', abstract) as prompt from patents_data b 
)))))) c on a.id = c.id
ORDER BY distance
LIMIT 2;