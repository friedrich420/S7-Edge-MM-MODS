.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;
.super Ljava/lang/Object;
.source "BNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->setServiceHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 464
    const-string v20, "is_success"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 465
    .local v9, "isSuccess":Z
    const-string v20, "BNRClientHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "303, "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", i = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v10, 0x1

    .line 467
    .local v10, "local_fileCopy":Z
    const/4 v11, 0x1

    .line 468
    .local v11, "oemSuccess":Z
    const/16 v16, 0x0

    .line 469
    .local v16, "start":I
    const/16 v5, 0x64

    .line 470
    .local v5, "MAX_COUNT":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v19, "total_local_file":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 472
    .local v17, "sub_local_file":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;>;"
    if-eqz v9, :cond_13

    .line 474
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-interface {v0, v1, v2, v5}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->getFileMeta(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v17

    .line 476
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_1

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mResult:Landroid/os/Bundle;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$5(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "is_success"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mResult:Landroid/os/Bundle;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$5(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;

    move-result-object v20

    .line 547
    :goto_0
    return-object v20

    .line 479
    :cond_1
    if-eqz v17, :cond_3

    .line 480
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int v16, v16, v20

    .line 481
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_b

    .line 487
    :cond_3
    if-nez v17, :cond_0

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$9(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v20

    if-nez v20, :cond_4

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/FileSavedList;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$10(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/util/List;)V

    .line 491
    :cond_4
    const-string v20, "BNRClientHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "303, "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ProcessedFileList size : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$9(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$9(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_c

    .line 503
    :goto_2
    if-eqz v10, :cond_12

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$12(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v20

    if-nez v20, :cond_6

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/scloud/oem/lib/ItemSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/ItemSavedList;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$13(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/util/List;)V

    .line 506
    :cond_6
    const-string v20, "BNRClientHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "303, "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ProcessedKeyList size : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$12(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$12(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-ltz v20, :cond_7

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$12(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$12(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v10}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->restoreComplete(Landroid/content/Context;[Ljava/lang/String;Z)Z

    move-result v11

    .line 509
    if-nez v11, :cond_7

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->clearPrerestoredData(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$4(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;)V

    .line 513
    :cond_7
    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$9(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_8
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_e

    .line 528
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_9
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_11

    .line 535
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->setFirstBackup(Ljava/lang/String;Z)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$12(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$9(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 545
    :cond_a
    :goto_5
    const-string v20, "BNRClientHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "303, "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", o = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mResult:Landroid/os/Bundle;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$5(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "is_success"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mResult:Landroid/os/Bundle;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$5(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;

    move-result-object v20

    goto/16 :goto_0

    .line 481
    :cond_b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;

    .line 482
    .local v7, "file":Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v21

    invoke-virtual {v7}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v7}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getisExternal()Z

    move-result v23

    const-string v24, "restore"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->getFilePath(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 483
    .local v15, "rPath":Ljava/lang/String;
    if-eqz v15, :cond_2

    const-string v21, "_scloud_dwnload"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string v21, "_scloud_origin"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 484
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 492
    .end local v7    # "file":Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;
    .end local v15    # "rPath":Ljava/lang/String;
    :cond_c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 493
    .local v8, "inserted_file":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "_scloud_origin"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    # invokes: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->fileCopy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v8, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$11(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_d

    .line 494
    const/4 v10, 0x0

    .line 495
    goto/16 :goto_2

    .line 497
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "_scloud_dwnload"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    # invokes: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->fileCopy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$11(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 498
    const/4 v10, 0x0

    .line 499
    goto/16 :goto_2

    .line 514
    .end local v8    # "inserted_file":Ljava/lang/String;
    :cond_e
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 515
    .local v18, "tmpfile":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "_scloud_origin"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    .local v13, "originFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "_scloud_dwnload"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    .local v6, "downloadFile":Ljava/io/File;
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 518
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 519
    const-string v21, "BNRClientHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "303, "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", delete :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_scloud_origin"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_f
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 522
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 523
    const-string v21, "BNRClientHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "303, "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", delete :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_scloud_dwnload"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_10
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 526
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 528
    .end local v6    # "downloadFile":Ljava/io/File;
    .end local v13    # "originFile":Ljava/io/File;
    .end local v18    # "tmpfile":Ljava/lang/String;
    :cond_11
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 529
    .local v14, "path":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    .local v12, "oldFile":Ljava/io/File;
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 531
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 532
    const-string v21, "BNRClientHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "303, "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", delete :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 540
    .end local v12    # "oldFile":Ljava/io/File;
    .end local v14    # "path":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->clearPrerestoredData(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$4(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 543
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->clearPrerestoredData(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$4(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5
.end method
