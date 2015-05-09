// Credits: Rik (PhanTactical)
// ====================================================================================

waitUntil {!isNull player};
player addRating 200000;
while {true} do
{
	if(rating player<100000) then
	{
		player addRating 100000;
	};
	sleep 60;
}