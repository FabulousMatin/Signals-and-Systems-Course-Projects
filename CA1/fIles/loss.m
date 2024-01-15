function loss = loss(y,x,w,b)
    loss = sum((y-(w .* x + b)).^2) / (2 * length(x));
end