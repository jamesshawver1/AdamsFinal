!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = inch  &
   angle = deg  &
   force = pound_force  &
   mass = pound_mass  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body123
!
!--------------------------- Model Specific Colors ----------------------------!
!
!
if condition = (! db_exists(".colors.COLOR_R170G178B195"))
!
color create  &
   color_name = .colors.COLOR_R170G178B195  &
   red_component = 0.6666666667  &
   blue_component = 0.768627451  &
   green_component = 0.6980392157
!
else 
!
color modify  &
   color_name = .colors.COLOR_R170G178B195  &
   red_component = 0.6666666667  &
   blue_component = 0.768627451  &
   green_component = 0.6980392157
!
end 
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 0.25  &
   spacing_for_grid = 39.3700787402
!
!------------------------------ Adams/View Model ------------------------------!
!
!
model create  &
   model_name = MecanumWheel
!
view erase
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .MecanumWheel.steel  &
   adams_id = 4  &
   density = 0.2818290049  &
   youngs_modulus = 3.002281171E+007  &
   poissons_ratio = 0.29
!
material create  &
   material_name = .MecanumWheel.aluminum  &
   adams_id = 2  &
   density = 9.898878008E-002  &
   youngs_modulus = 1.0399930984E+007  &
   poissons_ratio = 0.33
!
material create  &
   material_name = .MecanumWheel.rubber_belt  &
   adams_id = 3  &
   density = 3.97400212E-005  &
   orthotropic_constants = 1.4503773773E+006, 14.503773773, 14.503773773
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MecanumWheel.ground.MARKER_66  &
   adams_id = 66  &
   location = -1.0, -1.025, 0.968503937  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .MecanumWheel.ground  &
   material_type = .MecanumWheel.steel
!
part attributes  &
   part_name = .MecanumWheel.ground  &
   name_visibility = off
!
!----------------------------------- Wheel9 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
part create rigid_body name_and_position  &
   part_name = .MecanumWheel.Wheel9  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.Wheel9
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MecanumWheel.Wheel9.PSMAR  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MecanumWheel.Wheel9.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MecanumWheel.Wheel9.cm  &
   adams_id = 4  &
   location = 0.3213938202, 0.3830222084, -1.9434177913E-008  &
   orientation = 147.2675927878d, 32.7977513317d, -17.7508409902d
!
marker create  &
   marker_name = .MecanumWheel.Wheel9.MARKER_41  &
   adams_id = 41  &
   location = 0.3213938202, 0.3830222084, -1.94341779E-008  &
   orientation = -32.7324072096d, -32.7977513311d, -19.197203615d
!
part create rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel9  &
   mass = 0.5  &
   center_of_mass_marker = .MecanumWheel.Wheel9.cm  &
   ixx = 3.6634612281E-008  &
   iyy = 3.6634612281E-008  &
   izz = 5.2717293426E-009  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MecanumWheel.Wheel9  &
   color = BLACK
!
!----------------------------------- Wheel8 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
part create rigid_body name_and_position  &
   part_name = .MecanumWheel.Wheel8  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.Wheel8
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MecanumWheel.Wheel8.PSMAR  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MecanumWheel.Wheel8.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MecanumWheel.Wheel8.cm  &
   adams_id = 6  &
   location = 0.4924038712, 8.6824135111E-002, 4.7872891154E-008  &
   orientation = 135.4385485921d, 7.053022105d, -78.03972891d
!
marker create  &
   marker_name = .MecanumWheel.Wheel8.MARKER_39  &
   adams_id = 39  &
   location = 0.4924038712, 8.6824135111E-002, 4.7872891129E-008  &
   orientation = -44.5614514132d, -7.0530221303d, -6.8948660551d
!
part create rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel8  &
   mass = 0.5  &
   center_of_mass_marker = .MecanumWheel.Wheel8.cm  &
   ixx = 3.6634611761E-008  &
   iyy = 3.6634611759E-008  &
   izz = 5.271729345E-009  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MecanumWheel.Wheel8  &
   color = BLACK
!
!----------------------------------- Wheel7 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
part create rigid_body name_and_position  &
   part_name = .MecanumWheel.Wheel7  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.Wheel7
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MecanumWheel.Wheel7.PSMAR  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MecanumWheel.Wheel7.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MecanumWheel.Wheel7.cm  &
   adams_id = 8  &
   location = 0.4330126714, -0.2500000486, -5.5032104335E-008  &
   orientation = -40.8933946568d, 20.7048110815d, -75.0289297296d
!
marker create  &
   marker_name = .MecanumWheel.Wheel7.MARKER_37  &
   adams_id = 37  &
   location = 0.4330126714, -0.2500000486, -5.5032104367E-008  &
   orientation = -40.8933946491d, 20.7048110546d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel7  &
   mass = 0.5  &
   center_of_mass_marker = .MecanumWheel.Wheel7.cm  &
   ixx = 3.6634611497E-008  &
   iyy = 3.6634611495E-008  &
   izz = 5.2717293445E-009  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MecanumWheel.Wheel7  &
   color = BLACK
!
!----------------------------------- Wheel6 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
part create rigid_body name_and_position  &
   part_name = .MecanumWheel.Wheel6  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.Wheel6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MecanumWheel.Wheel6.PSMAR  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MecanumWheel.Wheel6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MecanumWheel.Wheel6.cm  &
   adams_id = 10  &
   location = 0.1710101372, -0.4698462785, 7.4849104073E-008  &
   orientation = -18.8817213389d, 41.6411432014d, 39.4758699624d
!
marker create  &
   marker_name = .MecanumWheel.Wheel6.MARKER_35  &
   adams_id = 35  &
   location = 0.1710101372, -0.4698462785, 7.4849104073E-008  &
   orientation = -18.8817212309d, 41.6411432679d, 12.8035584319d
!
part create rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel6  &
   mass = 0.5  &
   center_of_mass_marker = .MecanumWheel.Wheel6.cm  &
   ixx = 3.6634610867E-008  &
   iyy = 3.663461085E-008  &
   izz = 5.2717293595E-009  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MecanumWheel.Wheel6  &
   color = BLACK
!
!----------------------------------- Wheel5 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
part create rigid_body name_and_position  &
   part_name = .MecanumWheel.Wheel5  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.Wheel5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MecanumWheel.Wheel5.PSMAR  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MecanumWheel.Wheel5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MecanumWheel.Wheel5.cm  &
   adams_id = 12  &
   location = -0.1710101372, -0.4698462785, -7.4849159127E-008  &
   orientation = 18.881721339d, 41.6411432014d, -39.4832479665d
!
marker create  &
   marker_name = .MecanumWheel.Wheel5.MARKER_33  &
   adams_id = 33  &
   location = -0.1710101372, -0.4698462785, -7.4849159144E-008  &
   orientation = 20.0356276252d, 44.9935100294d, -14.4579461522d
!
part create rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel5  &
   mass = 0.5  &
   center_of_mass_marker = .MecanumWheel.Wheel5.cm  &
   ixx = 3.663461087E-008  &
   iyy = 3.6634610853E-008  &
   izz = 5.2717293595E-009  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MecanumWheel.Wheel5  &
   color = BLACK
!
!----------------------------------- Wheel4 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
part create rigid_body name_and_position  &
   part_name = .MecanumWheel.Wheel4  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.Wheel4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MecanumWheel.Wheel4.PSMAR  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MecanumWheel.Wheel4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MecanumWheel.Wheel4.cm  &
   adams_id = 14  &
   location = -0.4330126714, -0.2500000486, 5.5032053532E-008  &
   orientation = -139.1066053432d, -20.7048110814d, -74.9885123918d
!
marker create  &
   marker_name = .MecanumWheel.Wheel4.MARKER_31  &
   adams_id = 31  &
   location = -0.4330126714, -0.2500000486, 5.5032053576E-008  &
   orientation = 40.8933946491d, 20.7048110546d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel4  &
   mass = 0.5  &
   center_of_mass_marker = .MecanumWheel.Wheel4.cm  &
   ixx = 3.6634611499E-008  &
   iyy = 3.6634611497E-008  &
   izz = 5.2717293445E-009  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MecanumWheel.Wheel4  &
   color = BLACK
!
!----------------------------------- Wheel3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
part create rigid_body name_and_position  &
   part_name = .MecanumWheel.Wheel3  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.Wheel3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MecanumWheel.Wheel3.PSMAR  &
   adams_id = 15  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MecanumWheel.Wheel3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MecanumWheel.Wheel3.cm  &
   adams_id = 16  &
   location = -0.4924038712, 8.6824135111E-002, -4.7872935532E-008  &
   orientation = -135.4385485921d, 7.0530221051d, -101.9595866739d
!
marker create  &
   marker_name = .MecanumWheel.Wheel3.MARKER_29  &
   adams_id = 29  &
   location = -0.4924038712, 8.6824135111E-002, -4.7872935516E-008  &
   orientation = 45.4385479813d, -7.0526003023d, -179.9183869919d
!
part create rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel3  &
   mass = 0.5  &
   center_of_mass_marker = .MecanumWheel.Wheel3.cm  &
   ixx = 3.6634611761E-008  &
   iyy = 3.6634611759E-008  &
   izz = 5.271729345E-009  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MecanumWheel.Wheel3  &
   color = BLACK
!
!----------------------------------- Wheel2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
part create rigid_body name_and_position  &
   part_name = .MecanumWheel.Wheel2  &
   adams_id = 10  &
   location = 7.4663291255E-008, -2.5538383197E-007, 3.4981316609E-003  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.Wheel2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MecanumWheel.Wheel2.PSMAR  &
   adams_id = 17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MecanumWheel.Wheel2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MecanumWheel.Wheel2.cm  &
   adams_id = 18  &
   location = -0.3213938202, 0.3830222084, 1.9434169136E-008  &
   orientation = -147.2675927879d, 32.7977513318d, -162.0540829256d
!
marker create  &
   marker_name = .MecanumWheel.Wheel2.MARKER_27  &
   adams_id = 27  &
   location = -0.3213938202, 0.3830222084, 1.9434131292E-008  &
   orientation = -150.0d, 30.0d, -180.0d
!
part create rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel2  &
   mass = 0.5  &
   center_of_mass_marker = .MecanumWheel.Wheel2.cm  &
   ixx = 3.6634612281E-008  &
   iyy = 3.6634612281E-008  &
   izz = 5.2717293426E-009  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MecanumWheel.Wheel2  &
   color = BLACK
!
!----------------------------------- Wheel1 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
part create rigid_body name_and_position  &
   part_name = .MecanumWheel.Wheel1  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.Wheel1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MecanumWheel.Wheel1.PSMAR  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MecanumWheel.Wheel1.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MecanumWheel.Wheel1.cm  &
   adams_id = 2  &
   location = 0.0, 0.5, 0.0  &
   orientation = 0.0d, -45.0d, 0.0d
!
marker create  &
   marker_name = .MecanumWheel.Wheel1.MARKER_26  &
   adams_id = 26  &
   location = 0.0, 0.5, 0.0  &
   orientation = -180.0d, 45.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel1  &
   mass = 0.5  &
   center_of_mass_marker = .MecanumWheel.Wheel1.cm  &
   ixx = 3.663461239E-008  &
   iyy = 3.663461239E-008  &
   izz = 5.2717293425E-009  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MecanumWheel.Wheel1  &
   color = BLACK
!
!--------------------------------- MainWheel ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
part create rigid_body name_and_position  &
   part_name = .MecanumWheel.MainWheel  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.MainWheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MecanumWheel.MainWheel.PSMAR  &
   adams_id = 19  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MecanumWheel.MainWheel.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .MecanumWheel.MainWheel.cm  &
   adams_id = 20  &
   location = 7.4663291255E-008, -2.5538383197E-007, 3.4981316609E-003  &
   orientation = -89.99987173d, -51.7624034406d, -89.9998107189d
!
marker create  &
   marker_name = .MecanumWheel.MainWheel.MARKER_25  &
   adams_id = 25  &
   location = 0.0, 0.5, 0.0  &
   orientation = -180.0d, 45.0d, 180.0d
!
marker create  &
   marker_name = .MecanumWheel.MainWheel.MARKER_28  &
   adams_id = 28  &
   location = -0.3213937455, 0.383021953, 3.498151095E-003  &
   orientation = -150.0d, 30.0d, -180.0d
!
marker create  &
   marker_name = .MecanumWheel.MainWheel.MARKER_30  &
   adams_id = 30  &
   location = -0.4924038712, 8.6824135111E-002, -4.7872935516E-008  &
   orientation = 45.4385479813d, -7.0526003023d, -179.9183869919d
!
marker create  &
   marker_name = .MecanumWheel.MainWheel.MARKER_32  &
   adams_id = 32  &
   location = -0.4330126714, -0.2500000486, 5.5032053576E-008  &
   orientation = 40.8933946491d, 20.7048110546d, 0.0d
!
marker create  &
   marker_name = .MecanumWheel.MainWheel.MARKER_34  &
   adams_id = 34  &
   location = -0.1710101372, -0.4698462785, -7.4849159144E-008  &
   orientation = 20.0356276252d, 44.9935100294d, -14.4579461522d
!
marker create  &
   marker_name = .MecanumWheel.MainWheel.MARKER_36  &
   adams_id = 36  &
   location = 0.1710101372, -0.4698462785, 7.4849104073E-008  &
   orientation = -18.8817212309d, 41.6411432679d, 12.8035584319d
!
marker create  &
   marker_name = .MecanumWheel.MainWheel.MARKER_38  &
   adams_id = 38  &
   location = 0.4330126714, -0.2500000486, -5.5032104367E-008  &
   orientation = -40.8933946491d, 20.7048110546d, 0.0d
!
marker create  &
   marker_name = .MecanumWheel.MainWheel.MARKER_40  &
   adams_id = 40  &
   location = 0.4924038712, 8.6824135111E-002, 4.7872891129E-008  &
   orientation = -44.5614514132d, -7.0530221303d, -6.8948660551d
!
marker create  &
   marker_name = .MecanumWheel.MainWheel.MARKER_42  &
   adams_id = 42  &
   location = 0.3213938202, 0.3830222084, -1.94341779E-008  &
   orientation = -32.7324072096d, -32.7977513311d, -19.197203615d
!
marker create  &
   marker_name = .MecanumWheel.MainWheel.MARKER_53  &
   adams_id = 53  &
   location = 7.4663291266E-008, -2.5538383198E-007, 3.4981316609E-003  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .MecanumWheel.MainWheel  &
   material_type = .MecanumWheel.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .MecanumWheel.MainWheel  &
   color = COLOR_R170G178B195
!
!----------------------------------- Floor ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
part create rigid_body name_and_position  &
   part_name = .MecanumWheel.Floor  &
   adams_id = 12  &
   location = 0.0, -1.7125984252E-002, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.Floor
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MecanumWheel.Floor.MARKER_65  &
   adams_id = 65  &
   location = -1.0, -1.0, 0.968503937  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MecanumWheel.Floor.MARKER_43  &
   adams_id = 43  &
   location = -1.0, -1.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MecanumWheel.Floor.cm  &
   adams_id = 46  &
   location = -1.5748031496E-002, -0.8031496063, -1.5748031496E-002  &
   orientation = -180.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .MecanumWheel.Floor.MARKER_52  &
   adams_id = 52  &
   location = 3.7331645631E-008, 1.2342518408, 1.749065831E-003  &
   orientation = 90.1018174217d, -2.1731657324E-006d, 3.8618265881E-009d
!
part create rigid_body mass_properties  &
   part_name = .MecanumWheel.Floor  &
   material_type = .MecanumWheel.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .MecanumWheel.Floor.BOX_21  &
   adams_id = 21  &
   corner_marker = .MecanumWheel.Floor.MARKER_43  &
   diag_corner_coords = 1.968503937, 0.3937007874, 1.968503937
!
part attributes  &
   part_name = .MecanumWheel.Floor  &
   color = RED  &
   name_visibility = off
!
!---------------------------------- Chassis -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
part create rigid_body name_and_position  &
   part_name = .MecanumWheel.Chassis  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.Chassis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MecanumWheel.Chassis.MARKER_49  &
   adams_id = 49  &
   location = 7.4663291266E-008, -2.5538383198E-007, 3.4981316609E-003  &
   orientation = -0.1018173952d, -3.8618245508E-009d, 90.0000021732d
!
marker create  &
   marker_name = .MecanumWheel.Chassis.MARKER_50  &
   adams_id = 50  &
   location = 0.0, 1.968503937, 0.0  &
   orientation = -0.1018173952d, -3.8618245508E-009d, 90.0000021732d
!
marker create  &
   marker_name = .MecanumWheel.Chassis.cm  &
   adams_id = 64  &
   location = 3.7331645631E-008, 0.9842518408, 1.749065831E-003  &
   orientation = -90.1018173711d, -2.1731651006E-006d, -90.0000001942d
!
marker create  &
   marker_name = .MecanumWheel.Chassis.MARKER_51  &
   adams_id = 51  &
   location = 3.7331645631E-008, 0.9842518408, 1.749065831E-003  &
   orientation = 90.1018174217d, -2.1731657324E-006d, 3.8618265881E-009d
!
marker create  &
   marker_name = .MecanumWheel.Chassis.MARKER_54  &
   adams_id = 54  &
   location = 7.4663291266E-008, -2.5538383198E-007, 3.4981316609E-003  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .MecanumWheel.Chassis  &
   mass = 30.0  &
   center_of_mass_marker = .MecanumWheel.Chassis.cm  &
   ixx = 4.381886539E-003  &
   iyy = 4.3545457882E-003  &
   izz = 4.6036712456E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .MecanumWheel.Chassis.LINK_66  &
   i_marker = .MecanumWheel.Chassis.MARKER_49  &
   j_marker = .MecanumWheel.Chassis.MARKER_50  &
   width = 0.1968507301  &
   depth = 9.8425365028E-002
!
part attributes  &
   part_name = .MecanumWheel.Chassis  &
   color = RED  &
   name_visibility = off
!
! ****** Graphics from Parasolid file ******
!
file parasolid read  &
   file_name = "MecanumWheel.xmt_txt"  &
   model_name = .MecanumWheel
!
geometry attributes  &
   geometry_name = .MecanumWheel.Wheel9.SOLID2  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .MecanumWheel.Wheel8.SOLID3  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .MecanumWheel.Wheel7.SOLID4  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .MecanumWheel.Wheel6.SOLID5  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .MecanumWheel.Wheel5.SOLID6  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .MecanumWheel.Wheel4.SOLID7  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .MecanumWheel.Wheel3.SOLID8  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .MecanumWheel.Wheel2.SOLID9  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .MecanumWheel.Wheel1.SOLID1  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .MecanumWheel.MainWheel.SOLID10  &
   color = COLOR_R170G178B195
!
!---------------------------------- Contacts ----------------------------------!
!
!
contact create  &
   contact_name = .MecanumWheel.FloorCWheel1  &
   adams_id = 1  &
   i_geometry_name = .MecanumWheel.Floor.BOX_21  &
   j_geometry_name = .MecanumWheel.Wheel1.SOLID1  &
   stiffness = 5.7101471547E+005  &
   damping = 1.9  &
   exponent = 2.2  &
   dmax = 3.937007874E-003  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 4.0  &
   friction_transition_velocity = 40.0
!
contact create  &
   contact_name = .MecanumWheel.FloorCWheel2  &
   adams_id = 2  &
   i_geometry_name = .MecanumWheel.Floor.BOX_21  &
   j_geometry_name = .MecanumWheel.Wheel2.SOLID9  &
   stiffness = 5.7101471547E+005  &
   damping = 1.9  &
   exponent = 2.2  &
   dmax = 3.937007874E-003  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 4.0  &
   friction_transition_velocity = 40.0
!
contact create  &
   contact_name = .MecanumWheel.FloorCWheel3  &
   adams_id = 3  &
   i_geometry_name = .MecanumWheel.Floor.BOX_21  &
   j_geometry_name = .MecanumWheel.Wheel3.SOLID8  &
   stiffness = 5.7101471547E+005  &
   damping = 1.9  &
   exponent = 2.2  &
   dmax = 3.937007874E-003  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 4.0  &
   friction_transition_velocity = 40.0
!
contact create  &
   contact_name = .MecanumWheel.FloorCWheel4  &
   adams_id = 4  &
   i_geometry_name = .MecanumWheel.Floor.BOX_21  &
   j_geometry_name = .MecanumWheel.Wheel4.SOLID7  &
   stiffness = 5.7101471547E+005  &
   damping = 1.9  &
   exponent = 2.2  &
   dmax = 3.937007874E-003  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 4.0  &
   friction_transition_velocity = 40.0
!
contact create  &
   contact_name = .MecanumWheel.FloorCWheel5  &
   adams_id = 5  &
   i_geometry_name = .MecanumWheel.Floor.BOX_21  &
   j_geometry_name = .MecanumWheel.Wheel5.SOLID6  &
   stiffness = 5.7101471547E+005  &
   damping = 1.9  &
   exponent = 2.2  &
   dmax = 3.937007874E-003  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 4.0  &
   friction_transition_velocity = 40.0
!
contact create  &
   contact_name = .MecanumWheel.FloorCWheel6  &
   adams_id = 6  &
   i_geometry_name = .MecanumWheel.Floor.BOX_21  &
   j_geometry_name = .MecanumWheel.Wheel6.SOLID5  &
   stiffness = 5.7101471547E+005  &
   damping = 1.9  &
   exponent = 2.2  &
   dmax = 3.937007874E-003  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 4.0  &
   friction_transition_velocity = 40.0
!
contact create  &
   contact_name = .MecanumWheel.FloorCWheel7  &
   adams_id = 7  &
   i_geometry_name = .MecanumWheel.Floor.BOX_21  &
   j_geometry_name = .MecanumWheel.Wheel7.SOLID4  &
   stiffness = 5.7101471547E+005  &
   damping = 1.9  &
   exponent = 2.2  &
   dmax = 3.937007874E-003  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 4.0  &
   friction_transition_velocity = 40.0
!
contact create  &
   contact_name = .MecanumWheel.FloorCWheel8  &
   adams_id = 8  &
   i_geometry_name = .MecanumWheel.Floor.BOX_21  &
   j_geometry_name = .MecanumWheel.Wheel8.SOLID3  &
   stiffness = 5.7101471547E+005  &
   damping = 1.9  &
   exponent = 2.2  &
   dmax = 3.937007874E-003  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 4.0  &
   friction_transition_velocity = 40.0
!
contact create  &
   contact_name = .MecanumWheel.FloorCWheel9  &
   adams_id = 9  &
   i_geometry_name = .MecanumWheel.Floor.BOX_21  &
   j_geometry_name = .MecanumWheel.Wheel9.SOLID2  &
   stiffness = 5.7101471547E+005  &
   damping = 1.9  &
   exponent = 2.2  &
   dmax = 3.937007874E-003  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 4.0  &
   friction_transition_velocity = 40.0
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .MecanumWheel.Main2Wheel1  &
   adams_id = 3  &
   i_marker_name = .MecanumWheel.MainWheel.MARKER_25  &
   j_marker_name = .MecanumWheel.Wheel1.MARKER_26
!
constraint attributes  &
   constraint_name = .MecanumWheel.Main2Wheel1  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MecanumWheel.Main2Wheel2  &
   adams_id = 4  &
   i_marker_name = .MecanumWheel.Wheel2.MARKER_27  &
   j_marker_name = .MecanumWheel.MainWheel.MARKER_28
!
constraint attributes  &
   constraint_name = .MecanumWheel.Main2Wheel2  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MecanumWheel.Main2Wheel3  &
   adams_id = 5  &
   i_marker_name = .MecanumWheel.Wheel3.MARKER_29  &
   j_marker_name = .MecanumWheel.MainWheel.MARKER_30
!
constraint attributes  &
   constraint_name = .MecanumWheel.Main2Wheel3  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MecanumWheel.Main2Wheel4  &
   adams_id = 6  &
   i_marker_name = .MecanumWheel.Wheel4.MARKER_31  &
   j_marker_name = .MecanumWheel.MainWheel.MARKER_32
!
constraint attributes  &
   constraint_name = .MecanumWheel.Main2Wheel4  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MecanumWheel.Main2Wheel5  &
   adams_id = 7  &
   i_marker_name = .MecanumWheel.Wheel5.MARKER_33  &
   j_marker_name = .MecanumWheel.MainWheel.MARKER_34
!
constraint attributes  &
   constraint_name = .MecanumWheel.Main2Wheel5  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MecanumWheel.Main2Wheel6  &
   adams_id = 8  &
   i_marker_name = .MecanumWheel.Wheel6.MARKER_35  &
   j_marker_name = .MecanumWheel.MainWheel.MARKER_36
!
constraint attributes  &
   constraint_name = .MecanumWheel.Main2Wheel6  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MecanumWheel.Main2Wheel7  &
   adams_id = 9  &
   i_marker_name = .MecanumWheel.Wheel7.MARKER_37  &
   j_marker_name = .MecanumWheel.MainWheel.MARKER_38
!
constraint attributes  &
   constraint_name = .MecanumWheel.Main2Wheel7  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MecanumWheel.Main2Wheel8  &
   adams_id = 10  &
   i_marker_name = .MecanumWheel.Wheel8.MARKER_39  &
   j_marker_name = .MecanumWheel.MainWheel.MARKER_40
!
constraint attributes  &
   constraint_name = .MecanumWheel.Main2Wheel8  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MecanumWheel.Main2Wheel9  &
   adams_id = 11  &
   i_marker_name = .MecanumWheel.Wheel9.MARKER_41  &
   j_marker_name = .MecanumWheel.MainWheel.MARKER_42
!
constraint attributes  &
   constraint_name = .MecanumWheel.Main2Wheel9  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .MecanumWheel.Floor2Ground  &
   adams_id = 16  &
   i_marker_name = .MecanumWheel.Floor.MARKER_65  &
   j_marker_name = .MecanumWheel.ground.MARKER_66
!
constraint attributes  &
   constraint_name = .MecanumWheel.Floor2Ground  &
   name_visibility = off
!
constraint create joint translational  &
   joint_name = .MecanumWheel.BouncingChassis  &
   adams_id = 14  &
   i_marker_name = .MecanumWheel.Chassis.MARKER_51  &
   j_marker_name = .MecanumWheel.Floor.MARKER_52
!
constraint attributes  &
   constraint_name = .MecanumWheel.BouncingChassis  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MecanumWheel.SpinningWheel  &
   adams_id = 15  &
   i_marker_name = .MecanumWheel.MainWheel.MARKER_53  &
   j_marker_name = .MecanumWheel.Chassis.MARKER_54
!
constraint attributes  &
   constraint_name = .MecanumWheel.SpinningWheel  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .MecanumWheel.MecanumWheel1Vel  &
   units = "angular_velocity"  &
   range = 0.0, 0.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3600.0
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .MecanumWheel.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=0.7 number_of_steps=500 model_name=.MecanumWheel"
!
!-------------------------- Adams/View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .MecanumWheel.general_motion_1  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.i_marker  &
   object_value = (.MecanumWheel.MainWheel.MARKER_53)
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.j_marker  &
   object_value = (.MecanumWheel.Chassis.MARKER_54)
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.constraint  &
   object_value = (.MecanumWheel.SpinningWheel)
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.r3_type  &
   integer_value = 2
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.r3_func  &
   string_value = "MecanumWheel1Vel"
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .MecanumWheel.general_motion_1.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .MecanumWheel.general_motion_1
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
geometry create shape gcontact  &
   contact_force_name = .MecanumWheel.GCONTACT_35  &
   adams_id = 35  &
   contact_element_name = .MecanumWheel.FloorCWheel1  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MecanumWheel.GCONTACT_35  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MecanumWheel.GCONTACT_38  &
   adams_id = 38  &
   contact_element_name = .MecanumWheel.FloorCWheel2  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MecanumWheel.GCONTACT_38  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MecanumWheel.GCONTACT_39  &
   adams_id = 39  &
   contact_element_name = .MecanumWheel.FloorCWheel3  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MecanumWheel.GCONTACT_39  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MecanumWheel.GCONTACT_40  &
   adams_id = 40  &
   contact_element_name = .MecanumWheel.FloorCWheel4  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MecanumWheel.GCONTACT_40  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MecanumWheel.GCONTACT_41  &
   adams_id = 41  &
   contact_element_name = .MecanumWheel.FloorCWheel5  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MecanumWheel.GCONTACT_41  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MecanumWheel.GCONTACT_42  &
   adams_id = 42  &
   contact_element_name = .MecanumWheel.FloorCWheel6  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MecanumWheel.GCONTACT_42  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MecanumWheel.GCONTACT_43  &
   adams_id = 43  &
   contact_element_name = .MecanumWheel.FloorCWheel7  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MecanumWheel.GCONTACT_43  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MecanumWheel.GCONTACT_44  &
   adams_id = 44  &
   contact_element_name = .MecanumWheel.FloorCWheel8  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MecanumWheel.GCONTACT_44  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .MecanumWheel.GCONTACT_45  &
   adams_id = 45  &
   contact_element_name = .MecanumWheel.FloorCWheel9  &
   force_display = components
!
geometry attributes  &
   geometry_name = .MecanumWheel.GCONTACT_45  &
   color = RED
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = -386.0885826772  &
   z_component_gravity = 0.0
!
force attributes  &
   force_name = .MecanumWheel.gravity  &
   size_of_icons = 0.6496062992
!
!----------------------------- Analysis settings ------------------------------!
!
!
executive_control set kinematics_parameters  &
   model_name = MecanumWheel  &
   error = 1.0E-005
!
executive_control set preferences  &
   model_name = MecanumWheel  &
   contact_geometry_library = parasolids  &
   thread_count = 14
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create object  &
   measure_name = .MecanumWheel.MecanumWheelDisp  &
   from_first = no  &
   object = .MecanumWheel.Chassis  &
   characteristic = cm_position  &
   component = y_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MecanumWheel.MecanumWheelDisp  &
   color = WHITE
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .MecanumWheel.wheel_stiffness  &
   units = "no_units"  &
   range = 0.0, 0.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.7101471547E+005
!
variable create  &
   variable_name = .MecanumWheel.wheel_force_exponent  &
   units = "no_units"  &
   range = 0.0, 0.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.2
!
variable create  &
   variable_name = .MecanumWheel.wheel_damping  &
   units = "no_units"  &
   range = 0.0, 0.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.9
!
variable create  &
   variable_name = .MecanumWheel.wheel_penetration_depth  &
   units = "no_units"  &
   range = 0.0, 0.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.937007874E-003
!
variable create  &
   variable_name = .MecanumWheel.wheel_sfriction  &
   units = "no_units"  &
   range = 0.0, 0.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.3
!
variable create  &
   variable_name = .MecanumWheel.wheel_dfriction  &
   units = "no_units"  &
   range = 0.0, 0.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.1
!
variable create  &
   variable_name = .MecanumWheel.wheel_sfriction_vel  &
   units = "no_units"  &
   range = 0.0, 0.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 4.0
!
variable create  &
   variable_name = .MecanumWheel.wheel_dfriction_vel  &
   units = "no_units"  &
   range = 0.0, 0.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 40.0
!
variable create  &
   variable_name = .MecanumWheel.wheel_weight  &
   units = "no_units"  &
   range = 0.0, 0.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
!---------------------------- Function definitions ----------------------------!
!
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .MecanumWheel.general_motion_1
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
material modify  &
   material_name = .MecanumWheel.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+011(Newton/meter**2))
!
material modify  &
   material_name = .MecanumWheel.aluminum  &
   density = (2740.0(kg/meter**3))  &
   youngs_modulus = (7.1705E+010(Newton/meter**2))
!
material modify  &
   material_name = .MecanumWheel.rubber_belt  &
   density = (1.1(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel9  &
   mass = (.MecanumWheel.wheel_weight)
!
part modify rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel8  &
   mass = (.MecanumWheel.wheel_weight)
!
part modify rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel7  &
   mass = (.MecanumWheel.wheel_weight)
!
part modify rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel6  &
   mass = (.MecanumWheel.wheel_weight)
!
part modify rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel5  &
   mass = (.MecanumWheel.wheel_weight)
!
part modify rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel4  &
   mass = (.MecanumWheel.wheel_weight)
!
part modify rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel3  &
   mass = (.MecanumWheel.wheel_weight)
!
part modify rigid_body name_and_position  &
   part_name = .MecanumWheel.Wheel2  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .MecanumWheel.MainWheel.cm))
!
part modify rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel2  &
   mass = (.MecanumWheel.wheel_weight)
!
marker modify  &
   marker_name = .MecanumWheel.Wheel1.MARKER_26  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .MecanumWheel.Wheel1.cm))  &
   relative_to = .MecanumWheel.Wheel1
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
part modify rigid_body mass_properties  &
   part_name = .MecanumWheel.Wheel1  &
   mass = (.MecanumWheel.wheel_weight)
!
marker modify  &
   marker_name = .MecanumWheel.MainWheel.MARKER_25  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .MecanumWheel.Wheel1.cm))  &
   relative_to = .MecanumWheel.MainWheel
!
defaults coordinate_system  &
   default_coordinate_system = .MecanumWheel.ground
!
geometry modify shape block  &
   block_name = .MecanumWheel.Floor.BOX_21  &
   diag_corner_coords =   &
      (5.0cm),  &
      (1.0cm),  &
      (5.0cm)
!
geometry modify shape link  &
   link_name = .MecanumWheel.Chassis.LINK_66  &
   width = (0.1968507301inch)  &
   depth = (9.8425365028E-002inch)
!
part modify rigid_body mass_properties  &
   part_name = .MecanumWheel.Chassis  &
   mass = (30lbm)
!
contact modify  &
   contact_name = .MecanumWheel.FloorCWheel1  &
   stiffness = (.MecanumWheel.wheel_stiffness)  &
   damping = (.MecanumWheel.wheel_damping)  &
   exponent = (.MecanumWheel.wheel_force_exponent)  &
   dmax = (.MecanumWheel.wheel_penetration_depth)  &
   mu_static = (.MecanumWheel.wheel_sfriction)  &
   mu_dynamic = (.MecanumWheel.wheel_dfriction)  &
   stiction_transition_velocity = (.MecanumWheel.wheel_sfriction_vel)  &
   friction_transition_velocity = (.MecanumWheel.wheel_dfriction_vel)
!
contact modify  &
   contact_name = .MecanumWheel.FloorCWheel2  &
   stiffness = (.MecanumWheel.wheel_stiffness)  &
   damping = (.MecanumWheel.wheel_damping)  &
   exponent = (.MecanumWheel.wheel_force_exponent)  &
   dmax = (.MecanumWheel.wheel_penetration_depth)  &
   mu_static = (.MecanumWheel.wheel_sfriction)  &
   mu_dynamic = (.MecanumWheel.wheel_dfriction)  &
   stiction_transition_velocity = (.MecanumWheel.wheel_sfriction_vel)  &
   friction_transition_velocity = (.MecanumWheel.wheel_dfriction_vel)
!
contact modify  &
   contact_name = .MecanumWheel.FloorCWheel3  &
   stiffness = (.MecanumWheel.wheel_stiffness)  &
   damping = (.MecanumWheel.wheel_damping)  &
   exponent = (.MecanumWheel.wheel_force_exponent)  &
   dmax = (.MecanumWheel.wheel_penetration_depth)  &
   mu_static = (.MecanumWheel.wheel_sfriction)  &
   mu_dynamic = (.MecanumWheel.wheel_dfriction)  &
   stiction_transition_velocity = (.MecanumWheel.wheel_sfriction_vel)  &
   friction_transition_velocity = (.MecanumWheel.wheel_dfriction_vel)
!
contact modify  &
   contact_name = .MecanumWheel.FloorCWheel4  &
   stiffness = (.MecanumWheel.wheel_stiffness)  &
   damping = (.MecanumWheel.wheel_damping)  &
   exponent = (.MecanumWheel.wheel_force_exponent)  &
   dmax = (.MecanumWheel.wheel_penetration_depth)  &
   mu_static = (.MecanumWheel.wheel_sfriction)  &
   mu_dynamic = (.MecanumWheel.wheel_dfriction)  &
   stiction_transition_velocity = (.MecanumWheel.wheel_sfriction_vel)  &
   friction_transition_velocity = (.MecanumWheel.wheel_dfriction_vel)
!
contact modify  &
   contact_name = .MecanumWheel.FloorCWheel5  &
   stiffness = (.MecanumWheel.wheel_stiffness)  &
   damping = (.MecanumWheel.wheel_damping)  &
   exponent = (.MecanumWheel.wheel_force_exponent)  &
   dmax = (.MecanumWheel.wheel_penetration_depth)  &
   mu_static = (.MecanumWheel.wheel_sfriction)  &
   mu_dynamic = (.MecanumWheel.wheel_dfriction)  &
   stiction_transition_velocity = (.MecanumWheel.wheel_sfriction_vel)  &
   friction_transition_velocity = (.MecanumWheel.wheel_dfriction_vel)
!
contact modify  &
   contact_name = .MecanumWheel.FloorCWheel6  &
   stiffness = (.MecanumWheel.wheel_stiffness)  &
   damping = (.MecanumWheel.wheel_damping)  &
   exponent = (.MecanumWheel.wheel_force_exponent)  &
   dmax = (.MecanumWheel.wheel_penetration_depth)  &
   mu_static = (.MecanumWheel.wheel_sfriction)  &
   mu_dynamic = (.MecanumWheel.wheel_dfriction)  &
   stiction_transition_velocity = (.MecanumWheel.wheel_sfriction_vel)  &
   friction_transition_velocity = (.MecanumWheel.wheel_dfriction_vel)
!
contact modify  &
   contact_name = .MecanumWheel.FloorCWheel7  &
   stiffness = (.MecanumWheel.wheel_stiffness)  &
   damping = (.MecanumWheel.wheel_damping)  &
   exponent = (.MecanumWheel.wheel_force_exponent)  &
   dmax = (.MecanumWheel.wheel_penetration_depth)  &
   mu_static = (.MecanumWheel.wheel_sfriction)  &
   mu_dynamic = (.MecanumWheel.wheel_dfriction)  &
   stiction_transition_velocity = (.MecanumWheel.wheel_sfriction_vel)  &
   friction_transition_velocity = (.MecanumWheel.wheel_dfriction_vel)
!
contact modify  &
   contact_name = .MecanumWheel.FloorCWheel8  &
   stiffness = (.MecanumWheel.wheel_stiffness)  &
   damping = (.MecanumWheel.wheel_damping)  &
   exponent = (.MecanumWheel.wheel_force_exponent)  &
   dmax = (.MecanumWheel.wheel_penetration_depth)  &
   mu_static = (.MecanumWheel.wheel_sfriction)  &
   mu_dynamic = (.MecanumWheel.wheel_dfriction)  &
   stiction_transition_velocity = (.MecanumWheel.wheel_sfriction_vel)  &
   friction_transition_velocity = (.MecanumWheel.wheel_dfriction_vel)
!
contact modify  &
   contact_name = .MecanumWheel.FloorCWheel9  &
   stiffness = (.MecanumWheel.wheel_stiffness)  &
   damping = (.MecanumWheel.wheel_damping)  &
   exponent = (.MecanumWheel.wheel_force_exponent)  &
   dmax = (.MecanumWheel.wheel_penetration_depth)  &
   mu_static = (.MecanumWheel.wheel_sfriction)  &
   mu_dynamic = (.MecanumWheel.wheel_dfriction)  &
   stiction_transition_velocity = (.MecanumWheel.wheel_sfriction_vel)  &
   friction_transition_velocity = (.MecanumWheel.wheel_dfriction_vel)
!
variable modify  &
   variable_name = .MecanumWheel.MecanumWheel1Vel  &
   real_value = (360.0d * 10)
!
variable modify  &
   variable_name = .MecanumWheel.wheel_weight  &
   real_value = (0.5lbm)
!
model display  &
   model_name = MecanumWheel
