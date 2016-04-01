.class public Landroid/renderscript/Mesh$AllocationBuilder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllocationBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    }
.end annotation


# instance fields
.field mIndexTypes:Ljava/util/Vector;

.field mRS:Landroid/renderscript/RenderScript;

.field mVertexTypeCount:I

.field mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .registers 3
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p1, p0, mRS:Landroid/renderscript/RenderScript;

    .line 428
    const/4 v0, 0x0

    iput v0, p0, mVertexTypeCount:I

    .line 429
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iput-object v0, p0, mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 430
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, mIndexTypes:Ljava/util/Vector;

    .line 431
    return-void
.end method


# virtual methods
.method public addIndexSetAllocation(Landroid/renderscript/Allocation;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .param p2, "p"    # Landroid/renderscript/Mesh$Primitive;

    .prologue
    .line 482
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    .line 483
    .local v0, "indexType":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 484
    iput-object p2, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 485
    iget-object v1, p0, mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 486
    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;
    .registers 4
    .param p1, "p"    # Landroid/renderscript/Mesh$Primitive;

    .prologue
    .line 498
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    .line 499
    .local v0, "indexType":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 500
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 501
    iget-object v1, p0, mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 502
    return-object p0
.end method

.method public addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 461
    iget v0, p0, mVertexTypeCount:I

    iget-object v1, p0, mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_f

    .line 462
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Max vertex types exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_f
    iget-object v0, p0, mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iget v1, p0, mVertexTypeCount:I

    new-instance v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    aput-object v2, v0, v1

    .line 466
    iget-object v0, p0, mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iget v1, p0, mVertexTypeCount:I

    aget-object v0, v0, v1

    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 467
    iget v0, p0, mVertexTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mVertexTypeCount:I

    .line 468
    return-object p0
.end method

.method public create()Landroid/renderscript/Mesh;
    .registers 19

    .prologue
    .line 511
    move-object/from16 v0, p0

    iget-object v15, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v15}, Landroid/renderscript/RenderScript;->validate()V

    .line 513
    move-object/from16 v0, p0

    iget v15, v0, mVertexTypeCount:I

    new-array v14, v15, [J

    .line 514
    .local v14, "vtx":[J
    move-object/from16 v0, p0

    iget-object v15, v0, mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    new-array v8, v15, [J

    .line 515
    .local v8, "idx":[J
    move-object/from16 v0, p0

    iget-object v15, v0, mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    new-array v11, v15, [I

    .line 517
    .local v11, "prim":[I
    move-object/from16 v0, p0

    iget-object v15, v0, mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    new-array v9, v15, [Landroid/renderscript/Allocation;

    .line 518
    .local v9, "indexBuffers":[Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v15, v0, mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    new-array v12, v15, [Landroid/renderscript/Mesh$Primitive;

    .line 519
    .local v12, "primitives":[Landroid/renderscript/Mesh$Primitive;
    move-object/from16 v0, p0

    iget v15, v0, mVertexTypeCount:I

    new-array v13, v15, [Landroid/renderscript/Allocation;

    .line 521
    .local v13, "vertexBuffers":[Landroid/renderscript/Allocation;
    const/4 v4, 0x0

    .local v4, "ct":I
    :goto_3c
    move-object/from16 v0, p0

    iget v15, v0, mVertexTypeCount:I

    if-ge v4, v15, :cond_5d

    .line 522
    move-object/from16 v0, p0

    iget-object v15, v0, mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    aget-object v5, v15, v4

    .line 523
    .local v5, "entry":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iget-object v15, v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    aput-object v15, v13, v4

    .line 524
    iget-object v15, v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    move-object/from16 v0, p0

    iget-object v0, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    aput-wide v16, v14, v4

    .line 521
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 527
    .end local v5    # "entry":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    :cond_5d
    const/4 v4, 0x0

    :goto_5e
    move-object/from16 v0, p0

    iget-object v15, v0, mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    if-ge v4, v15, :cond_98

    .line 528
    move-object/from16 v0, p0

    iget-object v15, v0, mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v15, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 529
    .restart local v5    # "entry":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iget-object v15, v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    if-nez v15, :cond_8b

    const-wide/16 v2, 0x0

    .line 530
    .local v2, "allocID":J
    :goto_78
    iget-object v15, v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    aput-object v15, v9, v4

    .line 531
    iget-object v15, v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    aput-object v15, v12, v4

    .line 533
    aput-wide v2, v8, v4

    .line 534
    iget-object v15, v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    iget v15, v15, Landroid/renderscript/Mesh$Primitive;->mID:I

    aput v15, v11, v4

    .line 527
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 529
    .end local v2    # "allocID":J
    :cond_8b
    iget-object v15, v5, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    move-object/from16 v0, p0

    iget-object v0, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    goto :goto_78

    .line 537
    .end local v5    # "entry":Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    :cond_98
    move-object/from16 v0, p0

    iget-object v15, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v15, v14, v8, v11}, Landroid/renderscript/RenderScript;->nMeshCreate([J[J[I)J

    move-result-wide v6

    .line 538
    .local v6, "id":J
    new-instance v10, Landroid/renderscript/Mesh;

    move-object/from16 v0, p0

    iget-object v15, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v10, v6, v7, v15}, Landroid/renderscript/Mesh;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 539
    .local v10, "newMesh":Landroid/renderscript/Mesh;
    iput-object v13, v10, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 540
    iput-object v9, v10, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 541
    iput-object v12, v10, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 543
    return-object v10
.end method

.method public getCurrentIndexSetIndex()I
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCurrentVertexTypeIndex()I
    .registers 2

    .prologue
    .line 439
    iget v0, p0, mVertexTypeCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
