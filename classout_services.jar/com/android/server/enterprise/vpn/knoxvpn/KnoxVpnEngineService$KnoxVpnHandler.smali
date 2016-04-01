.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;
.super Landroid/os/Handler;
.source "KnoxVpnEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KnoxVpnHandler"
.end annotation


# static fields
.field private static final ACTION_AIRPLANE_MODE_TURNED_ON:I = 0x14

.field private static final ACTION_BOOT_COMPLETED:I = 0xf

.field private static final ACTION_CONTAINER_ADMIN_CHANGED:I = 0xc

.field private static final ACTION_INITIALIZE_VPN:I = 0x8

.field private static final ACTION_MDM_VPN_RETRY:I = 0xb

.field private static final ACTION_MIGRATE_KNOX10_KNOX20:I = 0xa

.field private static final ACTION_PACKAGE_ADDED:I = 0x2

.field private static final ACTION_PACKAGE_REMOVED:I = 0x3

.field private static final ACTION_PROXY_CONFIG_STATUS:I = 0x11

.field private static final ACTION_REMOVE_CREDENTIALS_KEYSTORE:I = 0x10

.field private static final ACTION_SEND_PROXY_BROADCAST:I = 0x12

.field private static final ACTION_USER_PRESENT:I = 0x15

.field private static final ACTION_USER_REMOVED:I = 0x6

.field private static final ACTION_USER_STARTED:I = 0x9

.field private static final ACTION_USER_SWITCHED:I = 0xd

.field private static final ACTION_VPN_INTERFACE_STATUS:I = 0x1

.field private static final ADMIN_REMOVAL_ACTION:I = 0x13

.field private static final CONNECTIVITY_ACTION:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "loop"    # Landroid/os/Looper;

    .prologue
    .line 3044
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 3045
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3046
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3050
    const-string v6, "KnoxVpnEngineService"

    const-string/jumbo v7, "vpn handle : Message received"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 3052
    .local v1, "map":Landroid/os/Bundle;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_ac

    .line 3121
    :goto_11
    :pswitch_11
    return-void

    .line 3054
    :pswitch_12
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleVpnInterfaceState(Landroid/os/Bundle;)V
    invoke-static {v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_11

    .line 3057
    :pswitch_18
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionPackageAdded(Landroid/os/Bundle;)V
    invoke-static {v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_11

    .line 3060
    :pswitch_1e
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionPackageRemoved(Landroid/os/Bundle;)V

    goto :goto_11

    .line 3063
    :pswitch_24
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleConnectivityAction(Landroid/os/Bundle;)V
    invoke-static {v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_11

    .line 3069
    :pswitch_2a
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionUserRemoved(Landroid/os/Bundle;)V
    invoke-static {v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_11

    .line 3075
    :pswitch_30
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeHashtable()V
    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    .line 3076
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addBlockingRulesForPackages()V
    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    .line 3077
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->registerPersonaObserverForVpn()V
    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    goto :goto_11

    .line 3080
    :pswitch_40
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionBootCompleted(Landroid/os/Bundle;)V
    invoke-static {v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_11

    .line 3083
    :pswitch_46
    const-string v6, "android.intent.extra.user_handle"

    const/16 v7, -0x2710

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3084
    .local v5, "userId":I
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionUserStarted(I)V
    invoke-static {v6, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    .line 3085
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateProxyForProfile(I)V
    invoke-static {v6, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    goto :goto_11

    .line 3091
    .end local v5    # "userId":I
    :pswitch_59
    const-string/jumbo v6, "extra_profile_name"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3092
    .local v3, "temp":Ljava/lang/String;
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnProfile(Ljava/lang/String;)I
    invoke-static {v6, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)I

    goto :goto_11

    .line 3095
    .end local v3    # "temp":Ljava/lang/String;
    :pswitch_66
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionAdminChanged(Landroid/os/Bundle;)V
    invoke-static {v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_11

    .line 3098
    :pswitch_6c
    const-string/jumbo v6, "profileName"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3099
    .local v2, "profileName":Ljava/lang/String;
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->removeProfileCredentials(Ljava/lang/String;)V

    goto :goto_11

    .line 3102
    .end local v2    # "profileName":Ljava/lang/String;
    :pswitch_7d
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updatePacStatus(Landroid/os/Bundle;)V
    invoke-static {v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_11

    .line 3105
    :pswitch_83
    const-string/jumbo v6, "uid"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 3106
    .local v4, "uid":I
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendProxyBroadcast(I)V
    invoke-static {v6, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    goto :goto_11

    .line 3109
    .end local v4    # "uid":I
    :pswitch_90
    const-string/jumbo v6, "uid"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3110
    .local v0, "adminUid":I
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopVpnConnectionAfterAdminRemoval(I)V
    invoke-static {v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    goto/16 :goto_11

    .line 3113
    .end local v0    # "adminUid":I
    :pswitch_9e
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopVpnConnectionForAirplaneMode()V
    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    goto/16 :goto_11

    .line 3116
    :pswitch_a5
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleUserScreenUnlock()V
    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    goto/16 :goto_11

    .line 3052
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_12
        :pswitch_18
        :pswitch_1e
        :pswitch_24
        :pswitch_11
        :pswitch_2a
        :pswitch_11
        :pswitch_30
        :pswitch_46
        :pswitch_11
        :pswitch_59
        :pswitch_66
        :pswitch_11
        :pswitch_11
        :pswitch_40
        :pswitch_6c
        :pswitch_7d
        :pswitch_83
        :pswitch_90
        :pswitch_9e
        :pswitch_a5
    .end packed-switch
.end method
