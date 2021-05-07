%YAML 1.1
%TAG !u! tag:unity3d.com,2011:
--- !u!1 &3090119709377793439
GameObject:
  m_ObjectHideFlags: 0
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  serializedVersion: 6
  m_Component:
  - component: {fileID: 3092628562556944453}
  - component: {fileID: 2892501816137986315}
  - component: {fileID: 2891328065105613721}
  m_Layer: 0
  m_Name: MuzzleFlash01
  m_TagString: Untagged
  m_Icon: {fileID: 0}
  m_NavMeshLayer: 0
  m_StaticEditorFlags: 0
  m_IsActive: 1
--- !u!4 &3092628562556944453
Transform:
  m_ObjectHideFlags: 0
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 3090119709377793439}
  m_LocalRotation: {x: 0, y: 0, z: 0, w: 1}
  m_LocalPosition: {x: 0, y: 1.06, z: 20}
  m_LocalScale: {x: 1, y: 1, z: 1}
  m_Children:
  - {fileID: 3092554111953065961}
  m_Father: {fileID: 0}
  m_RootOrder: 0
  m_LocalEulerAnglesHint: {x: 0, y: 0, z: 0}
--- !u!198 &2892501816137986315
ParticleSystem:
  m_ObjectHideFlags: 0
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 3090119709377793439}
  serializedVersion: 6
  lengthInSec: 0.75
  simulationSpeed: 1
  stopAction: 0
  cullingMode: 3
  ringBufferMode: 0
  ringBufferLoopRange: {x: 0, y: 1}
  looping: 1
  prewarm: 0
  playOnAwake: 1
  useUnscaledTime: 0
  autoRandomSeed: 1
  useRigidbodyForVelocity: 1
  startDelay:
    serializedVersion: 2
    minMaxState: 0
    scalar: 0
    minScalar: 0
    maxCurve:
      serializedVersion: 2
      m_Curve:
      - serializedVersion: 3
        time: 0
        value: 0
        inSlope: 0
        outSlope: 0
        tangentMode: 0
        weightedMode: 0
        inWeight: 0.33333334
        outWeight: 0.33333334
      - serializedVersion: 3
        time: 1
        value: 0
        inSlope: 0
        outSlope: 0
        tangentMode: 0
        weightedMode: 0
        inWeight: 0.33333334
        outWeight: 0.33333334
      m_PreInfinity: 2
      m_PostInfinity: 2
      m_RotationOrder: 4
    minCurve:
      serializedVersion: 2
      m_Curve:
      - serializedVersion: 3
        time: 0
        value: 0
        inSlope: 0
        outSlope: 0
        tangentMode: 0
        weightedMode: 0
        inWeight: 0.33333334
        outWeight: 0.33333334
      - serializedVersion: 3
        time: 1
        value: 0
        inSlope: 0
        outSlope: 0
        tangentMode: 0
        weightedMode: 0
        inWeight: 0.33333334
        outWeight: 0.33333334
      m_PreInfinity: 2
      m_PostInfinity: 2
      m_RotationOrder: 4
  moveWithTransform: 0
  moveWithCustomTransform: {fileID: 0}
  scalingMode: 0
  randomSeed: 0
  InitialModule:
    serializedVersion: 3
    enabled: 1
    startLifetime:
      serializedVersion: 2
      minMaxState: 0
      scalar: 0.15
      minScalar: 5
      maxCurve:
        serializedVersion: 2
        m_Curve:
        - serializedVersion: 3
          time: 0
          value: 1
          inSlope: 0
          outSlope: 0
          tangentMode: 0
          weightedMode: 0
          inWeight: 0.33333334
          outWeight: 0.33333334
        - serializedVersion: 3
          time: 1
          value: 1
          inSlope: 0
          outSlope: 0
          tangentMode: 0
          weightedMode: 0
          inWeight: 0.33333334
          outWeight: 0.33333334
        m_PreInfinity: 2
        m_PostInfinity: 2
        m_RotationOrder: 4
      minCurve:
   