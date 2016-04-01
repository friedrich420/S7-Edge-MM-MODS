.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V
    .registers 2

    .prologue
    .line 2597
    iput-object p1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private cleanupUpstream()V
    .registers 8

    .prologue
    .line 2616
    const-string v2, "Tethering"

    const-string/jumbo v3, "in cleanupstream and mMyUpstreamIfaceName "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v2, :cond_16f

    .line 2624
    :try_start_e
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commeted mStatsService.forceUpdate() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    const-string/jumbo v3, "wlan0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 2629
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2630
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_49} :catch_db

    .line 2641
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_49
    :try_start_49
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5c} :catch_fa

    .line 2647
    :goto_5c
    :try_start_5c
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling NAT - Tethered Iface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMyUpstreamIfaceName= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    sget v5, Landroid/system/OsConstants;->AF_INET:I

    sget-object v6, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->UPSTREAM_IFACE_REMOVED:Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    # invokes: Lcom/android/server/connectivity/Tethering;->sendUpstreamIfaceChangeBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/connectivity/Tethering;->access$5800(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_ac} :catch_119

    .line 2660
    :goto_ac
    :try_start_ac
    const-string v2, "SKT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c0

    const-string v2, "KOO"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    .line 2662
    :cond_c0
    const-string v2, "Tethering"

    const-string/jumbo v3, "don\'t sent RA, It can cause deactivation of some PDN "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c8} :catch_150

    .line 2671
    :goto_c8
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    .line 2676
    :goto_cd
    return-void

    .line 2632
    :cond_ce
    :try_start_ce
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$5700(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d9} :catch_db

    goto/16 :goto_49

    .line 2637
    :catch_db
    move-exception v0

    .line 2638
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in forceUpdate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 2642
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_fa
    move-exception v0

    .line 2643
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in removeInterfaceForward: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 2654
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_119
    move-exception v0

    .line 2655
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in disableNat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ac

    .line 2664
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_138
    :try_start_138
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const-string/jumbo v3, "false"

    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mActualUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_14e} :catch_150

    goto/16 :goto_c8

    .line 2666
    :catch_150
    move-exception v0

    .line 2667
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception update RA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c8

    .line 2674
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_16f
    const-string v2, "Tethering"

    const-string v3, "cleanupUpstream() mMyUpstreamIfaceName = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cd
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 2601
    :try_start_0
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_3f

    .line 2609
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tethered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setAvailable(Z)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$3900(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 2611
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setTethered(Z)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 2612
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$4100(Lcom/android/server/connectivity/Tethering;)V

    .line 2613
    :goto_3e
    return-void

    .line 2602
    :catch_3f
    move-exception v0

    .line 2603
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Tethering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x6

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2606
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$5600(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_3e
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2681
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TetheredState.processMessage what="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    const/4 v4, 0x1

    .line 2683
    .local v4, "retValue":Z
    const/4 v1, 0x0

    .line 2684
    .local v1, "error":Z
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_48c

    .line 2892
    :pswitch_21
    const/4 v4, 0x0

    :goto_22
    move v7, v4

    .line 2895
    :goto_23
    return v7

    .line 2700
    :pswitch_24
    invoke-direct {p0}, cleanupUpstream()V

    .line 2702
    :try_start_27
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calling nwserice to untether ifcae "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_52} :catch_b9

    .line 2709
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    const/4 v8, 0x2

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2711
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_6b

    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0x14

    if-ne v7, v8, :cond_c2

    .line 2715
    :cond_6b
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v7, :cond_83

    .line 2716
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v8, 0x0

    # invokes: Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering;->access$3800(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v7

    if-nez v7, :cond_83

    .line 2717
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v8, 0xa

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2722
    :cond_83
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0x14

    if-ne v7, v8, :cond_90

    .line 2723
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->showDialogOnInternetSharingBlockedByActiveSync()V
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$4700(Lcom/android/server/connectivity/Tethering;)V

    .line 2726
    :cond_90
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v8

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$5900(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 2730
    :cond_9b
    :goto_9b
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Untethered "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 2704
    :catch_b9
    move-exception v0

    .line 2705
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_22

    .line 2727
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c2
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_9b

    .line 2728
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/State;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v8

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$6000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_9b

    .line 2734
    :pswitch_d3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    move-object v2, v7

    check-cast v2, Ljava/util/HashMap;

    .line 2735
    .local v2, "ifaceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "iface"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2736
    .local v3, "newUpstreamIfaceName":Ljava/lang/String;
    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const-string v7, "actualIface"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mActualUpstreamIfaceName:Ljava/lang/String;

    .line 2738
    const-string v5, ""

    .line 2739
    .local v5, "tempLog":Ljava/lang/String;
    if-eqz v3, :cond_10b

    .line 2740
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "newUpstreamIfaceName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2742
    :cond_10b
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mActualUpstreamIfaceName:Ljava/lang/String;

    if-eqz v7, :cond_12c

    .line 2743
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mActualUpstreamIfaceName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mActualUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2745
    :cond_12c
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v7, :cond_14d

    .line 2746
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mMyUpstreamIfaceName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2748
    :cond_14d
    const-string v7, "Tethering"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-nez v7, :cond_163

    if-nez v3, :cond_163

    .line 2751
    const-string v7, "Tethering"

    const-string v8, "Connection changed noop - dropping"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 2753
    :cond_163
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v7, :cond_1f5

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f5

    .line 2755
    :try_start_173
    const-string v7, "SKT"

    const-string v8, "EUR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_187

    const-string v7, "KOO"

    const-string v8, "EUR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d5

    .line 2757
    :cond_187
    const-string v7, "Tethering"

    const-string/jumbo v8, "don\'t sent RA, It can cause deactivation of some PDN "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_18f} :catch_191

    goto/16 :goto_22

    .line 2763
    :catch_191
    move-exception v0

    .line 2764
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception update RA: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    invoke-direct {p0}, cleanupUpstream()V

    .line 2767
    :try_start_1b1
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1c0} :catch_489

    .line 2769
    :goto_1c0
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v8, 0x8

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2770
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v8

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$6100(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 2771
    const/4 v7, 0x1

    goto/16 :goto_23

    .line 2759
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1d5
    :try_start_1d5
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v7

    const-string/jumbo v8, "true"

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v10, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mActualUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8, v9, v10}, Landroid/os/INetworkManagementService;->updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2760
    const-string v7, "Tethering"

    const-string/jumbo v8, "update RA when the address is changed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1f3} :catch_191

    goto/16 :goto_22

    .line 2775
    :cond_1f5
    invoke-direct {p0}, cleanupUpstream()V

    .line 2776
    if-eqz v3, :cond_2cf

    .line 2778
    :try_start_1fa
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enabling NAT - Tethered Iface = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newUpstreamIfaceName ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8, v3}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 2781
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8, v3}, Landroid/os/INetworkManagementService;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    sget v9, Landroid/system/OsConstants;->AF_INET:I

    sget-object v10, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->UPSTREAM_IFACE_ADDED:Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    # invokes: Lcom/android/server/connectivity/Tethering;->sendUpstreamIfaceChangeBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    invoke-static {v7, v3, v8, v9, v10}, Lcom/android/server/connectivity/Tethering;->access$5800(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    :try_end_24d
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_24d} :catch_2fe

    .line 2805
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mConfigNetworkTypeCapability:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$3700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2a1

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mConfigNetworkTypeCapability:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$3700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-VZW-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2a1

    .line 2806
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v7, v3}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a1

    .line 2807
    const-string/jumbo v7, "ncm0"

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34e

    .line 2808
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "interface is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", so skip block"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    :cond_2a1
    :goto_2a1
    :try_start_2a1
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v7

    const-string/jumbo v8, "true"

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/os/INetworkManagementService;->joinMulticastGroup(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_2b3} :catch_397

    .line 2832
    :goto_2b3
    :try_start_2b3
    const-string v7, "SKT"

    const-string v8, "EUR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c7

    const-string v7, "KOO"

    const-string v8, "EUR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b6

    .line 2834
    :cond_2c7
    const-string v7, "Tethering"

    const-string/jumbo v8, "don\'t sent RA, It can cause deactivation of some PDN "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2cf
    .catch Ljava/lang/Exception; {:try_start_2b3 .. :try_end_2cf} :catch_3ce

    .line 2852
    :cond_2cf
    :goto_2cf
    const-string v7, "TEL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f8

    .line 2854
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$6400(Lcom/android/server/connectivity/Tethering;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2f8

    .line 2855
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 2858
    :cond_2f8
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iput-object v3, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    goto/16 :goto_22

    .line 2788
    :catch_2fe
    move-exception v0

    .line 2789
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception enabling Nat: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    :try_start_31b
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8, v3}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32a
    .catch Ljava/lang/Exception; {:try_start_31b .. :try_end_32a} :catch_486

    .line 2794
    :goto_32a
    :try_start_32a
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_339
    .catch Ljava/lang/Exception; {:try_start_32a .. :try_end_339} :catch_483

    .line 2797
    :goto_339
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v8, 0x8

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2798
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v8

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$6200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 2799
    const/4 v7, 0x1

    goto/16 :goto_23

    .line 2811
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_34e
    const-string v7, "Tethering"

    const-string/jumbo v8, "wifi is connected, so tethering blocked"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    const-string v6, "Tethering Disabled. WIFI is connected"

    .line 2813
    .local v6, "toastmsg":Ljava/lang/String;
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 2814
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering;->access$3400(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_380

    .line 2815
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_2a1

    .line 2816
    :cond_380
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a1

    .line 2817
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$4100(Lcom/android/server/connectivity/Tethering;)V

    goto/16 :goto_2a1

    .line 2826
    .end local v6    # "toastmsg":Ljava/lang/String;
    :catch_397
    move-exception v0

    .line 2827
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception join multicast group: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b3

    .line 2836
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3b6
    :try_start_3b6
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v7

    const-string/jumbo v8, "true"

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v10, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mActualUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8, v9, v10}, Landroid/os/INetworkManagementService;->updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3cc
    .catch Ljava/lang/Exception; {:try_start_3b6 .. :try_end_3cc} :catch_3ce

    goto/16 :goto_2cf

    .line 2838
    :catch_3ce
    move-exception v0

    .line 2839
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception update RA: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    invoke-direct {p0}, cleanupUpstream()V

    .line 2842
    :try_start_3ee
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_3fd
    .catch Ljava/lang/Exception; {:try_start_3ee .. :try_end_3fd} :catch_480

    .line 2844
    :goto_3fd
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v8, 0x8

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2845
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v8

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$6300(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 2846
    const/4 v7, 0x1

    goto/16 :goto_23

    .line 2866
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ifaceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "newUpstreamIfaceName":Ljava/lang/String;
    .end local v5    # "tempLog":Ljava/lang/String;
    :pswitch_412
    const/4 v1, 0x1

    .line 2869
    :pswitch_413
    invoke-direct {p0}, cleanupUpstream()V

    .line 2871
    :try_start_416
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_425
    .catch Ljava/lang/Exception; {:try_start_416 .. :try_end_425} :catch_42f

    .line 2877
    if-eqz v1, :cond_438

    .line 2878
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_22

    .line 2872
    :catch_42f
    move-exception v0

    .line 2873
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_22

    .line 2882
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_438
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tether lost upstream connection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$4100(Lcom/android/server/connectivity/Tethering;)V

    .line 2884
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v7, :cond_473

    .line 2885
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v8, 0x0

    # invokes: Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering;->access$3800(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v7

    if-nez v7, :cond_473

    .line 2886
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v8, 0xa

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2889
    :cond_473
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v8

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$6500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_22

    .line 2843
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ifaceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "newUpstreamIfaceName":Ljava/lang/String;
    .restart local v5    # "tempLog":Ljava/lang/String;
    :catch_480
    move-exception v7

    goto/16 :goto_3fd

    .line 2795
    :catch_483
    move-exception v7

    goto/16 :goto_339

    .line 2792
    :catch_486
    move-exception v7

    goto/16 :goto_32a

    .line 2768
    :catch_489
    move-exception v7

    goto/16 :goto_1c0

    .line 2684
    :pswitch_data_48c
    .packed-switch 0x1
        :pswitch_413
        :pswitch_21
        :pswitch_24
        :pswitch_24
        :pswitch_21
        :pswitch_412
        :pswitch_412
        :pswitch_412
        :pswitch_412
        :pswitch_412
        :pswitch_412
        :pswitch_d3
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method
