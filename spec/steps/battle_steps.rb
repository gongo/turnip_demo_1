MONSTERS = [
  ['slime', 2],
  ['satan', 500]
]

step ':monster has appeared!' do |name|
  @life = MONSTERS.assoc(name).last
end

step 'braver attacked!' do
  @life -= 3
end

steps_for :legend_sword do
  step 'braver attacked!' do
    @life -= 1000
  end
end

step 'defeated the monster!!' do
  patiently do
    expect(@life).to be <= 0
  end
end

step 'did not defeat the monster..' do
  patiently do
    expect(@life).to be > 0
  end
end

step 'braver dead..' do
  patiently do
    raise BraverDeadError if @life > 0
  end
end
