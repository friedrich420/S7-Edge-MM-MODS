.class Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;
.super Ljava/lang/Object;
.source "ClipboardExService.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISharedClipboardDataList"
.end annotation


# instance fields
.field private final mBind:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .registers 3

    .prologue
    .line 1575
    iput-object p1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1576
    new-instance v0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;

    invoke-direct {v0, p0}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;-><init>(Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;)V

    iput-object v0, p0, mBind:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p2, "x1"    # Lcom/android/server/clipboardex/ClipboardExService$1;

    .prologue
    .line 1575
    invoke-direct {p0, p1}, <init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 1697
    iget-object v0, p0, mBind:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-object v0
.end method

.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 1650
    const-string v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISharedClipboardDataList getItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    iget-object v2, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v2}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 1652
    .local v0, "dataListSize":I
    if-ge p1, v0, :cond_2f

    .line 1653
    iget-object v2, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v2}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 1657
    :goto_2e
    return-object v2

    .line 1655
    :cond_2f
    sub-int v1, p1, v0

    .line 1656
    .local v1, "ownerIndex":I
    const-string v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data list size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shared index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    iget-object v2, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v2}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    goto :goto_2e
.end method

.method public getScrapItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1626
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeData(I)Z
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 1662
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_1c

    .line 1663
    const-string v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISharedClipboardDataList removeData() - index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_1c
    iget-object v2, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v2}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 1666
    .local v0, "dataListSize":I
    if-ge p1, v0, :cond_33

    .line 1667
    iget-object v2, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v2}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v2

    .line 1671
    :goto_32
    return v2

    .line 1669
    :cond_33
    sub-int v1, p1, v0

    .line 1670
    .local v1, "ownerIndex":I
    const-string v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data list size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shared index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-object v2, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v2}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v2

    goto :goto_32
.end method

.method public removeScrapData(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1631
    const/4 v0, 0x0

    return v0
.end method

.method public scrapSize()I
    .registers 2

    .prologue
    .line 1621
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 4

    .prologue
    .line 1641
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # invokes: Lcom/android/server/clipboardex/ClipboardExService;->isKioskEnabled()Z
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$1100(Lcom/android/server/clipboardex/ClipboardExService;)Z

    move-result v0

    .line 1642
    .local v0, "kioskEnabled":Z
    if-eqz v0, :cond_13

    .line 1643
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 1645
    :goto_12
    return v1

    :cond_13
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v1

    iget-object v2, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v2}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_12
.end method

.method public updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 1676
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1c

    .line 1677
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISharedClipboardDataList updateData() - index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_1c
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    if-ge p1, v1, :cond_3e

    .line 1681
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_33

    .line 1682
    const-string v1, "ClipboardExService"

    const-string v2, "ISharedClipboardDataList updateData() - index = is for regular mDataList"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_33
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    .line 1692
    :goto_3d
    return v1

    .line 1686
    :cond_3e
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    sub-int v0, p1, v1

    .line 1687
    .local v0, "newIndex":I
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_84

    .line 1688
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISharedClipboardDataList updateData() - index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was higher than mDataList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newINxed to update from shared = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :cond_84
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    goto :goto_3d
.end method

.method public updateScrapData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 1636
    const/4 v0, 0x0

    return v0
.end method
