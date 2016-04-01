.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimChangeBroadcastReceiver"
.end annotation


# instance fields
.field private final mGenerationNumber:I

.field private mSimAbsentSeen:Z

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)V
    .registers 4
    .param p2, "generationNumber"    # I

    .prologue
    .line 3631
    iput-object p1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 3632
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3629
    const/4 v0, 0x0

    iput-boolean v0, p0, mSimAbsentSeen:Z

    .line 3633
    iput p2, p0, mGenerationNumber:I

    .line 3634
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3639
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "simchange mGenerationNumber="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, mGenerationNumber:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", current generationNumber="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    iget v11, p0, mGenerationNumber:I

    iget-object v12, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-eq v11, v12, :cond_3e

    .line 3693
    :cond_3d
    :goto_3d
    return-void

    .line 3644
    :cond_3e
    const-string/jumbo v11, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3647
    .local v7, "state":Ljava/lang/String;
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "got Sim changed to state "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mSimAbsentSeen="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, mSimAbsentSeen:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    iget-boolean v11, p0, mSimAbsentSeen:Z

    if-nez v11, :cond_7b

    const-string v11, "ABSENT"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    .line 3650
    const/4 v11, 0x1

    iput-boolean v11, p0, mSimAbsentSeen:Z

    .line 3653
    :cond_7b
    iget-boolean v11, p0, mSimAbsentSeen:Z

    if-eqz v11, :cond_3d

    const-string v11, "LOADED"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3d

    .line 3654
    const/4 v11, 0x0

    iput-boolean v11, p0, mSimAbsentSeen:Z

    .line 3656
    :try_start_8a
    iget-object v11, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x104001a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_18e

    .line 3658
    iget-object v11, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x104001c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3660
    .local v8, "tetherService":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3661
    .local v10, "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v11, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_c4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8a .. :try_end_c4} :catch_10f

    .line 3662
    :try_start_c4
    iget-object v11, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 3663
    .local v4, "ifaces":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_d4
    :goto_d4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_148

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3664
    .local v3, "iface":Ljava/lang/Object;
    iget-object v11, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3665
    .local v5, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v5, :cond_d4

    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v11

    if-eqz v11, :cond_d4

    .line 3666
    iget-object v11, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v13, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v13, v11}, Lcom/android/server/connectivity/Tethering;->access$3400(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11a

    .line 3667
    new-instance v11, Ljava/lang/Integer;

    const/4 v13, 0x1

    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d4

    .line 3675
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iface":Ljava/lang/Object;
    .end local v4    # "ifaces":Ljava/util/Set;
    .end local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_10c
    move-exception v11

    monitor-exit v12
    :try_end_10e
    .catchall {:try_start_c4 .. :try_end_10e} :catchall_10c

    :try_start_10e
    throw v11
    :try_end_10f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10e .. :try_end_10f} :catch_10f

    .line 3688
    .end local v8    # "tetherService":Ljava/lang/String;
    .end local v10    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_10f
    move-exception v1

    .line 3689
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v11, "Tethering"

    const-string/jumbo v12, "no prov-check needed for new SIM"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 3668
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "iface":Ljava/lang/Object;
    .restart local v4    # "ifaces":Ljava/util/Set;
    .restart local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .restart local v8    # "tetherService":Ljava/lang/String;
    .restart local v10    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_11a
    :try_start_11a
    iget-object v11, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v13, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v13, v11}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_132

    .line 3669
    new-instance v11, Ljava/lang/Integer;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d4

    .line 3670
    :cond_132
    iget-object v11, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "iface":Ljava/lang/Object;
    invoke-virtual {v11, v3}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d4

    .line 3671
    new-instance v11, Ljava/lang/Integer;

    const/4 v13, 0x2

    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d4

    .line 3675
    .end local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_148
    monitor-exit v12
    :try_end_149
    .catchall {:try_start_11a .. :try_end_149} :catchall_10c

    .line 3676
    :try_start_149
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_184

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 3677
    .local v9, "tetherType":I
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 3678
    .local v6, "startProvIntent":Landroid/content/Intent;
    const-string/jumbo v11, "extraAddTetherType"

    invoke-virtual {v6, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3679
    const-string/jumbo v11, "extraRunProvision"

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3680
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3682
    iget-object v11, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_14d

    .line 3684
    .end local v6    # "startProvIntent":Landroid/content/Intent;
    .end local v9    # "tetherType":I
    :cond_184
    const-string v11, "Tethering"

    const-string/jumbo v12, "re-evaluate provisioning"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 3686
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "ifaces":Ljava/util/Set;
    .end local v8    # "tetherService":Ljava/lang/String;
    .end local v10    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_18e
    const-string v11, "Tethering"

    const-string/jumbo v12, "no prov-check needed for new SIM"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_196
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_149 .. :try_end_196} :catch_10f

    goto/16 :goto_3d
.end method
