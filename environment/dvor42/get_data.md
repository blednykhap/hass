***** Step 1 Setting *****
Request URL: https://cloud.dvor24.com/login
Request Method: POST
Content-Type: application/json
Request Payload / Body: {"login":"<value>","password":"<value>","page":""}
***** Step 1 Getting *****
Set-Cookie=XSRF-TOKEN=<value>
Set-Cookie=laravel_session=<value>

***** Step 2 Setting *****
Request URL: https://cloud.dvor24.com/ajax/cameras?limit=96&offset=0&favorite=false&countryId=&grouping=&page=1&search=
Request Method: GET
Cookie: _ym_uid=1673032971967390576; _ym_d=1673032971; _ym_isad=2; _ym_visorc=w; XSRF-TOKEN=<value>; laravel_session=<value>
***** Step 2 Getting *****
<get json description with tokens>

***** Step 3 Stream ******
https://m16.dvor24.com:8443/vsaas/cameras/<camera_name>/hls/best/stream.m3u8?token=<value>