function new_arr = my_colors(n, old_arr)

  old_arr = single(old_arr);

  num_val = 255 / n;
  old_arr = old_arr./num_val;
  old_arr = round(old_arr);
  old_arr = old_arr.*num_val;

  new_arr=uint8(old_arr);

endfunction
