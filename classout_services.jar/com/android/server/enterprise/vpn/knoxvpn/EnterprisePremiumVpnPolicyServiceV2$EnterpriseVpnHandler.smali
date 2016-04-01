.class Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;
.super Landroid/os/Handler;
.source "EnterprisePremiumVpnPolicyServiceV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseVpnHandler"
.end annotation


# static fields
.field private static final ACTION_CONTAINER_ADMIN_CHANGED:I = 0xc

.field private static final ACTION_CONTAINER_REMOVED:I = 0xa

.field private static final ACTION_PACKAGE_ADDED:I = 0x2

.field private static final ACTION_PACKAGE_REMOVED:I = 0x3

.field private static final ACTION_RETRY_VPN_CONNECTION:I = 0x6

.field private static final ACTION_START_VPN_AFTER_MIGRATION:I = 0xb

.field private static final ACTION_USER_SWITCHED:I = 0x9

.field private static final ACTION_VPN_INITIALIZE_BIND:I = 0x8

.field private static final ACTION_VPN_INTERFACE_STATUS:I = 0xd

.field private static final CONNECTIVITY_ACTION:I = 0x4

.field private static final ENTERPRISE_STATUS_CALLBACK:I = 0x1

.field private static final GET_STATUS_IDLE:I = 0x1

.field private static final VPN_CONNECT_FAILURE:I = 0x5

.field private static final VPN_CONNECT_READY:I = 0x1

.field private static final VPN_CONNECT_SUCCESS:I = 0x4

.field private static final VPN_PROFILE_CONNECTING:I = 0x2

.field private static final VPN_PROFILE_DELETE:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    .registers 2

    .prologue
    .line 3309
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 51
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3330
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : Message received"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/Bundle;

    .line 3332
    .local v31, "map":Landroid/os/Bundle;
    const/16 v44, -0x1

    .line 3333
    .local v44, "uid":I
    const/16 v48, 0x0

    .line 3334
    .local v48, "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    const/16 v34, 0x0

    .local v34, "packageName":Ljava/lang/String;
    const/16 v37, 0x0

    .local v37, "profileName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 3335
    .local v19, "errorString":Ljava/lang/String;
    const/16 v42, -0x1

    .line 3336
    .local v42, "status":I
    const/4 v11, 0x0

    .line 3337
    .local v11, "check_install_type":Z
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_d1e

    .line 3761
    :cond_26
    :goto_26
    :pswitch_26
    return-void

    .line 3339
    :pswitch_27
    const-string/jumbo v4, "status"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v42

    .line 3340
    const-string/jumbo v4, "profileName"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 3341
    const-string/jumbo v4, "errorString"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3342
    if-nez v19, :cond_46

    .line 3343
    const-string v19, "Empty"

    .line 3345
    :cond_46
    const-string/jumbo v4, "state"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v41

    .line 3346
    .local v41, "state":I
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vpn handle : callback to status : profile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vpn handle : callback to status : Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    const/16 v21, 0x0

    .line 3349
    .local v21, "i":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 3350
    .local v47, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    if-eqz v47, :cond_5ef

    .line 3351
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v27

    .line 3352
    .local v27, "list":Ljava/util/ArrayList;
    if-eqz v27, :cond_26

    .line 3353
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    .line 3354
    .local v10, "array":[Ljava/lang/Object;
    array-length v0, v10

    move/from16 v26, v0

    .line 3355
    .local v26, "length":I
    if-nez v41, :cond_4ad

    .line 3356
    packed-switch v42, :pswitch_data_d3c

    :pswitch_c7
    goto/16 :goto_26

    .line 3416
    :pswitch_c9
    const/16 v21, 0x0

    :goto_cb
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_35d

    .line 3417
    aget-object v48, v10, v21

    .end local v48    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    check-cast v48, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3418
    .restart local v48    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_355

    .line 3419
    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V

    .line 3420
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v44

    .line 3421
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v5

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v6

    const-string v7, "ADD_ALL_PACKAGES"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_328

    .line 3422
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v5

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRulesRange(ILjava/lang/String;I)V

    .line 3423
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;I)V

    .line 3424
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v6

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I
    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v7

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I
    invoke-static {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v6

    move-object/from16 v0, v37

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v4, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3425
    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    .line 3416
    :goto_14b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_cb

    .line 3358
    :pswitch_14f
    const/16 v21, 0x0

    :goto_151
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_1ee

    .line 3359
    aget-object v48, v10, v21

    .end local v48    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    check-cast v48, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3361
    .restart local v48    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_1cb

    .line 3363
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1cb

    .line 3364
    const/4 v4, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V

    .line 3365
    move-object/from16 v0, v48

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    .line 3366
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v44

    .line 3367
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v5

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v6

    const-string v7, "ADD_ALL_PACKAGES"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ce

    .line 3369
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRulesRange(ILjava/lang/String;I)V

    .line 3370
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v6

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I
    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v7

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I
    invoke-static {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v6

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    invoke-static {v4, v0, v5, v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;IILjava/lang/String;)V

    .line 3358
    :cond_1cb
    :goto_1cb
    add-int/lit8 v21, v21, 0x1

    goto :goto_151

    .line 3373
    :cond_1ce
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    const/4 v5, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRules(ILjava/lang/String;I)V

    .line 3374
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v37

    move/from16 v1, v44

    move/from16 v2, v44

    move-object/from16 v3, v19

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1cb

    .line 3378
    :cond_1ee
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpRouteAndPolicyRules(Ljava/lang/String;I)V

    .line 3379
    move-object/from16 v0, v47

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 3380
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    .line 3382
    .local v36, "profileErrorMessageSuccess":Z
    if-eqz v36, :cond_26

    .line 3383
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3384
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lez v4, :cond_237

    .line 3385
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_26

    .line 3387
    :cond_237
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_26

    .line 3392
    .end local v36    # "profileErrorMessageSuccess":Z
    :pswitch_240
    const/16 v21, 0x0

    :goto_242
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_2fb

    .line 3393
    aget-object v48, v10, v21

    .end local v48    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    check-cast v48, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3394
    .restart local v48    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f4

    .line 3395
    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V

    .line 3396
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v5

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v6

    const-string v7, "ADD_ALL_PACKAGES"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c1

    .line 3397
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v5

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRulesRange(ILjava/lang/String;I)V

    .line 3398
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;I)V

    .line 3399
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v6

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I
    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v7

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I
    invoke-static {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v6

    move-object/from16 v0, v37

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v4, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3400
    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    .line 3392
    :goto_2be
    add-int/lit8 v21, v21, 0x1

    goto :goto_242

    .line 3403
    :cond_2c1
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v5

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRules(ILjava/lang/String;I)V

    .line 3404
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;I)V

    .line 3405
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v5

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v6

    move-object/from16 v0, v37

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v4, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3408
    :cond_2f4
    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    goto :goto_2be

    .line 3410
    :cond_2fb
    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 3411
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;)V

    .line 3412
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v4

    if-eqz v4, :cond_319

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3413
    :cond_319
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_26

    .line 3428
    :cond_328
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    const/4 v6, 0x1

    move/from16 v0, v44

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRules(ILjava/lang/String;I)V

    .line 3429
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;I)V

    .line 3430
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v37

    move/from16 v1, v44

    move/from16 v2, v44

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3432
    :cond_355
    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    goto/16 :goto_14b

    .line 3434
    :cond_35d
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;)V

    .line 3435
    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 3436
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v4

    if-eqz v4, :cond_37b

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3437
    :cond_37b
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_26

    .line 3440
    :pswitch_38a
    const/16 v38, 0x0

    .line 3444
    .local v38, "profileRunning":Z
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : Handling VPN CONNECTING state on Network Change"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    const/16 v21, 0x0

    :goto_398
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_453

    .line 3446
    aget-object v48, v10, v21

    .end local v48    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    check-cast v48, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3447
    .restart local v48    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_44c

    .line 3448
    const/16 v38, 0x1

    .line 3449
    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V

    .line 3450
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v5

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v6

    const-string v7, "ADD_ALL_PACKAGES"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_419

    .line 3451
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v5

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRulesRange(ILjava/lang/String;I)V

    .line 3452
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;I)V

    .line 3453
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v6

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I
    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v7

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I
    invoke-static {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v6

    move-object/from16 v0, v37

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v4, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3454
    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    .line 3445
    :goto_416
    add-int/lit8 v21, v21, 0x1

    goto :goto_398

    .line 3457
    :cond_419
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v5

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRules(ILjava/lang/String;I)V

    .line 3458
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;I)V

    .line 3459
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v5

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v6

    move-object/from16 v0, v37

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v4, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3462
    :cond_44c
    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    goto :goto_416

    .line 3464
    :cond_453
    if-eqz v38, :cond_466

    .line 3465
    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 3466
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;)V

    .line 3468
    :cond_466
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v4

    if-eqz v4, :cond_473

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3469
    :cond_473
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_26

    .line 3472
    .end local v38    # "profileRunning":Z
    :pswitch_482
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vpn handle : The Start Connection callback for remove vpn connection method is recieved and its state is  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Status is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 3476
    :cond_4ad
    sparse-switch v42, :sswitch_data_d4c

    goto/16 :goto_26

    .line 3481
    :goto_4b2
    :sswitch_4b2
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : ready status : VPN disconnect successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    const/16 v21, 0x0

    :goto_4be
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_57a

    .line 3483
    aget-object v48, v10, v21

    .end local v48    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    check-cast v48, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3484
    .restart local v48    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_573

    .line 3485
    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V

    .line 3486
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v44

    .line 3487
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v5

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v6

    const-string v7, "ADD_ALL_PACKAGES"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_552

    .line 3488
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v5

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleNatRulesRange(ILjava/lang/String;I)V

    .line 3489
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v6

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I
    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v7

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I
    invoke-static {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    move-result v6

    move-object/from16 v0, v37

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v4, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3490
    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    .line 3482
    :goto_530
    add-int/lit8 v21, v21, 0x1

    goto :goto_4be

    .line 3478
    :sswitch_533
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vpn handle : fail status : VPN disconnect failure"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b2

    .line 3493
    :cond_552
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v5

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleNatRules(ILjava/lang/String;I)V

    .line 3494
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v37

    move/from16 v1, v44

    move/from16 v2, v44

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V

    .line 3496
    :cond_573
    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    goto :goto_530

    .line 3498
    :cond_57a
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;I)V

    .line 3499
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getDefaultInterface()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getV6InterfaceAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->updateDropRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3501
    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 3502
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    .line 3503
    .restart local v36    # "profileErrorMessageSuccess":Z
    if-eqz v36, :cond_5de

    .line 3504
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3505
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lez v4, :cond_5e7

    .line 3506
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3511
    :cond_5de
    :goto_5de
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->runAllVpnService()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_26

    .line 3508
    :cond_5e7
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto :goto_5de

    .line 3516
    .end local v10    # "array":[Ljava/lang/Object;
    .end local v26    # "length":I
    .end local v27    # "list":Ljava/util/ArrayList;
    .end local v36    # "profileErrorMessageSuccess":Z
    :cond_5ef
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : ProfileNameVpnEntry returned null in handleMessage"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 3520
    .end local v21    # "i":I
    .end local v41    # "state":I
    .end local v47    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :pswitch_5fb
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : Handle MSG package add"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 3522
    const-string/jumbo v4, "package"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3523
    const-string/jumbo v4, "new_install_or_update"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 3524
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v4

    if-eqz v4, :cond_641

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vpn handle : The install type value during package added is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    :cond_641
    if-eqz v34, :cond_26

    .line 3526
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v4

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object/from16 v0, v34

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 3527
    .local v43, "transformedPackageName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v4

    if-eqz v4, :cond_677

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The value of the transformed PackageName, when the package is added is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    :cond_677
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v4

    if-eqz v4, :cond_6a6

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vpn handle : vpn handle : package add : PackageName and UID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    :cond_6a6
    const-string v4, "com.mocana.vpn.android"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e3

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-nez v4, :cond_6e3

    .line 3530
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileExist()Z
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3531
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v4

    if-eqz v4, :cond_6d0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "some vpn profile belonging to VPN 1.0 present, so the mocana binding is going to happen, when package is installed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    :cond_6d0
    if-nez v11, :cond_6da

    .line 3533
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->kvpn_install_type:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$302(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Z)Z

    .line 3535
    :cond_6da
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->bindMocanaVpnInterface()V

    goto/16 :goto_26

    .line 3537
    :cond_6e3
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v34

    move/from16 v1, v44

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->updatePackageData(Ljava/lang/String;I)Z
    invoke-static {v4, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3538
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : package add : Package found in DB with rule proceed with logic"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    const/4 v6, 0x1

    move/from16 v0, v44

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRules(ILjava/lang/String;I)V

    .line 3540
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v34

    move/from16 v1, v44

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getVpnObjectFromDB(Ljava/lang/String;I)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-static {v4, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;I)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    move-result-object v46

    .line 3543
    .local v46, "vpn":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v30

    .line 3544
    .local v30, "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    if-eqz v30, :cond_740

    .line 3545
    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V

    .line 3546
    .local v35, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3547
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->addUIDListToExceptionList(Ljava/lang/String;Ljava/util/Map;)I

    .line 3550
    .end local v35    # "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_740
    if-eqz v46, :cond_26

    .line 3551
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v37

    .line 3552
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v12

    .line 3553
    .local v12, "containerId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v46

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addToHashMap(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;)V
    invoke-static {v4, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;)V

    .line 3554
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v37

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->refreshDomainInHashMap(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;)V

    .line 3556
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->isNetworkConnected()Z
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Z

    move-result v4

    if-eqz v4, :cond_8bf

    const/4 v4, -0x1

    if-le v12, v4, :cond_8bf

    .line 3557
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : pakcage add : Network is connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    :try_start_773
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v4, :cond_26

    .line 3560
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    const-string/jumbo v5, "key_vpn"

    move-object/from16 v0, v37

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v40

    .line 3561
    .local v40, "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v45, 0x0

    .line 3562
    .local v45, "value":Ljava/lang/String;
    invoke-virtual/range {v40 .. v40}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v4

    if-nez v4, :cond_79a

    .line 3563
    invoke-virtual/range {v40 .. v40}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v45

    .end local v45    # "value":Ljava/lang/String;
    check-cast v45, Ljava/lang/String;

    .line 3566
    .restart local v45    # "value":Ljava/lang/String;
    :cond_79a
    if-eqz v45, :cond_26

    .line 3567
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v4

    if-eqz v4, :cond_7bf

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vpn handle : package add : Callback state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    :cond_7bf
    const-string v4, "CONNECTED"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83f

    .line 3569
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 3570
    .restart local v47    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    if-eqz v47, :cond_833

    .line 3571
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v24

    .line 3572
    .local v24, "interfaceName":Ljava/lang/String;
    if-eqz v24, :cond_26

    .line 3573
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v4

    const/4 v5, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRules(ILjava/lang/String;I)V

    .line 3574
    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    .line 3575
    const/4 v4, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V

    .line 3576
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v44

    move/from16 v1, v44

    move-object/from16 v2, v24

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_80f
    .catch Landroid/os/RemoteException; {:try_start_773 .. :try_end_80f} :catch_811

    goto/16 :goto_26

    .line 3597
    .end local v24    # "interfaceName":Ljava/lang/String;
    .end local v40    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v45    # "value":Ljava/lang/String;
    .end local v47    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :catch_811
    move-exception v17

    .line 3598
    .local v17, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vpn handle : pakcage add : Exception at mocana:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 3579
    .end local v17    # "e":Landroid/os/RemoteException;
    .restart local v40    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v45    # "value":Ljava/lang/String;
    .restart local v47    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_833
    :try_start_833
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : Profilename not found in the map"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 3581
    .end local v47    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_83f
    const-string v4, "CONNECTING"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 3582
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I
    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)I

    move-result v6

    move-object/from16 v0, v37

    invoke-interface {v4, v0, v5, v6}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v4

    if-nez v4, :cond_26

    .line 3584
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    const-string/jumbo v5, "key_vpn"

    move-object/from16 v0, v37

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v40

    .line 3585
    const/16 v45, 0x0

    .line 3586
    invoke-virtual/range {v40 .. v40}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v4

    if-nez v4, :cond_8a8

    .line 3587
    invoke-virtual/range {v40 .. v40}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v45

    .end local v45    # "value":Ljava/lang/String;
    check-cast v45, Ljava/lang/String;

    .line 3588
    .restart local v45    # "value":Ljava/lang/String;
    if-eqz v45, :cond_8a8

    .line 3589
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vpn handle : package add : Cannot start vpn, mocana returned error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    :cond_8a8
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v37

    move-object/from16 v1, v45

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;)V

    .line 3592
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : package add : Cannot start vpn, mocana returned error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8bd
    .catch Landroid/os/RemoteException; {:try_start_833 .. :try_end_8bd} :catch_811

    goto/16 :goto_26

    .line 3601
    .end local v40    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v45    # "value":Ljava/lang/String;
    :cond_8bf
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : package add : Network is not connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 3608
    .end local v12    # "containerId":I
    .end local v30    # "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    .end local v43    # "transformedPackageName":Ljava/lang/String;
    .end local v46    # "vpn":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    :pswitch_8cb
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Package removal intent is reached"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    const-string/jumbo v4, "package"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3610
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 3611
    const-string/jumbo v4, "new_install_or_update"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 3612
    .local v20, "extraReplacing":Z
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleActionPackageRemoved : packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : replacing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v4

    if-eqz v4, :cond_970

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The original packageName to be removed is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " whose uid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and the container id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and the containerizedPackageName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v6

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object/from16 v0, v34

    invoke-virtual {v6, v7, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    :cond_970
    const-string v4, "com.mocana.vpn.android"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f0

    .line 3616
    if-eqz v20, :cond_987

    .line 3617
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Package is being reinstalled. Skip remove profile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 3620
    :cond_987
    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-nez v4, :cond_99f

    .line 3621
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3622
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 3624
    :cond_99f
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string v5, "Vpn_table"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 3625
    .local v16, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v16, :cond_9f0

    .line 3626
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_9b6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9f0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 3627
    .local v15, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "profile"

    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 3628
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleActionPackageRemoved : Removing profile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v37

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->removeProfileFromHashMapAndDB(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;)V

    goto :goto_9b6

    .line 3637
    .end local v15    # "cv":Landroid/content/ContentValues;
    .end local v16    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_9f0
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->packageNameVpnMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v5

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move-object/from16 v0, v34

    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    .end local v48    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    check-cast v48, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3638
    .restart local v48    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    if-eqz v48, :cond_26

    .line 3639
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v37

    .line 3640
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v34

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->deleteUIDFromPackageData(Ljava/lang/String;)Z
    invoke-static {v4, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3641
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : package remove>> Remove from iptable/hashmap"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v5

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move-object/from16 v0, v34

    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->removeFromHashMapByPackageName(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 3647
    .end local v20    # "extraReplacing":Z
    :pswitch_a47
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : connectivity action : Handle MSG CONNECTIVITY_ACTION"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    const-string/jumbo v4, "status"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    .line 3649
    .local v32, "networkState":Z
    const/4 v4, 0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_a7a

    .line 3650
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3651
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 3652
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->runAllVpnService()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_26

    .line 3654
    :cond_a7a
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3655
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto/16 :goto_26

    .line 3659
    .end local v32    # "networkState":Z
    :pswitch_a8e
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : retry vpn"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3661
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->isNetworkConnected()Z
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Z

    move-result v4

    if-eqz v4, :cond_c48

    .line 3662
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : retry vpn : Network is connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    :try_start_ab3
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v4, :cond_26

    .line 3665
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_acf
    :goto_acf
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c3f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 3666
    .local v25, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 3667
    .local v18, "entry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v28

    .line 3668
    .local v28, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    const/16 v39, 0x1

    .line 3671
    .local v39, "removeProfileError":Z
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_af5
    :goto_af5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b0b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3672
    .local v29, "localState":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_af5

    .line 3673
    const/16 v39, 0x0

    goto :goto_af5

    .line 3676
    .end local v29    # "localState":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    :cond_b0b
    if-eqz v39, :cond_b3d

    .line 3677
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b1a
    .catch Landroid/os/RemoteException; {:try_start_ab3 .. :try_end_b1a} :catch_b1b

    goto :goto_acf

    .line 3714
    .end local v18    # "entry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v25    # "key":Ljava/lang/String;
    .end local v28    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    .end local v39    # "removeProfileError":Z
    :catch_b1b
    move-exception v17

    .line 3715
    .restart local v17    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vpn handle : retry vpn : Exception at mocana:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 3679
    .end local v17    # "e":Landroid/os/RemoteException;
    .restart local v18    # "entry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v25    # "key":Ljava/lang/String;
    .restart local v28    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    .restart local v39    # "removeProfileError":Z
    :cond_b3d
    :try_start_b3d
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    const-string/jumbo v5, "key_vpn"

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v40

    .line 3680
    .restart local v40    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v45, 0x0

    .line 3681
    .restart local v45    # "value":Ljava/lang/String;
    invoke-virtual/range {v40 .. v40}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v4

    if-nez v4, :cond_b58

    .line 3682
    invoke-virtual/range {v40 .. v40}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v45

    .end local v45    # "value":Ljava/lang/String;
    check-cast v45, Ljava/lang/String;

    .line 3685
    .restart local v45    # "value":Ljava/lang/String;
    :cond_b58
    if-eqz v45, :cond_acf

    .line 3686
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vpn handle : retry vpn : Callback state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    const-string v4, "IDLE"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b8b

    const-string v4, "FAILED"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_acf

    .line 3688
    :cond_b8b
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    const/4 v5, -0x1

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I
    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4202(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    .line 3689
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v25

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileAddedAllPackagesToVpn(Ljava/lang/String;)Z
    invoke-static {v4, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c26

    .line 3690
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I
    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4202(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    .line 3694
    :goto_ba7
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I
    invoke-static {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I
    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)I

    move-result v6

    move-object/from16 v0, v25

    invoke-interface {v4, v0, v5, v6}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v4

    if-nez v4, :cond_c30

    .line 3696
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3697
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    const-string/jumbo v5, "key_vpn"

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v40

    .line 3698
    const/16 v45, 0x0

    .line 3699
    invoke-virtual/range {v40 .. v40}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v4

    if-nez v4, :cond_c1a

    .line 3700
    invoke-virtual/range {v40 .. v40}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v45

    .end local v45    # "value":Ljava/lang/String;
    check-cast v45, Ljava/lang/String;

    .line 3701
    .restart local v45    # "value":Ljava/lang/String;
    if-eqz v45, :cond_c1a

    .line 3702
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vpn handle : retry vpn : Cannot start vpn, mocana returned error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    :cond_c1a
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : retry vpn : Cannot start vpn, mocana returned error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_acf

    .line 3692
    :cond_c26
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I
    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4202(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I

    goto/16 :goto_ba7

    .line 3706
    :cond_c30
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_acf

    .line 3712
    .end local v18    # "entry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v25    # "key":Ljava/lang/String;
    .end local v28    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    .end local v39    # "removeProfileError":Z
    .end local v40    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v45    # "value":Ljava/lang/String;
    :cond_c3f
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    :try_end_c46
    .catch Landroid/os/RemoteException; {:try_start_b3d .. :try_end_c46} :catch_b1b

    goto/16 :goto_26

    .line 3718
    :cond_c48
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : retry vpn : Network is not connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 3722
    :pswitch_c54
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : vpn init bind"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileExist()Z
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3724
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$700()Z

    move-result v4

    if-eqz v4, :cond_c78

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "some vpn profile belonging to VPN 1.0 present, so the mocana 1.0 binding is going to happen after reboot"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3725
    :cond_c78
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->bindMocanaVpnInterface()V

    goto/16 :goto_26

    .line 3729
    :pswitch_c81
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : user switch is reached"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 3733
    :pswitch_c8d
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : The Container is getting removed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    const-string v4, "container_removed"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 3735
    .local v14, "container_id_removed":I
    const/4 v4, -0x1

    if-eq v14, v4, :cond_26

    .line 3736
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->clearDatabaseAfterContainerRemoval(I)V
    invoke-static {v4, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)V

    goto/16 :goto_26

    .line 3740
    .end local v14    # "container_id_removed":I
    :pswitch_cab
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : initialize vpn after migration done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->setupIntentFilter()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3742
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->initializeHashtable()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 3743
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileExist()Z
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$3100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Z

    move-result v4

    if-eqz v4, :cond_cd4

    .line 3744
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->bindMocanaVpnInterface()V

    .line 3746
    :cond_cd4
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->runAllVpnService()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_26

    .line 3749
    :pswitch_cdd
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vpn handle : Container admin changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    const-string v4, "containerid"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 3751
    .local v13, "container_id":I
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 3752
    .local v33, "old_adminid":I
    const/4 v4, -0x1

    if-eq v13, v4, :cond_26

    const/4 v4, -0x1

    move/from16 v0, v33

    if-eq v0, v4, :cond_26

    .line 3753
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move/from16 v0, v33

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopVpnConnectionAfterAdminRemoval(I)V
    invoke-static {v4, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)V

    .line 3754
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    goto/16 :goto_26

    .line 3758
    .end local v13    # "container_id":I
    .end local v33    # "old_adminid":I
    :pswitch_d12
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v31

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->dropNoUidPackets(Landroid/os/Bundle;)V
    invoke-static {v4, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->access$4800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Landroid/os/Bundle;)V

    goto/16 :goto_26

    .line 3337
    nop

    :pswitch_data_d1e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_5fb
        :pswitch_8cb
        :pswitch_a47
        :pswitch_26
        :pswitch_a8e
        :pswitch_26
        :pswitch_c54
        :pswitch_c81
        :pswitch_c8d
        :pswitch_cab
        :pswitch_cdd
        :pswitch_d12
    .end packed-switch

    .line 3356
    :pswitch_data_d3c
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_38a
        :pswitch_c7
        :pswitch_14f
        :pswitch_240
        :pswitch_482
    .end packed-switch

    .line 3476
    :sswitch_data_d4c
    .sparse-switch
        0x1 -> :sswitch_4b2
        0x5 -> :sswitch_533
    .end sparse-switch
.end method
