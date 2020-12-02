package RogueGame;

use SDL::Image;

sub new {
	my $class = shift;
	my $self = { index => 0, images => (), };

	return bless $self, $class || ref($class); ### FIXME ref
}

sub add {
	my ($self, $imgfilename) = shift;

	### load the image file and put it in the state list
	my $img = SDL::Image::load($imgfilename);

	push ($self->{images}, $img);
	return 1;
}

sub get {
	my ($self) = shift;

	if ($self->{index} >= length($self->{images}))
	{
		$self->{index} = 0;
	}	

	return $self->{images}[$self->{index}++];
}
		
1;
