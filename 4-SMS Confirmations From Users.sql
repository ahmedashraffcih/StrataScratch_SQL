SELECT (count(c.phone_number) / count(s.phone_number)) * 100 AS percentage 
FROM fb_sms_sends s
LEFT JOIN fb_confirmers c USING(phone_number)
WHERE s.type NOT IN ('friend_request','confirmation') AND s.ds= '2020-08-04';

/*
Output:

| percentage |
|------------|
|     40     |

*/