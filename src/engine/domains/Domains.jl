"""
Module responsible for the definition and exposition of the solver's domains

Contains `interface` definitions and implementations of `common` domains.
"""
module Domains

using ..SolverState
using ..Constraints

## The domain listeners
include("AbstractDomainListener.jl")
export AbstractDomainListener
export onEmpty
export onChange
export onChangeMin
export onChangeMax
export onBind

## The AbstractDomain
include("AbstractDomain.jl")
export AbstractDomainListener
export DomainListener
export onEmpty
export onBind
export onChange
export onChangeMax
export onChangeMin

## The DomainListener
include("DomainListener/DomainListener.jl")
export DomainListener
export solver
export scheduleAll


## The SparseSet implementation of a Domain
include("StateSparseSet/StateSparseSet.jl")
export StateSparseSet
export indexOf
export index
export values
export size
export isempty
export in
export offset
export minimum
export maximum
export collect
export swap!
export internalContains
export updateBoundsOnRemove
export remove
export removeAllBut
export removeAll
export removeBelow
export removeAbove

## The SparseSetDomain
include("SparseSetDomain.jl")
export SparseSetDomain
export domain
export isBound
export remove
export removeAllBut
export removeBelow
export removeAbove

end
