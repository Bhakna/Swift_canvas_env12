function new_arr = sq_strokes(n, old_arr)

  P = min(size(old_arr));
  S = 300 ; % size of canvas in mm
  x = round( n * P / S );
  old_arr = single(old_arr);
  arr_size = size(old_arr);
  limit_val = (round(arr_size./x)).-1;

  for ( i = [1:1:limit_val(1)] )

    for ( j = [1:1:limit_val(2)] )

      r_box = [((x*i)-x+1):1:(x*i)];
      c_box = [((x*j)-x+1):1:(x*j)];

      inter_arr = old_arr(r_box, c_box);
      inter_arr = reshape(inter_arr,1,prod(size(inter_arr)));
      count = mode(inter_arr, 2);
      old_arr(r_box, c_box) = count;

    endfor

  endfor

  new_arr=uint8(old_arr);

endfunction
