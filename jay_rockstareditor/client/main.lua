lib.registerRadial({
    id = 'jay_rockstar',
    items = {
      {
        label = 'Éditer',
        icon = 'folder-open',
        onSelect = function ()
          NetworkSessionLeaveSinglePlayer()
	        ActivateRockstarEditor()
        end
      },
      {
        label = 'Filmer',
        icon = 'video',
        onSelect = function ()
          StartRecording(1)
        end
      },
      {
        label = 'Enregister le clip',
        icon = 'film',
        onSelect = function ()
          StopRecordingAndSaveClip()
        end
      },
      {
        label = 'Supprimer le clip',
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