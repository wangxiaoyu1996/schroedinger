subroutine get_potential(n, v, h, vtype)
	implicit none
	!-----------------------------------------------------------------------
	! Input variables
	!
	integer, intent(in   ) :: n
	real(8), intent(inout) :: v(n)
	real(8), intent(in   ) :: h
	! v(n) : potential
	integer, intent(in   ) :: vtype
	!-----------------------------------------------------------------------
	integer                :: m
	!-----------------------------------------------------------------------
	select case (vtype)
		case (1)
			v = 0.0D0
		case (2)
			m = (n-1)/4
			v = h
			v(m+1:m*3+1) = 0.D0
		case (3)
			m = (n-1)/4
			v = h
			v(m+1:m*3+1) = 0.D0
			v(m/10+1:m/10*8 + 1) = 0.D0
		case (4)
			m = (n-1)/4
			v = h
			v(m/10+1:m/10*8 + 1) = 0.D0
		case default
			v = 0.0D0
	end select
	!-----------------------------------------------------------------------
	return
end subroutine