.class public final Landroid/view/DisplayInfo;
.super Ljava/lang/Object;
.source "DisplayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Ljava/lang/String;

.field public alphaScreenAppHeight:I

.field public alphaScreenAppWidth:I

.field public appHeight:I

.field public appVsyncOffsetNanos:J

.field public appWidth:I

.field public colorTransformId:I

.field public defaultColorTransformId:I

.field public defaultModeId:I

.field public flags:I

.field public largestNominalAppHeight:I

.field public largestNominalAppWidth:I

.field public layerStack:I

.field public logicalDensityDpi:I

.field public logicalHeight:I

.field public logicalWidth:I

.field public modeId:I

.field public name:Ljava/lang/String;

.field public overscanBottom:I

.field public overscanLeft:I

.field public overscanRight:I

.field public overscanTop:I

.field public ownerPackageName:Ljava/lang/String;

.field public ownerUid:I

.field public physicalXDpi:F

.field public physicalYDpi:F

.field public presentationDeadlineNanos:J

.field public rotation:I

.field public smallestNominalAppHeight:I

.field public smallestNominalAppWidth:I

.field public state:I

.field public supportedColorTransforms:[Landroid/view/Display$ColorTransform;

.field public supportedModes:[Landroid/view/Display$Mode;

.field public type:I

.field public uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 255
    new-instance v0, Landroid/view/DisplayInfo$1;

    invoke-direct {v0}, Landroid/view/DisplayInfo$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, supportedModes:[Landroid/view/Display$Mode;

    .line 179
    sget-object v0, Landroid/view/Display$ColorTransform;->EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;

    iput-object v0, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 268
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, supportedModes:[Landroid/view/Display$Mode;

    .line 179
    sget-object v0, Landroid/view/Display$ColorTransform;->EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;

    iput-object v0, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 275
    invoke-virtual {p0, p1}, readFromParcel(Landroid/os/Parcel;)V

    .line 276
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/DisplayInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/DisplayInfo$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayInfo;)V
    .registers 3
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, supportedModes:[Landroid/view/Display$Mode;

    .line 179
    sget-object v0, Landroid/view/Display$ColorTransform;->EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;

    iput-object v0, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 271
    invoke-virtual {p0, p1}, copyFrom(Landroid/view/DisplayInfo;)V

    .line 272
    return-void
.end method

.method private findColorTransform(I)Landroid/view/Display$ColorTransform;
    .registers 7
    .param p1, "colorTransformId"    # I

    .prologue
    .line 556
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    array-length v2, v2

    if-ge v1, v2, :cond_14

    .line 557
    iget-object v2, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    aget-object v0, v2, v1

    .line 558
    .local v0, "colorTransform":Landroid/view/Display$ColorTransform;
    invoke-virtual {v0}, Landroid/view/Display$ColorTransform;->getId()I

    move-result v2

    if-ne v2, p1, :cond_11

    .line 559
    return-object v0

    .line 556
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 562
    .end local v0    # "colorTransform":Landroid/view/Display$ColorTransform;
    :cond_14
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to locate color transform: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private findMode(I)Landroid/view/Display$Mode;
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 502
    iget-object v1, p0, supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 503
    iget-object v1, p0, supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    return-object v1

    .line 501
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 506
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to locate mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "flags"    # I

    .prologue
    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_e

    .line 705
    const-string v1, ", FLAG_SECURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    :cond_e
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_17

    .line 708
    const-string v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    .line 711
    const-string v1, ", FLAG_PRIVATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :cond_20
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_29

    .line 714
    const-string v1, ", FLAG_PRESENTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    :cond_29
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_33

    .line 717
    const-string v1, ", FLAG_SCALING_DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :cond_33
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3c

    .line 720
    const-string v1, ", FLAG_ROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    :cond_3c
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_46

    .line 724
    const-string v1, ", FLAG_VIRTUAL_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V
    .registers 9
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 603
    iget v0, p0, logicalDensityDpi:I

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 604
    iget v0, p0, logicalDensityDpi:I

    int-to-float v0, v0

    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v0, v1

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 606
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 607
    iget v0, p0, physicalXDpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 608
    iget v0, p0, physicalYDpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 610
    if-eqz p3, :cond_33

    iget v0, p3, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v0, :cond_33

    iget v0, p3, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int p4, v0

    .line 613
    :cond_33
    if-eqz p3, :cond_41

    iget v0, p3, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v0, :cond_41

    iget v0, p3, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v0, v0

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int p5, v0

    .line 617
    :cond_41
    iput p4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p4, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 618
    iput p5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p5, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 620
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p2, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 621
    invoke-virtual {p2, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 623
    :cond_54
    return-void
.end method

.method private swap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    return-object p1
.end method


# virtual methods
.method public copyFrom(Landroid/view/DisplayInfo;)V
    .registers 4
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .prologue
    .line 352
    iget v0, p1, layerStack:I

    iput v0, p0, layerStack:I

    .line 353
    iget v0, p1, flags:I

    iput v0, p0, flags:I

    .line 354
    iget v0, p1, type:I

    iput v0, p0, type:I

    .line 355
    iget-object v0, p1, address:Ljava/lang/String;

    iput-object v0, p0, address:Ljava/lang/String;

    .line 356
    iget-object v0, p1, name:Ljava/lang/String;

    iput-object v0, p0, name:Ljava/lang/String;

    .line 357
    iget-object v0, p1, uniqueId:Ljava/lang/String;

    iput-object v0, p0, uniqueId:Ljava/lang/String;

    .line 358
    iget v0, p1, appWidth:I

    iput v0, p0, appWidth:I

    .line 359
    iget v0, p1, appHeight:I

    iput v0, p0, appHeight:I

    .line 360
    iget v0, p1, smallestNominalAppWidth:I

    iput v0, p0, smallestNominalAppWidth:I

    .line 361
    iget v0, p1, smallestNominalAppHeight:I

    iput v0, p0, smallestNominalAppHeight:I

    .line 362
    iget v0, p1, largestNominalAppWidth:I

    iput v0, p0, largestNominalAppWidth:I

    .line 363
    iget v0, p1, largestNominalAppHeight:I

    iput v0, p0, largestNominalAppHeight:I

    .line 364
    iget v0, p1, logicalWidth:I

    iput v0, p0, logicalWidth:I

    .line 365
    iget v0, p1, logicalHeight:I

    iput v0, p0, logicalHeight:I

    .line 366
    iget v0, p1, overscanLeft:I

    iput v0, p0, overscanLeft:I

    .line 367
    iget v0, p1, overscanTop:I

    iput v0, p0, overscanTop:I

    .line 368
    iget v0, p1, overscanRight:I

    iput v0, p0, overscanRight:I

    .line 369
    iget v0, p1, overscanBottom:I

    iput v0, p0, overscanBottom:I

    .line 370
    iget v0, p1, rotation:I

    iput v0, p0, rotation:I

    .line 371
    iget v0, p1, modeId:I

    iput v0, p0, modeId:I

    .line 372
    iget v0, p1, defaultModeId:I

    iput v0, p0, defaultModeId:I

    .line 373
    iget-object v0, p1, supportedModes:[Landroid/view/Display$Mode;

    iget-object v1, p1, supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    iput-object v0, p0, supportedModes:[Landroid/view/Display$Mode;

    .line 374
    iget v0, p1, colorTransformId:I

    iput v0, p0, colorTransformId:I

    .line 375
    iget v0, p1, defaultColorTransformId:I

    iput v0, p0, defaultColorTransformId:I

    .line 376
    iget-object v0, p1, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    iget-object v1, p1, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$ColorTransform;

    iput-object v0, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 378
    iget v0, p1, logicalDensityDpi:I

    iput v0, p0, logicalDensityDpi:I

    .line 379
    iget v0, p1, physicalXDpi:F

    iput v0, p0, physicalXDpi:F

    .line 380
    iget v0, p1, physicalYDpi:F

    iput v0, p0, physicalYDpi:F

    .line 381
    iget-wide v0, p1, appVsyncOffsetNanos:J

    iput-wide v0, p0, appVsyncOffsetNanos:J

    .line 382
    iget-wide v0, p1, presentationDeadlineNanos:J

    iput-wide v0, p0, presentationDeadlineNanos:J

    .line 383
    iget v0, p1, state:I

    iput v0, p0, state:I

    .line 384
    iget v0, p1, ownerUid:I

    iput v0, p0, ownerUid:I

    .line 385
    iget-object v0, p1, ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, ownerPackageName:Ljava/lang/String;

    .line 387
    iget v0, p1, alphaScreenAppWidth:I

    iput v0, p0, alphaScreenAppWidth:I

    .line 388
    iget v0, p1, alphaScreenAppHeight:I

    iput v0, p0, alphaScreenAppHeight:I

    .line 390
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Landroid/view/DisplayInfo;)Z
    .registers 6
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .prologue
    .line 284
    if-eqz p1, :cond_cc

    iget v0, p0, layerStack:I

    iget v1, p1, layerStack:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, flags:I

    iget v1, p1, flags:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, type:I

    iget v1, p1, type:I

    if-ne v0, v1, :cond_cc

    iget-object v0, p0, address:Ljava/lang/String;

    iget-object v1, p1, address:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, uniqueId:Ljava/lang/String;

    iget-object v1, p1, uniqueId:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    iget v0, p0, appWidth:I

    iget v1, p1, appWidth:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, appHeight:I

    iget v1, p1, appHeight:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, smallestNominalAppWidth:I

    iget v1, p1, smallestNominalAppWidth:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, smallestNominalAppHeight:I

    iget v1, p1, smallestNominalAppHeight:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, largestNominalAppWidth:I

    iget v1, p1, largestNominalAppWidth:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, largestNominalAppHeight:I

    iget v1, p1, largestNominalAppHeight:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, logicalWidth:I

    iget v1, p1, logicalWidth:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, logicalHeight:I

    iget v1, p1, logicalHeight:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, overscanLeft:I

    iget v1, p1, overscanLeft:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, overscanTop:I

    iget v1, p1, overscanTop:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, overscanRight:I

    iget v1, p1, overscanRight:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, overscanBottom:I

    iget v1, p1, overscanBottom:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, rotation:I

    iget v1, p1, rotation:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, modeId:I

    iget v1, p1, modeId:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, defaultModeId:I

    iget v1, p1, defaultModeId:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, colorTransformId:I

    iget v1, p1, colorTransformId:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, defaultColorTransformId:I

    iget v1, p1, defaultColorTransformId:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, logicalDensityDpi:I

    iget v1, p1, logicalDensityDpi:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, physicalXDpi:F

    iget v1, p1, physicalXDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_cc

    iget v0, p0, physicalYDpi:F

    iget v1, p1, physicalYDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_cc

    iget-wide v0, p0, appVsyncOffsetNanos:J

    iget-wide v2, p1, appVsyncOffsetNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_cc

    iget-wide v0, p0, presentationDeadlineNanos:J

    iget-wide v2, p1, presentationDeadlineNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_cc

    iget v0, p0, state:I

    iget v1, p1, state:I

    if-ne v0, v1, :cond_cc

    iget v0, p0, ownerUid:I

    iget v1, p1, ownerUid:I

    if-ne v0, v1, :cond_cc

    iget-object v0, p0, ownerPackageName:Ljava/lang/String;

    iget-object v1, p1, ownerPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    const/4 v0, 0x1

    :goto_cb
    return v0

    :cond_cc
    const/4 v0, 0x0

    goto :goto_cb
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 280
    instance-of v0, p1, Landroid/view/DisplayInfo;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/view/DisplayInfo;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, equals(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public findDefaultModeByRefreshRate(F)I
    .registers 8
    .param p1, "refreshRate"    # F

    .prologue
    .line 514
    iget-object v2, p0, supportedModes:[Landroid/view/Display$Mode;

    .line 515
    .local v2, "modes":[Landroid/view/Display$Mode;
    invoke-virtual {p0}, getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 516
    .local v0, "defaultMode":Landroid/view/Display$Mode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v3, v2

    if-ge v1, v3, :cond_24

    .line 517
    aget-object v3, v2, v1

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 519
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    .line 522
    :goto_20
    return v3

    .line 516
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 522
    :cond_24
    const/4 v3, 0x0

    goto :goto_20
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;)V
    .registers 4
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 566
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 567
    return-void
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .registers 10
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "ci"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 576
    iget v4, p0, appWidth:I

    iget v5, p0, appHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 577
    return-void
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V
    .registers 9
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 570
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, p0, appWidth:I

    iget v5, p0, appHeight:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 572
    return-void
.end method

.method public getColorTransform()Landroid/view/Display$ColorTransform;
    .registers 2

    .prologue
    .line 548
    iget v0, p0, colorTransformId:I

    invoke-direct {p0, v0}, findColorTransform(I)Landroid/view/Display$ColorTransform;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultColorTransform()Landroid/view/Display$ColorTransform;
    .registers 2

    .prologue
    .line 552
    iget v0, p0, defaultColorTransformId:I

    invoke-direct {p0, v0}, findColorTransform(I)Landroid/view/Display$ColorTransform;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMode()Landroid/view/Display$Mode;
    .registers 2

    .prologue
    .line 497
    iget v0, p0, defaultModeId:I

    invoke-direct {p0, v0}, findMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRefreshRates()[F
    .registers 12

    .prologue
    .line 529
    iget-object v5, p0, supportedModes:[Landroid/view/Display$Mode;

    .line 530
    .local v5, "modes":[Landroid/view/Display$Mode;
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 531
    .local v7, "rates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Float;>;"
    invoke-virtual {p0}, getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 532
    .local v0, "defaultMode":Landroid/view/Display$Mode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v9, v5

    if-ge v1, v9, :cond_33

    .line 533
    aget-object v4, v5, v1

    .line 534
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v10

    if-ne v9, v10, :cond_30

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v10

    if-ne v9, v10, :cond_30

    .line 536
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 539
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_33
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v9

    new-array v8, v9, [F

    .line 540
    .local v8, "result":[F
    const/4 v1, 0x0

    .line 541
    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 542
    .local v6, "rate":Ljava/lang/Float;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v8, v1

    move v1, v2

    .line 543
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3e

    .line 544
    .end local v6    # "rate":Ljava/lang/Float;
    :cond_54
    return-object v8
.end method

.method public getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .registers 10
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 581
    iget v4, p0, logicalWidth:I

    iget v5, p0, logicalHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 582
    return-void
.end method

.method public getMode()Landroid/view/Display$Mode;
    .registers 2

    .prologue
    .line 493
    iget v0, p0, modeId:I

    invoke-direct {p0, v0}, findMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getNaturalHeight()I
    .registers 3

    .prologue
    .line 590
    iget v0, p0, rotation:I

    if-eqz v0, :cond_9

    iget v0, p0, rotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    :cond_9
    iget v0, p0, logicalHeight:I

    :goto_b
    return v0

    :cond_c
    iget v0, p0, logicalWidth:I

    goto :goto_b
.end method

.method public getNaturalWidth()I
    .registers 3

    .prologue
    .line 585
    iget v0, p0, rotation:I

    if-eqz v0, :cond_9

    iget v0, p0, rotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    :cond_9
    iget v0, p0, logicalWidth:I

    :goto_b
    return v0

    :cond_c
    iget v0, p0, logicalHeight:I

    goto :goto_b
.end method

.method public hasAccess(I)Z
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 598
    iget v0, p0, flags:I

    iget v1, p0, ownerUid:I

    invoke-static {p1, v0, v1}, Landroid/view/Display;->hasAccess(III)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, layerStack:I

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, flags:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, type:I

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, address:Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, name:Ljava/lang/String;

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, appWidth:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, appHeight:I

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, smallestNominalAppWidth:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, smallestNominalAppHeight:I

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, largestNominalAppWidth:I

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, largestNominalAppHeight:I

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, logicalWidth:I

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, logicalHeight:I

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, overscanLeft:I

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, overscanTop:I

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, overscanRight:I

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, overscanBottom:I

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, rotation:I

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, modeId:I

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, defaultModeId:I

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 414
    .local v2, "nModes":I
    new-array v3, v2, [Landroid/view/Display$Mode;

    iput-object v3, p0, supportedModes:[Landroid/view/Display$Mode;

    .line 415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_81
    if-ge v0, v2, :cond_92

    .line 416
    iget-object v4, p0, supportedModes:[Landroid/view/Display$Mode;

    sget-object v3, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    aput-object v3, v4, v0

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 418
    :cond_92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, colorTransformId:I

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, defaultColorTransformId:I

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 421
    .local v1, "nColorTransforms":I
    new-array v3, v1, [Landroid/view/Display$ColorTransform;

    iput-object v3, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 422
    const/4 v0, 0x0

    :goto_a7
    if-ge v0, v1, :cond_b8

    .line 423
    iget-object v4, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    sget-object v3, Landroid/view/Display$ColorTransform;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$ColorTransform;

    aput-object v3, v4, v0

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    .line 425
    :cond_b8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, logicalDensityDpi:I

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, physicalXDpi:F

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, physicalYDpi:F

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, appVsyncOffsetNanos:J

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, presentationDeadlineNanos:J

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, state:I

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, ownerUid:I

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, ownerPackageName:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, uniqueId:Ljava/lang/String;

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, alphaScreenAppWidth:I

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, alphaScreenAppHeight:I

    .line 438
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "DisplayInfo{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    iget-object v1, p0, name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string v1, "\", uniqueId \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget-object v1, p0, uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    const-string v1, "\", app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    iget v1, p0, appWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 635
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget v1, p0, appHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 637
    const-string v1, ", real "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    iget v1, p0, logicalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget v1, p0, logicalHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 641
    iget v1, p0, overscanLeft:I

    if-nez v1, :cond_51

    iget v1, p0, overscanTop:I

    if-nez v1, :cond_51

    iget v1, p0, overscanRight:I

    if-nez v1, :cond_51

    iget v1, p0, overscanBottom:I

    if-eqz v1, :cond_7e

    .line 642
    :cond_51
    const-string v1, ", overscan ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget v1, p0, overscanLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 644
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget v1, p0, overscanTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 646
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    iget v1, p0, overscanRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 648
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    iget v1, p0, overscanBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    :cond_7e
    const-string v1, ", largest app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    iget v1, p0, largestNominalAppWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 654
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    iget v1, p0, largestNominalAppHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 656
    const-string v1, ", smallest app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    iget v1, p0, smallestNominalAppWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 658
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    iget v1, p0, smallestNominalAppHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 660
    const-string v1, ", mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    iget v1, p0, modeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 662
    const-string v1, ", defaultMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    iget v1, p0, defaultModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 664
    const-string v1, ", modes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    iget-object v1, p0, supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    const-string v1, ", colorTransformId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    iget v1, p0, colorTransformId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    const-string v1, ", defaultColorTransformId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    iget v1, p0, defaultColorTransformId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 670
    const-string v1, ", supportedColorTransforms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    iget-object v1, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    const-string v1, ", rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    iget v1, p0, rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 674
    const-string v1, ", density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget v1, p0, logicalDensityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 676
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    iget v1, p0, physicalXDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 678
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    iget v1, p0, physicalYDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 680
    const-string v1, ") dpi, layerStack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget v1, p0, layerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    const-string v1, ", appVsyncOff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    iget-wide v2, p0, appVsyncOffsetNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 684
    const-string v1, ", presDeadline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    iget-wide v2, p0, presentationDeadlineNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 686
    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    iget v1, p0, type:I

    invoke-static {v1}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    iget-object v1, p0, address:Ljava/lang/String;

    if-eqz v1, :cond_14d

    .line 689
    const-string v1, ", address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    :cond_14d
    const-string v1, ", state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    iget v1, p0, state:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    iget v1, p0, ownerUid:I

    if-nez v1, :cond_163

    iget-object v1, p0, ownerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_17f

    .line 694
    :cond_163
    const-string v1, ", owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, ownerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, ownerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    :cond_17f
    iget v1, p0, flags:I

    invoke-static {v1}, flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toggleDisplay()V
    .registers 3

    .prologue
    .line 327
    iget v0, p0, appHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, appWidth:I

    iput v1, p0, appHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, swap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, appWidth:I

    .line 328
    iget v0, p0, smallestNominalAppHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, smallestNominalAppWidth:I

    iput v1, p0, smallestNominalAppHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, swap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, smallestNominalAppWidth:I

    .line 330
    iget v0, p0, largestNominalAppHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, largestNominalAppWidth:I

    iput v1, p0, largestNominalAppHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, swap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, largestNominalAppWidth:I

    .line 332
    iget v0, p0, logicalHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, logicalWidth:I

    iput v1, p0, logicalHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, swap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, logicalWidth:I

    .line 333
    iget v0, p0, overscanTop:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, overscanLeft:I

    iput v1, p0, overscanTop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, swap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, overscanLeft:I

    .line 334
    iget v0, p0, overscanBottom:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, overscanRight:I

    iput v1, p0, overscanBottom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, swap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, overscanRight:I

    .line 335
    iget v0, p0, rotation:I

    if-eqz v0, :cond_d8

    .line 336
    const/4 v0, 0x0

    iput v0, p0, rotation:I

    .line 340
    :goto_a3
    iget v0, p0, physicalYDpi:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, physicalXDpi:F

    iput v1, p0, physicalYDpi:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, swap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, physicalXDpi:F

    .line 341
    iget v0, p0, alphaScreenAppHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, alphaScreenAppWidth:I

    iput v1, p0, alphaScreenAppHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, swap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, alphaScreenAppWidth:I

    .line 342
    return-void

    .line 338
    :cond_d8
    const/4 v0, 0x1

    iput v0, p0, rotation:I

    goto :goto_a3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 442
    iget v1, p0, layerStack:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget v1, p0, flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget v1, p0, type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget-object v1, p0, address:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 447
    iget v1, p0, appWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget v1, p0, appHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget v1, p0, smallestNominalAppWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget v1, p0, smallestNominalAppHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget v1, p0, largestNominalAppWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget v1, p0, largestNominalAppHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget v1, p0, logicalWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget v1, p0, logicalHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget v1, p0, overscanLeft:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget v1, p0, overscanTop:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget v1, p0, overscanRight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget v1, p0, overscanBottom:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget v1, p0, rotation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget v1, p0, modeId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget v1, p0, defaultModeId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget-object v1, p0, supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6b
    iget-object v1, p0, supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    if-ge v0, v1, :cond_7a

    .line 464
    iget-object v1, p0, supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/view/Display$Mode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 466
    :cond_7a
    iget v1, p0, colorTransformId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget v1, p0, defaultColorTransformId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget-object v1, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    const/4 v0, 0x0

    :goto_8b
    iget-object v1, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    array-length v1, v1

    if-ge v0, v1, :cond_9a

    .line 470
    iget-object v1, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/view/Display$ColorTransform;->writeToParcel(Landroid/os/Parcel;I)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    .line 472
    :cond_9a
    iget v1, p0, logicalDensityDpi:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget v1, p0, physicalXDpi:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 474
    iget v1, p0, physicalYDpi:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 475
    iget-wide v2, p0, appVsyncOffsetNanos:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 476
    iget-wide v2, p0, presentationDeadlineNanos:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 477
    iget v1, p0, state:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget v1, p0, ownerUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget-object v1, p0, ownerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, uniqueId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 482
    iget v1, p0, alphaScreenAppWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget v1, p0, alphaScreenAppHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    return-void
.end method
