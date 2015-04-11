function gol(width, height)
    universe = randi([0 1],width, height);
    updateduniverse = universe;
    while (1)
       display(updateduniverse, width, height);
       updateduniverse = update(universe, width, height);
       pause(0.2);
    end
end

function display(universe, width, height)
    imagesc((1:width)+0.5,(1:height)+0.5,universe);
    colormap(gray)
    axis equal
end

function updateduniverse = update(universe, width, height)
    for i=2:height-1
        for j=2:width-1
        % todo
        end
    end
end
 
% N(i,j,t) is a function that counts neighbors in of a cell
% x(i,j,t+1) = 0 if N(i,j,t) <= 1
%              1 if x(i,j,t) = 1 && 2 <= N(i,j,t) <= 3
%              1 if x(i,j,t) = 0 && N(i,j,t) = 3
%              0 if N(i,j,t) >= 4

