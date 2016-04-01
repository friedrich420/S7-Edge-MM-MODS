.class final Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayDevice"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mFlags:I

.field private final mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mMode:Landroid/view/Display$Mode;

.field private mName:Ljava/lang/String;

.field private final mRefreshRate:F

.field private mSurface:Landroid/view/Surface;

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILjava/lang/String;Landroid/view/Surface;)V
    .registers 12
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "refreshRate"    # F
    .param p7, "flags"    # I
    .param p8, "address"    # Ljava/lang/String;
    .param p9, "surface"    # Landroid/view/Surface;

    .prologue
    .line 1592
    iput-object p1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1594
    iput-object p3, p0, mName:Ljava/lang/String;

    .line 1595
    iput p4, p0, mWidth:I

    .line 1596
    iput p5, p0, mHeight:I

    .line 1597
    iput p6, p0, mRefreshRate:F

    .line 1598
    iput p7, p0, mFlags:I

    .line 1599
    iput-object p8, p0, mAddress:Ljava/lang/String;

    .line 1600
    iput-object p9, p0, mSurface:Landroid/view/Surface;

    .line 1601
    invoke-static {p4, p5, p6}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object v0

    iput-object v0, p0, mMode:Landroid/view/Display$Mode;

    .line 1602
    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .registers 2

    .prologue
    .line 1605
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c

    .line 1606
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1607
    const/4 v0, 0x0

    iput-object v0, p0, mSurface:Landroid/view/Surface;

    .line 1609
    :cond_c
    invoke-virtual {p0}, getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 1610
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 7

    .prologue
    .line 1626
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_70

    .line 1627
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1628
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 1629
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, getUniqueId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 1630
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 1631
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 1632
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 1633
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 1634
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/Display$Mode;

    const/4 v2, 0x0

    iget-object v3, p0, mMode:Landroid/view/Display$Mode;

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 1635
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const-wide/32 v2, 0x3b9aca00

    iget v1, p0, mRefreshRate:F

    float-to-int v1, v1

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 1636
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, mFlags:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 1637
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 1638
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, mAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    .line 1639
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 1640
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, mWidth:I

    iget v2, p0, mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 1642
    :cond_70
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public performTraversalInTransactionLocked()V
    .registers 2

    .prologue
    .line 1619
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_9

    .line 1620
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    .line 1622
    :cond_9
    return-void
.end method

.method public setNameLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1613
    iput-object p1, p0, mName:Ljava/lang/String;

    .line 1614
    const/4 v0, 0x0

    iput-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1615
    return-void
.end method
