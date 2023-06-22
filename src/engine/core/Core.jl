"""
Contains a set of structures and functions that ought to exist for other things to function properly
The order of imports is of importance
"""
module Core

## Import the state
using ..SolverState
using ..Exceptions

include("interfaces/interfaces.jl")
export AbstractConstraint
export AbstractDomain
export AbstractDomainListener
export AbstractVariable
export AbstractSolver
export AbstractObjective

## Import the Constraints
include("constraints/AbstractConstraint.jl")
export post
export propagate
export schedule
export isScheduled
export activate
export isActive

## The Solver Instance
include("solver/Solver.jl")
using .Solver
export stateManager
export post
export propagate
export propagationQueue
export schedule
export fixPoint
export onFixPoint
export minimize
export maximize
export objective
export setObjective
export setStateManager
export LearnieCP

## Import the Domain
include("domains/Domains.jl")
using .Domains
export onEmpty
export onChange
export onChangeMin
export onChangeMax
export onBind
export minimum
export maximum
export size
export isBound
export in
export remove
export removeAllBut
export removeBelow
export removeAbove
export fillArray
export DomainListener
export solver
export scheduleAll
export StateSparseSet
export indexOf
export index
export values
export isempty
export offset
export collect
export swap!
export internalContains
export updateBoundsOnRemove
export removeAll
export SparseSetDomain
export domain


## Import the Variable Definition
include("variables/Variables.jl")
using .Variables
export minimum
export maximum
export size
export isFixed
export in
export remove
export fix
export removeBelow
export removeAbove
export whenFix
export whenBoundChange
export whenDomainChange
export propagateOnBoundChange
export propagateOnDomainChange
export propagateOnFix
export IntVar
export domain
export domainListener
export onDomainChangeConstraints
export onBoundsChangeConstraints
export onBindConstraints


## Import the Objective definition
include("objective/Objective.jl")
export Minimize

end
