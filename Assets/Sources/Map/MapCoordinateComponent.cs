using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Entitas;
using Entitas.CodeGeneration.Attributes;

[Game, Unique]

public class MapCoordinateComponent : IComponent {
    List<BlockPosition> blockList;
}

public class BlockPosition
{
    public int X, Y;
    public Vector3 position;
}
