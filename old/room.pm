package RogueGame;

sub new {
	my $class = shift;
	my $self = { x => shift, y => shift, };

	return bless $self, $class || ref($class); ### FIXME ref
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
