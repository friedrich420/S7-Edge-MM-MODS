.class final Lcom/android/server/input/PersistentDataStore$InputDeviceState;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputDeviceState"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CALIBRATION_NAME:[Ljava/lang/String;


# instance fields
.field private mCurrentKeyboardLayout:Ljava/lang/String;

.field private mKeyboardLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchCalibration:[Landroid/hardware/input/TouchCalibration;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 304
    const-class v0, Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_35

    move v0, v1

    :goto_b
    sput-boolean v0, $assertionsDisabled:Z

    .line 305
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "x_scale"

    aput-object v3, v0, v2

    const-string/jumbo v2, "x_ymix"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "x_offset"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "y_xmix"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "y_scale"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "y_offset"

    aput-object v2, v0, v1

    sput-object v0, CALIBRATION_NAME:[Ljava/lang/String;

    return-void

    :cond_35
    move v0, v2

    .line 304
    goto :goto_b
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/hardware/input/TouchCalibration;

    iput-object v0, p0, mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/PersistentDataStore$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/input/PersistentDataStore$1;

    .prologue
    .line 304
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method private static stringToSurfaceRotation(Ljava/lang/String;)I
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 543
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 544
    const/4 v0, 0x0

    .line 553
    :goto_9
    return v0

    .line 546
    :cond_a
    const-string v0, "90"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 547
    const/4 v0, 0x1

    goto :goto_9

    .line 549
    :cond_14
    const-string v0, "180"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 550
    const/4 v0, 0x2

    goto :goto_9

    .line 552
    :cond_1e
    const-string v0, "270"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 553
    const/4 v0, 0x3

    goto :goto_9

    .line 555
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported surface rotation string \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static surfaceRotationToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "surfaceRotation"    # I

    .prologue
    .line 533
    packed-switch p0, :pswitch_data_28

    .line 539
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported surface rotation value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :pswitch_1c
    const-string v0, "0"

    .line 537
    :goto_1e
    return-object v0

    .line 535
    :pswitch_1f
    const-string v0, "90"

    goto :goto_1e

    .line 536
    :pswitch_22
    const-string v0, "180"

    goto :goto_1e

    .line 537
    :pswitch_25
    const-string v0, "270"

    goto :goto_1e

    .line 533
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method private updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V
    .registers 5
    .param p1, "removedKeyboardLayout"    # Ljava/lang/String;
    .param p2, "removedIndex"    # I

    .prologue
    .line 378
    iget-object v1, p0, mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-static {v1, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 379
    iget-object v1, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 380
    move v0, p2

    .line 381
    .local v0, "index":I
    iget-object v1, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 382
    const/4 v0, 0x0

    .line 384
    :cond_1a
    iget-object v1, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, mCurrentKeyboardLayout:Ljava/lang/String;

    .line 389
    .end local v0    # "index":I
    :cond_24
    :goto_24
    return-void

    .line 386
    :cond_25
    const/4 v1, 0x0

    iput-object v1, p0, mCurrentKeyboardLayout:Ljava/lang/String;

    goto :goto_24
.end method


# virtual methods
.method public addKeyboardLayout(Ljava/lang/String;)Z
    .registers 5
    .param p1, "keyboardLayout"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v1, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 356
    .local v0, "index":I
    if-ltz v0, :cond_a

    .line 357
    const/4 v1, 0x0

    .line 363
    :goto_9
    return v1

    .line 359
    :cond_a
    iget-object v1, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 360
    iget-object v1, p0, mCurrentKeyboardLayout:Ljava/lang/String;

    if-nez v1, :cond_18

    .line 361
    iput-object p1, p0, mCurrentKeyboardLayout:Ljava/lang/String;

    .line 363
    :cond_18
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public getCurrentKeyboardLayout()Ljava/lang/String;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, mCurrentKeyboardLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardLayouts()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 348
    iget-object v0, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 349
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 351
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_12
.end method

.method public getTouchCalibration(I)Landroid/hardware/input/TouchCalibration;
    .registers 5
    .param p1, "surfaceRotation"    # I

    .prologue
    .line 314
    :try_start_0
    iget-object v1, p0, mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v1, v1, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    .line 317
    :goto_4
    return-object v1

    .line 315
    :catch_5
    move-exception v0

    .line 316
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "InputManager"

    const-string v2, "Cannot get touch calibration."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 23
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 424
    .local v15, "outerDepth":I
    :cond_4
    :goto_4
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 425
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "keyboard-layout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 426
    const/4 v1, 0x0

    const-string/jumbo v2, "descriptor"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 427
    .local v10, "descriptor":Ljava/lang/String;
    if-nez v10, :cond_2d

    .line 428
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Missing descriptor attribute on keyboard-layout."

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_2d
    const/4 v1, 0x0

    const-string/jumbo v2, "current"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 432
    .local v8, "current":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 433
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Found duplicate keyboard layout."

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_49
    move-object/from16 v0, p0

    iget-object v1, v0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    if-eqz v8, :cond_4

    const-string/jumbo v1, "true"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, mCurrentKeyboardLayout:Ljava/lang/String;

    if-eqz v1, :cond_69

    .line 440
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Found multiple current keyboard layouts."

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_69
    move-object/from16 v0, p0

    iput-object v10, v0, mCurrentKeyboardLayout:Ljava/lang/String;

    goto :goto_4

    .line 445
    .end local v8    # "current":Ljava/lang/String;
    .end local v10    # "descriptor":Ljava/lang/String;
    :cond_6e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "calibration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 446
    const/4 v1, 0x0

    const-string/jumbo v2, "format"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 447
    .local v12, "format":Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "rotation"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 448
    .local v17, "rotation":Ljava/lang/String;
    const/16 v16, -0x1

    .line 450
    .local v16, "r":I
    if-nez v12, :cond_9a

    .line 451
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Missing format attribute on calibration."

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_9a
    const-string v1, "affine"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 455
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Unsupported format for calibration."

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :cond_aa
    if-eqz v17, :cond_b0

    .line 460
    :try_start_ac
    invoke-static/range {v17 .. v17}, stringToSurfaceRotation(Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ac .. :try_end_af} :catch_ea

    move-result v16

    .line 467
    :cond_b0
    sget-object v1, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    invoke-virtual {v1}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    move-result-object v14

    .line 468
    .local v14, "matrix":[F
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 469
    .local v9, "depth":I
    :cond_ba
    :goto_ba
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 470
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 471
    .local v18, "tag":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v19

    .line 473
    .local v19, "value":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_cf
    array-length v1, v14

    if-ge v13, v1, :cond_ba

    sget-object v1, CALIBRATION_NAME:[Ljava/lang/String;

    array-length v1, v1

    if-ge v13, v1, :cond_ba

    .line 474
    sget-object v1, CALIBRATION_NAME:[Ljava/lang/String;

    aget-object v1, v1, v13

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 475
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v14, v13

    goto :goto_ba

    .line 461
    .end local v9    # "depth":I
    .end local v13    # "i":I
    .end local v14    # "matrix":[F
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :catch_ea
    move-exception v11

    .line 462
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Unsupported rotation for calibration."

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 473
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "depth":I
    .restart local v13    # "i":I
    .restart local v14    # "matrix":[F
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "value":Ljava/lang/String;
    :cond_f3
    add-int/lit8 v13, v13, 0x1

    goto :goto_cf

    .line 481
    .end local v13    # "i":I
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_f6
    const/4 v1, -0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_128

    .line 483
    const/16 v16, 0x0

    :goto_fd
    move-object/from16 v0, p0

    iget-object v1, v0, mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    array-length v1, v1

    move/from16 v0, v16

    if-ge v0, v1, :cond_4

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    move-object/from16 v20, v0

    new-instance v1, Landroid/hardware/input/TouchCalibration;

    const/4 v2, 0x0

    aget v2, v14, v2

    const/4 v3, 0x1

    aget v3, v14, v3

    const/4 v4, 0x2

    aget v4, v14, v4

    const/4 v5, 0x3

    aget v5, v14, v5

    const/4 v6, 0x4

    aget v6, v14, v6

    const/4 v7, 0x5

    aget v7, v14, v7

    invoke-direct/range {v1 .. v7}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    aput-object v1, v20, v16

    .line 483
    add-int/lit8 v16, v16, 0x1

    goto :goto_fd

    .line 488
    :cond_128
    move-object/from16 v0, p0

    iget-object v0, v0, mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    move-object/from16 v20, v0

    new-instance v1, Landroid/hardware/input/TouchCalibration;

    const/4 v2, 0x0

    aget v2, v14, v2

    const/4 v3, 0x1

    aget v3, v14, v3

    const/4 v4, 0x2

    aget v4, v14, v4

    const/4 v5, 0x3

    aget v5, v14, v5

    const/4 v6, 0x4

    aget v6, v14, v6

    const/4 v7, 0x5

    aget v7, v14, v7

    invoke-direct/range {v1 .. v7}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    aput-object v1, v20, v16

    goto/16 :goto_4

    .line 495
    .end local v9    # "depth":I
    .end local v12    # "format":Ljava/lang/String;
    .end local v14    # "matrix":[F
    .end local v16    # "r":I
    .end local v17    # "rotation":Ljava/lang/String;
    :cond_149
    move-object/from16 v0, p0

    iget-object v1, v0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v1, v0, mCurrentKeyboardLayout:Ljava/lang/String;

    if-nez v1, :cond_16f

    move-object/from16 v0, p0

    iget-object v1, v0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16f

    .line 500
    move-object/from16 v0, p0

    iget-object v1, v0, mKeyboardLayouts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, mCurrentKeyboardLayout:Ljava/lang/String;

    .line 502
    :cond_16f
    return-void
.end method

.method public removeKeyboardLayout(Ljava/lang/String;)Z
    .registers 4
    .param p1, "keyboardLayout"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v1, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 368
    .local v0, "index":I
    if-gez v0, :cond_a

    .line 369
    const/4 v1, 0x0

    .line 373
    :goto_9
    return v1

    .line 371
    :cond_a
    iget-object v1, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 372
    invoke-direct {p0, p1, v0}, updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V

    .line 373
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "availableKeyboardLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 409
    .local v0, "changed":Z
    iget-object v4, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_8
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3d

    .line 410
    iget-object v4, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 411
    .local v3, "keyboardLayout":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 412
    const-string v4, "InputManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing uninstalled keyboard layout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v4, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 414
    invoke-direct {p0, v3, v1}, updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V

    .line 415
    const/4 v0, 0x1

    :cond_3b
    move v2, v1

    .line 417
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_8

    .line 418
    .end local v2    # "i":I
    .end local v3    # "keyboardLayout":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_3d
    return v0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 11
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 505
    iget-object v6, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 506
    .local v3, "layout":Ljava/lang/String;
    const-string/jumbo v6, "keyboard-layout"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 507
    const-string/jumbo v6, "descriptor"

    invoke-interface {p1, v8, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    iget-object v6, p0, mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 509
    const-string/jumbo v6, "current"

    const-string/jumbo v7, "true"

    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    :cond_30
    const-string/jumbo v6, "keyboard-layout"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    .line 514
    .end local v3    # "layout":Ljava/lang/String;
    :cond_37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_38
    iget-object v6, p0, mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    array-length v6, v6

    if-ge v0, v6, :cond_8d

    .line 515
    iget-object v6, p0, mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v6, v6, v0

    if-eqz v6, :cond_8a

    .line 516
    invoke-static {v0}, surfaceRotationToString(I)Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "rotation":Ljava/lang/String;
    iget-object v6, p0, mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    move-result-object v5

    .line 519
    .local v5, "transform":[F
    const-string v6, "calibration"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 520
    const-string/jumbo v6, "format"

    const-string v7, "affine"

    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 521
    const-string/jumbo v6, "rotation"

    invoke-interface {p1, v8, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_63
    array-length v6, v5

    if-ge v2, v6, :cond_85

    sget-object v6, CALIBRATION_NAME:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_85

    .line 523
    sget-object v6, CALIBRATION_NAME:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    aget v6, v5, v2

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 525
    sget-object v6, CALIBRATION_NAME:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 527
    :cond_85
    const-string v6, "calibration"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 514
    .end local v2    # "j":I
    .end local v4    # "rotation":Ljava/lang/String;
    .end local v5    # "transform":[F
    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 530
    :cond_8d
    return-void
.end method

.method public setCurrentKeyboardLayout(Ljava/lang/String;)Z
    .registers 3
    .param p1, "keyboardLayout"    # Ljava/lang/String;

    .prologue
    .line 339
    iget-object v0, p0, mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 340
    const/4 v0, 0x0

    .line 344
    :goto_9
    return v0

    .line 342
    :cond_a
    invoke-virtual {p0, p1}, addKeyboardLayout(Ljava/lang/String;)Z

    .line 343
    iput-object p1, p0, mCurrentKeyboardLayout:Ljava/lang/String;

    .line 344
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public setTouchCalibration(ILandroid/hardware/input/TouchCalibration;)Z
    .registers 7
    .param p1, "surfaceRotation"    # I
    .param p2, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .prologue
    const/4 v1, 0x0

    .line 323
    :try_start_1
    iget-object v2, p0, mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v2, v2, p1

    invoke-virtual {p2, v2}, Landroid/hardware/input/TouchCalibration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 324
    iget-object v2, p0, mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aput-object p2, v2, p1
    :try_end_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_f} :catch_11

    .line 325
    const/4 v1, 0x1

    .line 330
    :cond_10
    :goto_10
    return v1

    .line 328
    :catch_11
    move-exception v0

    .line 329
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "InputManager"

    const-string v3, "Cannot set touch calibration."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public switchKeyboardLayout(I)Z
    .registers 6
    .param p1, "direction"    # I

    .prologue
    .line 392
    iget-object v2, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 393
    .local v1, "size":I
    const/4 v2, 0x2

    if-ge v1, v2, :cond_b

    .line 394
    const/4 v2, 0x0

    .line 404
    :goto_a
    return v2

    .line 396
    :cond_b
    iget-object v2, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    iget-object v3, p0, mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 397
    .local v0, "index":I
    sget-boolean v2, $assertionsDisabled:Z

    if-nez v2, :cond_1f

    if-gez v0, :cond_1f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 398
    :cond_1f
    if-lez p1, :cond_31

    .line 399
    add-int/lit8 v2, v0, 0x1

    rem-int v0, v2, v1

    .line 403
    :goto_25
    iget-object v2, p0, mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, mCurrentKeyboardLayout:Ljava/lang/String;

    .line 404
    const/4 v2, 0x1

    goto :goto_a

    .line 401
    :cond_31
    add-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    rem-int v0, v2, v1

    goto :goto_25
.end method
