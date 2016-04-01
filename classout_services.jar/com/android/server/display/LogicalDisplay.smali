.class final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1


# instance fields
.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayId:I

.field private mDisplayOffsetX:I

.field private mDisplayOffsetY:I

.field private mHasContent:Z

.field private mInfo:Landroid/view/DisplayInfo;

.field private final mLayerStack:I

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mRequestedColorTransformId:I

.field private mRequestedModeId:I

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempLayerStackRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "layerStack"    # I
    .param p3, "primaryDisplayDevice"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempLayerStackRect:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempDisplayRect:Landroid/graphics/Rect;

    .line 88
    iput p1, p0, mDisplayId:I

    .line 89
    iput p2, p0, mLayerStack:I

    .line 90
    iput-object p3, p0, mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 91
    return-void
.end method


# virtual methods
.method public configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;Z)V
    .registers 19
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "isBlanked"    # Z

    .prologue
    .line 291
    if-eqz p2, :cond_bb

    const/4 v11, -0x1

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayDevice;->setLayerStackInTransactionLocked(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v11, v0, mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_c1

    .line 295
    move-object/from16 v0, p0

    iget v11, v0, mRequestedColorTransformId:I

    move-object/from16 v0, p0

    iget v12, v0, mRequestedModeId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/android/server/display/DisplayDevice;->requestColorTransformAndModeInTransactionLocked(II)V

    .line 302
    :goto_1d
    invoke-virtual/range {p0 .. p0}, getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 303
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 308
    .local v1, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, mTempLayerStackRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v15, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 313
    const/4 v7, 0x0

    .line 314
    .local v7, "orientation":I
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_3b

    .line 315
    iget v7, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 319
    :cond_3b
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->fixedOrientation:I

    if-ltz v11, :cond_47

    .line 320
    iget v11, v2, Landroid/view/DisplayInfo;->rotation:I

    iget v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->fixedOrientation:I

    rsub-int/lit8 v12, v12, 0x4

    add-int v7, v11, v12

    .line 324
    :cond_47
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v11, v7

    rem-int/lit8 v7, v11, 0x4

    .line 331
    const/4 v11, 0x1

    if-eq v7, v11, :cond_52

    const/4 v11, 0x3

    if-ne v7, v11, :cond_ca

    :cond_52
    const/4 v10, 0x1

    .line 333
    .local v10, "rotated":Z
    :goto_53
    if-eqz v10, :cond_cc

    iget v9, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 334
    .local v9, "physWidth":I
    :goto_57
    if-eqz v10, :cond_cf

    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 344
    .local v8, "physHeight":I
    :goto_5b
    iget v11, v2, Landroid/view/DisplayInfo;->flags:I

    const/high16 v12, 0x40000000    # 2.0f

    and-int/2addr v11, v12

    if-eqz v11, :cond_d2

    .line 345
    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 346
    .local v6, "displayRectWidth":I
    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 357
    .local v3, "displayRectHeight":I
    :goto_66
    sub-int v11, v8, v3

    div-int/lit8 v5, v11, 0x2

    .line 358
    .local v5, "displayRectTop":I
    sub-int v11, v9, v6

    div-int/lit8 v4, v11, 0x2

    .line 359
    .local v4, "displayRectLeft":I
    move-object/from16 v0, p0

    iget-object v11, v0, mTempDisplayRect:Landroid/graphics/Rect;

    add-int v12, v4, v6

    add-int v13, v5, v3

    invoke-virtual {v11, v4, v5, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 362
    move-object/from16 v0, p0

    iget-object v11, v0, mTempDisplayRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v13, v0, mDisplayOffsetX:I

    add-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->left:I

    .line 363
    move-object/from16 v0, p0

    iget-object v11, v0, mTempDisplayRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v13, v0, mDisplayOffsetX:I

    add-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 364
    move-object/from16 v0, p0

    iget-object v11, v0, mTempDisplayRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v13, v0, mDisplayOffsetY:I

    add-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->top:I

    .line 365
    move-object/from16 v0, p0

    iget-object v11, v0, mTempDisplayRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v13, v0, mDisplayOffsetY:I

    add-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 366
    move-object/from16 v0, p0

    iget-object v11, v0, mTempLayerStackRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mTempDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v11, v12}, Lcom/android/server/display/DisplayDevice;->setProjectionInTransactionLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 367
    return-void

    .line 291
    .end local v1    # "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "displayRectHeight":I
    .end local v4    # "displayRectLeft":I
    .end local v5    # "displayRectTop":I
    .end local v6    # "displayRectWidth":I
    .end local v7    # "orientation":I
    .end local v8    # "physHeight":I
    .end local v9    # "physWidth":I
    .end local v10    # "rotated":Z
    :cond_bb
    move-object/from16 v0, p0

    iget v11, v0, mLayerStack:I

    goto/16 :goto_3

    .line 298
    :cond_c1
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/android/server/display/DisplayDevice;->requestColorTransformAndModeInTransactionLocked(II)V

    goto/16 :goto_1d

    .line 331
    .restart local v1    # "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    .restart local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v7    # "orientation":I
    :cond_ca
    const/4 v10, 0x0

    goto :goto_53

    .line 333
    .restart local v10    # "rotated":Z
    :cond_cc
    iget v9, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_57

    .line 334
    .restart local v9    # "physWidth":I
    :cond_cf
    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_5b

    .line 347
    .restart local v8    # "physHeight":I
    :cond_d2
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v11, v9

    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v12, v8

    if-ge v11, v12, :cond_e3

    .line 350
    move v6, v9

    .line 351
    .restart local v6    # "displayRectWidth":I
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v11, v9

    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int v3, v11, v12

    .restart local v3    # "displayRectHeight":I
    goto :goto_66

    .line 354
    .end local v3    # "displayRectHeight":I
    .end local v6    # "displayRectWidth":I
    :cond_e3
    iget v11, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v11, v8

    iget v12, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int v6, v11, v12

    .line 355
    .restart local v6    # "displayRectWidth":I
    move v3, v8

    .restart local v3    # "displayRectHeight":I
    goto/16 :goto_66
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mRequestedModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedColorTransformId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mRequestedColorTransformId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_fc

    iget-object v0, p0, mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v0

    :goto_be
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    return-void

    .line 447
    :cond_fc
    const-string/jumbo v0, "null"

    goto :goto_be
.end method

.method public getDisplayIdLocked()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, mDisplayId:I

    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_a6

    .line 120
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    .line 121
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 122
    iget-object v0, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_a6

    .line 123
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 124
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 125
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 126
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 127
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 128
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 129
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 130
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 131
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanLeft:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 132
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanTop:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanTop:I

    .line 133
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanRight:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanRight:I

    .line 134
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanBottom:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 135
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v1, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 136
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 137
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 138
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 140
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    .line 141
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    .line 145
    :cond_a6
    iget-object v0, p0, mInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public getDisplayOffsetXLocked()I
    .registers 2

    .prologue
    .line 422
    iget v0, p0, mDisplayOffsetX:I

    return v0
.end method

.method public getDisplayOffsetYLocked()I
    .registers 2

    .prologue
    .line 429
    iget v0, p0, mDisplayOffsetY:I

    return v0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object v0
.end method

.method public getRequestedColorTransformIdLocked()I
    .registers 2

    .prologue
    .line 415
    iget v0, p0, mRequestedColorTransformId:I

    return v0
.end method

.method public getRequestedModeIdLocked()I
    .registers 2

    .prologue
    .line 403
    iget v0, p0, mRequestedModeId:I

    return v0
.end method

.method public hasContentLocked()Z
    .registers 2

    .prologue
    .line 380
    iget-boolean v0, p0, mHasContent:Z

    return v0
.end method

.method public isValidLocked()Z
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 156
    if-eqz p1, :cond_22

    .line 157
    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v1, :cond_12

    .line 158
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 159
    iput-object v2, p0, mInfo:Landroid/view/DisplayInfo;

    .line 172
    :goto_11
    return v0

    .line 162
    :cond_12
    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 163
    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 164
    iput-object v2, p0, mInfo:Landroid/view/DisplayInfo;

    goto :goto_11

    .line 167
    :cond_22
    iget-object v1, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v1, :cond_2b

    .line 168
    iput-object v2, p0, mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 169
    iput-object v2, p0, mInfo:Landroid/view/DisplayInfo;

    goto :goto_11

    .line 172
    :cond_2b
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setDisplayOffsetsLocked(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 436
    iput p1, p0, mDisplayOffsetX:I

    .line 437
    iput p2, p0, mDisplayOffsetY:I

    .line 438
    return-void
.end method

.method public setHasContentLocked(Z)V
    .registers 2
    .param p1, "hasContent"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, mHasContent:Z

    .line 390
    return-void
.end method

.method public setRequestedColorTransformIdLocked(I)V
    .registers 2
    .param p1, "colorTransformId"    # I

    .prologue
    .line 410
    iput p1, p0, mRequestedColorTransformId:I

    .line 411
    return-void
.end method

.method public setRequestedModeIdLocked(I)V
    .registers 2
    .param p1, "modeId"    # I

    .prologue
    .line 396
    iput p1, p0, mRequestedModeId:I

    .line 397
    return-void
.end method

.method public updateLocked(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDevice;>;"
    const/4 v5, 0x0

    const/high16 v4, 0x100000

    const/4 v3, 0x0

    .line 196
    iget-object v1, p0, mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v1, :cond_9

    .line 269
    :cond_8
    :goto_8
    return-void

    .line 201
    :cond_9
    iget-object v1, p0, mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 202
    iput-object v5, p0, mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    goto :goto_8

    .line 211
    :cond_14
    iget-object v1, p0, mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 212
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v1, p0, mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v1, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 213
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, p0, mLayerStack:I

    iput v2, v1, Landroid/view/DisplayInfo;->layerStack:I

    .line 214
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    .line 215
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3a

    .line 216
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 218
    :cond_3a
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_48

    .line 219
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 221
    :cond_48
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_56

    .line 222
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 224
    :cond_56
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_64

    .line 225
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 227
    :cond_64
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_72

    .line 228
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 231
    :cond_72
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_7e

    .line 232
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v2, v4

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 235
    :cond_7e
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v2, v1, Landroid/view/DisplayInfo;->type:I

    .line 236
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    .line 237
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 238
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 239
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    .line 240
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->appHeight:I

    .line 241
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 242
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 243
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 244
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v2, v1, Landroid/view/DisplayInfo;->modeId:I

    .line 245
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v2, v1, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 246
    iget-object v2, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v3, v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display$Mode;

    iput-object v1, v2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 248
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorTransformId:I

    iput v2, v1, Landroid/view/DisplayInfo;->colorTransformId:I

    .line 249
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultColorTransformId:I

    iput v2, v1, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    .line 250
    iget-object v2, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    array-length v3, v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display$ColorTransform;

    iput-object v1, v2, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 253
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 254
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v2, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 255
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v2, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 256
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v2, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 257
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v2, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 258
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v2, v1, Landroid/view/DisplayInfo;->state:I

    .line 259
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 260
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 261
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 262
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 263
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v2, v1, Landroid/view/DisplayInfo;->ownerUid:I

    .line 264
    iget-object v1, p0, mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 266
    iput-object v0, p0, mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 267
    iput-object v5, p0, mInfo:Landroid/view/DisplayInfo;

    goto/16 :goto_8
.end method
