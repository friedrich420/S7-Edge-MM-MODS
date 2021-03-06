.class public Landroid/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "FieldPacker.java"


# instance fields
.field private mAlignment:Ljava/util/BitSet;

.field private mData:[B

.field private mLen:I

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "len"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, mPos:I

    .line 33
    iput p1, p0, mLen:I

    .line 34
    new-array v0, p1, [B

    iput-object v0, p0, mData:[B

    .line 35
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, mAlignment:Ljava/util/BitSet;

    .line 36
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    array-length v0, p1

    iput v0, p0, mPos:I

    .line 42
    array-length v0, p1

    iput v0, p0, mLen:I

    .line 43
    iput-object p1, p0, mData:[B

    .line 44
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, mAlignment:Ljava/util/BitSet;

    .line 48
    return-void
.end method

.method private add(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 631
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    .line 632
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, addBoolean(Z)V

    .line 775
    :cond_d
    :goto_d
    return-void

    .line 636
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_e
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1c

    .line 637
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, addI8(B)V

    goto :goto_d

    .line 641
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1c
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2a

    .line 642
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, addI16(S)V

    goto :goto_d

    .line 646
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2a
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_38

    .line 647
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, addI32(I)V

    goto :goto_d

    .line 651
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_38
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_46

    .line 652
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, addI64(J)V

    goto :goto_d

    .line 656
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_46
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_54

    .line 657
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, addF32(F)V

    goto :goto_d

    .line 661
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_54
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_62

    .line 662
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, addF64(D)V

    goto :goto_d

    .line 666
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_62
    instance-of v0, p1, Landroid/renderscript/Byte2;

    if-eqz v0, :cond_6c

    .line 667
    check-cast p1, Landroid/renderscript/Byte2;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addI8(Landroid/renderscript/Byte2;)V

    goto :goto_d

    .line 671
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_6c
    instance-of v0, p1, Landroid/renderscript/Byte3;

    if-eqz v0, :cond_76

    .line 672
    check-cast p1, Landroid/renderscript/Byte3;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addI8(Landroid/renderscript/Byte3;)V

    goto :goto_d

    .line 676
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_76
    instance-of v0, p1, Landroid/renderscript/Byte4;

    if-eqz v0, :cond_80

    .line 677
    check-cast p1, Landroid/renderscript/Byte4;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addI8(Landroid/renderscript/Byte4;)V

    goto :goto_d

    .line 681
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_80
    instance-of v0, p1, Landroid/renderscript/Short2;

    if-eqz v0, :cond_8a

    .line 682
    check-cast p1, Landroid/renderscript/Short2;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addI16(Landroid/renderscript/Short2;)V

    goto :goto_d

    .line 686
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8a
    instance-of v0, p1, Landroid/renderscript/Short3;

    if-eqz v0, :cond_95

    .line 687
    check-cast p1, Landroid/renderscript/Short3;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addI16(Landroid/renderscript/Short3;)V

    goto/16 :goto_d

    .line 691
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_95
    instance-of v0, p1, Landroid/renderscript/Short4;

    if-eqz v0, :cond_a0

    .line 692
    check-cast p1, Landroid/renderscript/Short4;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addI16(Landroid/renderscript/Short4;)V

    goto/16 :goto_d

    .line 696
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_a0
    instance-of v0, p1, Landroid/renderscript/Int2;

    if-eqz v0, :cond_ab

    .line 697
    check-cast p1, Landroid/renderscript/Int2;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addI32(Landroid/renderscript/Int2;)V

    goto/16 :goto_d

    .line 701
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_ab
    instance-of v0, p1, Landroid/renderscript/Int3;

    if-eqz v0, :cond_b6

    .line 702
    check-cast p1, Landroid/renderscript/Int3;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addI32(Landroid/renderscript/Int3;)V

    goto/16 :goto_d

    .line 706
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_b6
    instance-of v0, p1, Landroid/renderscript/Int4;

    if-eqz v0, :cond_c1

    .line 707
    check-cast p1, Landroid/renderscript/Int4;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addI32(Landroid/renderscript/Int4;)V

    goto/16 :goto_d

    .line 711
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_c1
    instance-of v0, p1, Landroid/renderscript/Long2;

    if-eqz v0, :cond_cc

    .line 712
    check-cast p1, Landroid/renderscript/Long2;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addI64(Landroid/renderscript/Long2;)V

    goto/16 :goto_d

    .line 716
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_cc
    instance-of v0, p1, Landroid/renderscript/Long3;

    if-eqz v0, :cond_d7

    .line 717
    check-cast p1, Landroid/renderscript/Long3;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addI64(Landroid/renderscript/Long3;)V

    goto/16 :goto_d

    .line 721
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_d7
    instance-of v0, p1, Landroid/renderscript/Long4;

    if-eqz v0, :cond_e2

    .line 722
    check-cast p1, Landroid/renderscript/Long4;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addI64(Landroid/renderscript/Long4;)V

    goto/16 :goto_d

    .line 726
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_e2
    instance-of v0, p1, Landroid/renderscript/Float2;

    if-eqz v0, :cond_ed

    .line 727
    check-cast p1, Landroid/renderscript/Float2;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addF32(Landroid/renderscript/Float2;)V

    goto/16 :goto_d

    .line 731
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_ed
    instance-of v0, p1, Landroid/renderscript/Float3;

    if-eqz v0, :cond_f8

    .line 732
    check-cast p1, Landroid/renderscript/Float3;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addF32(Landroid/renderscript/Float3;)V

    goto/16 :goto_d

    .line 736
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_f8
    instance-of v0, p1, Landroid/renderscript/Float4;

    if-eqz v0, :cond_103

    .line 737
    check-cast p1, Landroid/renderscript/Float4;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addF32(Landroid/renderscript/Float4;)V

    goto/16 :goto_d

    .line 741
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_103
    instance-of v0, p1, Landroid/renderscript/Double2;

    if-eqz v0, :cond_10e

    .line 742
    check-cast p1, Landroid/renderscript/Double2;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addF64(Landroid/renderscript/Double2;)V

    goto/16 :goto_d

    .line 746
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_10e
    instance-of v0, p1, Landroid/renderscript/Double3;

    if-eqz v0, :cond_119

    .line 747
    check-cast p1, Landroid/renderscript/Double3;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addF64(Landroid/renderscript/Double3;)V

    goto/16 :goto_d

    .line 751
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_119
    instance-of v0, p1, Landroid/renderscript/Double4;

    if-eqz v0, :cond_124

    .line 752
    check-cast p1, Landroid/renderscript/Double4;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addF64(Landroid/renderscript/Double4;)V

    goto/16 :goto_d

    .line 756
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_124
    instance-of v0, p1, Landroid/renderscript/Matrix2f;

    if-eqz v0, :cond_12f

    .line 757
    check-cast p1, Landroid/renderscript/Matrix2f;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addMatrix(Landroid/renderscript/Matrix2f;)V

    goto/16 :goto_d

    .line 761
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_12f
    instance-of v0, p1, Landroid/renderscript/Matrix3f;

    if-eqz v0, :cond_13a

    .line 762
    check-cast p1, Landroid/renderscript/Matrix3f;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addMatrix(Landroid/renderscript/Matrix3f;)V

    goto/16 :goto_d

    .line 766
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_13a
    instance-of v0, p1, Landroid/renderscript/Matrix4f;

    if-eqz v0, :cond_145

    .line 767
    check-cast p1, Landroid/renderscript/Matrix4f;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addMatrix(Landroid/renderscript/Matrix4f;)V

    goto/16 :goto_d

    .line 771
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_145
    instance-of v0, p1, Landroid/renderscript/BaseObj;

    if-eqz v0, :cond_d

    .line 772
    check-cast p1, Landroid/renderscript/BaseObj;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, addObj(Landroid/renderscript/BaseObj;)V

    goto/16 :goto_d
.end method

.method private addSafely(Ljava/lang/Object;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 791
    iget v1, p0, mPos:I

    .line 793
    .local v1, "oldPos":I
    :cond_2
    const/4 v2, 0x0

    .line 795
    .local v2, "retry":Z
    :try_start_3
    invoke-direct {p0, p1}, add(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_6} :catch_9

    .line 801
    :goto_6
    if-nez v2, :cond_2

    .line 802
    return-void

    .line 796
    :catch_9
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    iput v1, p0, mPos:I

    .line 798
    iget v3, p0, mLen:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, resize(I)Z

    .line 799
    const/4 v2, 0x1

    goto :goto_6
.end method

.method static createFromArray([Ljava/lang/Object;)Landroid/renderscript/FieldPacker;
    .registers 7
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 51
    new-instance v2, Landroid/renderscript/FieldPacker;

    sget v5, Landroid/renderscript/RenderScript;->sPointerSize:I

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v2, v5}, <init>(I)V

    .line 52
    .local v2, "fp":Landroid/renderscript/FieldPacker;
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_c
    if-ge v3, v4, :cond_16

    aget-object v0, v1, v3

    .line 53
    .local v0, "arg":Ljava/lang/Object;
    invoke-direct {v2, v0}, addSafely(Ljava/lang/Object;)V

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 55
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_16
    iget v5, v2, mPos:I

    invoke-direct {v2, v5}, resize(I)Z

    .line 56
    return-object v2
.end method

.method private resize(I)Z
    .registers 6
    .param p1, "newSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 778
    iget v2, p0, mLen:I

    if-ne p1, v2, :cond_6

    .line 786
    :goto_5
    return v1

    .line 782
    :cond_6
    new-array v0, p1, [B

    .line 783
    .local v0, "newData":[B
    iget-object v2, p0, mData:[B

    iget v3, p0, mPos:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 784
    iput-object v0, p0, mData:[B

    .line 785
    iput p1, p0, mLen:I

    .line 786
    const/4 v1, 0x1

    goto :goto_5
.end method


# virtual methods
.method public addBoolean(Z)V
    .registers 3
    .param p1, "v"    # Z

    .prologue
    .line 606
    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, addI8(B)V

    .line 607
    return-void

    .line 606
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public addF32(F)V
    .registers 3
    .param p1, "v"    # F

    .prologue
    .line 231
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, addI32(I)V

    .line 232
    return-void
.end method

.method public addF32(Landroid/renderscript/Float2;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Float2;

    .prologue
    .line 269
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    invoke-virtual {p0, v0}, addF32(F)V

    .line 270
    iget v0, p1, Landroid/renderscript/Float2;->y:F

    invoke-virtual {p0, v0}, addF32(F)V

    .line 271
    return-void
.end method

.method public addF32(Landroid/renderscript/Float3;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Float3;

    .prologue
    .line 273
    iget v0, p1, Landroid/renderscript/Float3;->x:F

    invoke-virtual {p0, v0}, addF32(F)V

    .line 274
    iget v0, p1, Landroid/renderscript/Float3;->y:F

    invoke-virtual {p0, v0}, addF32(F)V

    .line 275
    iget v0, p1, Landroid/renderscript/Float3;->z:F

    invoke-virtual {p0, v0}, addF32(F)V

    .line 276
    return-void
.end method

.method public addF32(Landroid/renderscript/Float4;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Float4;

    .prologue
    .line 278
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    invoke-virtual {p0, v0}, addF32(F)V

    .line 279
    iget v0, p1, Landroid/renderscript/Float4;->y:F

    invoke-virtual {p0, v0}, addF32(F)V

    .line 280
    iget v0, p1, Landroid/renderscript/Float4;->z:F

    invoke-virtual {p0, v0}, addF32(F)V

    .line 281
    iget v0, p1, Landroid/renderscript/Float4;->w:F

    invoke-virtual {p0, v0}, addF32(F)V

    .line 282
    return-void
.end method

.method public addF64(D)V
    .registers 6
    .param p1, "v"    # D

    .prologue
    .line 239
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, addI64(J)V

    .line 240
    return-void
.end method

.method public addF64(Landroid/renderscript/Double2;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Double2;

    .prologue
    .line 285
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    invoke-virtual {p0, v0, v1}, addF64(D)V

    .line 286
    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    invoke-virtual {p0, v0, v1}, addF64(D)V

    .line 287
    return-void
.end method

.method public addF64(Landroid/renderscript/Double3;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Double3;

    .prologue
    .line 289
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    invoke-virtual {p0, v0, v1}, addF64(D)V

    .line 290
    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    invoke-virtual {p0, v0, v1}, addF64(D)V

    .line 291
    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    invoke-virtual {p0, v0, v1}, addF64(D)V

    .line 292
    return-void
.end method

.method public addF64(Landroid/renderscript/Double4;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Double4;

    .prologue
    .line 294
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    invoke-virtual {p0, v0, v1}, addF64(D)V

    .line 295
    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    invoke-virtual {p0, v0, v1}, addF64(D)V

    .line 296
    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    invoke-virtual {p0, v0, v1}, addF64(D)V

    .line 297
    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    invoke-virtual {p0, v0, v1}, addF64(D)V

    .line 298
    return-void
.end method

.method public addI16(Landroid/renderscript/Short2;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Short2;

    .prologue
    .line 333
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, addI16(S)V

    .line 334
    iget-short v0, p1, Landroid/renderscript/Short2;->y:S

    invoke-virtual {p0, v0}, addI16(S)V

    .line 335
    return-void
.end method

.method public addI16(Landroid/renderscript/Short3;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Short3;

    .prologue
    .line 337
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, addI16(S)V

    .line 338
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, addI16(S)V

    .line 339
    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    invoke-virtual {p0, v0}, addI16(S)V

    .line 340
    return-void
.end method

.method public addI16(Landroid/renderscript/Short4;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Short4;

    .prologue
    .line 342
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, addI16(S)V

    .line 343
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, addI16(S)V

    .line 344
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, addI16(S)V

    .line 345
    iget-short v0, p1, Landroid/renderscript/Short4;->w:S

    invoke-virtual {p0, v0}, addI16(S)V

    .line 346
    return-void
.end method

.method public addI16(S)V
    .registers 5
    .param p1, "v"    # S

    .prologue
    .line 116
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, align(I)V

    .line 117
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 118
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 119
    return-void
.end method

.method public addI32(I)V
    .registers 5
    .param p1, "v"    # I

    .prologue
    .line 131
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, align(I)V

    .line 132
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 133
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 134
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 135
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 136
    return-void
.end method

.method public addI32(Landroid/renderscript/Int2;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Int2;

    .prologue
    .line 365
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, addI32(I)V

    .line 366
    iget v0, p1, Landroid/renderscript/Int2;->y:I

    invoke-virtual {p0, v0}, addI32(I)V

    .line 367
    return-void
.end method

.method public addI32(Landroid/renderscript/Int3;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Int3;

    .prologue
    .line 369
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, addI32(I)V

    .line 370
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, addI32(I)V

    .line 371
    iget v0, p1, Landroid/renderscript/Int3;->z:I

    invoke-virtual {p0, v0}, addI32(I)V

    .line 372
    return-void
.end method

.method public addI32(Landroid/renderscript/Int4;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Int4;

    .prologue
    .line 374
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, addI32(I)V

    .line 375
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, addI32(I)V

    .line 376
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, addI32(I)V

    .line 377
    iget v0, p1, Landroid/renderscript/Int4;->w:I

    invoke-virtual {p0, v0}, addI32(I)V

    .line 378
    return-void
.end method

.method public addI64(J)V
    .registers 10
    .param p1, "v"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 150
    invoke-virtual {p0, v6}, align(I)V

    .line 151
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 152
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 153
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 154
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 155
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 156
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 157
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 158
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 159
    return-void
.end method

.method public addI64(Landroid/renderscript/Long2;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long2;

    .prologue
    .line 397
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, addI64(J)V

    .line 398
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, addI64(J)V

    .line 399
    return-void
.end method

.method public addI64(Landroid/renderscript/Long3;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long3;

    .prologue
    .line 401
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, addI64(J)V

    .line 402
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, addI64(J)V

    .line 403
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, addI64(J)V

    .line 404
    return-void
.end method

.method public addI64(Landroid/renderscript/Long4;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long4;

    .prologue
    .line 406
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, addI64(J)V

    .line 407
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, addI64(J)V

    .line 408
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, addI64(J)V

    .line 409
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, addI64(J)V

    .line 410
    return-void
.end method

.method public addI8(B)V
    .registers 5
    .param p1, "v"    # B

    .prologue
    .line 107
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    aput-byte p1, v0, v1

    .line 108
    return-void
.end method

.method public addI8(Landroid/renderscript/Byte2;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Byte2;

    .prologue
    .line 301
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    invoke-virtual {p0, v0}, addI8(B)V

    .line 302
    iget-byte v0, p1, Landroid/renderscript/Byte2;->y:B

    invoke-virtual {p0, v0}, addI8(B)V

    .line 303
    return-void
.end method

.method public addI8(Landroid/renderscript/Byte3;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Byte3;

    .prologue
    .line 305
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    invoke-virtual {p0, v0}, addI8(B)V

    .line 306
    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    invoke-virtual {p0, v0}, addI8(B)V

    .line 307
    iget-byte v0, p1, Landroid/renderscript/Byte3;->z:B

    invoke-virtual {p0, v0}, addI8(B)V

    .line 308
    return-void
.end method

.method public addI8(Landroid/renderscript/Byte4;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Byte4;

    .prologue
    .line 310
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    invoke-virtual {p0, v0}, addI8(B)V

    .line 311
    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    invoke-virtual {p0, v0}, addI8(B)V

    .line 312
    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    invoke-virtual {p0, v0}, addI8(B)V

    .line 313
    iget-byte v0, p1, Landroid/renderscript/Byte4;->w:B

    invoke-virtual {p0, v0}, addI8(B)V

    .line 314
    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix2f;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Matrix2f;

    .prologue
    .line 592
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 593
    iget-object v1, p1, Landroid/renderscript/Matrix2f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, addF32(F)V

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 595
    :cond_10
    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix3f;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Matrix3f;

    .prologue
    .line 578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 579
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, addF32(F)V

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 581
    :cond_10
    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix4f;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Matrix4f;

    .prologue
    .line 564
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 565
    iget-object v1, p1, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, addF32(F)V

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 567
    :cond_10
    return-void
.end method

.method public addObj(Landroid/renderscript/BaseObj;)V
    .registers 7
    .param p1, "obj"    # Landroid/renderscript/BaseObj;

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x8

    const-wide/16 v2, 0x0

    .line 247
    if-eqz p1, :cond_25

    .line 248
    sget v0, Landroid/renderscript/RenderScript;->sPointerSize:I

    if-ne v0, v1, :cond_1c

    .line 249
    invoke-virtual {p1, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, addI64(J)V

    .line 250
    invoke-virtual {p0, v2, v3}, addI64(J)V

    .line 251
    invoke-virtual {p0, v2, v3}, addI64(J)V

    .line 252
    invoke-virtual {p0, v2, v3}, addI64(J)V

    .line 266
    :goto_1b
    return-void

    .line 254
    :cond_1c
    invoke-virtual {p1, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, addI32(I)V

    goto :goto_1b

    .line 257
    :cond_25
    sget v0, Landroid/renderscript/RenderScript;->sPointerSize:I

    if-ne v0, v1, :cond_36

    .line 258
    invoke-virtual {p0, v2, v3}, addI64(J)V

    .line 259
    invoke-virtual {p0, v2, v3}, addI64(J)V

    .line 260
    invoke-virtual {p0, v2, v3}, addI64(J)V

    .line 261
    invoke-virtual {p0, v2, v3}, addI64(J)V

    goto :goto_1b

    .line 263
    :cond_36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, addI32(I)V

    goto :goto_1b
.end method

.method public addU16(I)V
    .registers 5
    .param p1, "v"    # I

    .prologue
    .line 193
    if-ltz p1, :cond_7

    const v0, 0xffff

    if-le p1, v0, :cond_2e

    .line 194
    :cond_7
    const-string/jumbo v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU16( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_2e
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, align(I)V

    .line 198
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 199
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 200
    return-void
.end method

.method public addU16(Landroid/renderscript/Int2;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Int2;

    .prologue
    .line 349
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, addU16(I)V

    .line 350
    iget v0, p1, Landroid/renderscript/Int2;->y:I

    invoke-virtual {p0, v0}, addU16(I)V

    .line 351
    return-void
.end method

.method public addU16(Landroid/renderscript/Int3;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Int3;

    .prologue
    .line 353
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, addU16(I)V

    .line 354
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, addU16(I)V

    .line 355
    iget v0, p1, Landroid/renderscript/Int3;->z:I

    invoke-virtual {p0, v0}, addU16(I)V

    .line 356
    return-void
.end method

.method public addU16(Landroid/renderscript/Int4;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Int4;

    .prologue
    .line 358
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, addU16(I)V

    .line 359
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, addU16(I)V

    .line 360
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, addU16(I)V

    .line 361
    iget v0, p1, Landroid/renderscript/Int4;->w:I

    invoke-virtual {p0, v0}, addU16(I)V

    .line 362
    return-void
.end method

.method public addU32(J)V
    .registers 10
    .param p1, "v"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 203
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_11

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_38

    .line 204
    :cond_11
    const-string/jumbo v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU32( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_38
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, align(I)V

    .line 208
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 209
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 210
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 211
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 212
    return-void
.end method

.method public addU32(Landroid/renderscript/Long2;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long2;

    .prologue
    .line 381
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, addU32(J)V

    .line 382
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, addU32(J)V

    .line 383
    return-void
.end method

.method public addU32(Landroid/renderscript/Long3;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long3;

    .prologue
    .line 385
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, addU32(J)V

    .line 386
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, addU32(J)V

    .line 387
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, addU32(J)V

    .line 388
    return-void
.end method

.method public addU32(Landroid/renderscript/Long4;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long4;

    .prologue
    .line 390
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, addU32(J)V

    .line 391
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, addU32(J)V

    .line 392
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, addU32(J)V

    .line 393
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, addU32(J)V

    .line 394
    return-void
.end method

.method public addU64(J)V
    .registers 10
    .param p1, "v"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 215
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_31

    .line 216
    const-string/jumbo v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU64( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_31
    invoke-virtual {p0, v6}, align(I)V

    .line 220
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 221
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 222
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 223
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 224
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 225
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 226
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 227
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 228
    return-void
.end method

.method public addU64(Landroid/renderscript/Long2;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long2;

    .prologue
    .line 413
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, addU64(J)V

    .line 414
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, addU64(J)V

    .line 415
    return-void
.end method

.method public addU64(Landroid/renderscript/Long3;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long3;

    .prologue
    .line 417
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, addU64(J)V

    .line 418
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, addU64(J)V

    .line 419
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, addU64(J)V

    .line 420
    return-void
.end method

.method public addU64(Landroid/renderscript/Long4;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long4;

    .prologue
    .line 422
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, addU64(J)V

    .line 423
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, addU64(J)V

    .line 424
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, addU64(J)V

    .line 425
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, addU64(J)V

    .line 426
    return-void
.end method

.method public addU8(Landroid/renderscript/Short2;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Short2;

    .prologue
    .line 317
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, addU8(S)V

    .line 318
    iget-short v0, p1, Landroid/renderscript/Short2;->y:S

    invoke-virtual {p0, v0}, addU8(S)V

    .line 319
    return-void
.end method

.method public addU8(Landroid/renderscript/Short3;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Short3;

    .prologue
    .line 321
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, addU8(S)V

    .line 322
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, addU8(S)V

    .line 323
    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    invoke-virtual {p0, v0}, addU8(S)V

    .line 324
    return-void
.end method

.method public addU8(Landroid/renderscript/Short4;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Short4;

    .prologue
    .line 326
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, addU8(S)V

    .line 327
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, addU8(S)V

    .line 328
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, addU8(S)V

    .line 329
    iget-short v0, p1, Landroid/renderscript/Short4;->w:S

    invoke-virtual {p0, v0}, addU8(S)V

    .line 330
    return-void
.end method

.method public addU8(S)V
    .registers 5
    .param p1, "v"    # S

    .prologue
    .line 185
    if-ltz p1, :cond_6

    const/16 v0, 0xff

    if-le p1, v0, :cond_2d

    .line 186
    :cond_6
    const-string/jumbo v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU8( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_2d
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 190
    return-void
.end method

.method public align(I)V
    .registers 5
    .param p1, "v"    # I

    .prologue
    .line 60
    if-lez p1, :cond_7

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_20

    .line 61
    :cond_7
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument must be a non-negative non-zero power of 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_20
    :goto_20
    iget v0, p0, mPos:I

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_3a

    .line 65
    iget-object v0, p0, mAlignment:Ljava/util/BitSet;

    iget v1, p0, mPos:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->flip(I)V

    .line 66
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mPos:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_20

    .line 68
    :cond_3a
    return-void
.end method

.method public final getData()[B
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, mData:[B

    return-object v0
.end method

.method public getPos()I
    .registers 2

    .prologue
    .line 627
    iget v0, p0, mPos:I

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput v0, p0, mPos:I

    .line 90
    return-void
.end method

.method public reset(I)V
    .registers 5
    .param p1, "i"    # I

    .prologue
    .line 92
    if-ltz p1, :cond_6

    iget v0, p0, mLen:I

    if-le p1, v0, :cond_20

    .line 93
    :cond_6
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "out of range argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_20
    iput p1, p0, mPos:I

    .line 96
    return-void
.end method

.method public skip(I)V
    .registers 6
    .param p1, "i"    # I

    .prologue
    .line 99
    iget v1, p0, mPos:I

    add-int v0, v1, p1

    .line 100
    .local v0, "res":I
    if-ltz v0, :cond_a

    iget v1, p0, mLen:I

    if-le v0, v1, :cond_24

    .line 101
    :cond_a
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "out of range argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_24
    iput v0, p0, mPos:I

    .line 104
    return-void
.end method

.method public subBoolean()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 610
    invoke-virtual {p0}, subI8()B

    move-result v0

    .line 611
    .local v0, "v":B
    if-ne v0, v1, :cond_8

    .line 614
    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public subByte2()Landroid/renderscript/Byte2;
    .registers 3

    .prologue
    .line 474
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 475
    .local v0, "v":Landroid/renderscript/Byte2;
    invoke-virtual {p0}, subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    .line 476
    invoke-virtual {p0}, subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 477
    return-object v0
.end method

.method public subByte3()Landroid/renderscript/Byte3;
    .registers 3

    .prologue
    .line 480
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 481
    .local v0, "v":Landroid/renderscript/Byte3;
    invoke-virtual {p0}, subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 482
    invoke-virtual {p0}, subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 483
    invoke-virtual {p0}, subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 484
    return-object v0
.end method

.method public subByte4()Landroid/renderscript/Byte4;
    .registers 3

    .prologue
    .line 487
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 488
    .local v0, "v":Landroid/renderscript/Byte4;
    invoke-virtual {p0}, subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    .line 489
    invoke-virtual {p0}, subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 490
    invoke-virtual {p0}, subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 491
    invoke-virtual {p0}, subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 492
    return-object v0
.end method

.method public subDouble2()Landroid/renderscript/Double2;
    .registers 5

    .prologue
    .line 452
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 453
    .local v0, "v":Landroid/renderscript/Double2;
    invoke-virtual {p0}, subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    .line 454
    invoke-virtual {p0}, subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    .line 455
    return-object v0
.end method

.method public subDouble3()Landroid/renderscript/Double3;
    .registers 5

    .prologue
    .line 458
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 459
    .local v0, "v":Landroid/renderscript/Double3;
    invoke-virtual {p0}, subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    .line 460
    invoke-virtual {p0}, subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    .line 461
    invoke-virtual {p0}, subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    .line 462
    return-object v0
.end method

.method public subDouble4()Landroid/renderscript/Double4;
    .registers 5

    .prologue
    .line 465
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 466
    .local v0, "v":Landroid/renderscript/Double4;
    invoke-virtual {p0}, subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    .line 467
    invoke-virtual {p0}, subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    .line 468
    invoke-virtual {p0}, subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    .line 469
    invoke-virtual {p0}, subF64()D

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    .line 470
    return-object v0
.end method

.method public subF32()F
    .registers 2

    .prologue
    .line 235
    invoke-virtual {p0}, subI32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public subF64()D
    .registers 3

    .prologue
    .line 243
    invoke-virtual {p0}, subI64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public subFloat2()Landroid/renderscript/Float2;
    .registers 3

    .prologue
    .line 430
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 431
    .local v0, "v":Landroid/renderscript/Float2;
    invoke-virtual {p0}, subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 432
    invoke-virtual {p0}, subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 433
    return-object v0
.end method

.method public subFloat3()Landroid/renderscript/Float3;
    .registers 3

    .prologue
    .line 436
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 437
    .local v0, "v":Landroid/renderscript/Float3;
    invoke-virtual {p0}, subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 438
    invoke-virtual {p0}, subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 439
    invoke-virtual {p0}, subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 440
    return-object v0
.end method

.method public subFloat4()Landroid/renderscript/Float4;
    .registers 3

    .prologue
    .line 443
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 444
    .local v0, "v":Landroid/renderscript/Float4;
    invoke-virtual {p0}, subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 445
    invoke-virtual {p0}, subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 446
    invoke-virtual {p0}, subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 447
    invoke-virtual {p0}, subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 448
    return-object v0
.end method

.method public subI16()S
    .registers 4

    .prologue
    .line 122
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, subalign(I)V

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "v":S
    iget-object v1, p0, mData:[B

    iget v2, p0, mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-short v0, v1

    .line 125
    iget-object v1, p0, mData:[B

    iget v2, p0, mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 126
    return v0
.end method

.method public subI32()I
    .registers 4

    .prologue
    .line 139
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, subalign(I)V

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "v":I
    iget-object v1, p0, mData:[B

    iget v2, p0, mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x18

    .line 142
    iget-object v1, p0, mData:[B

    iget v2, p0, mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 143
    iget-object v1, p0, mData:[B

    iget v2, p0, mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 144
    iget-object v1, p0, mData:[B

    iget v2, p0, mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 145
    return v0
.end method

.method public subI64()J
    .registers 10

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 162
    invoke-virtual {p0, v8}, subalign(I)V

    .line 163
    const-wide/16 v0, 0x0

    .line 164
    .local v0, "v":J
    const/4 v2, 0x0

    .line 165
    .local v2, "x":B
    iget-object v3, p0, mData:[B

    iget v4, p0, mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mPos:I

    aget-byte v2, v3, v4

    .line 166
    int-to-long v4, v2

    and-long/2addr v4, v6

    const/16 v3, 0x38

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    .line 167
    iget-object v3, p0, mData:[B

    iget v4, p0, mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mPos:I

    aget-byte v2, v3, v4

    .line 168
    int-to-long v4, v2

    and-long/2addr v4, v6

    const/16 v3, 0x30

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    .line 169
    iget-object v3, p0, mData:[B

    iget v4, p0, mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mPos:I

    aget-byte v2, v3, v4

    .line 170
    int-to-long v4, v2

    and-long/2addr v4, v6

    const/16 v3, 0x28

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    .line 171
    iget-object v3, p0, mData:[B

    iget v4, p0, mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mPos:I

    aget-byte v2, v3, v4

    .line 172
    int-to-long v4, v2

    and-long/2addr v4, v6

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    .line 173
    iget-object v3, p0, mData:[B

    iget v4, p0, mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mPos:I

    aget-byte v2, v3, v4

    .line 174
    int-to-long v4, v2

    and-long/2addr v4, v6

    const/16 v3, 0x18

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    .line 175
    iget-object v3, p0, mData:[B

    iget v4, p0, mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mPos:I

    aget-byte v2, v3, v4

    .line 176
    int-to-long v4, v2

    and-long/2addr v4, v6

    const/16 v3, 0x10

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    .line 177
    iget-object v3, p0, mData:[B

    iget v4, p0, mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mPos:I

    aget-byte v2, v3, v4

    .line 178
    int-to-long v4, v2

    and-long/2addr v4, v6

    shl-long/2addr v4, v8

    or-long/2addr v0, v4

    .line 179
    iget-object v3, p0, mData:[B

    iget v4, p0, mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mPos:I

    aget-byte v2, v3, v4

    .line 180
    int-to-long v4, v2

    and-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 181
    return-wide v0
.end method

.method public subI8()B
    .registers 3

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, subalign(I)V

    .line 112
    iget-object v0, p0, mData:[B

    iget v1, p0, mPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public subInt2()Landroid/renderscript/Int2;
    .registers 3

    .prologue
    .line 518
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 519
    .local v0, "v":Landroid/renderscript/Int2;
    invoke-virtual {p0}, subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 520
    invoke-virtual {p0}, subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 521
    return-object v0
.end method

.method public subInt3()Landroid/renderscript/Int3;
    .registers 3

    .prologue
    .line 524
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 525
    .local v0, "v":Landroid/renderscript/Int3;
    invoke-virtual {p0}, subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 526
    invoke-virtual {p0}, subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 527
    invoke-virtual {p0}, subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 528
    return-object v0
.end method

.method public subInt4()Landroid/renderscript/Int4;
    .registers 3

    .prologue
    .line 531
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 532
    .local v0, "v":Landroid/renderscript/Int4;
    invoke-virtual {p0}, subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 533
    invoke-virtual {p0}, subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 534
    invoke-virtual {p0}, subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 535
    invoke-virtual {p0}, subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 536
    return-object v0
.end method

.method public subLong2()Landroid/renderscript/Long2;
    .registers 5

    .prologue
    .line 540
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 541
    .local v0, "v":Landroid/renderscript/Long2;
    invoke-virtual {p0}, subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    .line 542
    invoke-virtual {p0}, subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    .line 543
    return-object v0
.end method

.method public subLong3()Landroid/renderscript/Long3;
    .registers 5

    .prologue
    .line 546
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 547
    .local v0, "v":Landroid/renderscript/Long3;
    invoke-virtual {p0}, subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    .line 548
    invoke-virtual {p0}, subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    .line 549
    invoke-virtual {p0}, subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    .line 550
    return-object v0
.end method

.method public subLong4()Landroid/renderscript/Long4;
    .registers 5

    .prologue
    .line 553
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 554
    .local v0, "v":Landroid/renderscript/Long4;
    invoke-virtual {p0}, subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    .line 555
    invoke-virtual {p0}, subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    .line 556
    invoke-virtual {p0}, subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    .line 557
    invoke-virtual {p0}, subI64()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    .line 558
    return-object v0
.end method

.method public subMatrix2f()Landroid/renderscript/Matrix2f;
    .registers 5

    .prologue
    .line 598
    new-instance v1, Landroid/renderscript/Matrix2f;

    invoke-direct {v1}, Landroid/renderscript/Matrix2f;-><init>()V

    .line 599
    .local v1, "v":Landroid/renderscript/Matrix2f;
    iget-object v2, v1, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_17

    .line 600
    iget-object v2, v1, Landroid/renderscript/Matrix2f;->mMat:[F

    invoke-virtual {p0}, subF32()F

    move-result v3

    aput v3, v2, v0

    .line 599
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 602
    :cond_17
    return-object v1
.end method

.method public subMatrix3f()Landroid/renderscript/Matrix3f;
    .registers 5

    .prologue
    .line 584
    new-instance v1, Landroid/renderscript/Matrix3f;

    invoke-direct {v1}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 585
    .local v1, "v":Landroid/renderscript/Matrix3f;
    iget-object v2, v1, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_17

    .line 586
    iget-object v2, v1, Landroid/renderscript/Matrix3f;->mMat:[F

    invoke-virtual {p0}, subF32()F

    move-result v3

    aput v3, v2, v0

    .line 585
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 588
    :cond_17
    return-object v1
.end method

.method public subMatrix4f()Landroid/renderscript/Matrix4f;
    .registers 5

    .prologue
    .line 570
    new-instance v1, Landroid/renderscript/Matrix4f;

    invoke-direct {v1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 571
    .local v1, "v":Landroid/renderscript/Matrix4f;
    iget-object v2, v1, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_17

    .line 572
    iget-object v2, v1, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {p0}, subF32()F

    move-result v3

    aput v3, v2, v0

    .line 571
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 574
    :cond_17
    return-object v1
.end method

.method public subShort2()Landroid/renderscript/Short2;
    .registers 3

    .prologue
    .line 496
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 497
    .local v0, "v":Landroid/renderscript/Short2;
    invoke-virtual {p0}, subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 498
    invoke-virtual {p0}, subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 499
    return-object v0
.end method

.method public subShort3()Landroid/renderscript/Short3;
    .registers 3

    .prologue
    .line 502
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 503
    .local v0, "v":Landroid/renderscript/Short3;
    invoke-virtual {p0}, subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 504
    invoke-virtual {p0}, subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 505
    invoke-virtual {p0}, subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 506
    return-object v0
.end method

.method public subShort4()Landroid/renderscript/Short4;
    .registers 3

    .prologue
    .line 509
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 510
    .local v0, "v":Landroid/renderscript/Short4;
    invoke-virtual {p0}, subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 511
    invoke-virtual {p0}, subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 512
    invoke-virtual {p0}, subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 513
    invoke-virtual {p0}, subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 514
    return-object v0
.end method

.method public subalign(I)V
    .registers 5
    .param p1, "v"    # I

    .prologue
    .line 71
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_1e

    .line 72
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument must be a non-negative non-zero power of 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1e
    :goto_1e
    iget v0, p0, mPos:I

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2c

    .line 76
    iget v0, p0, mPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mPos:I

    goto :goto_1e

    .line 79
    :cond_2c
    iget v0, p0, mPos:I

    if-lez v0, :cond_4b

    .line 80
    :goto_30
    iget-object v0, p0, mAlignment:Ljava/util/BitSet;

    iget v1, p0, mPos:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    .line 81
    iget v0, p0, mPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mPos:I

    .line 82
    iget-object v0, p0, mAlignment:Ljava/util/BitSet;

    iget v1, p0, mPos:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->flip(I)V

    goto :goto_30

    .line 86
    :cond_4b
    return-void
.end method
