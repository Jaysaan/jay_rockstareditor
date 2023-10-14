lib.locale()

lib.registerRadial({
    id = 'jay_rockstar',
    items = {
      {
        label = locale('edit'),
        icon = 'folder-open',
        onSelect = function ()
          NetworkSessionLeaveSinglePlayer()
	        ActivateRockstarEditor()
        end
      },
      {
        label = locale('film'),
        icon = 'video',
        onSelect = function ()
          StartRecording(1)
        end
      },
      {
        label = locale('save'),
        icon = 'film',
        onSelect = function ()
          StopRecordingAndSaveClip()
        end
      },
      {
        label = locale('delete'),
        icon = 'xmark',
        onSelect = function ()
          StopRecordingAndDiscardClip()
        end
      }
    }
  })
   
  lib.addRadialItem({
    {
      id = 'rockstareditjay',
      label = 'Rockstar Editor',
      icon = 'clapperboard',
      menu = 'jay_rockstar'
    }
  })