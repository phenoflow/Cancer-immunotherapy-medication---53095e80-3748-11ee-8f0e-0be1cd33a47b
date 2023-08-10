cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  cancer-immunotherapy-medication-100mg---primary:
    run: cancer-immunotherapy-medication-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  cancer-immunotherapy-medication-150mg---primary:
    run: cancer-immunotherapy-medication-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-100mg---primary/output
  cancer-immunotherapy-medication-rituximab---primary:
    run: cancer-immunotherapy-medication-rituximab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-150mg---primary/output
  cancer-immunotherapy-medication-trastuzumab---primary:
    run: cancer-immunotherapy-medication-trastuzumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-rituximab---primary/output
  cancer-immunotherapy-medication-mabcampath---primary:
    run: cancer-immunotherapy-medication-mabcampath---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-trastuzumab---primary/output
  cancer-immunotherapy-medication-erbitux---primary:
    run: cancer-immunotherapy-medication-erbitux---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-mabcampath---primary/output
  cancer-immunotherapy-medication-cetuximab---primary:
    run: cancer-immunotherapy-medication-cetuximab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-erbitux---primary/output
  cancer-immunotherapy-medication-500mg---primary:
    run: cancer-immunotherapy-medication-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-cetuximab---primary/output
  cancer-immunotherapy-medication-alemtuzumab---primary:
    run: cancer-immunotherapy-medication-alemtuzumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-500mg---primary/output
  cancer-immunotherapy-medication-600mg---primary:
    run: cancer-immunotherapy-medication-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-alemtuzumab---primary/output
  cancer-immunotherapy-medication-concentrate---primary:
    run: cancer-immunotherapy-medication-concentrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-600mg---primary/output
  cancer-immunotherapy-medication-120mg---primary:
    run: cancer-immunotherapy-medication-120mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-concentrate---primary/output
  cancer-immunotherapy-medication-ipilimumab---primary:
    run: cancer-immunotherapy-medication-ipilimumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-120mg---primary/output
  cancer-immunotherapy-medication-200mg---primary:
    run: cancer-immunotherapy-medication-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-ipilimumab---primary/output
  cancer-immunotherapy-medication-infusion---primary:
    run: cancer-immunotherapy-medication-infusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-200mg---primary/output
  cancer-immunotherapy-medication-truxima---primary:
    run: cancer-immunotherapy-medication-truxima---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-infusion---primary/output
  cancer-immunotherapy-medication-denosumab---primary:
    run: cancer-immunotherapy-medication-denosumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-truxima---primary/output
  cancer-immunotherapy-medication-bevacizumab---primary:
    run: cancer-immunotherapy-medication-bevacizumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-denosumab---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: cancer-immunotherapy-medication-bevacizumab---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
