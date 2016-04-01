.class public Landroid/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mArray:[I

.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .registers 4
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x1

    iput v0, p0, mDimX:I

    .line 340
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, mArray:[I

    .line 351
    invoke-virtual {p2}, Landroid/renderscript/Element;->checkValid()V

    .line 352
    iput-object p1, p0, mRS:Landroid/renderscript/RenderScript;

    .line 353
    iput-object p2, p0, mElement:Landroid/renderscript/Element;

    .line 354
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Type;
    .registers 15

    .prologue
    const/4 v2, 0x1

    .line 442
    iget v1, p0, mDimZ:I

    if-lez v1, :cond_21

    .line 443
    iget v1, p0, mDimX:I

    if-lt v1, v2, :cond_d

    iget v1, p0, mDimY:I

    if-ge v1, v2, :cond_15

    .line 444
    :cond_d
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "Both X and Y dimension required when Z is present."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_15
    iget-boolean v1, p0, mDimFaces:Z

    if-eqz v1, :cond_21

    .line 447
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "Cube maps not supported with 3D types."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_21
    iget v1, p0, mDimY:I

    if-lez v1, :cond_31

    .line 451
    iget v1, p0, mDimX:I

    if-ge v1, v2, :cond_31

    .line 452
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "X dimension required when Y is present."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_31
    iget-boolean v1, p0, mDimFaces:Z

    if-eqz v1, :cond_41

    .line 456
    iget v1, p0, mDimY:I

    if-ge v1, v2, :cond_41

    .line 457
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "Cube maps require 2D Types."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    :cond_41
    iget v1, p0, mYuv:I

    if-eqz v1, :cond_59

    .line 462
    iget v1, p0, mDimZ:I

    if-nez v1, :cond_51

    iget-boolean v1, p0, mDimFaces:Z

    if-nez v1, :cond_51

    iget-boolean v1, p0, mDimMipmaps:Z

    if-eqz v1, :cond_59

    .line 463
    :cond_51
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "YUV only supports basic 2D."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_59
    const/4 v0, 0x0

    .line 468
    .local v0, "arrays":[I
    const/4 v10, 0x3

    .local v10, "ct":I
    :goto_5b
    if-ltz v10, :cond_7a

    .line 469
    iget-object v1, p0, mArray:[I

    aget v1, v1, v10

    if-eqz v1, :cond_67

    if-nez v0, :cond_67

    .line 470
    new-array v0, v10, [I

    .line 472
    :cond_67
    iget-object v1, p0, mArray:[I

    aget v1, v1, v10

    if-nez v1, :cond_77

    if-eqz v0, :cond_77

    .line 473
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "Array dimensions must be contigous from 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_77
    add-int/lit8 v10, v10, -0x1

    goto :goto_5b

    .line 477
    :cond_7a
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, mElement:Landroid/renderscript/Element;

    iget-object v3, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, p0, mDimX:I

    iget v5, p0, mDimY:I

    iget v6, p0, mDimZ:I

    iget-boolean v7, p0, mDimMipmaps:Z

    iget-boolean v8, p0, mDimFaces:Z

    iget v9, p0, mYuv:I

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v12

    .line 479
    .local v12, "id":J
    new-instance v11, Landroid/renderscript/Type;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v11, v12, v13, v1}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 480
    .local v11, "t":Landroid/renderscript/Type;
    iget-object v1, p0, mElement:Landroid/renderscript/Element;

    iput-object v1, v11, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 481
    iget v1, p0, mDimX:I

    iput v1, v11, Landroid/renderscript/Type;->mDimX:I

    .line 482
    iget v1, p0, mDimY:I

    iput v1, v11, Landroid/renderscript/Type;->mDimY:I

    .line 483
    iget v1, p0, mDimZ:I

    iput v1, v11, Landroid/renderscript/Type;->mDimZ:I

    .line 484
    iget-boolean v1, p0, mDimMipmaps:Z

    iput-boolean v1, v11, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 485
    iget-boolean v1, p0, mDimFaces:Z

    iput-boolean v1, v11, Landroid/renderscript/Type;->mDimFaces:Z

    .line 486
    iget v1, p0, mYuv:I

    iput v1, v11, Landroid/renderscript/Type;->mDimYuv:I

    .line 487
    iput-object v0, v11, Landroid/renderscript/Type;->mArrays:[I

    .line 489
    invoke-virtual {v11}, Landroid/renderscript/Type;->calcElementCount()V

    .line 490
    return-object v11
.end method

.method public setArray(II)Landroid/renderscript/Type$Builder;
    .registers 5
    .param p1, "dim"    # I
    .param p2, "value"    # I

    .prologue
    .line 396
    if-ltz p1, :cond_5

    const/4 v0, 0x4

    if-lt p1, v0, :cond_d

    .line 397
    :cond_5
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Array dimension out of range."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_d
    iget-object v0, p0, mArray:[I

    aput p2, v0, p1

    .line 400
    return-object p0
.end method

.method public setFaces(Z)Landroid/renderscript/Type$Builder;
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 409
    iput-boolean p1, p0, mDimFaces:Z

    .line 410
    return-object p0
.end method

.method public setMipmaps(Z)Landroid/renderscript/Type$Builder;
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, mDimMipmaps:Z

    .line 405
    return-object p0
.end method

.method public setX(I)Landroid/renderscript/Type$Builder;
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 363
    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    .line 364
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_b
    iput p1, p0, mDimX:I

    .line 367
    return-object p0
.end method

.method public setY(I)Landroid/renderscript/Type$Builder;
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 371
    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    .line 372
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_b
    iput p1, p0, mDimY:I

    .line 375
    return-object p0
.end method

.method public setYuvFormat(I)Landroid/renderscript/Type$Builder;
    .registers 4
    .param p1, "yuvFormat"    # I

    .prologue
    .line 420
    sparse-switch p1, :sswitch_data_e

    .line 427
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only ImageFormat.NV21, .YV12, and .YUV_420_888 are supported.."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :sswitch_b
    iput p1, p0, mYuv:I

    .line 432
    return-object p0

    .line 420
    :sswitch_data_e
    .sparse-switch
        0x11 -> :sswitch_b
        0x23 -> :sswitch_b
        0x32315659 -> :sswitch_b
    .end sparse-switch
.end method

.method public setZ(I)Landroid/renderscript/Type$Builder;
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 379
    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    .line 380
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_b
    iput p1, p0, mDimZ:I

    .line 383
    return-object p0
.end method
