.class public Landroid/renderscript/Mesh$TriangleMeshBuilder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriangleMeshBuilder"
.end annotation


# static fields
.field public static final COLOR:I = 0x1

.field public static final NORMAL:I = 0x2

.field public static final TEXTURE_0:I = 0x100


# instance fields
.field mA:F

.field mB:F

.field mElement:Landroid/renderscript/Element;

.field mFlags:I

.field mG:F

.field mIndexCount:I

.field mIndexData:[S

.field mMaxIndex:I

.field mNX:F

.field mNY:F

.field mNZ:F

.field mR:F

.field mRS:Landroid/renderscript/RenderScript;

.field mS0:F

.field mT0:F

.field mVtxCount:I

.field mVtxData:[F

.field mVtxSize:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .registers 9
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "vtxSize"    # I
    .param p3, "flags"    # I

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput v1, p0, mNX:F

    .line 563
    iput v1, p0, mNY:F

    .line 564
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, mNZ:F

    .line 565
    iput v1, p0, mS0:F

    .line 566
    iput v1, p0, mT0:F

    .line 567
    iput v2, p0, mR:F

    .line 568
    iput v2, p0, mG:F

    .line 569
    iput v2, p0, mB:F

    .line 570
    iput v2, p0, mA:F

    .line 599
    iput-object p1, p0, mRS:Landroid/renderscript/RenderScript;

    .line 600
    iput v3, p0, mVtxCount:I

    .line 601
    iput v3, p0, mMaxIndex:I

    .line 602
    iput v3, p0, mIndexCount:I

    .line 603
    new-array v0, v4, [F

    iput-object v0, p0, mVtxData:[F

    .line 604
    new-array v0, v4, [S

    iput-object v0, p0, mIndexData:[S

    .line 605
    iput p2, p0, mVtxSize:I

    .line 606
    iput p3, p0, mFlags:I

    .line 608
    const/4 v0, 0x2

    if-lt p2, v0, :cond_37

    const/4 v0, 0x3

    if-le p2, v0, :cond_3f

    .line 609
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Vertex size out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_3f
    return-void
.end method

.method private latch()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 622
    iget v0, p0, mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3a

    .line 623
    invoke-direct {p0, v3}, makeSpace(I)V

    .line 624
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    iget v2, p0, mR:F

    aput v2, v0, v1

    .line 625
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    iget v2, p0, mG:F

    aput v2, v0, v1

    .line 626
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    iget v2, p0, mB:F

    aput v2, v0, v1

    .line 627
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    iget v2, p0, mA:F

    aput v2, v0, v1

    .line 629
    :cond_3a
    iget v0, p0, mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_5c

    .line 630
    const/4 v0, 0x2

    invoke-direct {p0, v0}, makeSpace(I)V

    .line 631
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    iget v2, p0, mS0:F

    aput v2, v0, v1

    .line 632
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    iget v2, p0, mT0:F

    aput v2, v0, v1

    .line 634
    :cond_5c
    iget v0, p0, mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_94

    .line 635
    invoke-direct {p0, v3}, makeSpace(I)V

    .line 636
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    iget v2, p0, mNX:F

    aput v2, v0, v1

    .line 637
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    iget v2, p0, mNY:F

    aput v2, v0, v1

    .line 638
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    iget v2, p0, mNZ:F

    aput v2, v0, v1

    .line 639
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 641
    :cond_94
    iget v0, p0, mMaxIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mMaxIndex:I

    .line 642
    return-void
.end method

.method private makeSpace(I)V
    .registers 6
    .param p1, "count"    # I

    .prologue
    const/4 v3, 0x0

    .line 614
    iget v1, p0, mVtxCount:I

    add-int/2addr v1, p1

    iget-object v2, p0, mVtxData:[F

    array-length v2, v2

    if-lt v1, v2, :cond_1a

    .line 615
    iget-object v1, p0, mVtxData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [F

    .line 616
    .local v0, "t":[F
    iget-object v1, p0, mVtxData:[F

    iget-object v2, p0, mVtxData:[F

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 617
    iput-object v0, p0, mVtxData:[F

    .line 619
    .end local v0    # "t":[F
    :cond_1a
    return-void
.end method


# virtual methods
.method public addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 8
    .param p1, "idx1"    # I
    .param p2, "idx2"    # I
    .param p3, "idx3"    # I

    .prologue
    const/4 v3, 0x0

    .line 760
    iget v1, p0, mMaxIndex:I

    if-ge p1, v1, :cond_13

    if-ltz p1, :cond_13

    iget v1, p0, mMaxIndex:I

    if-ge p2, v1, :cond_13

    if-ltz p2, :cond_13

    iget v1, p0, mMaxIndex:I

    if-ge p3, v1, :cond_13

    if-gez p3, :cond_1b

    .line 763
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Index provided greater than vertex count."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 765
    :cond_1b
    iget v1, p0, mIndexCount:I

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, mIndexData:[S

    array-length v2, v2

    if-lt v1, v2, :cond_35

    .line 766
    iget-object v1, p0, mIndexData:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [S

    .line 767
    .local v0, "t":[S
    iget-object v1, p0, mIndexData:[S

    iget-object v2, p0, mIndexData:[S

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 768
    iput-object v0, p0, mIndexData:[S

    .line 770
    .end local v0    # "t":[S
    :cond_35
    iget-object v1, p0, mIndexData:[S

    iget v2, p0, mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, mIndexCount:I

    int-to-short v3, p1

    aput-short v3, v1, v2

    .line 771
    iget-object v1, p0, mIndexData:[S

    iget v2, p0, mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, mIndexCount:I

    int-to-short v3, p2

    aput-short v3, v1, v2

    .line 772
    iget-object v1, p0, mIndexData:[S

    iget v2, p0, mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, mIndexCount:I

    int-to-short v3, p3

    aput-short v3, v1, v2

    .line 773
    return-object p0
.end method

.method public addVertex(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x2

    .line 655
    iget v0, p0, mVtxSize:I

    if-eq v0, v1, :cond_d

    .line 656
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_d
    invoke-direct {p0, v1}, makeSpace(I)V

    .line 659
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    aput p1, v0, v1

    .line 660
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    aput p2, v0, v1

    .line 661
    invoke-direct {p0}, latch()V

    .line 662
    return-object p0
.end method

.method public addVertex(FFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 677
    iget v0, p0, mVtxSize:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 678
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_d
    const/4 v0, 0x4

    invoke-direct {p0, v0}, makeSpace(I)V

    .line 681
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    aput p1, v0, v1

    .line 682
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    aput p2, v0, v1

    .line 683
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    aput p3, v0, v1

    .line 684
    iget-object v0, p0, mVtxData:[F

    iget v1, p0, mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mVtxCount:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 685
    invoke-direct {p0}, latch()V

    .line 686
    return-object p0
.end method

.method public create(Z)Landroid/renderscript/Mesh;
    .registers 11
    .param p1, "uploadToBufferObject"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 792
    new-instance v0, Landroid/renderscript/Element$Builder;

    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v4}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 793
    .local v0, "b":Landroid/renderscript/Element$Builder;
    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    sget-object v5, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    iget v6, p0, mVtxSize:I

    invoke-static {v4, v5, v6}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v4

    const-string/jumbo v5, "position"

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 796
    iget v4, p0, mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2a

    .line 797
    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const-string v5, "color"

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 799
    :cond_2a
    iget v4, p0, mFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_3c

    .line 800
    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const-string/jumbo v5, "texture0"

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 802
    :cond_3c
    iget v4, p0, mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4e

    .line 803
    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const-string/jumbo v5, "normal"

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 805
    :cond_4e
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v4

    iput-object v4, p0, mElement:Landroid/renderscript/Element;

    .line 807
    const/4 v3, 0x1

    .line 808
    .local v3, "usage":I
    if-eqz p1, :cond_59

    .line 809
    or-int/lit8 v3, v3, 0x4

    .line 812
    :cond_59
    new-instance v2, Landroid/renderscript/Mesh$Builder;

    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v4, v3}, Landroid/renderscript/Mesh$Builder;-><init>(Landroid/renderscript/RenderScript;I)V

    .line 813
    .local v2, "smb":Landroid/renderscript/Mesh$Builder;
    iget-object v4, p0, mElement:Landroid/renderscript/Element;

    iget v5, p0, mMaxIndex:I

    invoke-virtual {v2, v4, v5}, Landroid/renderscript/Mesh$Builder;->addVertexType(Landroid/renderscript/Element;I)Landroid/renderscript/Mesh$Builder;

    .line 814
    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    iget v5, p0, mIndexCount:I

    sget-object v6, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v2, v4, v5, v6}, Landroid/renderscript/Mesh$Builder;->addIndexSetType(Landroid/renderscript/Element;ILandroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;

    .line 816
    invoke-virtual {v2}, Landroid/renderscript/Mesh$Builder;->create()Landroid/renderscript/Mesh;

    move-result-object v1

    .line 818
    .local v1, "sm":Landroid/renderscript/Mesh;
    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    iget v5, p0, mMaxIndex:I

    iget-object v6, p0, mVtxData:[F

    invoke-virtual {v4, v7, v5, v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V

    .line 819
    if-eqz p1, :cond_8c

    .line 820
    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/renderscript/Allocation;->syncAll(I)V

    .line 823
    :cond_8c
    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getIndexSetAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    iget v5, p0, mIndexCount:I

    iget-object v6, p0, mIndexData:[S

    invoke-virtual {v4, v7, v5, v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V

    .line 824
    if-eqz p1, :cond_a0

    .line 825
    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getIndexSetAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/renderscript/Allocation;->syncAll(I)V

    .line 828
    :cond_a0
    return-object v1
.end method

.method public setColor(FFFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 7
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 739
    iget v0, p0, mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_e

    .line 740
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_e
    iput p1, p0, mR:F

    .line 743
    iput p2, p0, mG:F

    .line 744
    iput p3, p0, mB:F

    .line 745
    iput p4, p0, mA:F

    .line 746
    return-object p0
.end method

.method public setNormal(FFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 718
    iget v0, p0, mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    .line 719
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_e
    iput p1, p0, mNX:F

    .line 722
    iput p2, p0, mNY:F

    .line 723
    iput p3, p0, mNZ:F

    .line 724
    return-object p0
.end method

.method public setTexture(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 5
    .param p1, "s"    # F
    .param p2, "t"    # F

    .prologue
    .line 699
    iget v0, p0, mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_e

    .line 700
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_e
    iput p1, p0, mS0:F

    .line 703
    iput p2, p0, mT0:F

    .line 704
    return-object p0
.end method
