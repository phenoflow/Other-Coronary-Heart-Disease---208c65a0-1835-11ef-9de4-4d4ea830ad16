cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  other-coronary-heart-disease-artery---primary:
    run: other-coronary-heart-disease-artery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  angioplasty-other-coronary-heart-disease---primary:
    run: angioplasty-other-coronary-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: other-coronary-heart-disease-artery---primary/output
  other-coronary-heart-disease-cardiac---primary:
    run: other-coronary-heart-disease-cardiac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: angioplasty-other-coronary-heart-disease---primary/output
  other-coronary-heart-disease---primary:
    run: other-coronary-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: other-coronary-heart-disease-cardiac---primary/output
  other-coronary-heart-disease-ischaemia---primary:
    run: other-coronary-heart-disease-ischaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: other-coronary-heart-disease---primary/output
  other-coronary-heart-disease-infarct---primary:
    run: other-coronary-heart-disease-infarct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: other-coronary-heart-disease-ischaemia---primary/output
  other-coronary-heart-disease-repair---primary:
    run: other-coronary-heart-disease-repair---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: other-coronary-heart-disease-infarct---primary/output
  other-coronary-heart-disease-vessel---primary:
    run: other-coronary-heart-disease-vessel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: other-coronary-heart-disease-repair---primary/output
  other-coronary-heart-disease-bypass---primary:
    run: other-coronary-heart-disease-bypass---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: other-coronary-heart-disease-vessel---primary/output
  other-coronary-heart-disease-review---primary:
    run: other-coronary-heart-disease-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: other-coronary-heart-disease-bypass---primary/output
  cardiovascular-other-coronary-heart-disease---primary:
    run: cardiovascular-other-coronary-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: other-coronary-heart-disease-review---primary/output
  other-coronary-heart-disease-aneurysm---primary:
    run: other-coronary-heart-disease-aneurysm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: cardiovascular-other-coronary-heart-disease---primary/output
  atherosclerotic-other-coronary-heart-disease---primary:
    run: atherosclerotic-other-coronary-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: other-coronary-heart-disease-aneurysm---primary/output
  transluminal-other-coronary-heart-disease---primary:
    run: transluminal-other-coronary-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: atherosclerotic-other-coronary-heart-disease---primary/output
  chronic-other-coronary-heart-disease---primary:
    run: chronic-other-coronary-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: transluminal-other-coronary-heart-disease---primary/output
  other-coronary-heart-disease-operation---primary:
    run: other-coronary-heart-disease-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: chronic-other-coronary-heart-disease---primary/output
  diagnostic-other-coronary-heart-disease---primary:
    run: diagnostic-other-coronary-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: other-coronary-heart-disease-operation---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: diagnostic-other-coronary-heart-disease---primary/output
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
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
