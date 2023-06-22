module Solver

using ..SolverState
import ..Core: AbstractConstraint, AbstractSolver, AbstractObjective, AbstractVariable
import DataStructures: Queue

include("AbstractSolver.jl")
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

include("LearnieCP.jl")
export LearnieCP

end