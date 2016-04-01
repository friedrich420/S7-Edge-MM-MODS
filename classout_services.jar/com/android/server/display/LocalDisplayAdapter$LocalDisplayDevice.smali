.class final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalDisplayDevice"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActiveColorTransformId:I

.field private mActiveColorTransformInvalid:Z

.field private mActiveModeId:I

.field private mActiveModeInvalid:Z

.field private mActivePhysIndex:I

.field private final mBacklight:Lcom/android/server/lights/Light;

.field private mBrightness:I

.field private final mBuiltInDisplayId:I

.field private mDefaultColorTransformId:I

.field private mDefaultModeId:I

.field private mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

.field private mEnableScreenRotateWithContent:Z

.field private mHavePendingChanges:Z

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mState:I

.field private final mSupportedColorTransforms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Display$ColorTransform;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 166
    const-class v0, Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, $assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;I[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)V
    .registers 10
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "builtInDisplayId"    # I
    .param p4, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p5, "activeDisplayInfo"    # I

    .prologue
    const/4 v3, 0x0

    .line 189
    iput-object p1, p0, this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "local:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 169
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, mSupportedModes:Landroid/util/SparseArray;

    .line 170
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, mSupportedColorTransforms:Landroid/util/SparseArray;

    .line 175
    iput v3, p0, mState:I

    .line 176
    const/4 v1, -0x1

    iput v1, p0, mBrightness:I

    .line 191
    iput p3, p0, mBuiltInDisplayId:I

    .line 192
    invoke-virtual {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mEnableScreenRotateWithContent:Z

    .line 194
    invoke-virtual {p0, p4, p5}, updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)Z

    .line 195
    iget v1, p0, mBuiltInDisplayId:I

    if-nez v1, :cond_56

    .line 196
    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    .line 197
    .local v0, "lights":Lcom/android/server/lights/LightsManager;
    invoke-virtual {v0, v3}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, mBacklight:Lcom/android/server/lights/Light;

    .line 206
    .end local v0    # "lights":Lcom/android/server/lights/LightsManager;
    :goto_55
    return-void

    .line 204
    :cond_56
    const/4 v1, 0x0

    iput-object v1, p0, mBacklight:Lcom/android/server/lights/Light;

    goto :goto_55
.end method

.method static synthetic access$000(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .prologue
    .line 166
    iget-object v0, p0, mBacklight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method private findColorTransform(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Landroid/view/Display$ColorTransform;
    .registers 6
    .param p1, "info"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 372
    iget-object v2, p0, mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display$ColorTransform;

    .line 373
    .local v1, "transform":Landroid/view/Display$ColorTransform;
    invoke-virtual {v1}, Landroid/view/Display$ColorTransform;->getColorTransform()I

    move-result v2

    iget v3, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->colorTransform:I

    if-ne v2, v3, :cond_1a

    .line 377
    .end local v1    # "transform":Landroid/view/Display$ColorTransform;
    :goto_19
    return-object v1

    .line 371
    .restart local v1    # "transform":Landroid/view/Display$ColorTransform;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    .end local v1    # "transform":Landroid/view/Display$ColorTransform;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private findDisplayInfoIndexLocked(II)I
    .registers 9
    .param p1, "colorTransformId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 641
    iget-object v4, p0, mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 642
    .local v2, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v4, p0, mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$ColorTransform;

    .line 643
    .local v3, "transform":Landroid/view/Display$ColorTransform;
    if-eqz v2, :cond_30

    if-eqz v3, :cond_30

    .line 644
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget-object v4, p0, mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_30

    .line 645
    iget-object v4, p0, mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    aget-object v1, v4, v0

    .line 646
    .local v1, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    iget v4, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->colorTransform:I

    invoke-virtual {v3}, Landroid/view/Display$ColorTransform;->getColorTransform()I

    move-result v5

    if-ne v4, v5, :cond_2d

    invoke-virtual {v2, v1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 652
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :goto_2c
    return v0

    .line 644
    .restart local v0    # "i":I
    .restart local v1    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 652
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_30
    const/4 v0, -0x1

    goto :goto_2c
.end method

.method private findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .registers 5
    .param p1, "info"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 362
    iget-object v2, p0, mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 363
    .local v1, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-virtual {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 367
    .end local v1    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :goto_17
    return-object v1

    .line 361
    .restart local v1    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 367
    .end local v1    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private updateDeviceInfoLocked()V
    .registers 3

    .prologue
    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 657
    iget-object v0, p0, this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 658
    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .registers 2

    .prologue
    .line 382
    iget-boolean v0, p0, mHavePendingChanges:Z

    if-eqz v0, :cond_a

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, mHavePendingChanges:Z

    .line 386
    :cond_a
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 614
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBuiltInDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mBuiltInDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mActivePhysIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mActivePhysIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mActiveModeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mActiveModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mActiveColorTransformId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mActiveColorTransformId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBacklight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mBacklight:Lcom/android/server/lights/Light;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    const-string/jumbo v1, "mDisplayInfos="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_bd
    iget-object v1, p0, mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_df

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    .line 626
    :cond_df
    const-string/jumbo v1, "mSupportedModes="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    const/4 v0, 0x0

    :goto_e6
    iget-object v1, p0, mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_10d

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_e6

    .line 630
    :cond_10d
    const-string/jumbo v1, "mSupportedColorTransforms=["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    const/4 v0, 0x0

    :goto_114
    iget-object v1, p0, mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_12f

    .line 632
    if-eqz v0, :cond_123

    .line 633
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    :cond_123
    iget-object v1, p0, mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_114

    .line 637
    :cond_12f
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 390
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v4, :cond_102

    .line 391
    iget-object v4, p0, mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v5, p0, mActivePhysIndex:I

    aget-object v1, v4, v5

    .line 392
    .local v1, "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    new-instance v4, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v4}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 393
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 394
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 395
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, p0, mActiveModeId:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 396
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, p0, mDefaultModeId:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 397
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/Display$Mode;

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    iget-object v4, p0, mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_54

    .line 399
    iget-object v4, p0, mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 400
    .local v2, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v5, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    aput-object v5, v4, v0

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 402
    .end local v2    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_54
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, p0, mActiveColorTransformId:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->colorTransformId:I

    .line 403
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, p0, mDefaultColorTransformId:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->defaultColorTransformId:I

    .line 404
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/Display$ColorTransform;

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 406
    const/4 v0, 0x0

    :goto_6d
    iget-object v4, p0, mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_86

    .line 407
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    iget-object v4, p0, mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$ColorTransform;

    aput-object v4, v5, v0

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 409
    :cond_86
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 410
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    iput-wide v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 411
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, p0, mState:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 412
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, getUniqueId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 416
    iget-boolean v4, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    if-eqz v4, :cond_aa

    .line 417
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v5, 0xc

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 421
    :cond_aa
    iget v4, p0, mBuiltInDisplayId:I

    if-eqz v4, :cond_105

    .line 452
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 453
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 454
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10404d8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 456
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 457
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 461
    const-string/jumbo v4, "portrait"

    const-string/jumbo v5, "persist.demo.hdmirotation"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f1

    .line 462
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v5, 0x3

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 467
    :cond_f1
    const-string/jumbo v4, "persist.demo.hdmirotates"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_102

    .line 468
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 472
    .end local v0    # "i":I
    .end local v1    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_102
    :goto_102
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v4

    .line 425
    .restart local v0    # "i":I
    .restart local v1    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_105
    iget-object v4, p0, this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v4}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 426
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const v5, 0x10404d7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 428
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 429
    iget-boolean v4, p0, mEnableScreenRotateWithContent:Z

    if-eqz v4, :cond_12e

    .line 430
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 433
    :cond_12e
    const v4, 0x11200bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_14b

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v5, "goldfish"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_153

    const-string/jumbo v4, "ro.emulator.circular"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_153

    .line 436
    :cond_14b
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 446
    :cond_153
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 447
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    const/high16 v6, 0x43200000    # 160.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 448
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 449
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 450
    iget-object v4, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    goto :goto_102
.end method

.method public requestColorTransformAndModeInTransactionLocked(II)V
    .registers 8
    .param p1, "colorTransformId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v4, 0x0

    .line 571
    if-nez p2, :cond_51

    .line 572
    iget p2, p0, mDefaultModeId:I

    .line 579
    :cond_5
    :goto_5
    if-nez p1, :cond_80

    .line 580
    iget p1, p0, mDefaultColorTransformId:I

    .line 586
    :cond_9
    :goto_9
    invoke-direct {p0, p1, p2}, findDisplayInfoIndexLocked(II)I

    move-result v0

    .line 587
    .local v0, "physIndex":I
    if-gez v0, :cond_4c

    .line 588
    const-string v1, "LocalDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested color transform, mode ID pair ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not available, trying color transform with default mode ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget p2, p0, mDefaultModeId:I

    .line 591
    invoke-direct {p0, p1, p2}, findDisplayInfoIndexLocked(II)I

    move-result v0

    .line 592
    if-gez v0, :cond_4c

    .line 593
    const-string v1, "LocalDisplayAdapter"

    const-string v2, "Requested color transform with default mode ID still not available, falling back to default color transform with default mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget p1, p0, mDefaultColorTransformId:I

    .line 597
    invoke-direct {p0, p1, p2}, findDisplayInfoIndexLocked(II)I

    move-result v0

    .line 600
    :cond_4c
    iget v1, p0, mActivePhysIndex:I

    if-ne v1, v0, :cond_b0

    .line 610
    :goto_50
    return-void

    .line 573
    .end local v0    # "physIndex":I
    :cond_51
    iget-object v1, p0, mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_5

    .line 574
    const-string v1, "LocalDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported by this display,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reverting to default display mode."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget p2, p0, mDefaultModeId:I

    goto :goto_5

    .line 581
    :cond_80
    iget-object v1, p0, mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_9

    .line 582
    const-string v1, "LocalDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested color transform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by this display, reverting to the default color transform"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget p1, p0, mDefaultColorTransformId:I

    goto/16 :goto_9

    .line 603
    .restart local v0    # "physIndex":I
    :cond_b0
    invoke-virtual {p0}, getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/SurfaceControl;->setActiveConfig(Landroid/os/IBinder;I)Z

    .line 604
    iput v0, p0, mActivePhysIndex:I

    .line 605
    iput p2, p0, mActiveModeId:I

    .line 606
    iput-boolean v4, p0, mActiveModeInvalid:Z

    .line 607
    iput p1, p0, mActiveColorTransformId:I

    .line 608
    iput-boolean v4, p0, mActiveColorTransformInvalid:Z

    .line 609
    invoke-direct {p0}, updateDeviceInfoLocked()V

    goto :goto_50
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .registers 11
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 478
    sget-boolean v3, $assertionsDisabled:Z

    if-nez v3, :cond_10

    if-ne p1, v0, :cond_10

    if-eqz p2, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 480
    :cond_10
    iget v3, p0, mState:I

    if-eq v3, p1, :cond_3d

    move v7, v0

    .line 481
    .local v7, "stateChanged":Z
    :goto_15
    iget v3, p0, mBrightness:I

    if-eq v3, p2, :cond_3f

    iget-object v3, p0, mBacklight:Lcom/android/server/lights/Light;

    if-eqz v3, :cond_3f

    move v6, v0

    .line 482
    .local v6, "brightnessChanged":Z
    :goto_1e
    if-nez v7, :cond_22

    if-eqz v6, :cond_41

    .line 483
    :cond_22
    iget v4, p0, mBuiltInDisplayId:I

    .line 484
    .local v4, "displayId":I
    invoke-virtual {p0}, getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v5

    .line 485
    .local v5, "token":Landroid/os/IBinder;
    iget v2, p0, mState:I

    .line 487
    .local v2, "oldState":I
    if-eqz v7, :cond_31

    .line 488
    iput p1, p0, mState:I

    .line 489
    invoke-direct {p0}, updateDeviceInfoLocked()V

    .line 492
    :cond_31
    if-eqz v6, :cond_35

    .line 493
    iput p2, p0, mBrightness:I

    .line 499
    :cond_35
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIILandroid/os/IBinder;)V

    .line 565
    .end local v2    # "oldState":I
    .end local v4    # "displayId":I
    .end local v5    # "token":Landroid/os/IBinder;
    :goto_3c
    return-object v0

    .end local v6    # "brightnessChanged":Z
    .end local v7    # "stateChanged":Z
    :cond_3d
    move v7, v1

    .line 480
    goto :goto_15

    .restart local v7    # "stateChanged":Z
    :cond_3f
    move v6, v1

    .line 481
    goto :goto_1e

    .line 565
    .restart local v6    # "brightnessChanged":Z
    :cond_41
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method public updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)Z
    .registers 24
    .param p1, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "activeDisplayInfo"    # I

    .prologue
    .line 210
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 211
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, mActivePhysIndex:I

    .line 212
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v6, "colorTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display$ColorTransform;>;"
    const/4 v7, 0x0

    .line 216
    .local v7, "colorTransformsAdded":Z
    const/4 v3, 0x0

    .line 217
    .local v3, "activeColorTransform":Landroid/view/Display$ColorTransform;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_23
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_85

    .line 218
    aget-object v13, p1, v11

    .line 220
    .local v13, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    const/4 v9, 0x0

    .line 221
    .local v9, "existingMode":Z
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_30
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v14, v0, :cond_4d

    .line 222
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/Display$ColorTransform;

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display$ColorTransform;->getColorTransform()I

    move-result v19

    iget v0, v13, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->colorTransform:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_52

    .line 223
    const/4 v9, 0x1

    .line 227
    :cond_4d
    if-eqz v9, :cond_55

    .line 217
    :cond_4f
    :goto_4f
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    .line 221
    :cond_52
    add-int/lit8 v14, v14, 0x1

    goto :goto_30

    .line 230
    :cond_55
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, findColorTransform(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Landroid/view/Display$ColorTransform;

    move-result-object v5

    .line 231
    .local v5, "colorTransform":Landroid/view/Display$ColorTransform;
    if-nez v5, :cond_66

    .line 232
    iget v0, v13, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->colorTransform:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/display/DisplayAdapter;->createColorTransform(I)Landroid/view/Display$ColorTransform;

    move-result-object v5

    .line 233
    const/4 v7, 0x1

    .line 235
    :cond_66
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const-string/jumbo v19, "ro.hardware"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 238
    .local v10, "hwPropValue":Ljava/lang/String;
    if-eqz v10, :cond_7f

    const-string/jumbo v19, "qcom"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7f

    .line 240
    move-object v3, v5

    goto :goto_4f

    .line 242
    :cond_7f
    move/from16 v0, p2

    if-ne v11, v0, :cond_4f

    .line 243
    move-object v3, v5

    goto :goto_4f

    .line 248
    .end local v5    # "colorTransform":Landroid/view/Display$ColorTransform;
    .end local v9    # "existingMode":Z
    .end local v10    # "hwPropValue":Ljava/lang/String;
    .end local v13    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v14    # "j":I
    :cond_85
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v17, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;>;"
    const/4 v15, 0x0

    .line 250
    .local v15, "modesAdded":Z
    const/4 v11, 0x0

    :goto_8c
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_d2

    .line 251
    aget-object v13, p1, v11

    .line 255
    .restart local v13    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    const/4 v9, 0x0

    .line 256
    .restart local v9    # "existingMode":Z
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_99
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v14, v0, :cond_b2

    .line 257
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v19

    if-eqz v19, :cond_b7

    .line 258
    const/4 v9, 0x1

    .line 262
    :cond_b2
    if-eqz v9, :cond_ba

    .line 250
    :goto_b4
    add-int/lit8 v11, v11, 0x1

    goto :goto_8c

    .line 256
    :cond_b7
    add-int/lit8 v14, v14, 0x1

    goto :goto_99

    .line 268
    :cond_ba
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    move-result-object v16

    .line 269
    .local v16, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    if-nez v16, :cond_ca

    .line 270
    new-instance v16, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .end local v16    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 271
    .restart local v16    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    const/4 v15, 0x1

    .line 273
    :cond_ca
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 277
    .end local v9    # "existingMode":Z
    .end local v13    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v14    # "j":I
    .end local v16    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_d2
    const/4 v4, 0x0

    .line 278
    .local v4, "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    const/4 v11, 0x0

    :goto_d4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_f2

    .line 279
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 280
    .restart local v16    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    aget-object v19, p1, p2

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v19

    if-eqz v19, :cond_186

    .line 281
    move-object/from16 v4, v16

    .line 287
    .end local v16    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_f2
    if-eqz v4, :cond_127

    iget-object v0, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    move-object/from16 v19, v0

    if-eqz v19, :cond_127

    move-object/from16 v0, p0

    iget v0, v0, mActiveModeId:I

    move/from16 v19, v0

    if-eqz v19, :cond_127

    move-object/from16 v0, p0

    iget v0, v0, mActiveModeId:I

    move/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display$Mode;->getModeId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_127

    .line 289
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mActiveModeInvalid:Z

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/LocalDisplayAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 294
    :cond_127
    move-object/from16 v0, p0

    iget v0, v0, mActiveColorTransformId:I

    move/from16 v19, v0

    if-eqz v19, :cond_150

    move-object/from16 v0, p0

    iget v0, v0, mActiveColorTransformId:I

    move/from16 v19, v0

    invoke-virtual {v3}, Landroid/view/Display$ColorTransform;->getId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_150

    .line 296
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mActiveColorTransformInvalid:Z

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/LocalDisplayAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 300
    :cond_150
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, mSupportedColorTransforms:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_166

    if-eqz v7, :cond_18a

    :cond_166
    const/4 v8, 0x1

    .line 303
    .local v8, "colorTransformsChanged":Z
    :goto_167
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, mSupportedModes:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17d

    if-eqz v15, :cond_18c

    :cond_17d
    const/16 v18, 0x1

    .line 306
    .local v18, "recordsChanged":Z
    :goto_17f
    if-nez v18, :cond_18f

    if-nez v8, :cond_18f

    .line 307
    const/16 v19, 0x0

    .line 357
    :goto_185
    return v19

    .line 278
    .end local v8    # "colorTransformsChanged":Z
    .end local v18    # "recordsChanged":Z
    .restart local v16    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_186
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_d4

    .line 300
    .end local v16    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_18a
    const/4 v8, 0x0

    goto :goto_167

    .line 303
    .restart local v8    # "colorTransformsChanged":Z
    :cond_18c
    const/16 v18, 0x0

    goto :goto_17f

    .line 310
    .restart local v18    # "recordsChanged":Z
    :cond_18f
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHavePendingChanges:Z

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, mSupportedModes:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->clear()V

    .line 313
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1a4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1ca

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 314
    .restart local v16    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, mSupportedModes:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display$Mode;->getModeId()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1a4

    .line 316
    .end local v16    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, mSupportedColorTransforms:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->clear()V

    .line 317
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1d7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1f5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$ColorTransform;

    .line 318
    .restart local v5    # "colorTransform":Landroid/view/Display$ColorTransform;
    move-object/from16 v0, p0

    iget-object v0, v0, mSupportedColorTransforms:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Landroid/view/Display$ColorTransform;->getId()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1d7

    .line 323
    .end local v5    # "colorTransform":Landroid/view/Display$ColorTransform;
    :cond_1f5
    if-eqz v4, :cond_24b

    iget-object v0, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    move-object/from16 v19, v0

    if-eqz v19, :cond_24b

    move-object/from16 v0, p0

    iget v0, v0, mDefaultColorTransformId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, mDefaultModeId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, findDisplayInfoIndexLocked(II)I

    move-result v19

    if-gez v19, :cond_24b

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, mDefaultModeId:I

    move/from16 v19, v0

    if-eqz v19, :cond_224

    .line 326
    const-string v19, "LocalDisplayAdapter"

    const-string v20, "Default display mode no longer available, using currently active mode as default."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_224
    iget-object v0, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display$Mode;->getModeId()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mDefaultModeId:I

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, mDefaultColorTransformId:I

    move/from16 v19, v0

    if-eqz v19, :cond_241

    .line 331
    const-string v19, "LocalDisplayAdapter"

    const-string v20, "Default color transform no longer available, using currently active color transform as default"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_241
    invoke-virtual {v3}, Landroid/view/Display$ColorTransform;->getId()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mDefaultColorTransformId:I

    .line 337
    :cond_24b
    move-object/from16 v0, p0

    iget-object v0, v0, mSupportedModes:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, mActiveModeId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v19

    if-gez v19, :cond_280

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, mActiveModeId:I

    move/from16 v19, v0

    if-eqz v19, :cond_26c

    .line 339
    const-string v19, "LocalDisplayAdapter"

    const-string v20, "Active display mode no longer available, reverting to default mode."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_26c
    move-object/from16 v0, p0

    iget v0, v0, mDefaultModeId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mActiveModeId:I

    .line 343
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mActiveModeInvalid:Z

    .line 347
    :cond_280
    move-object/from16 v0, p0

    iget-object v0, v0, mSupportedColorTransforms:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, mActiveColorTransformId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v19

    if-gez v19, :cond_2b5

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, mActiveColorTransformId:I

    move/from16 v19, v0

    if-eqz v19, :cond_2a1

    .line 349
    const-string v19, "LocalDisplayAdapter"

    const-string v20, "Active color transform no longer available, reverting to default transform."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_2a1
    move-object/from16 v0, p0

    iget v0, v0, mDefaultColorTransformId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mActiveColorTransformId:I

    .line 353
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mActiveColorTransformInvalid:Z

    .line 356
    :cond_2b5
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/LocalDisplayAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 357
    const/16 v19, 0x1

    goto/16 :goto_185
.end method
