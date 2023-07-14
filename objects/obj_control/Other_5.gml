/// @description
// show_message("Game End!");
var _challenge = gxc_get_query_param("challenge");
//show_message(_challenge);
if _challenge == global.challenge_high_points {
	// Enviando pontuação
	gxc_challenge_submit_score(global.record);
}