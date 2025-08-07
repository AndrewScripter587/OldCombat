# To do list

- [x] Old Sharpness (Status: Finished, Priority: High)
- [x] Old Tooltips (Status: Finished, Priority: High)
- [x] Improve Sprinting Crits (Status: Finished (made it more responsive and have more accurate calculations), Priority: Medium)
- [x] Correct the old tool damages to the actual old tool damages (Status: Finished, Priority: Low)
- [ ] Remove Hunger System (Status: Not started, Priority: Very Low)
- [ ] Weak Projectiles Knock Back Players (Status: Partially Complete (Fishing Rod Knockback), Priority: Medium)
- [x] Buff Sprint-Knockback Attacks (Like buff knockback, but only for sprint-knockback attacks) (Status: Finished, Priority: High)
- [ ] Compatibility with Bedrock Edition clients connected using Geyser (Status: Nearly done, priority: Medium)
   - Without this sword blocking doesn't work for geyser players because of how bedrock works so I'm implementing a feature that sets the offhand slot of players with the "bedrock" tag (add to a player using /tag add Player bedrock) a shield with the same exact `blocks_attacks` component that normally gets applied to swords when Sword Blocking is on, if the player holds a sword. Requires the score for EnableCompatibilityTools in objective OldCombatSettings to be 1, this is currently not available in the configuration menu.
