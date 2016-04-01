.class public final Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$1;,
        Landroid/view/Display$ColorTransform;,
        Landroid/view/Display$Mode;
    }
.end annotation


# static fields
.field private static final CACHED_APP_SIZE_DURATION_MILLIS:I = 0x14

.field private static final CACHED_ORIENTATION_DURATION_MILLIS:I = 0x2

.field private static final DEBUG:Z = false

.field public static final DEFAULT_DISPLAY:I = 0x0

.field public static final DISPLAY_NONE:I = -0x1

.field public static final DUAL_SCREEN_BUILTIN_DISPLAY_COUNT:I = 0x2

.field public static final DUAL_SCREEN_EXPANDED_DISPLAY:I = 0x2

.field public static final DUAL_SCREEN_EXTERNAL_DISPLAY:I = 0x4

.field public static final DUAL_SCREEN_INPUT_METHOD_DISPLAY:I = 0x3

.field public static final DUAL_SCREEN_MAIN_DISPLAY:I = 0x0

.field public static final DUAL_SCREEN_SUB_DISPLAY:I = 0x1

.field public static final DUAL_SCREEN_TYPE_MAX:I = 0x4

.field public static final FLAG_PRESENTATION:I = 0x8

.field public static final FLAG_PRIVATE:I = 0x4

.field public static final FLAG_ROUND:I = 0x10

.field public static final FLAG_SCALING_DISABLED:I = 0x40000000

.field public static final FLAG_SECURE:I = 0x2

.field public static final FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x1

.field public static final FLAG_VIRTUAL_SCREEN:I = 0x100000

.field public static final INVALID_DISPLAY:I = -0x1

.field public static final STATE_DOZE:I = 0x3

.field public static final STATE_DOZE_SUSPEND:I = 0x4

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x2

.field public static final STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Display"

.field public static final TYPE_BUILT_IN:I = 0x1

.field public static final TYPE_HDMI:I = 0x2

.field public static final TYPE_OVERLAY:I = 0x4

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_VIRTUAL:I = 0x5

.field public static final TYPE_WIFI:I = 0x3


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mCachedAppHeightCompat:I

.field private mCachedAppWidthCompat:I

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private mDisplayId:I

.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private mFlags:I

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private mIsValid:Z

.field private mLastCachedAppSizeUpdate:J

.field private mLastCachedOrientationUpdate:J

.field private mLayerStack:I

.field private mOwnerPackageName:Ljava/lang/String;

.field private mOwnerUid:I

.field private final mTempMetrics:Landroid/util/DisplayMetrics;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V
    .registers 6
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "daj"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, mTempMetrics:Landroid/util/DisplayMetrics;

    .line 353
    iput-object p1, p0, mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 354
    iput p2, p0, mDisplayId:I

    .line 355
    iput-object p3, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    .line 356
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0, p4}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    iput-object v0, p0, mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsValid:Z

    .line 360
    iget v0, p3, Landroid/view/DisplayInfo;->layerStack:I

    iput v0, p0, mLayerStack:I

    .line 361
    iget v0, p3, Landroid/view/DisplayInfo;->flags:I

    iput v0, p0, mFlags:I

    .line 362
    iget v0, p3, Landroid/view/DisplayInfo;->type:I

    iput v0, p0, mType:I

    .line 363
    iget-object v0, p3, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    iput-object v0, p0, mAddress:Ljava/lang/String;

    .line 364
    iget v0, p3, Landroid/view/DisplayInfo;->ownerUid:I

    iput v0, p0, mOwnerUid:I

    .line 365
    iget-object v0, p3, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, mOwnerPackageName:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public static hasAccess(III)Z
    .registers 4
    .param p0, "uid"    # I
    .param p1, "flags"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 916
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_c

    if-eq p0, p2, :cond_c

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_c

    if-nez p0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isSuspendedState(I)Z
    .registers 3
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 1071
    if-eq p0, v0, :cond_6

    const/4 v1, 0x4

    if-ne p0, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 1049
    packed-switch p0, :pswitch_data_18

    .line 1061
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 1051
    :pswitch_8
    const-string v0, "UNKNOWN"

    goto :goto_7

    .line 1053
    :pswitch_b
    const-string v0, "OFF"

    goto :goto_7

    .line 1055
    :pswitch_e
    const-string v0, "ON"

    goto :goto_7

    .line 1057
    :pswitch_11
    const-string v0, "DOZE"

    goto :goto_7

    .line 1059
    :pswitch_14
    const-string v0, "DOZE_SUSPEND"

    goto :goto_7

    .line 1049
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 1027
    packed-switch p0, :pswitch_data_1a

    .line 1041
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 1029
    :pswitch_8
    const-string v0, "UNKNOWN"

    goto :goto_7

    .line 1031
    :pswitch_b
    const-string v0, "BUILT_IN"

    goto :goto_7

    .line 1033
    :pswitch_e
    const-string v0, "HDMI"

    goto :goto_7

    .line 1035
    :pswitch_11
    const-string v0, "WIFI"

    goto :goto_7

    .line 1037
    :pswitch_14
    const-string v0, "OVERLAY"

    goto :goto_7

    .line 1039
    :pswitch_17
    const-string v0, "VIRTUAL"

    goto :goto_7

    .line 1027
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method private updateCachedAppSizeIfNeededLocked()V
    .registers 7

    .prologue
    .line 970
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 971
    .local v0, "now":J
    iget-wide v2, p0, mLastCachedAppSizeUpdate:J

    const-wide/16 v4, 0x14

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_27

    .line 972
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 973
    iget-object v2, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, mTempMetrics:Landroid/util/DisplayMetrics;

    iget-object v4, p0, mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v2, v3, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 974
    iget-object v2, p0, mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, mCachedAppWidthCompat:I

    .line 975
    iget-object v2, p0, mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, mCachedAppHeightCompat:I

    .line 976
    iput-wide v0, p0, mLastCachedAppSizeUpdate:J

    .line 978
    :cond_27
    return-void
.end method

.method private updateCachedOrientationIfNeededLocked()V
    .registers 7

    .prologue
    .line 981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 982
    .local v0, "now":J
    iget-wide v2, p0, mLastCachedOrientationUpdate:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    .line 983
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 984
    iput-wide v0, p0, mLastCachedOrientationUpdate:J

    .line 986
    :cond_12
    return-void
.end method

.method private updateDisplayInfoLocked()V
    .registers 2

    .prologue
    .line 933
    const/4 v0, 0x0

    invoke-direct {p0, v0}, updateDisplayInfoLocked(Z)V

    .line 934
    return-void
.end method

.method private updateDisplayInfoLocked(Z)V
    .registers 6
    .param p1, "isReal"    # Z

    .prologue
    .line 943
    if-eqz p1, :cond_15

    .line 944
    iget-object v1, p0, mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v2, p0, mDisplayId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 949
    .local v0, "newInfo":Landroid/view/DisplayInfo;
    :goto_b
    if-nez v0, :cond_1e

    .line 951
    iget-boolean v1, p0, mIsValid:Z

    if-eqz v1, :cond_14

    .line 952
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsValid:Z

    .line 967
    :cond_14
    :goto_14
    return-void

    .line 947
    .end local v0    # "newInfo":Landroid/view/DisplayInfo;
    :cond_15
    iget-object v1, p0, mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v2, p0, mDisplayId:I

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .restart local v0    # "newInfo":Landroid/view/DisplayInfo;
    goto :goto_b

    .line 959
    :cond_1e
    iput-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    .line 960
    iget-boolean v1, p0, mIsValid:Z

    if-nez v1, :cond_14

    .line 961
    const/4 v1, 0x1

    iput-boolean v1, p0, mIsValid:Z

    goto :goto_14
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVsyncOffsetNanos()J
    .registers 3

    .prologue
    .line 800
    monitor-enter p0

    .line 801
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 802
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v0, v0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    monitor-exit p0

    return-wide v0

    .line 803
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getColorTransform()Landroid/view/Display$ColorTransform;
    .registers 2

    .prologue
    .line 761
    monitor-enter p0

    .line 762
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 763
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getColorTransform()Landroid/view/Display$ColorTransform;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 764
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4
    .param p1, "outSmallestSize"    # Landroid/graphics/Point;
    .param p2, "outLargestSize"    # Landroid/graphics/Point;

    .prologue
    .line 593
    monitor-enter p0

    .line 594
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 595
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 596
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 597
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 598
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 599
    monitor-exit p0

    .line 600
    return-void

    .line 599
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getDefaultColorTransform()Landroid/view/Display$ColorTransform;
    .registers 2

    .prologue
    .line 772
    monitor-enter p0

    .line 773
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 774
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getDefaultColorTransform()Landroid/view/Display$ColorTransform;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 775
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method public getDisplayId()I
    .registers 2

    .prologue
    .line 376
    iget v0, p0, mDisplayId:I

    return v0
.end method

.method public getDisplayInfo(Landroid/view/DisplayInfo;)Z
    .registers 3
    .param p1, "outDisplayInfo"    # Landroid/view/DisplayInfo;

    .prologue
    .line 407
    monitor-enter p0

    .line 408
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 409
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 410
    iget-boolean v0, p0, mIsValid:Z

    monitor-exit p0

    return v0

    .line 411
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 437
    iget v0, p0, mFlags:I

    return v0
.end method

.method public getHeight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 630
    monitor-enter p0

    .line 631
    :try_start_1
    invoke-direct {p0}, updateCachedAppSizeIfNeededLocked()V

    .line 632
    iget v0, p0, mCachedAppHeightCompat:I

    monitor-exit p0

    return v0

    .line 633
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getLayerStack()I
    .registers 2

    .prologue
    .line 424
    iget v0, p0, mLayerStack:I

    return v0
.end method

.method public getMaximumSizeDimension()I
    .registers 3

    .prologue
    .line 608
    monitor-enter p0

    .line 609
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 610
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    monitor-exit p0

    return v0

    .line 611
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getMetrics(Landroid/util/DisplayMetrics;)V
    .registers 3
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 840
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, getMetrics(Landroid/util/DisplayMetrics;Z)V

    .line 841
    return-void
.end method

.method public getMetrics(Landroid/util/DisplayMetrics;Z)V
    .registers 5
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "isReal"    # Z

    .prologue
    .line 846
    monitor-enter p0

    .line 847
    :try_start_1
    invoke-direct {p0, p2}, updateDisplayInfoLocked(Z)V

    .line 849
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, p1, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 850
    monitor-exit p0

    .line 851
    return-void

    .line 850
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getMode()Landroid/view/Display$Mode;
    .registers 2

    .prologue
    .line 730
    monitor-enter p0

    .line 731
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 732
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 733
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 513
    monitor-enter p0

    .line 514
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 515
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 516
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getOrientation()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 682
    monitor-enter p0

    .line 683
    :try_start_1
    invoke-direct {p0}, updateCachedOrientationIfNeededLocked()V

    .line 684
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    monitor-exit p0

    return v0

    .line 685
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getOverscanInsets(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 643
    monitor-enter p0

    .line 644
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 645
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    iget-object v1, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanTop:I

    iget-object v2, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->overscanRight:I

    iget-object v3, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->overscanBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 647
    monitor-exit p0

    .line 648
    return-void

    .line 647
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getOwnerPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerUid()I
    .registers 2

    .prologue
    .line 478
    iget v0, p0, mOwnerUid:I

    return v0
.end method

.method public getPixelFormat()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 697
    const/4 v0, 0x1

    return v0
.end method

.method public getPresentationDeadlineNanos()J
    .registers 3

    .prologue
    .line 818
    monitor-enter p0

    .line 819
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 820
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v0, v0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    monitor-exit p0

    return-wide v0

    .line 821
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getRealMetrics(Landroid/util/DisplayMetrics;)V
    .registers 5
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 885
    monitor-enter p0

    .line 886
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 887
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v1, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iget-object v2, p0, mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 890
    monitor-exit p0

    .line 891
    return-void

    .line 890
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getRealSize(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 866
    monitor-enter p0

    .line 867
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 868
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 869
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 870
    monitor-exit p0

    .line 871
    return-void

    .line 870
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getRectSize(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outSize"    # Landroid/graphics/Rect;

    .prologue
    .line 555
    monitor-enter p0

    .line 556
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 557
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mTempMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, p0, mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 558
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, mTempMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 559
    monitor-exit p0

    .line 560
    return-void

    .line 559
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public getRefreshRate()F
    .registers 2

    .prologue
    .line 704
    monitor-enter p0

    .line 705
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 706
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    monitor-exit p0

    return v0

    .line 707
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getRotation()I
    .registers 2

    .prologue
    .line 669
    monitor-enter p0

    .line 670
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 671
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    monitor-exit p0

    return v0

    .line 672
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getSize(Landroid/graphics/Point;)V
    .registers 5
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 540
    monitor-enter p0

    .line 541
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 542
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mTempMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, p0, mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 543
    iget-object v0, p0, mTempMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 544
    iget-object v0, p0, mTempMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 545
    monitor-exit p0

    .line 546
    return-void

    .line 545
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 900
    monitor-enter p0

    .line 901
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 902
    iget-boolean v0, p0, mIsValid:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 903
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getSupportedColorTransforms()[Landroid/view/Display$ColorTransform;
    .registers 3

    .prologue
    .line 783
    monitor-enter p0

    .line 784
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 785
    iget-object v1, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v1, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 786
    .local v0, "transforms":[Landroid/view/Display$ColorTransform;
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display$ColorTransform;

    monitor-exit p0

    return-object v1

    .line 787
    .end local v0    # "transforms":[Landroid/view/Display$ColorTransform;
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getSupportedModes()[Landroid/view/Display$Mode;
    .registers 3

    .prologue
    .line 740
    monitor-enter p0

    .line 741
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 742
    iget-object v1, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 743
    .local v0, "modes":[Landroid/view/Display$Mode;
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display$Mode;

    monitor-exit p0

    return-object v1

    .line 744
    .end local v0    # "modes":[Landroid/view/Display$Mode;
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getSupportedRefreshRates()[F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 720
    monitor-enter p0

    .line 721
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 722
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 723
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 454
    iget v0, p0, mType:I

    return v0
.end method

.method public getWidth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 619
    monitor-enter p0

    .line 620
    :try_start_1
    invoke-direct {p0}, updateCachedAppSizeIfNeededLocked()V

    .line 621
    iget v0, p0, mCachedAppWidthCompat:I

    monitor-exit p0

    return v0

    .line 622
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public hasAccess(I)Z
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 911
    iget v0, p0, mFlags:I

    iget v1, p0, mOwnerUid:I

    invoke-static {p1, v0, v1}, hasAccess(III)Z

    move-result v0

    return v0
.end method

.method public isPublicPresentation()Z
    .registers 3

    .prologue
    .line 927
    iget v0, p0, mFlags:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 393
    monitor-enter p0

    .line 394
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 395
    iget-boolean v0, p0, mIsValid:Z

    monitor-exit p0

    return v0

    .line 396
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public requestColorTransform(Landroid/view/Display$ColorTransform;)V
    .registers 5
    .param p1, "colorTransform"    # Landroid/view/Display$ColorTransform;

    .prologue
    .line 753
    iget-object v0, p0, mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, mDisplayId:I

    invoke-virtual {p1}, Landroid/view/Display$ColorTransform;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->requestColorTransform(II)V

    .line 754
    return-void
.end method

.method public setTo(I)V
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 995
    monitor-enter p0

    .line 996
    if-ltz p1, :cond_6

    const/4 v0, 0x4

    if-lt p1, v0, :cond_8

    .line 998
    :cond_6
    :try_start_6
    monitor-exit p0

    .line 1009
    :goto_7
    return-void

    .line 1000
    :cond_8
    iput p1, p0, mDisplayId:I

    .line 1001
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 1002
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->layerStack:I

    iput v0, p0, mLayerStack:I

    .line 1003
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    iput v0, p0, mFlags:I

    .line 1004
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    iput v0, p0, mType:I

    .line 1005
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    iput-object v0, p0, mAddress:Ljava/lang/String;

    .line 1006
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->ownerUid:I

    iput v0, p0, mOwnerUid:I

    .line 1007
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, mOwnerPackageName:Ljava/lang/String;

    .line 1008
    monitor-exit p0

    goto :goto_7

    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1015
    monitor-enter p0

    .line 1016
    :try_start_1
    invoke-direct {p0}, updateDisplayInfoLocked()V

    .line 1017
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, mTempMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, p0, mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mIsValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1020
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_48

    throw v0
.end method
