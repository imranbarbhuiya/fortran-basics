!     Area and Perimeter of a rectangle
      program area_perimeter
      INTEGER :: p, q, area, perimeter
      print *, "Type length and breadth of the rectangle"
      READ *, p, q
      area = p * q
      perimeter = 2 * (p + q)
      print *, "Area is ", area, "perimeter", perimeter
      read *,
      end program area_perimeter