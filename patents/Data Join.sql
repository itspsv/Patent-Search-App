select title, abstract, gemini_response from patents_data a inner join patents_data_gemini b
on a.id = b.id;
