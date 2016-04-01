.class public final Landroid/view/accessibility/AccessibilityWindowInfo;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x4

.field private static final BOOLEAN_PROPERTY_ACTIVE:I = 0x1

.field private static final BOOLEAN_PROPERTY_FOCUSED:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SYSTEM:I = 0x3

.field private static final UNDEFINED:I = -0x1

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBooleanProperties:I

.field private final mBoundsInScreen:Landroid/graphics/Rect;

.field private mChildIds:Landroid/util/LongArray;

.field private mConnectionId:I

.field private mId:I

.field private mLayer:I

.field private mParentId:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 75
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    .line 598
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v1, p0, mType:I

    .line 80
    iput v1, p0, mLayer:I

    .line 82
    iput v1, p0, mId:I

    .line 83
    iput v1, p0, mParentId:I

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    .line 87
    iput v1, p0, mConnectionId:I

    .line 91
    return-void
.end method

.method static synthetic access$000(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/os/Parcel;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityWindowInfo;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0, p1}, initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private clear()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 502
    iput v1, p0, mType:I

    .line 503
    iput v1, p0, mLayer:I

    .line 504
    const/4 v0, 0x0

    iput v0, p0, mBooleanProperties:I

    .line 505
    iput v1, p0, mId:I

    .line 506
    iput v1, p0, mParentId:I

    .line 507
    iget-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 508
    iget-object v0, p0, mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_1a

    .line 509
    iget-object v0, p0, mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    .line 511
    :cond_1a
    iput v1, p0, mConnectionId:I

    .line 512
    return-void
.end method

.method private getBooleanProperty(I)Z
    .registers 3
    .param p1, "property"    # I

    .prologue
    .line 521
    iget v0, p0, mBooleanProperties:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, mType:I

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, mLayer:I

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, mBooleanProperties:I

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, mId:I

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, mParentId:I

    .line 428
    iget-object v3, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 431
    .local v0, "childCount":I
    if-lez v0, :cond_44

    .line 432
    iget-object v3, p0, mChildIds:Landroid/util/LongArray;

    if-nez v3, :cond_34

    .line 433
    new-instance v3, Landroid/util/LongArray;

    invoke-direct {v3, v0}, Landroid/util/LongArray;-><init>(I)V

    iput-object v3, p0, mChildIds:Landroid/util/LongArray;

    .line 435
    :cond_34
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    if-ge v2, v0, :cond_44

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 437
    .local v1, "childId":I
    iget-object v3, p0, mChildIds:Landroid/util/LongArray;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/LongArray;->add(J)V

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 441
    .end local v1    # "childId":I
    .end local v2    # "i":I
    :cond_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, mConnectionId:I

    .line 442
    return-void
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 2

    .prologue
    .line 343
    sget-object v1, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 344
    .local v0, "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v0, :cond_f

    .line 345
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-direct {v0}, <init>()V

    .line 347
    .restart local v0    # "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_f
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 4
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .prologue
    .line 359
    invoke-static {}, obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    .line 361
    .local v0, "infoClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v1, p0, mType:I

    iput v1, v0, mType:I

    .line 362
    iget v1, p0, mLayer:I

    iput v1, v0, mLayer:I

    .line 363
    iget v1, p0, mBooleanProperties:I

    iput v1, v0, mBooleanProperties:I

    .line 364
    iget v1, p0, mId:I

    iput v1, v0, mId:I

    .line 365
    iget v1, p0, mParentId:I

    iput v1, v0, mParentId:I

    .line 366
    iget-object v1, v0, mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v2, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 368
    iget-object v1, p0, mChildIds:Landroid/util/LongArray;

    if-eqz v1, :cond_37

    iget-object v1, p0, mChildIds:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v1

    if-lez v1, :cond_37

    .line 369
    iget-object v1, v0, mChildIds:Landroid/util/LongArray;

    if-nez v1, :cond_3c

    .line 370
    iget-object v1, p0, mChildIds:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v1

    iput-object v1, v0, mChildIds:Landroid/util/LongArray;

    .line 376
    :cond_37
    :goto_37
    iget v1, p0, mConnectionId:I

    iput v1, v0, mConnectionId:I

    .line 378
    return-object v0

    .line 372
    :cond_3c
    iget-object v1, v0, mChildIds:Landroid/util/LongArray;

    iget-object v2, p0, mChildIds:Landroid/util/LongArray;

    invoke-virtual {v1, v2}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    goto :goto_37
.end method

.method private setBooleanProperty(IZ)V
    .registers 5
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .prologue
    .line 533
    if-eqz p2, :cond_8

    .line 534
    iget v0, p0, mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, mBooleanProperties:I

    .line 538
    :goto_7
    return-void

    .line 536
    :cond_8
    iget v0, p0, mBooleanProperties:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, mBooleanProperties:I

    goto :goto_7
.end method

.method private static typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 541
    packed-switch p0, :pswitch_data_12

    .line 555
    const-string v0, "<UNKNOWN>"

    :goto_5
    return-object v0

    .line 543
    :pswitch_6
    const-string v0, "TYPE_APPLICATION"

    goto :goto_5

    .line 546
    :pswitch_9
    const-string v0, "TYPE_INPUT_METHOD"

    goto :goto_5

    .line 549
    :pswitch_c
    const-string v0, "TYPE_SYSTEM"

    goto :goto_5

    .line 552
    :pswitch_f
    const-string v0, "TYPE_ACCESSIBILITY_OVERLAY"

    goto :goto_5

    .line 541
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public addChild(I)V
    .registers 6
    .param p1, "childId"    # I

    .prologue
    .line 330
    iget-object v0, p0, mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_b

    .line 331
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, mChildIds:Landroid/util/LongArray;

    .line 333
    :cond_b
    iget-object v0, p0, mChildIds:Landroid/util/LongArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->add(J)V

    .line 334
    return-void
.end method

.method public changed(Landroid/view/accessibility/AccessibilityWindowInfo;)Z
    .registers 5
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .prologue
    const/4 v0, 0x1

    .line 570
    iget v1, p1, mId:I

    iget v2, p0, mId:I

    if-eq v1, v2, :cond_f

    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not same window."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_f
    iget v1, p1, mType:I

    iget v2, p0, mType:I

    if-eq v1, v2, :cond_1d

    .line 574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_1d
    iget-object v1, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v2, p1, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 595
    :cond_27
    :goto_27
    return v0

    .line 579
    :cond_28
    iget v1, p0, mLayer:I

    iget v2, p1, mLayer:I

    if-ne v1, v2, :cond_27

    .line 582
    iget v1, p0, mBooleanProperties:I

    iget v2, p1, mBooleanProperties:I

    if-ne v1, v2, :cond_27

    .line 585
    iget v1, p0, mParentId:I

    iget v2, p1, mParentId:I

    if-ne v1, v2, :cond_27

    .line 588
    iget-object v1, p0, mChildIds:Landroid/util/LongArray;

    if-nez v1, :cond_44

    .line 589
    iget-object v1, p1, mChildIds:Landroid/util/LongArray;

    if-nez v1, :cond_27

    .line 595
    :cond_42
    const/4 v0, 0x0

    goto :goto_27

    .line 592
    :cond_44
    iget-object v1, p0, mChildIds:Landroid/util/LongArray;

    iget-object v2, p1, mChildIds:Landroid/util/LongArray;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_27
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 451
    if-ne p0, p1, :cond_5

    .line 461
    :cond_4
    :goto_4
    return v1

    .line 454
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 455
    goto :goto_4

    .line 457
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 458
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 460
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 461
    .local v0, "other":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v3, p0, mId:I

    iget v4, v0, mId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 217
    iget-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 218
    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 311
    iget-object v2, p0, mChildIds:Landroid/util/LongArray;

    if-nez v2, :cond_a

    .line 312
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 314
    :cond_a
    iget v2, p0, mConnectionId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 315
    const/4 v2, 0x0

    .line 319
    :goto_10
    return-object v2

    .line 317
    :cond_11
    iget-object v2, p0, mChildIds:Landroid/util/LongArray;

    invoke-virtual {v2, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 318
    .local v0, "childId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 319
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    invoke-virtual {v1, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    goto :goto_10
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_b

    iget-object v0, p0, mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 185
    iget v0, p0, mId:I

    return v0
.end method

.method public getLayer()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, mLayer:I

    return v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 161
    iget v1, p0, mConnectionId:I

    if-eq v1, v2, :cond_9

    iget v1, p0, mParentId:I

    if-ne v1, v2, :cond_b

    .line 162
    :cond_9
    const/4 v1, 0x0

    .line 165
    :goto_a
    return-object v1

    .line 164
    :cond_b
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 165
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, mConnectionId:I

    iget v2, p0, mParentId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    goto :goto_a
.end method

.method public getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    .prologue
    .line 146
    iget v0, p0, mConnectionId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 147
    const/4 v0, 0x0

    .line 150
    :goto_6
    return-object v0

    .line 149
    :cond_7
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 150
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mId:I

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_6
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, mType:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 446
    iget v0, p0, mId:I

    return v0
.end method

.method public isAccessibilityFocused()Z
    .registers 2

    .prologue
    .line 281
    const/4 v0, 0x4

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x2

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 390
    invoke-direct {p0}, clear()V

    .line 391
    sget-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 392
    return-void
.end method

.method public setAccessibilityFocused(Z)V
    .registers 3
    .param p1, "focused"    # Z

    .prologue
    .line 292
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 293
    return-void
.end method

.method public setActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .prologue
    .line 252
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 253
    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 228
    iget-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 229
    return-void
.end method

.method public setConnectionId(I)V
    .registers 2
    .param p1, "connectionId"    # I

    .prologue
    .line 208
    iput p1, p0, mConnectionId:I

    .line 209
    return-void
.end method

.method public setFocused(Z)V
    .registers 3
    .param p1, "focused"    # Z

    .prologue
    .line 272
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 273
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 196
    iput p1, p0, mId:I

    .line 197
    return-void
.end method

.method public setLayer(I)V
    .registers 2
    .param p1, "layer"    # I

    .prologue
    .line 137
    iput p1, p0, mLayer:I

    .line 138
    return-void
.end method

.method public setParentId(I)V
    .registers 2
    .param p1, "parentId"    # I

    .prologue
    .line 176
    iput p1, p0, mParentId:I

    .line 177
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 115
    iput p1, p0, mType:I

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "AccessibilityWindowInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, mType:I

    invoke-static {v4}, typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v1, ", layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, mLayer:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 472
    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isFocused()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 473
    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isActive()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 490
    const-string v1, ", hasParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, mParentId:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_84

    move v1, v2

    :goto_62
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 491
    const-string v1, ", hasChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, mChildIds:Landroid/util/LongArray;

    if-eqz v4, :cond_86

    iget-object v4, p0, mChildIds:Landroid/util/LongArray;

    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v4

    if-lez v4, :cond_86

    :goto_77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 494
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_84
    move v1, v3

    .line 490
    goto :goto_62

    :cond_86
    move v2, v3

    .line 491
    goto :goto_77
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 401
    iget v3, p0, mType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v3, p0, mLayer:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v3, p0, mBooleanProperties:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget v3, p0, mId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v3, p0, mParentId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-object v3, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 408
    iget-object v1, p0, mChildIds:Landroid/util/LongArray;

    .line 409
    .local v1, "childIds":Landroid/util/LongArray;
    if-nez v1, :cond_2c

    .line 410
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    :cond_26
    iget v3, p0, mConnectionId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    return-void

    .line 412
    :cond_2c
    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v0

    .line 413
    .local v0, "childCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    if-ge v2, v0, :cond_26

    .line 415
    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_34
.end method
