function gol(width, height)
    universe = randi([0 1],width, height);
    updateduniverse = universe;
    h = createdisplay(universe, width, height);
    while(1)
        updateduniverse = update(universe, updateduniverse, width, height);
        pause(1);
        set(h,'UserData',updateduniverse);
        drawnow
    end
end

function h = createdisplay(universe, width, height)
    map2 = [ 0 0 0; 1 1 1];
    colormap(map2);
    h = pcolor(universe);
end

function n = computeNeighbors(universe, i, j)
    n = universe(i-1,j-1) + universe(i-1,j) + universe(i-1,j+1) + universe(i,j-1) + universe(i,j+1) + universe(i+1,j-1) + universe(i+1,j) + universe(i+1,j+1);
end

function updateduniverse = update(universe, updateduniverse, width, height)
    for i=2:height-1
        for j=2:width-1
            n = computeNeighbors(universe,i,j);
            if(n <= 1)
                updateduniverse(i,j) = 0;
            elseif(universe(i,j) == 1 && ( n == 2 || n == 3 ))
                updateduniverse(i,j) = 1;
            elseif(universe(i,j) == 0 && n == 3 )
                updateduniverse(i,j) = 1;
            elseif(n >= 4)
                updateduniverse(i,j) = 0;
            end
        end
    end
end
 
% N(i,j,t) is a function that counts neighbors in of a cell
% x(i,j,t+1) = 0 if N(i,j,t) <= 1
%              1 if x(i,j,t) = 1 && 2 <= N(i,j,t) <= 3
%              1 if x(i,j,t) = 0 && N(i,j,t) = 3
%              0 if N(i,j,t) >= 4

