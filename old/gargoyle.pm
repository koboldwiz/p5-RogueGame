package RogueGame;

use SDL::Video;

sub new {
	my $class = shift;

	### FIXME super class is entity.pm
	$self->{imagestates}->add("./pics/gargoyle1.png");



	return bless $self, $class || ref($class); ### FIXME ref
}

sub update {
	my $self = shift;

	### FIXME
}

sub blit {
	my ($self, $screen_surface) = shift;

	SDL::Video::blit_surface( $image, SDL::Rect->new($x++, $y, $image->w, $image->h), 	$screen_surface,  SDL::Rect->new($x, $y, $screen_surface->w,  $screen_surface->h) ); 
	
}

sub moveleft {
	my ($self) = shift;

	$self->{x}--;
}

sub moveright {
	my ($self) = shift;

	$self->{x}++;
}

sub moveup {
	my ($self) = shift;

	$self->{y}--;
}

sub movedown {
	my ($self) = shift;

	$self->{y}++;
}

1;
