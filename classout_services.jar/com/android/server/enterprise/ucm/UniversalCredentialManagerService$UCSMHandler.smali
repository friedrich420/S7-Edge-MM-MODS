.class Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
.super Landroid/os/Handler;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UCSMHandler"
.end annotation


# static fields
.field public static final MSG_CLEAN_INFO:I = 0x3

.field public static final MSG_CLEAN_USER_INFO:I = 0x1

.field public static final MSG_LOAD_ADMINS:I = 0x2

.field public static final MSG_LOAD_PLUGINS:I = 0x4

.field public static final MSG_LOAD_WHITELIST_AND_EXEMPT_APPS:I = 0x5

.field public static final MSG_LOCK_STATUS_UPDATE:I = 0x7

.field public static final MSG_REINSTALL_CA_CERT:I = 0x8

.field public static final MSG_SYNC_UP_DATA:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V
    .registers 2

    .prologue
    .line 421
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 422
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 423
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 58
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 426
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v53, v0

    packed-switch v53, :pswitch_data_e6e

    .line 832
    :goto_9
    return-void

    .line 428
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->installCACertOnBoot()V
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    goto :goto_9

    .line 432
    :pswitch_14
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_CLEAN_USER_INFO block started****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    .line 434
    .local v49, "userId":I
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "userId - "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    if-eqz v53, :cond_76

    .line 436
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string/jumbo v54, "notifyChangeToPlugin is called for user removed..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :try_start_52
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 439
    .local v16, "data":Landroid/os/Bundle;
    const-string/jumbo v53, "userId"

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 440
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    const/16 v54, 0x0

    const/16 v55, 0xb

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move/from16 v2, v55

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_76} :catch_8e

    .line 445
    .end local v16    # "data":Landroid/os/Bundle;
    :cond_76
    :goto_76
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v49

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performUserCleanup(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    .line 446
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_CLEAN_USER_INFO block ended****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 441
    :catch_8e
    move-exception v17

    .line 442
    .local v17, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 450
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v49    # "userId":I
    :pswitch_af
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOAD_ADMINS block started****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :try_start_b8
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAllAdmins()Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$600(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v46

    .line 453
    .local v46, "ucsAdmins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v53

    if-eqz v53, :cond_117

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v53

    if-lez v53, :cond_117

    .line 455
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "adminIds size- "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v55, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v55 .. v55}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Ljava/util/List;->size()I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_117} :catch_143

    .line 460
    .end local v46    # "ucsAdmins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_117
    :goto_117
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOAD_ADMINS block ended****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    const/16 v54, 0x4

    invoke-virtual/range {v53 .. v54}, obtainMessage(I)Landroid/os/Message;

    move-result-object v37

    .line 462
    .local v37, "msg1":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    .line 457
    .end local v37    # "msg1":Landroid/os/Message;
    :catch_143
    move-exception v17

    .line 458
    .restart local v17    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_117

    .line 466
    .end local v17    # "e":Ljava/lang/Exception;
    :pswitch_148
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_CLEAN_INFO block started****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :try_start_151
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, [I

    move-object/from16 v0, v53

    check-cast v0, [I

    move-object v9, v0

    .line 469
    .local v9, "appsUid":[I
    if-eqz v9, :cond_4d7

    array-length v0, v9

    move/from16 v53, v0

    if-lez v53, :cond_4d7

    .line 470
    move-object v10, v9

    .local v10, "arr$":[I
    array-length v0, v10

    move/from16 v34, v0

    .local v34, "len$":I
    const/16 v27, 0x0

    .local v27, "i$":I
    move/from16 v29, v27

    .end local v10    # "arr$":[I
    .end local v27    # "i$":I
    .end local v34    # "len$":I
    .local v29, "i$":I
    :goto_16d
    move/from16 v0, v29

    move/from16 v1, v34

    if-ge v0, v1, :cond_4d7

    aget v53, v10, v29

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    .line 471
    .local v47, "uid":Ljava/lang/Integer;
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v53

    invoke-static/range {v53 .. v53}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v49

    .line 472
    .restart local v49    # "userId":I
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "uid - "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", userId-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_1f6

    .line 475
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "UCS admin uninstall. Start cleaning...."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v54

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyAdminUninstall(I)V
    invoke-static/range {v53 .. v54}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$800(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v54

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performAdminCleanup(I)V
    invoke-static/range {v53 .. v54}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$900(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 482
    :cond_1f6
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_384

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 484
    .local v43, "pluginPkg":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Active plugin is removed. Perform clean up for uid-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", pluginPkg-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v43

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAdminIdRelatedToStorage(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 486
    .local v6, "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_35d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v53

    if-lez v53, :cond_35d

    .line 487
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .end local v29    # "i$":I
    :cond_264
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_366

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 488
    .local v5, "adminUid":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "notifyLicenseStatus expire - adminUid-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v53

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .line 490
    .local v42, "pkgs":[Ljava/lang/String;
    if-eqz v42, :cond_264

    .line 491
    move-object/from16 v11, v42

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v35, v0

    .local v35, "len$":I
    const/16 v28, 0x0

    .local v28, "i$":I
    :goto_2a8
    move/from16 v0, v28

    move/from16 v1, v35

    if-ge v0, v1, :cond_264

    aget-object v41, v11, v28

    .line 492
    .local v41, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Sending event update to package "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v39, Landroid/content/Intent;

    const-string v53, "com.samsung.knox.ucm.NOTIFY_EVENT"

    move-object/from16 v0, v39

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v39, "notifyIntent":Landroid/content/Intent;
    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 496
    .restart local v16    # "data":Landroid/os/Bundle;
    const-string/jumbo v53, "event_id"

    const/16 v54, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    const-string/jumbo v53, "package_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_306
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_306} :catch_357

    .line 501
    :try_start_306
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "Sending intent with UCSM Other permission..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v53

    new-instance v54, Landroid/os/UserHandle;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v55

    invoke-static/range {v55 .. v55}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v55

    invoke-direct/range {v54 .. v55}, Landroid/os/UserHandle;-><init>(I)V

    const-string v55, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    move-object/from16 v0, v53

    move-object/from16 v1, v39

    move-object/from16 v2, v54

    move-object/from16 v3, v55

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_333
    .catch Ljava/lang/Exception; {:try_start_306 .. :try_end_333} :catch_337

    .line 491
    :goto_333
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2a8

    .line 505
    :catch_337
    move-exception v45

    .line 506
    .local v45, "se":Ljava/lang/Exception;
    :try_start_338
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "  Exception se-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_356
    .catch Ljava/lang/Exception; {:try_start_338 .. :try_end_356} :catch_357

    goto :goto_333

    .line 550
    .end local v5    # "adminUid":Ljava/lang/Integer;
    .end local v6    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "appsUid":[I
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v16    # "data":Landroid/os/Bundle;
    .end local v28    # "i$":I
    .end local v35    # "len$":I
    .end local v39    # "notifyIntent":Landroid/content/Intent;
    .end local v41    # "pkgName":Ljava/lang/String;
    .end local v42    # "pkgs":[Ljava/lang/String;
    .end local v43    # "pluginPkg":Ljava/lang/String;
    .end local v45    # "se":Ljava/lang/Exception;
    .end local v47    # "uid":Ljava/lang/Integer;
    .end local v49    # "userId":I
    :catch_357
    move-exception v17

    .line 551
    .restart local v17    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 513
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v6    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "appsUid":[I
    .restart local v29    # "i$":I
    .restart local v43    # "pluginPkg":Ljava/lang/String;
    .restart local v47    # "uid":Ljava/lang/Integer;
    .restart local v49    # "userId":I
    :cond_35d
    :try_start_35d
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "No admin found related to package..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .end local v29    # "i$":I
    :cond_366
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v43

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performStorageCleanup(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)V

    .line 520
    .end local v6    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v43    # "pluginPkg":Ljava/lang/String;
    :cond_384
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_3f8

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 522
    .local v40, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Calling performWhitelistAppCleanup for userId-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", packageName-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v49

    move-object/from16 v2, v40

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performWhitelistAppCleanup(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .end local v40    # "packageName":Ljava/lang/String;
    :cond_3f8
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_46c

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 530
    .restart local v40    # "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Calling performExemptedAppCleanup for userId-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", packageName-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v49

    move-object/from16 v2, v40

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performExemptedAppCleanup(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1600(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .end local v40    # "packageName":Ljava/lang/String;
    :cond_46c
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    if-eqz v53, :cond_4b0

    .line 536
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string/jumbo v54, "notifyChangeToPlugin is called for package uninstalled..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47c
    .catch Ljava/lang/Exception; {:try_start_35d .. :try_end_47c} :catch_357

    .line 538
    :try_start_47c
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 539
    .restart local v16    # "data":Landroid/os/Bundle;
    const-string/jumbo v53, "userId"

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    const-string/jumbo v53, "packageUid"

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v54

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 541
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    const/16 v54, 0x0

    const/16 v55, 0xc

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move/from16 v2, v55

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4b0
    .catch Ljava/lang/Exception; {:try_start_47c .. :try_end_4b0} :catch_4b6

    .line 470
    .end local v16    # "data":Landroid/os/Bundle;
    :cond_4b0
    :goto_4b0
    add-int/lit8 v27, v29, 0x1

    .restart local v27    # "i$":I
    move/from16 v29, v27

    .end local v27    # "i$":I
    .restart local v29    # "i$":I
    goto/16 :goto_16d

    .line 542
    .end local v29    # "i$":I
    :catch_4b6
    move-exception v17

    .line 543
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_4b7
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b0

    .line 548
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v47    # "uid":Ljava/lang/Integer;
    .end local v49    # "userId":I
    :cond_4d7
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_CLEAN_INFO block ended****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e0
    .catch Ljava/lang/Exception; {:try_start_4b7 .. :try_end_4e0} :catch_357

    goto/16 :goto_9

    .line 556
    .end local v9    # "appsUid":[I
    :pswitch_4e2
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOAD_PLUGINS block started****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :try_start_4eb
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getActivePlugin()Ljava/util/ArrayList;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    .line 559
    .local v14, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v14, :cond_642

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v53

    if-lez v53, :cond_642

    .line 560
    const/16 v40, 0x0

    .line 561
    .restart local v40    # "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 562
    .local v8, "appUid":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :cond_504
    :goto_504
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_5eb

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/content/ContentValues;

    .line 563
    .local v52, "value":Landroid/content/ContentValues;
    const-string/jumbo v53, "storagePackageName"

    invoke-virtual/range {v52 .. v53}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 564
    const-string v53, "appUid"

    invoke-virtual/range {v52 .. v53}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I
    :try_end_520
    .catch Ljava/lang/Exception; {:try_start_4eb .. :try_end_520} :catch_5a0

    move-result v8

    .line 566
    const/16 v53, 0x3e8

    move/from16 v0, v53

    if-eq v8, v0, :cond_504

    if-eqz v8, :cond_504

    .line 569
    :try_start_529
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_504

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Caching plugin app id-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", packageName-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57e
    .catch Ljava/lang/Exception; {:try_start_529 .. :try_end_57e} :catch_57f

    goto :goto_504

    .line 573
    :catch_57f
    move-exception v17

    .line 574
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_580
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59e
    .catch Ljava/lang/Exception; {:try_start_580 .. :try_end_59e} :catch_5a0

    goto/16 :goto_504

    .line 588
    .end local v8    # "appUid":I
    .end local v14    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v52    # "value":Landroid/content/ContentValues;
    :catch_5a0
    move-exception v17

    .line 589
    .restart local v17    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_5bf
    :goto_5bf
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOAD_PLUGINS block ended****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    const/16 v54, 0x5

    invoke-virtual/range {v53 .. v54}, obtainMessage(I)Landroid/os/Message;

    move-result-object v38

    .line 594
    .local v38, "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    .line 578
    .end local v38    # "msg2":Landroid/os/Message;
    .restart local v8    # "appUid":I
    .restart local v14    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v27    # "i$":Ljava/util/Iterator;
    .restart local v40    # "packageName":Ljava/lang/String;
    :cond_5eb
    :try_start_5eb
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 579
    .local v22, "entries":Ljava/util/Iterator;
    :goto_5fd
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_5bf

    .line 580
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 581
    .local v25, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .line 582
    .local v32, "key":Ljava/lang/Integer;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/String;

    .line 583
    .local v52, "value":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Plugin ID = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", Plugin package = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5fd

    .line 586
    .end local v8    # "appUid":I
    .end local v22    # "entries":Ljava/util/Iterator;
    .end local v25    # "entry":Ljava/util/Map$Entry;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v32    # "key":Ljava/lang/Integer;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v52    # "value":Ljava/lang/String;
    :cond_642
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "No active plugin found"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64b
    .catch Ljava/lang/Exception; {:try_start_5eb .. :try_end_64b} :catch_5a0

    goto/16 :goto_5bf

    .line 599
    .end local v14    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :pswitch_64d
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOAD_WHITELIST_AND_EXEMPT_APPS block started****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :try_start_656
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAllWhitelistedApps()Ljava/util/ArrayList;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1800(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    .line 602
    .restart local v14    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v14, :cond_7b7

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v53

    if-lez v53, :cond_7b7

    .line 603
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "getAllWhitelistedApps - Size-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/16 v40, 0x0

    .line 605
    .restart local v40    # "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 606
    .restart local v8    # "appUid":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27    # "i$":Ljava/util/Iterator;
    :cond_68e
    :goto_68e
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_760

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/content/ContentValues;

    .line 607
    .local v52, "value":Landroid/content/ContentValues;
    const-string v53, "appPackage"

    invoke-virtual/range {v52 .. v53}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 608
    const-string v53, "appUid"

    invoke-virtual/range {v52 .. v53}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I
    :try_end_6a9
    .catch Ljava/lang/Exception; {:try_start_656 .. :try_end_6a9} :catch_736

    move-result v8

    .line 610
    :try_start_6aa
    const-string v53, "*"

    move-object/from16 v0, v40

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_68e

    .line 613
    const/16 v53, 0x3e8

    move/from16 v0, v53

    if-eq v8, v0, :cond_68e

    if-eqz v8, :cond_68e

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_68e

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Caching WhiteList app id-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", packageName-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_713
    .catch Ljava/lang/Exception; {:try_start_6aa .. :try_end_713} :catch_715

    goto/16 :goto_68e

    .line 620
    :catch_715
    move-exception v17

    .line 621
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_716
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_734
    .catch Ljava/lang/Exception; {:try_start_716 .. :try_end_734} :catch_736

    goto/16 :goto_68e

    .line 670
    .end local v8    # "appUid":I
    .end local v14    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v52    # "value":Landroid/content/ContentValues;
    :catch_736
    move-exception v17

    .line 671
    .restart local v17    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception -"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_755
    :goto_755
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOAD_WHITELIST_AND_EXEMPT_APPS block ended****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 625
    .restart local v8    # "appUid":I
    .restart local v14    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v27    # "i$":Ljava/util/Iterator;
    .restart local v40    # "packageName":Ljava/lang/String;
    :cond_760
    :try_start_760
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 626
    .restart local v22    # "entries":Ljava/util/Iterator;
    :goto_772
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_7c1

    .line 627
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 628
    .restart local v25    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .line 629
    .restart local v32    # "key":Ljava/lang/Integer;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/String;

    .line 630
    .local v52, "value":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "WHITELIST App UID = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", App package = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_772

    .line 633
    .end local v8    # "appUid":I
    .end local v22    # "entries":Ljava/util/Iterator;
    .end local v25    # "entry":Ljava/util/Map$Entry;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v32    # "key":Ljava/lang/Integer;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v52    # "value":Ljava/lang/String;
    :cond_7b7
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string/jumbo v54, "getAllWhitelistedApps DB is empty..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_7c1
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAllExemptedApps()Ljava/util/ArrayList;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1900(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v15

    .line 637
    .local v15, "cvList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v15, :cond_8f8

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v53

    if-lez v53, :cond_8f8

    .line 638
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "getAllExemptedApps - Size-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/16 v40, 0x0

    .line 640
    .restart local v40    # "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 641
    .restart local v8    # "appUid":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27    # "i$":Ljava/util/Iterator;
    :cond_7f9
    :goto_7f9
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_8a1

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/content/ContentValues;

    .line 642
    .local v52, "value":Landroid/content/ContentValues;
    const-string v53, "appPackage"

    invoke-virtual/range {v52 .. v53}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 643
    const-string v53, "appUid"

    invoke-virtual/range {v52 .. v53}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I
    :try_end_814
    .catch Ljava/lang/Exception; {:try_start_760 .. :try_end_814} :catch_736

    move-result v8

    .line 645
    :try_start_815
    const-string v53, "com.samsung.knox.virtual.wifi"

    move-object/from16 v0, v40

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_7f9

    .line 648
    const/16 v53, 0x3e8

    move/from16 v0, v53

    if-eq v8, v0, :cond_7f9

    if-eqz v8, :cond_7f9

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_7f9

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Caching Exempted app id-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", packageName-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87e
    .catch Ljava/lang/Exception; {:try_start_815 .. :try_end_87e} :catch_880

    goto/16 :goto_7f9

    .line 655
    :catch_880
    move-exception v17

    .line 656
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_881
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7f9

    .line 660
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v52    # "value":Landroid/content/ContentValues;
    :cond_8a1
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 661
    .restart local v22    # "entries":Ljava/util/Iterator;
    :goto_8b3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_755

    .line 662
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 663
    .restart local v25    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .line 664
    .restart local v32    # "key":Ljava/lang/Integer;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/String;

    .line 665
    .local v52, "value":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "EXEPMT-> App UID = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", App package = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b3

    .line 668
    .end local v8    # "appUid":I
    .end local v22    # "entries":Ljava/util/Iterator;
    .end local v25    # "entry":Ljava/util/Map$Entry;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v32    # "key":Ljava/lang/Integer;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v52    # "value":Ljava/lang/String;
    :cond_8f8
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string/jumbo v54, "getAllExemptedApps DB is empty..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_902
    .catch Ljava/lang/Exception; {:try_start_881 .. :try_end_902} :catch_736

    goto/16 :goto_755

    .line 677
    .end local v14    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15    # "cvList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :pswitch_904
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_SYNC_UP_DATA block started****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :try_start_90d
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 680
    .restart local v16    # "data":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    const/16 v54, 0x0

    const/16 v55, 0x11

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move/from16 v2, v55

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAllUsers()Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$2000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v7

    .line 682
    .local v7, "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_9d5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v53

    if-lez v53, :cond_9d5

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v53

    const-string/jumbo v54, "user"

    invoke-virtual/range {v53 .. v54}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserManager;

    .line 684
    .local v36, "mUm":Landroid/os/UserManager;
    invoke-virtual/range {v36 .. v36}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v51

    .line 685
    .local v51, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v51 .. v51}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27    # "i$":Ljava/util/Iterator;
    :cond_952
    :goto_952
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_ccc

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/content/pm/UserInfo;

    .line 686
    .local v50, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v50

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v49, v0

    .line 687
    .restart local v49    # "userId":I
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Valid userid-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_952

    .line 689
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Found userid on cache-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_9b5
    .catch Ljava/lang/Exception; {:try_start_90d .. :try_end_9b5} :catch_9b6

    goto :goto_952

    .line 700
    .end local v7    # "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "data":Landroid/os/Bundle;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v36    # "mUm":Landroid/os/UserManager;
    .end local v49    # "userId":I
    .end local v50    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v51    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_9b6
    move-exception v17

    .line 701
    .restart local v17    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_9d5
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v48, "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v44

    .line 707
    .local v44, "pm":Landroid/content/pm/IPackageManager;
    :try_start_9de
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27    # "i$":Ljava/util/Iterator;
    :cond_9ec
    :goto_9ec
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_a71

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 708
    .local v4, "adminId":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA adminId-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v53

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .line 710
    .restart local v42    # "pkgs":[Ljava/lang/String;
    if-nez v42, :cond_d22

    .line 711
    move-object/from16 v0, v48

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_9ec

    .line 712
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA remove adminid : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    move-object/from16 v0, v48

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a51
    .catch Ljava/lang/Exception; {:try_start_9de .. :try_end_a51} :catch_a52

    goto :goto_9ec

    .line 726
    .end local v4    # "adminId":Ljava/lang/Integer;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v42    # "pkgs":[Ljava/lang/String;
    :catch_a52
    move-exception v18

    .line 727
    .local v18, "e1":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .end local v18    # "e1":Ljava/lang/Exception;
    :cond_a71
    :try_start_a71
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 732
    .restart local v22    # "entries":Ljava/util/Iterator;
    :cond_a83
    :goto_a83
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_b3b

    .line 733
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 734
    .restart local v25    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .line 735
    .restart local v32    # "key":Ljava/lang/Integer;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/String;

    .line 736
    .restart local v52    # "value":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA plugin id -"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA plugin package -"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v53

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .line 739
    .restart local v42    # "pkgs":[Ljava/lang/String;
    if-nez v42, :cond_d69

    .line 740
    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_a83

    .line 741
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA remove plugin : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b1a
    .catch Ljava/lang/Exception; {:try_start_a71 .. :try_end_b1a} :catch_b1c

    goto/16 :goto_a83

    .line 753
    .end local v22    # "entries":Ljava/util/Iterator;
    .end local v25    # "entry":Ljava/util/Map$Entry;
    .end local v32    # "key":Ljava/lang/Integer;
    .end local v42    # "pkgs":[Ljava/lang/String;
    .end local v52    # "value":Ljava/lang/String;
    :catch_b1c
    move-exception v19

    .line 754
    .local v19, "e2":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .end local v19    # "e2":Ljava/lang/Exception;
    :cond_b3b
    :try_start_b3b
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 759
    .local v23, "entries1":Ljava/util/Iterator;
    :cond_b4d
    :goto_b4d
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_be0

    .line 760
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 761
    .restart local v25    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .line 762
    .restart local v32    # "key":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA exempt app id -"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v53

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .line 764
    .restart local v42    # "pkgs":[Ljava/lang/String;
    if-nez v42, :cond_b4d

    .line 765
    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_b4d

    .line 766
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA remove exempt app : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bc0
    .catch Ljava/lang/Exception; {:try_start_b3b .. :try_end_bc0} :catch_bc1

    goto :goto_b4d

    .line 771
    .end local v23    # "entries1":Ljava/util/Iterator;
    .end local v25    # "entry":Ljava/util/Map$Entry;
    .end local v32    # "key":Ljava/lang/Integer;
    .end local v42    # "pkgs":[Ljava/lang/String;
    :catch_bc1
    move-exception v20

    .line 772
    .local v20, "e3":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .end local v20    # "e3":Ljava/lang/Exception;
    :cond_be0
    :try_start_be0
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 777
    .local v24, "entries2":Ljava/util/Iterator;
    :cond_bf2
    :goto_bf2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_c85

    .line 778
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 779
    .restart local v25    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .line 780
    .restart local v32    # "key":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA Whitelist app id -"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v53

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .line 782
    .restart local v42    # "pkgs":[Ljava/lang/String;
    if-nez v42, :cond_bf2

    .line 783
    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_bf2

    .line 784
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA remove Whitelist app : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c65
    .catch Ljava/lang/Exception; {:try_start_be0 .. :try_end_c65} :catch_c66

    goto :goto_bf2

    .line 789
    .end local v24    # "entries2":Ljava/util/Iterator;
    .end local v25    # "entry":Ljava/util/Map$Entry;
    .end local v32    # "key":Ljava/lang/Integer;
    .end local v42    # "pkgs":[Ljava/lang/String;
    :catch_c66
    move-exception v21

    .line 790
    .local v21, "e4":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .end local v21    # "e4":Ljava/lang/Exception;
    :cond_c85
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v53

    if-lez v53, :cond_dcc

    .line 794
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v53

    move/from16 v0, v53

    new-array v13, v0, [I

    .line 795
    .local v13, "cleanUids":[I
    const/16 v26, 0x0

    .line 796
    .local v26, "i":I
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27    # "i$":Ljava/util/Iterator;
    :goto_c99
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_da2

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    .line 797
    .local v30, "id":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "adding clean app id-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v53

    aput v53, v13, v26

    .line 799
    add-int/lit8 v26, v26, 0x1

    .line 800
    goto :goto_c99

    .line 693
    .end local v13    # "cleanUids":[I
    .end local v26    # "i":I
    .end local v30    # "id":Ljava/lang/Integer;
    .end local v44    # "pm":Landroid/content/pm/IPackageManager;
    .end local v48    # "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "data":Landroid/os/Bundle;
    .restart local v36    # "mUm":Landroid/os/UserManager;
    .restart local v51    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_ccc
    :try_start_ccc
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_cd0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_9d5

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Integer;

    .line 694
    .local v49, "userId":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "InValid userid-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    const/16 v54, 0x1

    invoke-virtual/range {v53 .. v54}, obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 696
    .local v12, "cleanMsg":Landroid/os/Message;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move/from16 v0, v53

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v12}, sendMessage(Landroid/os/Message;)Z
    :try_end_d21
    .catch Ljava/lang/Exception; {:try_start_ccc .. :try_end_d21} :catch_9b6

    goto :goto_cd0

    .line 717
    .end local v7    # "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "cleanMsg":Landroid/os/Message;
    .end local v16    # "data":Landroid/os/Bundle;
    .end local v36    # "mUm":Landroid/os/UserManager;
    .end local v49    # "userId":Ljava/lang/Integer;
    .end local v51    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "adminId":Ljava/lang/Integer;
    .restart local v42    # "pkgs":[Ljava/lang/String;
    .restart local v44    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v48    # "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_d22
    :try_start_d22
    const-string v53, "com.sec.enterprise.permission.KNOX_UCM_ESE"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v54

    move-object/from16 v0, v44

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v53

    if-eqz v53, :cond_d46

    const-string v53, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v54

    move-object/from16 v0, v44

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v53

    if-nez v53, :cond_d51

    .line 719
    :cond_d46
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "  Admin has valid permission. Processing further..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9ec

    .line 721
    :cond_d51
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "  Admin don\'t has UCS permission..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v54

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->processAdminLicenseExpiry(I)V
    invoke-static/range {v53 .. v54}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$2100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    :try_end_d67
    .catch Ljava/lang/Exception; {:try_start_d22 .. :try_end_d67} :catch_a52

    goto/16 :goto_9ec

    .line 745
    .end local v4    # "adminId":Ljava/lang/Integer;
    .end local v27    # "i$":Ljava/util/Iterator;
    .restart local v22    # "entries":Ljava/util/Iterator;
    .restart local v25    # "entry":Ljava/util/Map$Entry;
    .restart local v32    # "key":Ljava/lang/Integer;
    .restart local v52    # "value":Ljava/lang/String;
    :cond_d69
    :try_start_d69
    const-string v53, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v54

    move-object/from16 v0, v44

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v53

    if-nez v53, :cond_d86

    .line 746
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "  Agent has UCS PLUGIN permission. Processing further..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a83

    .line 748
    :cond_d86
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "  Agent don\'t has UCS PLUGIN permission. Notifying admin.."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    const/16 v54, 0x2

    move-object/from16 v0, v53

    move/from16 v1, v54

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyLicenseStatus(ILjava/lang/String;)Z
    :try_end_da0
    .catch Ljava/lang/Exception; {:try_start_d69 .. :try_end_da0} :catch_b1c

    goto/16 :goto_a83

    .line 802
    .end local v22    # "entries":Ljava/util/Iterator;
    .end local v25    # "entry":Ljava/util/Map$Entry;
    .end local v32    # "key":Ljava/lang/Integer;
    .end local v42    # "pkgs":[Ljava/lang/String;
    .end local v52    # "value":Ljava/lang/String;
    .restart local v13    # "cleanUids":[I
    .restart local v26    # "i":I
    .restart local v27    # "i$":Ljava/util/Iterator;
    :cond_da2
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    const/16 v54, 0x3

    invoke-virtual/range {v53 .. v54}, obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 803
    .restart local v12    # "cleanMsg":Landroid/os/Message;
    iput-object v13, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 804
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "MSG_SYNC_UP_DATA calling MSG_CLEAN_INFO..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v12}, sendMessage(Landroid/os/Message;)Z

    .line 808
    .end local v12    # "cleanMsg":Landroid/os/Message;
    .end local v13    # "cleanUids":[I
    .end local v26    # "i":I
    .end local v27    # "i$":Ljava/util/Iterator;
    :cond_dcc
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_SYNC_UP_DATA block ended****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    .end local v44    # "pm":Landroid/content/pm/IPackageManager;
    .end local v48    # "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_dd5
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOCK_STATUS_UPDATE block started****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    if-eqz v53, :cond_e2d

    .line 813
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string/jumbo v54, "notifyChangeToPlugin is called for Lock status update..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v53

    const-string/jumbo v54, "keyguard"

    invoke-virtual/range {v53 .. v54}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/KeyguardManager;

    .line 816
    .local v33, "km":Landroid/app/KeyguardManager;
    invoke-virtual/range {v33 .. v33}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v31

    .line 818
    .local v31, "isLocked":Z
    :try_start_e05
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 819
    .restart local v16    # "data":Landroid/os/Bundle;
    const-string/jumbo v53, "userId"

    const/16 v54, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 820
    if-eqz v31, :cond_e38

    .line 821
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    const/16 v54, 0x0

    const/16 v55, 0xf

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move/from16 v2, v55

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_e2d
    .catch Ljava/lang/Exception; {:try_start_e05 .. :try_end_e2d} :catch_e4c

    .line 828
    .end local v16    # "data":Landroid/os/Bundle;
    .end local v31    # "isLocked":Z
    .end local v33    # "km":Landroid/app/KeyguardManager;
    :cond_e2d
    :goto_e2d
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOCK_STATUS_UPDATE block ended****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 823
    .restart local v16    # "data":Landroid/os/Bundle;
    .restart local v31    # "isLocked":Z
    .restart local v33    # "km":Landroid/app/KeyguardManager;
    :cond_e38
    :try_start_e38
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    const/16 v54, 0x0

    const/16 v55, 0x10

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move/from16 v2, v55

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_e4b
    .catch Ljava/lang/Exception; {:try_start_e38 .. :try_end_e4b} :catch_e4c

    goto :goto_e2d

    .line 824
    .end local v16    # "data":Landroid/os/Bundle;
    :catch_e4c
    move-exception v17

    .line 825
    .restart local v17    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2d

    .line 426
    nop

    :pswitch_data_e6e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_af
        :pswitch_148
        :pswitch_4e2
        :pswitch_64d
        :pswitch_904
        :pswitch_dd5
        :pswitch_a
    .end packed-switch
.end method
