# Developer Documentation

## Variable, constraint and parameter naming scheme

### Head variables

- `h`: head

### Flow variables

- `q`: volume flow
- `ql`: volume flow consumption
- `qg`: volume flow production

### Pump variables

- `eta`: pump efficiency
- `w`: pump rotational speed

## Developing steady-state problems and formulations

In the current version of `PetroleumModels`, the supported variable space is head (`h`), pump efficiency (`eta`), pump rotational speed (`w`) and volume flow (`q`) for steady-state modeling. Most steady-state models use/assume the single network formulation, that is not discretized in time or space. Thus, petroleum network models are read in and directly used by steady-state specifications.
