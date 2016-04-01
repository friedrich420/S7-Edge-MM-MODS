.class Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
.super Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VirtualActivityDisplay"
.end annotation


# instance fields
.field mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;III)V
    .registers 11
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 8499
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, <init>(Lcom/android/server/am/ActivityStackSupervisor;IIIZ)V

    .line 8500
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;IIIZ)V
    .registers 17
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I
    .param p5, "virtualScreen"    # Z

    .prologue
    .line 8501
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    .line 8503
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 8505
    .local v0, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const/16 v8, 0x9

    .line 8506
    .local v8, "flags":I
    if-eqz p5, :cond_f

    .line 8507
    or-int/lit8 v8, v8, 0x40

    .line 8510
    :cond_f
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "ActivityViewVirtualDisplay"

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, p0, mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 8514
    iget-object v1, p0, mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v1, :cond_31

    .line 8515
    const/4 v1, -0x1

    iput v1, p0, mDisplayId:I

    .line 8516
    const-string v1, "ActivityManager"

    const-string v2, "Can\'t create VirtualActivityDisplay."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8522
    :goto_30
    return-void

    .line 8519
    :cond_31
    iget-object v1, p0, mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {p0, v1}, init(Landroid/view/Display;)V

    .line 8521
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAdded(I)V

    goto :goto_30
.end method


# virtual methods
.method detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V
    .registers 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 8532
    invoke-super {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V

    .line 8533
    iget-object v0, p0, mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_f

    .line 8534
    iget-object v0, p0, mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 8535
    const/4 v0, 0x0

    iput-object v0, p0, mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 8537
    :cond_f
    return-void
.end method

.method setSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 8525
    iget-object v0, p0, mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_9

    .line 8526
    iget-object v0, p0, mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 8528
    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 8541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualActivityDisplay={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
