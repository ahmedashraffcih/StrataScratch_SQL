select business_name,
    CASE 
        WHEN lower(business_name) LIKE '%restaurant%' THEN 'Restasurant'
        WHEN lower(business_name) LIKE '%cafe%' OR lower(business_name) LIKE '%café%' OR lower(business_name) LIKE '%coffee%' THEN 'Cafe'
        WHEN lower(business_name) LIKE '%school%' THEN 'School'
        ELSE 'other'
    END AS type
FROM sf_restaurant_health_violations; 

/*
Output:

business_name	                \     type
--------------------------------\----------
John Chin Elementary School	    \    School
Sutter Pub and Restaurant	    \    Restasurant
SRI THAI CUISINE	            \    other
Washington Bakery & Restaurant	\    Restasurant
etc...
*/