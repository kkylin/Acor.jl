module Acor

@assert VERSION >= v"1.1"

export acor

MYDIR = dirname(Base.source_path())
cd(()->run(`make`), MYDIR)

ACORPATH = MYDIR*"/acor"

function acor(X, maxlag)

    mean  = [0.0]
    sigma = [0.0]
    tau   = [0.0]

    ccall(("acor", ACORPATH),
          Cint, # int
          (
              Ptr{Cdouble}, # double *mean
              Ptr{Cdouble}, # double *sigma
              Ptr{Cdouble}, # double *tau
              Ptr{Cdouble}, # double X[]
              Cint,         # int L
              Cint,         # int maxlag
          ),
          pointer(mean),
          pointer(sigma),
          pointer(tau),
          pointer(X),
          length(X),
          maxlag)

    (mean=mean[1],sigma=sigma[1],tau=tau[1])
end
      
end#module
