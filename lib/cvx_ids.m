function y = cvx_ids( varargin )
global cvx___
if cvx___.mversion < 7.1,
    y = zeros( 1, nargin );
    for k = 1 : nargin,
        y(k) = cvx_id( varargin{k} );
    end
else
    y = cellfun( @cvx_id, varargin );
end

% Copyright 2008 Michael C. Grant and Stephen P. Boyd.
% See the file COPYING.txt for full copyright information.
% The command 'cvx_where' will show where this file is located.
