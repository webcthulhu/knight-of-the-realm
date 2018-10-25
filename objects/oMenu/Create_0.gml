/// @description GUI/Vars/Menu setup

GuiWidth = display_get_gui_width();
GuiHeight = display_get_gui_height();
GuiMargin = 32;

MenuX = GuiWidth;//+ 200;
MenuY = GuiHeight - GuiMargin;
MenuXTarget = GuiWidth - GuiMargin;
MenuSpeed = 25; // lower is faster
MenuFont = fMenu;
MenuItemHeight = font_get_size(fMenu);
MenuSelected = -2;
MenuControl = true;

Menu[3] = "New Game";
Menu[2] = "Continue";
Menu[1] = "Options";
Menu[0] = "Quit";
MenuCursor = 3;
MenuItems = array_length_1d(Menu);