.class Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KNOXReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .registers 2

    .prologue
    .line 497
    iput-object p1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 501
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, "intentAction":Ljava/lang/String;
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KNOXReceiver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 505
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # invokes: Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$800(Lcom/android/server/clipboardex/ClipboardExService;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 506
    const-string v6, "ClipboardExService"

    const-string/jumbo v7, "null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_34
    :goto_34
    return-void

    .line 510
    :cond_35
    const/4 v5, 0x0

    .line 512
    .local v5, "size":[I
    :try_start_36
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$900(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/os/PersonaManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PersonaManager;->getPersonaIds()[I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_4b

    move-result-object v5

    .line 518
    if-nez v5, :cond_50

    .line 519
    const-string v6, "ClipboardExService"

    const-string/jumbo v7, "size is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 513
    :catch_4b
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34

    .line 523
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_50
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_51
    array-length v6, v5

    if-ge v1, v6, :cond_34

    .line 524
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    aget v7, v5, v1

    # invokes: Lcom/android/server/clipboardex/ClipboardExService;->doSyncForFota(I)V
    invoke-static {v6, v7}, Lcom/android/server/clipboardex/ClipboardExService;->access$1000(Lcom/android/server/clipboardex/ClipboardExService;I)V

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 526
    .end local v1    # "i":I
    .end local v5    # "size":[I
    :cond_5e
    const-string/jumbo v6, "enterprise.container.remove.progress"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    const-string/jumbo v6, "enterprise.container.uninstalled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 528
    const-string v6, "com.samsung.knox.clipboard.sync"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 529
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v6}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v6

    if-eqz v6, :cond_e0

    .line 530
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_9c

    .line 531
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receive intent from KNOX-clipboard : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_9c
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    if-eqz v6, :cond_ad

    .line 535
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    .line 538
    :cond_ad
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    if-eqz v6, :cond_e0

    .line 539
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isKnoxTwoEnabled mDataList.size()  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    .line 544
    :cond_e0
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # invokes: Lcom/android/server/clipboardex/ClipboardExService;->isKioskEnabled()Z
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$1100(Lcom/android/server/clipboardex/ClipboardExService;)Z

    move-result v6

    if-eqz v6, :cond_34

    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # invokes: Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$800(Lcom/android/server/clipboardex/ClipboardExService;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 545
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$900(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/os/PersonaManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    .line 546
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    const/4 v4, 0x0

    .line 547
    .local v4, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v3, :cond_135

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_135

    .line 548
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "pi":Landroid/content/pm/PersonaInfo;
    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 549
    .restart local v4    # "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_135

    .line 550
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget v7, v4, Landroid/content/pm/PersonaInfo;->id:I

    const-string v8, "SWITCHED"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/clipboardex/ClipboardExService;->multiUserMode(ILjava/lang/String;)V

    .line 551
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_135

    .line 552
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "kiosk container id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_135
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    if-eqz v6, :cond_146

    .line 558
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    .line 561
    :cond_146
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    if-eqz v6, :cond_34

    .line 562
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isKioskEnabled mDataList.size()  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v6, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    goto/16 :goto_34
.end method
