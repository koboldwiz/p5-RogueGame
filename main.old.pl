use strict;
use warnings;

use SDL;
use SDLx::App;

my $app = SDLx::App->new( width=> 800, height => 600 );

    $app->draw_rect([ $app->width / 4, $app->height / 4,
                      $app->width / 2, $app->height / 2, ],
                      [ 0, 0, 255, 255] );

    $app->update();

    ###$app->update();
###sleep(5);
