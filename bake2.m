function bake2
  % to make cake
  % in class example
  pan_size = prep();
  mix_cake();
  bake_time=bake(pan_size);
  if bake_time == -1
    disp('ERROR: change pans to be either 8 or 9 inches')
    return
  end
  mix_frosting();
  frost_cake();
end

function [size] = prep
  disp('Subroutine PREP running')
  disp('  preheat over to 350 deg F')
  disp('  Choosing 8 inch pan')
  size = 8;
  disp('  grease pan')
end

function mix_cake
  disp('Subroutine MIX_CAKE running')
  disp('  blend mix, water, oil, and eggs in bowl')
  disp('  beat for 2 minutes')
end

function time=bake(size)
  disp('Subroutine BAKE running')
  if size == 8
    time = 34;
  elseif size == 9
    time = 30;
  else
    time = -1; % indicates an error value
    return
  end
  disp(['  Pan size is ', num2str(size), ' inches'])
  disp(['  therefore baking for ', num2str(time), ' minutes plus or minus 2'])
end

function mix_frosting
  disp('Subroutine MIX_FROSTING running')
  disp('  Beat butter for 1 minute')
  disp('  Add frosting, mix and milk')
  disp('  Beat for 2 minutes')
end

function frost_cake
  disp('Subroutine FROST_CAKE running')
  disp('  Frost top of cake layer with 3/4 cup frosting')
  disp('  Squeeze peanut butter filling over frosting layer. Top with remaining cake layer')
  disp('  Frost top and sides of cake with remaining frosting')
end