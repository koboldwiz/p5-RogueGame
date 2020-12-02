my $entity = RogueGame::entity->new(100,100,48,48);
print "---> " . $entity . " ---> " . $entity->{imagestates} . "\n";
$entity->{imagestates}->add("./pics/gargoyle1.png");
