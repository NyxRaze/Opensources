--[[
----------------\ DOCUMENTATION /----------------------

################## Constructor (Module) Functions ##################

	.new(Params)
		• Creates a new animation 
			• Params: {
					ID: string | number,
					Animation: Animation,
					Priority: Enum.AnimationPriority,
					Debug: boolean?,
				}
			• Returns: Animation
				• Note: If there is already an animation with the same ID, it will return the existing animation with that ID.
			
			
	:GetAnimation(ID: string | number)
		• Returns animation with specific ID 
			• Params: {
					ID: string | number,
					Animation: Animation,
					Priority: Enum.AnimationPriority,
					Debug: boolean?,
				}
			• Returns: Animation
	
	
	:StopAllAnimations()
		• Stops all playing animations
			• Returns: nil
			
			
	:CreateAllAnimationTracks()
		• Create animationtracks for all of the animations
			• Returns: nil
			
			
	:DestroyAllAnimationTracks()
		• Destroys all animationtracks of all of the animations
			• Returns: nil
			
			
################## Animation Read-Able Variables ##################

	TimePosition
		• Returns the animation's TimePosition 
		• Works the same as AnimationTrack.TimePosition
			• Returns: number


	Length
		• Returns the animation's Length 
		• Works the same as AnimationTrack.Length
			• Returns: number


	IsPlayingInReverse
		• Returns whether the animation is playing in reverse or not 
			• Returns: boolean
			
			
	IsPlaying
		• Returns whether the animation is playing or not (returns true even if animation is playing in reverse)
		• Works the same as AnimationTrack.IsPlaying
			• Returns: boolean
			
################## Animation Functions ##################
		
	:Play(FadeTime: number?, Weight: number?, Speed: number?)
		• Plays the animation with the specified args 
		• Works the same as AnimationTrack:Play()
			• Returns: nil
		
		
	:PlayInReverse(FadeTime: number?, Weight: number?, Speed: number?)
		• Plays the animation in reverse with the specified args 
		• Works the same as AnimationTrack:Play() but in reverse
			• Returns: nil
		
		
	:Stop(FadeTime: number?)
		• Stops the animation with the specified arg 
		• Works the same as AnimationTrack:Stop()
			• Returns: nil
		
		
	:Resume()
		• Resume the animation if it is paused
			• Returns: nil
			
			
	:Pause()
		• Pause the animation if it is resumed
			• Returns: nil
			
			
	:ChangeTimePosition(TimePosition: number)
		• Changes the animation's TimePosition (only works when the animation is playing and/or paused)
			• Returns: nil
			
			
	:AdjustSpeed(Speed: number)
		• Changes the animation's speed (only works when the animation is playing and not paused)
		• Works the same as AnimationTrack:AdjustSpeed()
			• Returns: nil
			
	
	:Destroy()
		• Destroys the animation and cleans up 
			• Returns: nil
		
		
################## Animation Events ##################

	:OnAnimationEvent(Event: string)
		• Basically AnimationTrack:GetMarkerReachedSignal(Event)
	
		  Usage:
			Animation:OnAnimationEvent("Example"):Connect(function(...)
				print("Animation has reached animation event 'Example' and got args", ...)
			end)
	
]]

-- Made by NyxRaz3
