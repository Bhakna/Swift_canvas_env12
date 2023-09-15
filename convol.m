# function for convolutions

function new_arr = convol(w,arr)
  old_arr=single(arr);
  img_size = size(old_arr);
  size_of_img_size = size(img_size);

  if ( size_of_img_size(2)==2 )

    [r c]=size(old_arr);
    [wr wc]=size(w);
    new_arr=zeros(r,c);

    H=zeros((wr-1)/2,c);
    V=zeros(r+wr-1,(wc-1)/2);
    old_arr=[H;old_arr;H];
    old_arr=[V old_arr V];

    for a = 1:wr,
      for b = 1:wc,
        new_arr=new_arr.+(w(a,b).*old_arr(a:r+a-1,b:c+b-1));
      endfor
    endfor
    new_arr=uint8(new_arr);

  else

    [r c p]=size(old_arr);
    [wr wc]=size(w);
    new_arr=zeros(r,c,p);

    H=zeros((wr-1)/2,c,3);
    V=zeros(r+wr-1,(wc-1)/2,3);
    old_arr=[H;old_arr;H];
    old_arr=[V old_arr V];

    for a = 1:wr,
      for b = 1:wc,
        new_arr=new_arr.+(w(a,b).*old_arr(a:r+a-1,b:c+b-1,1:1:p));
      endfor
    endfor
    new_arr=uint8(new_arr);

  endif

endfunction

