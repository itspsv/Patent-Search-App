SELECT id, content as gemini_response
FROM ML.PREDICT(MODEL gemini_pro_model,
(select id, concat ('Identify the areas of work or keywords in this abstract', abstract) as prompt from patents_data b limit 50
))
