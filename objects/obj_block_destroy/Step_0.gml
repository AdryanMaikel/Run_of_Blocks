/// @description 
// Fazendo os mesmos se destruirem quando ficarem invisiveis
image_alpha-=0.005;
if image_alpha < 0 instance_destroy();