popup_menu(['Save', 'Cancel', 'Discard'], {                         
	callback: (_, result) => {
		echo 'dialog result is' result                              
		},                        
		filter: (id, key) => {    
			# Handle shortcuts    
			if key == 'S' || key == 's'                                 
				popup_close(id, 1)
			elseif key == 'C' || key == 'c'                             
				popup_close(id, 2)
				popup_close(id, 2)
			elseif key == 'D' || key == 'd'
				popup_close(id, 3)
			else
				# No shortcut, pass to generic filter
				return popup_filter_menu(id, key)
			endif
			return true
			},
			})
			<

