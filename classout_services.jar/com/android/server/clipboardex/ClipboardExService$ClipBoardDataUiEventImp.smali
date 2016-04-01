.class Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;
.super Ljava/lang/Object;
.source "ClipboardExService.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataUiEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipBoardDataUiEventImp"
.end annotation


# instance fields
.field private final mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .registers 3

    .prologue
    .line 273
    iput-object p1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    new-instance v0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;

    invoke-direct {v0, p0}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;-><init>(Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;)V

    iput-object v0, p0, mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p2, "x1"    # Lcom/android/server/clipboardex/ClipboardExService$1;

    .prologue
    .line 273
    invoke-direct {p0, p1}, <init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

    return-object v0
.end method

.method public getClipboarddata(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Landroid/sec/clipboard/data/ClipboardData;
    .registers 9
    .param p1, "index"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 440
    monitor-enter p0

    .line 441
    if-nez p2, :cond_11

    .line 442
    :try_start_3
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_e

    .line 443
    const-string v3, "ClipboardExService"

    const-string v4, "ClipboardDataPasteEvent is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_e
    const/4 v2, 0x0

    monitor-exit p0

    .line 476
    :goto_10
    return-object v2

    .line 448
    :cond_11
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_2d

    .line 449
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clipboard Service selectItem index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_2d
    const/4 v0, 0x0

    .line 453
    .local v0, "clipdata":Landroid/content/ClipData;
    const/4 v2, 0x0

    .line 456
    .local v2, "resData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v3, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v3}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 457
    iget-object v3, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-ge p1, v3, :cond_6e

    .line 458
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_5f

    .line 459
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clipboard Service selectItem index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_5f
    iget-object v3, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 476
    :cond_69
    :goto_69
    monitor-exit p0

    goto :goto_10

    .line 477
    .end local v0    # "clipdata":Landroid/content/ClipData;
    .end local v2    # "resData":Landroid/sec/clipboard/data/ClipboardData;
    :catchall_6b
    move-exception v3

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_6b

    throw v3

    .line 462
    .restart local v0    # "clipdata":Landroid/content/ClipData;
    .restart local v2    # "resData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_6e
    :try_start_6e
    iget-object v3, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-lt p1, v3, :cond_69

    .line 463
    iget-object v3, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    sub-int v1, p1, v3

    .line 464
    .local v1, "newIndex":I
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_c0

    .line 465
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clipboard Service selectItem - index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was higher than mDataList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newINxed to selectItem from shared = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_c0
    iget-object v3, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 470
    goto :goto_69

    .line 473
    .end local v1    # "newIndex":I
    :cond_cb
    iget-object v3, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z
    invoke-static {v3, v4}, Lcom/android/server/clipboardex/ClipboardExService;->access$602(Lcom/android/server/clipboardex/ClipboardExService;Z)Z

    .line 474
    iget-object v3, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_da
    .catchall {:try_start_6e .. :try_end_da} :catchall_6b

    move-result-object v2

    goto :goto_69
.end method

.method public removeAll()Z
    .registers 4

    .prologue
    .line 371
    monitor-enter p0

    .line 372
    :try_start_1
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 373
    const-string v1, "ClipboardExService"

    const-string v2, "Remove All"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_c
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v0

    .line 378
    .local v0, "bRes":Z
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v1}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 379
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v1

    or-int/2addr v0, v1

    .line 382
    :cond_35
    if-eqz v0, :cond_3d

    .line 383
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v2, 0x3

    # invokes: Lcom/android/server/clipboardex/ClipboardExService;->ListChange(I)V
    invoke-static {v1, v2}, Lcom/android/server/clipboardex/ClipboardExService;->access$500(Lcom/android/server/clipboardex/ClipboardExService;I)V

    .line 386
    :cond_3d
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z
    invoke-static {v1, v2}, Lcom/android/server/clipboardex/ClipboardExService;->access$402(Lcom/android/server/clipboardex/ClipboardExService;Z)Z

    .line 387
    monitor-exit p0

    return v0

    .line 388
    .end local v0    # "bRes":Z
    :catchall_45
    move-exception v1

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public removeItem(I)V
    .registers 10
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 337
    monitor-enter p0

    .line 338
    :try_start_3
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_20

    .line 339
    const-string v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeItem index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_20
    const/4 v0, 0x0

    .line 344
    .local v0, "bRes":Z
    iget-object v5, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v5}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v5

    if-eqz v5, :cond_90

    .line 345
    iget-object v5, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 346
    .local v1, "dataListSize":I
    if-ge p1, v1, :cond_5a

    .line 347
    iget-object v5, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v0

    .line 355
    :goto_3f
    iget-object v5, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v6

    if-gtz v6, :cond_8e

    :goto_4d
    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z
    invoke-static {v5, v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$402(Lcom/android/server/clipboardex/ClipboardExService;Z)Z

    .line 361
    .end local v1    # "dataListSize":I
    :goto_50
    if-eqz v0, :cond_58

    .line 362
    iget-object v3, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v4, 0x2

    # invokes: Lcom/android/server/clipboardex/ClipboardExService;->ListChange(I)V
    invoke-static {v3, v4}, Lcom/android/server/clipboardex/ClipboardExService;->access$500(Lcom/android/server/clipboardex/ClipboardExService;I)V

    .line 364
    :cond_58
    monitor-exit p0

    .line 365
    return-void

    .line 349
    .restart local v1    # "dataListSize":I
    :cond_5a
    sub-int v2, p1, v1

    .line 350
    .local v2, "ownerIndex":I
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_83

    .line 351
    const-string v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "data list size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " shared index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_83
    iget-object v5, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v0

    goto :goto_3f

    .end local v2    # "ownerIndex":I
    :cond_8e
    move v3, v4

    .line 355
    goto :goto_4d

    .line 358
    .end local v1    # "dataListSize":I
    :cond_90
    iget-object v5, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v0

    .line 359
    iget-object v5, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v6

    if-lez v6, :cond_af

    :goto_a8
    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z
    invoke-static {v5, v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$402(Lcom/android/server/clipboardex/ClipboardExService;Z)Z

    goto :goto_50

    .line 364
    .end local v0    # "bRes":Z
    :catchall_ac
    move-exception v3

    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_ac

    throw v3

    .restart local v0    # "bRes":Z
    :cond_af
    move v3, v4

    .line 359
    goto :goto_a8
.end method

.method public removeScrapItem(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 324
    return-void
.end method

.method public selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 399
    monitor-enter p0

    .line 400
    if-nez p2, :cond_10

    .line 401
    :try_start_3
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_e

    .line 402
    const-string v4, "ClipboardExService"

    const-string v5, "ClipboardDataPasteEvent is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_e
    monitor-exit p0

    .line 437
    :goto_f
    return-void

    .line 407
    :cond_10
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_2d

    .line 408
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectItem index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_51

    .line 411
    :cond_2d
    const/4 v3, 0x0

    .line 414
    .local v3, "resData":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_2e
    iget-object v4, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v4}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 415
    iget-object v4, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 416
    .local v0, "dataListSize":I
    if-ge p1, v0, :cond_54

    .line 417
    iget-object v4, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .line 430
    .end local v0    # "dataListSize":I
    :goto_4c
    invoke-interface {p2, v3}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4f} :catch_99
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4f} :catch_9e
    .catchall {:try_start_2e .. :try_end_4f} :catchall_51

    .line 436
    :goto_4f
    :try_start_4f
    monitor-exit p0

    goto :goto_f

    .end local v3    # "resData":Landroid/sec/clipboard/data/ClipboardData;
    :catchall_51
    move-exception v4

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_51

    throw v4

    .line 419
    .restart local v0    # "dataListSize":I
    .restart local v3    # "resData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_54
    sub-int v2, p1, v0

    .line 420
    .local v2, "ownerIndex":I
    :try_start_56
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_7d

    .line 421
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "data list size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shared index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_7d
    iget-object v4, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    goto :goto_4c

    .line 427
    .end local v0    # "dataListSize":I
    .end local v2    # "ownerIndex":I
    :cond_88
    iget-object v4, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z
    invoke-static {v4, v5}, Lcom/android/server/clipboardex/ClipboardExService;->access$602(Lcom/android/server/clipboardex/ClipboardExService;Z)Z

    .line 428
    iget-object v4, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_97} :catch_99
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_97} :catch_9e
    .catchall {:try_start_56 .. :try_end_97} :catchall_51

    move-result-object v3

    goto :goto_4c

    .line 431
    :catch_99
    move-exception v1

    .line 432
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_9a
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4f

    .line 433
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_9e
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_51

    goto :goto_4f
.end method

.method public selectScrapItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 329
    return-void
.end method

.method public setClipboarddata(Landroid/content/ClipData;)V
    .registers 5
    .param p1, "data"    # Landroid/content/ClipData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 487
    if-eqz p1, :cond_21

    .line 488
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/sec/clipboard/ClipboardConverter;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardConverter;

    move-result-object v2

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;
    invoke-static {v1, v2}, Lcom/android/server/clipboardex/ClipboardExService;->access$702(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardConverter;)Landroid/sec/clipboard/ClipboardConverter;

    .line 489
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$700(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipboardData(Landroid/content/ClipData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 490
    .local v0, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_21

    .line 491
    iget-object v1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/clipboardex/ClipboardExService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 494
    .end local v0    # "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_21
    return-void
.end method
