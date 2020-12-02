package RogueGame::room1;

use RogueGame::gargoyle;

use parent 'RogueGame::room';

sub new {
	my ($class, $x, $y) = @_;
	my $self = $class->SUPER::new($x, $y);

	###$class = ref($class) || $class;

	###return bless $self, $class;
	#

###my $entity = RogueGame::entity->new(100,100,48,48);
###print "---> " . $entity . " ---> " . $entity->{imagestates} . "\n";
###$entity->{imagestates}->add("./pics/gargoyle1.png");

	
	my @a = $self->{entities};
	push (@a, RogueGame::gargoyle->new(100,100)); 

	return $self;
}

1;
