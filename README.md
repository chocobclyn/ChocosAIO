# ChoocsValAgentSel
Coded in AHK


 ██████ ██   ██  ██████   ██████  ██████  ███████      █████  ██  ██████  
██      ██   ██ ██    ██ ██      ██    ██ ██          ██   ██ ██ ██    ██ 
██      ███████ ██    ██ ██      ██    ██ ███████     ███████ ██ ██    ██ 
██      ██   ██ ██    ██ ██      ██    ██      ██     ██   ██ ██ ██    ██ 
 ██████ ██   ██  ██████   ██████  ██████  ███████     ██   ██ ██  ██████  
                                                                          
                                                                          
██    ██  █████  ██       ██████  ██████   █████  ███    ██ ████████      
██    ██ ██   ██ ██      ██    ██ ██   ██ ██   ██ ████   ██    ██         
██    ██ ███████ ██      ██    ██ ██████  ███████ ██ ██  ██    ██         
 ██  ██  ██   ██ ██      ██    ██ ██   ██ ██   ██ ██  ██ ██    ██         
  ████   ██   ██ ███████  ██████  ██   ██ ██   ██ ██   ████    ██         
                                                                          
                                                                          
 ██████  ██    ██ ███████ ██████  ██       █████  ██    ██                
██    ██ ██    ██ ██      ██   ██ ██      ██   ██  ██  ██                 
██    ██ ██    ██ █████   ██████  ██      ███████   ████                  
██    ██  ██  ██  ██      ██   ██ ██      ██   ██    ██                   
 ██████    ████   ███████ ██   ██ ███████ ██   ██    ██                   
                                                                          
                                                                          
████████  ██████   ██████  ██         
   ██    ██    ██ ██    ██ ██            
   ██    ██    ██ ██    ██ ██          
   ██    ██    ██ ██    ██ ██            
   ██     ██████   ██████  ███████   09-11-2023  
                                                                          
                                                                          
Pre-requisites:
    - OBS Studio
    - Source Clone by Exceldro
    
IMPORTANT!
	1. Make sure to crop the agent select window in OBS Studio (Alt+Click&Drag in OBS Studio)
    2. Apply a 0x0000FF (blue) color key filter and adjust accordingly
    
How to use:
    1. Input player names | ATTACKER left, DEFENDER right side in lobby
    2. Set team names. Input boxes found under Player 3 and Player 8
    3. Select player picks in the dropdown based on in-game drafting screen
    4. (Optional) Set map picks for Bo3 in the dropdown under the "swap" Buttons
    5. (Optional) Swap player names, teams, or both using the swap Buttons. Note: Swapping teams also swap current score (if any)
    6. Reset using the Clear names, scores, agents, or all buttons
    7. Set scores by ticking the radio buttons corresponding to the number of wins
     
Misc:
    - Make sure to fit the window in atleast 1080p wide screen. If a part of the screen is not visible, it will not be rendered in OBS
    - You may need to adjust sliders in color key filters for fine tuning (I found blue is the best for Color Keying)
    - You can use your own agent portraits by overwriting the images. Be sure to use 150*200px images or at least 3:4 vertical ratio. Currently only accepts image file formats. DO NOT CHANGE THE FILE NAMES OR ELSE IT WILL NOT LOAD
    
If you liked this program, credit CHOCO! (twitter.com/choco_bclyn)
