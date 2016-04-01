.class public Lcom/android/server/enterprise/firewall/Firewall;
.super Lcom/sec/enterprise/firewall/IFirewall$Stub;
.source "Firewall.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final MAX_TRIES:I = 0x5

.field private static TAG:Ljava/lang/String;

.field private static mAreRulesReloaded:Z

.field protected static mHasIpv6FilterSupport:Z

.field protected static mHasIpv6NatSupport:Z

.field private static mIsDatabaseReady:Z


# instance fields
.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

.field private mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

.field protected mIsChainsCreated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-boolean v0, mHasIpv6NatSupport:Z

    .line 70
    sput-boolean v0, mHasIpv6FilterSupport:Z

    .line 77
    const-string v0, "Firewall"

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 138
    invoke-direct {p0}, Lcom/sec/enterprise/firewall/IFirewall$Stub;-><init>()V

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsChainsCreated:Z

    .line 101
    new-instance v1, Lcom/android/server/enterprise/firewall/Firewall$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/firewall/Firewall$1;-><init>(Lcom/android/server/enterprise/firewall/Firewall;)V

    iput-object v1, p0, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 140
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 141
    new-instance v1, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/Firewall;)V

    iput-object v1, p0, mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 142
    sput-boolean v3, mIsDatabaseReady:Z

    .line 143
    sput-boolean v3, mAreRulesReloaded:Z

    .line 149
    iget-object v1, p0, mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const-string/jumbo v2, "filter"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->hasIpv6Support(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, mHasIpv6FilterSupport:Z

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .local v0, "filterBroad":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    invoke-direct {p0}, createChains()V

    .line 160
    const/4 v1, -0x1

    invoke-direct {p0, v3, v1}, blockOrUnblockAll(ZI)V

    .line 161
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 57
    sget-boolean v0, mIsDatabaseReady:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 57
    sput-boolean p0, mIsDatabaseReady:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;

    .prologue
    .line 57
    iget-object v0, p0, mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;

    .prologue
    .line 57
    invoke-direct {p0}, createChains()V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 57
    sget-boolean v0, mAreRulesReloaded:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 57
    sput-boolean p0, mAreRulesReloaded:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;

    .prologue
    .line 57
    invoke-direct {p0}, reloadIptablesRules()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/Firewall;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, blockOrUnblockAll(ZI)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;

    .prologue
    .line 57
    invoke-direct {p0}, checkMigrationAndHostnames()V

    return-void
.end method

.method private declared-synchronized addRule(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;

    .prologue
    .line 329
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 334
    .local v12, "uid":I
    invoke-static/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v5

    .line 336
    .local v5, "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v5}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v14

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_66

    if-ne v14, v15, :cond_14

    move-object v14, v5

    .line 420
    :goto_12
    monitor-exit p0

    return-object v14

    .line 343
    :cond_14
    :try_start_14
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_69

    .line 344
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 345
    .local v13, "userId":I
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    const-string v15, "android"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v0, v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v3

    .line 348
    .local v3, "ctx":Landroid/content/Context;
    const/4 v10, 0x0

    .line 349
    .local v10, "signatureMatch":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_66

    move-result-wide v6

    .line 351
    .local v6, "identity":J
    :try_start_39
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v14, v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4c
    .catchall {:try_start_39 .. :try_end_4c} :catchall_61

    move-result v10

    .line 354
    :try_start_4d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 356
    if-nez v10, :cond_69

    .line 357
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v5    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v14, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v16, "Given signature does not match with the application."

    move-object/from16 v0, v16

    invoke-direct {v5, v14, v15, v0}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .restart local v5    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    move-object v14, v5

    .line 360
    goto :goto_12

    .line 354
    :catchall_61
    move-exception v14

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
    :try_end_66
    .catchall {:try_start_4d .. :try_end_66} :catchall_66

    .line 329
    .end local v3    # "ctx":Landroid/content/Context;
    .end local v5    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v6    # "identity":J
    .end local v10    # "signatureMatch":Z
    .end local v12    # "uid":I
    .end local v13    # "userId":I
    :catchall_66
    move-exception v14

    monitor-exit p0

    throw v14

    .line 367
    .restart local v5    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v12    # "uid":I
    :cond_69
    :try_start_69
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v2

    .line 368
    .local v2, "addressType":Lcom/sec/enterprise/firewall/Firewall$AddressType;
    sget-object v14, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-virtual {v14, v2}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_bb

    .line 369
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v11

    .line 370
    .local v11, "type":Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    sget-object v14, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v14, v11}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_89

    sget-object v14, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v14, v11}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9a

    :cond_89
    sget-boolean v14, mHasIpv6FilterSupport:Z

    if-nez v14, :cond_9a

    .line 372
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "This device does not have IPv6 support for this type of rule."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 375
    :cond_9a
    sget-object v14, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v14, v11}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_aa

    sget-object v14, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v14, v11}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_bb

    :cond_aa
    sget-boolean v14, mHasIpv6NatSupport:Z

    if-nez v14, :cond_bb

    .line 377
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "This device does not have IPv6 support for this type of rule."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 384
    .end local v11    # "type":Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    :cond_bb
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/firewall/FirewallUtils;->verifyPackageName(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_da

    .line 386
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "The specified package name is not installed."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 394
    :cond_da
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v0, v12, v14}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isRuleInDb(Lcom/sec/enterprise/firewall/FirewallRule;ILandroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_f3

    .line 395
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "The specified rule is already in the database."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 400
    :cond_f3
    invoke-virtual/range {p0 .. p1}, isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v14

    if-eqz v14, :cond_100

    .line 401
    sget-object v14, Lcom/sec/enterprise/firewall/FirewallRule$Status;->PENDING:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    .line 407
    :cond_100
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/sec/enterprise/firewall/FirewallRule;I)Landroid/content/ContentValues;

    move-result-object v4

    .line 412
    .local v4, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v14, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "FirewallRule"

    invoke-virtual {v14, v15, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 413
    .local v8, "rowId":J
    const-wide/16 v14, -0x1

    cmp-long v14, v8, v14

    if-nez v14, :cond_123

    .line 414
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "Failed to add/update rule in the database."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 417
    :cond_123
    long-to-int v14, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sec/enterprise/firewall/FirewallRule;->setId(I)V

    .line 420
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "The rule(s) was successfully added/updated."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_134
    .catchall {:try_start_69 .. :try_end_134} :catchall_66

    goto/16 :goto_12
.end method

.method private adminHaveSystemRule(Landroid/app/enterprise/ContextInfo;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v10, 0x0

    .line 260
    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, v12}, getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v6

    .line 261
    .local v6, "ownerRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    const-string/jumbo v11, "package"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 264
    .local v4, "iPackageManager":Landroid/content/pm/IPackageManager;
    const/4 v0, 0x0

    .line 265
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 267
    .local v8, "token":J
    move-object v1, v6

    .local v1, "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    :try_start_19
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1b
    if-ge v3, v5, :cond_46

    aget-object v7, v1, v3

    .line 268
    .local v7, "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-virtual {v7}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    iget v13, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-interface {v4, v11, v12, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_43

    const/16 v11, 0x3e8

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_3b} :catch_4a
    .catchall {:try_start_19 .. :try_end_3b} :catchall_6b

    move-result v12

    if-ne v11, v12, :cond_43

    .line 272
    const/4 v10, 0x1

    .line 278
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :goto_42
    return v10

    .line 267
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v7    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 278
    .end local v7    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_46
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_42

    .line 275
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :catch_4a
    move-exception v2

    .line 276
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4b
    sget-object v11, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Remote Exception on get getApplicationInfo"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4b .. :try_end_67} :catchall_6b

    .line 278
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_42

    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_6b
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method private blockOrUnblockAll(ZI)V
    .registers 12
    .param p1, "block"    # Z
    .param p2, "uid"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 170
    iget-object v6, p0, mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    .line 172
    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, -0x1

    if-eq p2, v6, :cond_65

    .line 173
    iget-object v6, p0, mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    .line 177
    :goto_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 181
    .local v1, "adminUid":I
    const/16 v6, 0x3e8

    if-eq v1, v6, :cond_15

    .line 182
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 186
    .local v2, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-virtual {p0, v2}, isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 191
    sget-object v6, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV4:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-direct {p0, v6, v7}, createDenyAllRule(Lcom/sec/enterprise/firewall/Firewall$AddressType;Z)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v3

    .line 192
    .local v3, "denyRule":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-direct {p0, v3, v2, p1}, enableOrDisableRuleAsAdmin(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)V

    .line 196
    sget-object v6, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-direct {p0, v6, v7}, createDenyAllRule(Lcom/sec/enterprise/firewall/Firewall$AddressType;Z)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v4

    .line 197
    .local v4, "denyRuleIPv6":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-direct {p0, v4, v2, p1}, enableOrDisableRuleAsAdmin(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)V

    .line 202
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-nez v6, :cond_15

    invoke-direct {p0, v2}, adminHaveSystemRule(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 204
    sget-object v6, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV4:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-direct {p0, v6, v8}, createDenyAllRule(Lcom/sec/enterprise/firewall/Firewall$AddressType;Z)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v3

    .line 205
    invoke-direct {p0, v3, v2, p1}, enableOrDisableRuleAsAdmin(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)V

    .line 209
    sget-object v6, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-direct {p0, v6, v8}, createDenyAllRule(Lcom/sec/enterprise/firewall/Firewall$AddressType;Z)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v4

    .line 210
    invoke-direct {p0, v4, v2, p1}, enableOrDisableRuleAsAdmin(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)V

    goto :goto_15

    .line 175
    .end local v1    # "adminUid":I
    .end local v2    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v3    # "denyRule":Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v4    # "denyRuleIPv6":Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 215
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_6d
    return-void
.end method

.method private declared-synchronized checkMigrationAndHostnames()V
    .registers 4

    .prologue
    .line 284
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, getFirewallPolicyService()Landroid/app/enterprise/IFirewallPolicy;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1c

    move-result-object v1

    if-eqz v1, :cond_11

    .line 286
    :try_start_7
    iget-object v1, p0, mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IFirewallPolicy;->updateHostnameMap()V

    .line 287
    iget-object v1, p0, mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IFirewallPolicy;->performMigration()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_13
    .catchall {:try_start_7 .. :try_end_11} :catchall_1c

    .line 292
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    .line 288
    :catch_13
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_14
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "Could not reach FirewallPolicy service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1c

    goto :goto_11

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized clearFirewallRulesFromDb(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 10
    .param p1, "ruleType"    # Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 564
    monitor-enter p0

    if-nez p1, :cond_10

    .line 565
    :try_start_3
    new-instance v3, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v4, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v6, "The specified package name is not installed."

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_41

    .line 586
    :goto_e
    monitor-exit p0

    return-object v3

    .line 568
    :cond_10
    :try_start_10
    iget v2, p2, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 574
    .local v2, "uid":I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 575
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    const-string/jumbo v3, "ruleType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "FirewallRule"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 578
    .local v1, "rowsAffected":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_44

    .line 579
    new-instance v3, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v4, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v6, "Failed to clear rules from database."

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_41

    goto :goto_e

    .line 564
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "rowsAffected":I
    .end local v2    # "uid":I
    :catchall_41
    move-exception v3

    monitor-exit p0

    throw v3

    .line 581
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "rowsAffected":I
    .restart local v2    # "uid":I
    :cond_44
    if-nez v1, :cond_52

    .line 582
    :try_start_46
    new-instance v3, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v4, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v6, "The rules are already cleared."

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_e

    .line 586
    :cond_52
    new-instance v3, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v4, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v6, "Rules successfully cleared."

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_41

    goto :goto_e
.end method

.method private declared-synchronized clearRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 16
    .param p1, "ruleType"    # Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    .param p2, "bitmask"    # I
    .param p3, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 517
    monitor-enter p0

    const/4 v7, 0x0

    .line 519
    .local v7, "type":I
    :try_start_2
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v8, :cond_37

    .line 520
    const/4 v7, 0x1

    .line 529
    :cond_7
    :goto_7
    and-int v8, p2, v7

    if-eqz v8, :cond_5c

    .line 530
    const/4 v8, 0x0

    invoke-virtual {p0, p3, v7, v8}, getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v6

    .line 531
    .local v6, "rulesToClear":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v3, 0x1

    .line 532
    .local v3, "isDisabled":Z
    invoke-virtual {p0, p3}, isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 533
    invoke-direct {p0, p3, v6}, disableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v1

    .line 534
    .local v1, "disableResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    move-object v0, v1

    .local v0, "arr$":[Lcom/sec/enterprise/firewall/FirewallResponse;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1e
    if-ge v2, v4, :cond_2f

    aget-object v5, v0, v2

    .line 535
    .local v5, "resp":Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v5}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v8

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 536
    const/4 v3, 0x0

    .line 541
    .end local v0    # "arr$":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v1    # "disableResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "resp":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_2f
    if-eqz v3, :cond_4d

    .line 542
    invoke-direct {p0, p1, p3}, clearFirewallRulesFromDb(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_59

    move-result-object v8

    .line 548
    .end local v3    # "isDisabled":Z
    .end local v6    # "rulesToClear":[Lcom/sec/enterprise/firewall/FirewallRule;
    :goto_35
    monitor-exit p0

    return-object v8

    .line 521
    :cond_37
    :try_start_37
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v8, :cond_3d

    .line 522
    const/4 v7, 0x2

    goto :goto_7

    .line 523
    :cond_3d
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v8, :cond_43

    .line 524
    const/4 v7, 0x4

    goto :goto_7

    .line 525
    :cond_43
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v8, :cond_7

    .line 526
    const/16 v7, 0x8

    goto :goto_7

    .line 534
    .restart local v0    # "arr$":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v1    # "disableResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v2    # "i$":I
    .restart local v3    # "isDisabled":Z
    .restart local v4    # "len$":I
    .restart local v5    # "resp":Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v6    # "rulesToClear":[Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 544
    .end local v0    # "arr$":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v1    # "disableResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "resp":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_4d
    new-instance v8, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v11, " failed to disable. Error: "

    invoke-direct {v8, v9, v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_37 .. :try_end_58} :catchall_59

    goto :goto_35

    .line 517
    .end local v3    # "isDisabled":Z
    .end local v6    # "rulesToClear":[Lcom/sec/enterprise/firewall/FirewallRule;
    :catchall_59
    move-exception v8

    monitor-exit p0

    throw v8

    .line 548
    :cond_5c
    :try_start_5c
    new-instance v8, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v11, "Clear was not requested for this RuleType."

    invoke-direct {v8, v9, v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_5c .. :try_end_67} :catchall_59

    goto :goto_35
.end method

.method private declared-synchronized createChains()V
    .registers 5

    .prologue
    .line 302
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, mIsChainsCreated:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-nez v1, :cond_b

    .line 304
    :try_start_5
    invoke-static {}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->createIptablesChains()V

    .line 305
    const/4 v1, 0x1

    iput-boolean v1, p0, mIsChainsCreated:Z
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_b} :catch_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_2f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_b} :catch_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_b} :catch_6d
    .catchall {:try_start_5 .. :try_end_b} :catchall_2c

    .line 319
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    .line 306
    :catch_d
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_e
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createIptablesChains(): SecurityException was thrown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_2c

    goto :goto_b

    .line 302
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1

    .line 309
    :catch_2f
    move-exception v0

    .line 310
    .local v0, "e":Ljava/io/IOException;
    :try_start_30
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createIptablesChains(): IOException was thrown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4e
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createIptablesChains(): NullPointerException was thrown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 314
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_6d
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createIptablesChains(): IllegalArgumentException was thrown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_30 .. :try_end_8b} :catchall_2c

    goto :goto_b
.end method

.method private createDenyAllRule(Lcom/sec/enterprise/firewall/Firewall$AddressType;Z)Lcom/sec/enterprise/firewall/FirewallRule;
    .registers 7
    .param p1, "addressType"    # Lcom/sec/enterprise/firewall/Firewall$AddressType;
    .param p2, "isSystem"    # Z

    .prologue
    .line 220
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallRule;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {v1, v2, p1}, Lcom/sec/enterprise/firewall/FirewallRule;-><init>(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Lcom/sec/enterprise/firewall/Firewall$AddressType;)V

    .line 221
    .local v1, "denyRule":Lcom/sec/enterprise/firewall/FirewallRule;
    const-string v2, "*"

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 222
    const-string v2, "*"

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 223
    if-eqz p2, :cond_1e

    .line 224
    new-instance v0, Lcom/sec/enterprise/AppIdentity;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .local v0, "appIdentity":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual {v1, v0}, Lcom/sec/enterprise/firewall/FirewallRule;->setApplication(Lcom/sec/enterprise/AppIdentity;)V

    .line 227
    .end local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    :cond_1e
    return-object v1
.end method

.method private declared-synchronized deleteFirewallRuleFromDb(Landroid/content/ContentValues;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 7
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 599
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "FirewallRule"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 600
    .local v0, "rowsAffected":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 601
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v4, "Failed to remove/update rule from the database."

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_27

    .line 608
    :goto_17
    monitor-exit p0

    return-object v1

    .line 603
    :cond_19
    if-nez v0, :cond_2a

    .line 604
    :try_start_1b
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v4, "The specified FirewallRule was not found."

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_27

    goto :goto_17

    .line 599
    .end local v0    # "rowsAffected":I
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1

    .line 608
    .restart local v0    # "rowsAffected":I
    :cond_2a
    :try_start_2a
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v4, "The rule was successfuly removed/updated."

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_27

    goto :goto_17
.end method

.method private declared-synchronized disableFirewall(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 745
    monitor-enter p0

    :try_start_1
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 746
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 747
    .local v9, "userId":I
    invoke-virtual {p0, v9}, getFirewallOwner(I)I

    move-result v2

    .line 752
    .local v2, "firewallOwner":I
    if-eq v2, v0, :cond_1a

    .line 753
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v13, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_48

    .line 796
    :goto_18
    monitor-exit p0

    return-object v10

    .line 760
    :cond_1a
    :try_start_1a
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 761
    .local v8, "selectionValues":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 762
    const-string/jumbo v10, "userID"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "FirewallStatus"

    invoke-virtual {v10, v11, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v10

    if-nez v10, :cond_4b

    .line 764
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v13, "Failed to add/update rule in the database."

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_1a .. :try_end_47} :catchall_48

    goto :goto_18

    .line 745
    .end local v0    # "adminUid":I
    .end local v2    # "firewallOwner":I
    .end local v8    # "selectionValues":Landroid/content/ContentValues;
    .end local v9    # "userId":I
    :catchall_48
    move-exception v10

    monitor-exit p0

    throw v10

    .line 768
    .restart local v0    # "adminUid":I
    .restart local v2    # "firewallOwner":I
    .restart local v8    # "selectionValues":Landroid/content/ContentValues;
    .restart local v9    # "userId":I
    :cond_4b
    const/16 v10, 0xf

    const/4 v11, 0x0

    :try_start_4e
    invoke-virtual {p0, p1, v10, v11}, getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v7

    .line 769
    .local v7, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    if-eqz v7, :cond_111

    array-length v10, v7

    if-lez v10, :cond_111

    .line 770
    invoke-direct {p0, p1, v7}, disableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    .line 772
    .local v6, "responses":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v4, 0x0

    .line 773
    .local v4, "hasSuccess":Z
    const/4 v3, 0x0

    .line 774
    .local v3, "hasFailure":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    .local v1, "answer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_63
    array-length v10, v6

    if-ge v5, v10, :cond_dc

    .line 777
    aget-object v10, v6, v5

    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v10

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9a

    .line 778
    const/4 v4, 0x1

    .line 779
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rule with Id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v7, v5

    invoke-virtual {v11}, Lcom/sec/enterprise/firewall/FirewallRule;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " successfully disabled.\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    :cond_97
    :goto_97
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .line 780
    :cond_9a
    aget-object v10, v6, v5

    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v10

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_97

    .line 781
    const/4 v3, 0x1

    .line 782
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rule with Id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v7, v5

    invoke-virtual {v11}, Lcom/sec/enterprise/firewall/FirewallRule;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed to disable. Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v5

    invoke-virtual {v11}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_97

    .line 787
    :cond_dc
    if-eqz v4, :cond_ef

    if-eqz v3, :cond_ef

    .line 788
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->PARTIAL:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 789
    :cond_ef
    if-nez v4, :cond_102

    if-eqz v3, :cond_102

    .line 790
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 792
    :cond_102
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 796
    .end local v1    # "answer":Ljava/lang/StringBuilder;
    .end local v3    # "hasFailure":Z
    .end local v4    # "hasSuccess":Z
    .end local v5    # "i":I
    .end local v6    # "responses":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_111
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v13, "The firewall was successfully disabled."

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_11c
    .catchall {:try_start_4e .. :try_end_11c} :catchall_48

    goto/16 :goto_18
.end method

.method private declared-synchronized disableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "rules"    # [Lcom/sec/enterprise/firewall/FirewallRule;

    .prologue
    .line 621
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    move-result-object p1

    .line 622
    if-nez p2, :cond_a

    .line 623
    const/4 v0, 0x0

    .line 625
    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    iget-object v0, p0, mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->changeRuleStatus([Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)[Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_12

    move-result-object v0

    goto :goto_8

    .line 621
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enableFirewall(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 675
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 676
    .local v2, "adminUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 677
    .local v13, "userId":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, getFirewallOwner(I)I

    move-result v5

    .line 682
    .local v5, "firewallOwner":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_21

    if-eq v5, v2, :cond_21

    .line 683
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_58

    .line 739
    :goto_1f
    monitor-exit p0

    return-object v14

    .line 690
    :cond_21
    const/4 v14, -0x1

    if-ne v5, v14, :cond_5b

    .line 691
    :try_start_24
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 692
    .local v10, "insertValues":Landroid/content/ContentValues;
    const-string v14, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string/jumbo v14, "userID"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v14, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "FirewallStatus"

    invoke-virtual {v14, v15, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-nez v14, :cond_5b

    .line 695
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "Failed to enable Firewall in the database."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_24 .. :try_end_57} :catchall_58

    goto :goto_1f

    .line 675
    .end local v2    # "adminUid":I
    .end local v5    # "firewallOwner":I
    .end local v10    # "insertValues":Landroid/content/ContentValues;
    .end local v13    # "userId":I
    :catchall_58
    move-exception v14

    monitor-exit p0

    throw v14

    .line 700
    .restart local v2    # "adminUid":I
    .restart local v5    # "firewallOwner":I
    .restart local v13    # "userId":I
    :cond_5b
    const/16 v14, 0xf

    const/4 v15, 0x0

    :try_start_5e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v12

    .line 701
    .local v12, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    if-eqz v12, :cond_14f

    array-length v14, v12

    if-lez v14, :cond_14f

    .line 702
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, enableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v11

    .line 704
    .local v11, "responses":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v8, 0x0

    .line 705
    .local v8, "hasSuccess":Z
    const/4 v7, 0x0

    .line 706
    .local v7, "hasFailure":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .local v3, "answer":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7b
    array-length v14, v11

    if-ge v9, v14, :cond_f4

    .line 709
    aget-object v14, v11, v9

    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v14

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v14, v15}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b2

    .line 710
    const/4 v8, 0x1

    .line 711
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Rule with Id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v12, v9

    invoke-virtual {v15}, Lcom/sec/enterprise/firewall/FirewallRule;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " successfully enabled.\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :cond_af
    :goto_af
    add-int/lit8 v9, v9, 0x1

    goto :goto_7b

    .line 712
    :cond_b2
    aget-object v14, v11, v9

    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v14

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v14, v15}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_af

    .line 713
    const/4 v7, 0x1

    .line 714
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Rule with Id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v12, v9

    invoke-virtual {v15}, Lcom/sec/enterprise/firewall/FirewallRule;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " failed to enable. Error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v11, v9

    invoke-virtual {v15}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_af

    .line 720
    :cond_f4
    if-eqz v8, :cond_115

    if-nez v13, :cond_115

    .line 721
    new-instance v6, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v6, v14}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_101
    .catchall {:try_start_5e .. :try_end_101} :catchall_58

    .line 723
    .local v6, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_101
    const-string v14, "Firewall"

    const-string/jumbo v15, "enableFirewall"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v14, v15, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 724
    sget-object v14, TAG:Ljava/lang/String;

    const-string/jumbo v15, "enableFirewall calling gearPolicyManager  "

    invoke-static {v14, v15}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_115} :catch_128
    .catchall {:try_start_101 .. :try_end_115} :catchall_58

    .line 730
    .end local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_115
    :goto_115
    if-eqz v8, :cond_12d

    if-eqz v7, :cond_12d

    .line 731
    :try_start_119
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->PARTIAL:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 725
    .restart local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_128
    move-exception v4

    .line 726
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_115

    .line 732
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_12d
    if-nez v8, :cond_140

    if-eqz v7, :cond_140

    .line 733
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 735
    :cond_140
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 739
    .end local v3    # "answer":Ljava/lang/StringBuilder;
    .end local v7    # "hasFailure":Z
    .end local v8    # "hasSuccess":Z
    .end local v9    # "i":I
    .end local v11    # "responses":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_14f
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "The firewall was successfully enabled."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_15a
    .catchall {:try_start_119 .. :try_end_15a} :catchall_58

    goto/16 :goto_1f
.end method

.method private declared-synchronized enableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "rules"    # [Lcom/sec/enterprise/firewall/FirewallRule;

    .prologue
    .line 637
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    move-result-object p1

    .line 638
    if-nez p2, :cond_a

    .line 639
    const/4 v0, 0x0

    .line 641
    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    iget-object v0, p0, mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->changeRuleStatus([Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)[Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_12

    move-result-object v0

    goto :goto_8

    .line 637
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enableOrDisableRuleAsAdmin(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)V
    .registers 9
    .param p1, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "block"    # Z

    .prologue
    const/4 v4, 0x0

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "response":Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    const/4 v2, 0x5

    if-ge v0, v2, :cond_19

    .line 240
    if-eqz p3, :cond_1a

    .line 241
    iget-object v2, p0, mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/sec/enterprise/firewall/FirewallRule;ZLandroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v1

    .line 247
    :goto_f
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v2

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    if-ne v2, v3, :cond_21

    .line 251
    :cond_19
    return-void

    .line 244
    :cond_1a
    iget-object v2, p0, mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v2, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v1

    goto :goto_f

    .line 239
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 822
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 824
    return-object p1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 921
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 922
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 925
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getFirewallPolicyService()Landroid/app/enterprise/IFirewallPolicy;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    if-nez v0, :cond_11

    .line 92
    const-string/jumbo v0, "firewall_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IFirewallPolicy;

    move-result-object v0

    iput-object v0, p0, mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    .line 95
    :cond_11
    iget-object v0, p0, mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    return-object v0
.end method

.method private getRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;
    .registers 13
    .param p1, "ruleType"    # Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    .param p2, "bitmask"    # I
    .param p3, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p4, "status"    # Ljava/lang/String;

    .prologue
    .line 879
    const/4 v2, 0x0

    .line 880
    .local v2, "type":I
    iget v3, p3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 883
    .local v3, "uid":I
    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v5, :cond_3f

    .line 884
    const/4 v2, 0x1

    .line 897
    :cond_8
    :goto_8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 898
    .local v0, "filterValues":Landroid/content/ContentValues;
    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_1a

    .line 899
    const-string v5, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 904
    :cond_1a
    if-eqz p4, :cond_22

    .line 905
    const-string/jumbo v5, "status"

    invoke-virtual {v0, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :cond_22
    and-int v5, p2, v2

    if-eqz v5, :cond_52

    .line 909
    const-string/jumbo v5, "ruleType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallRule"

    sget-object v7, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 913
    .local v4, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {v4, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/sec/enterprise/firewall/FirewallRule$RuleType;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v1

    .line 917
    .end local v4    # "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v1, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    :goto_3e
    return-object v1

    .line 885
    .end local v0    # "filterValues":Landroid/content/ContentValues;
    .end local v1    # "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_3f
    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v5, :cond_45

    .line 886
    const/4 v2, 0x2

    goto :goto_8

    .line 887
    :cond_45
    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v5, :cond_4b

    .line 888
    const/4 v2, 0x4

    goto :goto_8

    .line 889
    :cond_4b
    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v5, :cond_8

    .line 890
    const/16 v2, 0x8

    goto :goto_8

    .line 915
    .restart local v0    # "filterValues":Landroid/content/ContentValues;
    :cond_52
    const/4 v1, 0x0

    .restart local v1    # "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    goto :goto_3e
.end method

.method private declared-synchronized reloadIptablesRules()V
    .registers 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->reloadIptablesRules()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 296
    monitor-exit p0

    return-void

    .line 295
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeRule(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;

    .prologue
    .line 973
    monitor-enter p0

    :try_start_1
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 977
    .local v5, "uid":I
    invoke-static {p2}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v1

    .line 979
    .local v1, "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v1}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_5d

    if-ne v7, v8, :cond_12

    move-object v7, v1

    .line 1025
    :goto_10
    monitor-exit p0

    return-object v7

    .line 986
    :cond_12
    :try_start_12
    invoke-virtual {p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_60

    .line 987
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 988
    .local v6, "userId":I
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v0

    .line 991
    .local v0, "ctx":Landroid/content/Context;
    const/4 v4, 0x0

    .line 992
    .local v4, "signatureMatch":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_5d

    move-result-wide v2

    .line 994
    .local v2, "identity":J
    :try_start_32
    invoke-virtual {p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_58

    move-result v4

    .line 997
    :try_start_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1000
    if-nez v4, :cond_60

    .line 1001
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v1    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v7, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v9, "Given signature does not match with the application."

    invoke-direct {v1, v7, v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .restart local v1    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    move-object v7, v1

    .line 1004
    goto :goto_10

    .line 997
    :catchall_58
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_5d

    .line 973
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v1    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v2    # "identity":J
    .end local v4    # "signatureMatch":Z
    .end local v5    # "uid":I
    .end local v6    # "userId":I
    :catchall_5d
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1008
    .restart local v1    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v5    # "uid":I
    :cond_60
    :try_start_60
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {p2, v5, v7}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isRuleEnabled(Lcom/sec/enterprise/firewall/FirewallRule;ILandroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 1009
    new-instance v7, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v10, "Disable the rule before remove it."

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_10

    .line 1014
    :cond_74
    invoke-virtual {p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/firewall/FirewallUtils;->verifyPackageName(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_93

    .line 1016
    new-instance v7, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v10, "The specified package name is not installed."

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1025
    :cond_93
    invoke-static {p2, v5}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/sec/enterprise/firewall/FirewallRule;I)Landroid/content/ContentValues;

    move-result-object v7

    invoke-direct {p0, v7}, deleteFirewallRuleFromDb(Landroid/content/ContentValues;)Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_9a
    .catchall {:try_start_60 .. :try_end_9a} :catchall_5d

    move-result-object v7

    goto/16 :goto_10
.end method


# virtual methods
.method public declared-synchronized addDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/sec/enterprise/firewall/FirewallResponse;"
        }
    .end annotation

    .prologue
    .line 1030
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1031
    iget-object v0, p0, mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1030
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "rules"    # [Lcom/sec/enterprise/firewall/FirewallRule;

    .prologue
    .line 426
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_d8

    move-result-object p1

    .line 427
    if-nez p2, :cond_a

    .line 428
    const/4 v7, 0x0

    .line 488
    :cond_8
    :goto_8
    monitor-exit p0

    return-object v7

    .line 433
    :cond_a
    :try_start_a
    move-object/from16 v0, p2

    array-length v10, v0

    new-array v4, v10, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 434
    .local v4, "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v9, 0x0

    .line 435
    .local v9, "sucessCounter":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    move-object/from16 v0, p2

    array-length v10, v0

    if-ge v3, v10, :cond_33

    .line 436
    aget-object v10, p2, v3

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10}, addRule(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v10

    aput-object v10, v4, v3

    .line 437
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aget-object v11, v4, v3

    invoke-virtual {v11}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 438
    add-int/lit8 v9, v9, 0x1

    .line 435
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 444
    :cond_33
    new-array v8, v9, [Lcom/sec/enterprise/firewall/FirewallRule;

    .line 449
    .local v8, "rulesToEnable":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v1, 0x0

    .line 450
    .local v1, "count":I
    const/4 v3, 0x0

    :goto_37
    move-object/from16 v0, p2

    array-length v10, v0

    if-ge v3, v10, :cond_53

    .line 451
    aget-object v10, v4, v3

    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v10

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_50

    .line 452
    aget-object v10, p2, v3

    aput-object v10, v8, v1

    .line 453
    add-int/lit8 v1, v1, 0x1

    .line 450
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 459
    :cond_53
    new-array v6, v9, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 460
    .local v6, "responseFromEnable":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v2, 0x0

    .line 461
    .local v2, "enabled":Z
    invoke-virtual/range {p0 .. p1}, isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    if-eqz v10, :cond_63

    .line 462
    const/4 v2, 0x1

    .line 463
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8}, enableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    .line 465
    :cond_63
    if-eqz v2, :cond_104

    .line 466
    move-object/from16 v0, p2

    array-length v10, v0

    new-array v7, v10, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 467
    .local v7, "responseRet":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v3, 0x0

    :goto_6b
    move-object/from16 v0, p2

    array-length v10, v0

    if-ge v3, v10, :cond_8

    .line 468
    aget-object v10, v4, v3

    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v10

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 469
    .local v5, "responseDb":Z
    if-eqz v5, :cond_db

    .line 470
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aget-object v11, v6, v3

    invoke-virtual {v11}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b3

    .line 471
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The rule(s) was successfully added/updated. / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v6, v3

    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v10, v7, v3

    .line 467
    :goto_b0
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 475
    :cond_b3
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The rule(s) was successfully added/updated. / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v6, v3

    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v10, v7, v3
    :try_end_d7
    .catchall {:try_start_a .. :try_end_d7} :catchall_d8

    goto :goto_b0

    .line 426
    .end local v1    # "count":I
    .end local v2    # "enabled":Z
    .end local v3    # "i":I
    .end local v4    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v5    # "responseDb":Z
    .end local v6    # "responseFromEnable":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v7    # "responseRet":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v8    # "rulesToEnable":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v9    # "sucessCounter":I
    :catchall_d8
    move-exception v10

    monitor-exit p0

    throw v10

    .line 481
    .restart local v1    # "count":I
    .restart local v2    # "enabled":Z
    .restart local v3    # "i":I
    .restart local v4    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v5    # "responseDb":Z
    .restart local v6    # "responseFromEnable":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v7    # "responseRet":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v8    # "rulesToEnable":[Lcom/sec/enterprise/firewall/FirewallRule;
    .restart local v9    # "sucessCounter":I
    :cond_db
    :try_start_db
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aget-object v12, v4, v3

    invoke-virtual {v12}, Lcom/sec/enterprise/firewall/FirewallResponse;->getErrorCode()Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to add/update rule in the database. / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v4, v3

    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v10, v7, v3
    :try_end_103
    .catchall {:try_start_db .. :try_end_103} :catchall_d8

    goto :goto_b0

    .end local v5    # "responseDb":Z
    .end local v7    # "responseRet":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_104
    move-object v7, v4

    .line 488
    goto/16 :goto_8
.end method

.method public declared-synchronized clearRules(Landroid/app/enterprise/ContextInfo;I)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "bitmask"    # I

    .prologue
    .line 494
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 495
    const/4 v2, 0x0

    .line 496
    .local v2, "position":I
    invoke-static {}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->values()[Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v6

    array-length v6, v6

    new-array v4, v6, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 497
    .local v4, "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "position":I
    .local v3, "position":I
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v6, p2, p1}, clearRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    aput-object v6, v4, v2

    .line 498
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "position":I
    .restart local v2    # "position":I
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v6, p2, p1}, clearRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    aput-object v6, v4, v3

    .line 499
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "position":I
    .restart local v3    # "position":I
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v6, p2, p1}, clearRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    aput-object v6, v4, v2

    .line 500
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "position":I
    .restart local v2    # "position":I
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v6, p2, p1}, clearRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    aput-object v6, v4, v3

    .line 502
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 503
    .local v5, "userId":I
    if-nez v5, :cond_50

    .line 504
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_57

    .line 506
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_42
    const-string v6, "Firewall"

    const-string v7, "clearRules"

    invoke-virtual {v1, v6, v7, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 507
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "clearRules calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_50} :catch_52
    .catchall {:try_start_42 .. :try_end_50} :catchall_57

    .line 512
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_50
    :goto_50
    monitor-exit p0

    return-object v4

    .line 508
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_52
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    :try_start_53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_50

    .line 494
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v2    # "position":I
    .end local v4    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v5    # "userId":I
    :catchall_57
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized enableDomainFilterReport(Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabled"    # Z

    .prologue
    .line 1047
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1048
    iget-object v0, p0, mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->enableDomainFilterReport(Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1047
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableFirewall(Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 653
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 654
    if-eqz p2, :cond_d

    .line 655
    invoke-direct {p0, p1}, enableFirewall(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result-object v0

    .line 657
    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    invoke-direct {p0, p1}, disableFirewall(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result-object v0

    goto :goto_b

    .line 653
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDomainFilterReport(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterReport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1057
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1058
    iget-object v0, p0, mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDomainFilterReport(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1042
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1043
    iget-object v0, p0, mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirewallOwner(I)I
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 807
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 808
    .local v0, "filterValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "userID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 810
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "FirewallStatus"

    sget-object v4, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 814
    .local v1, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 815
    :cond_21
    const/4 v2, -0x1

    .line 817
    :goto_22
    return v2

    :cond_23
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "adminUid"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_22
.end method

.method public getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "bitmask"    # I
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 829
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 831
    sget-object v9, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v9, p2, p1, p3}, getRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v0

    .line 832
    .local v0, "allowRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    sget-object v9, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v9, p2, p1, p3}, getRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v1

    .line 833
    .local v1, "denyRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    sget-object v9, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v9, p2, p1, p3}, getRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v7

    .line 834
    .local v7, "redirectRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    sget-object v9, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v9, p2, p1, p3}, getRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v6

    .line 837
    .local v6, "redirectExceptionRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v3, 0x0

    .line 838
    .local v3, "length":I
    if-eqz v0, :cond_21

    .line 839
    array-length v9, v0

    add-int/2addr v3, v9

    .line 841
    :cond_21
    if-eqz v1, :cond_25

    .line 842
    array-length v9, v1

    add-int/2addr v3, v9

    .line 844
    :cond_25
    if-eqz v7, :cond_29

    .line 845
    array-length v9, v7

    add-int/2addr v3, v9

    .line 847
    :cond_29
    if-eqz v6, :cond_2d

    .line 848
    array-length v9, v6

    add-int/2addr v3, v9

    .line 851
    :cond_2d
    new-array v8, v3, [Lcom/sec/enterprise/firewall/FirewallRule;

    .line 852
    .local v8, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v4, 0x0

    .line 853
    .local v4, "position":I
    if-eqz v0, :cond_40

    .line 854
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    array-length v9, v0

    if-ge v2, v9, :cond_40

    .line 855
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .local v5, "position":I
    aget-object v9, v0, v2

    aput-object v9, v8, v4

    .line 854
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_33

    .line 858
    .end local v2    # "i":I
    :cond_40
    if-eqz v1, :cond_50

    .line 859
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_43
    array-length v9, v1

    if-ge v2, v9, :cond_50

    .line 860
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .restart local v5    # "position":I
    aget-object v9, v1, v2

    aput-object v9, v8, v4

    .line 859
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_43

    .line 863
    .end local v2    # "i":I
    :cond_50
    if-eqz v7, :cond_60

    .line 864
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_53
    array-length v9, v7

    if-ge v2, v9, :cond_60

    .line 865
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .restart local v5    # "position":I
    aget-object v9, v7, v2

    aput-object v9, v8, v4

    .line 864
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_53

    .line 868
    .end local v2    # "i":I
    :cond_60
    if-eqz v6, :cond_70

    .line 869
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_63
    array-length v9, v6

    if-ge v2, v9, :cond_70

    .line 870
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .restart local v5    # "position":I
    aget-object v9, v6, v2

    aput-object v9, v8, v4

    .line 869
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_63

    .line 873
    .end local v2    # "i":I
    :cond_70
    return-object v8
.end method

.method public isDomainFilterReportEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1052
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1053
    iget-object v0, p0, mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 663
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 664
    .local v2, "filterValues":Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 665
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 666
    .local v3, "userId":I
    const-string v4, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 667
    const-string/jumbo v4, "userID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 668
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "FirewallStatus"

    sget-object v6, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 671
    .local v1, "cv":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_34

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    const/4 v4, 0x1

    :goto_33
    return v4

    :cond_34
    const/4 v4, 0x0

    goto :goto_33
.end method

.method public listIptablesRules(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 936
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 937
    iget-object v0, p0, mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->listIptablesRules(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1064
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 1068
    iget-object v0, p0, mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->adminRemoved(I)V

    .line 1069
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1074
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1079
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 1083
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1084
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1085
    .local v1, "userId":I
    invoke-virtual {p0, v1}, getFirewallOwner(I)I

    move-result v2

    if-ne v2, p1, :cond_18

    .line 1089
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, blockOrUnblockAll(ZI)V

    .line 1090
    iget-object v2, p0, mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->deleteRulesFromAdmin(Landroid/app/enterprise/ContextInfo;)V

    .line 1092
    :cond_18
    iget-object v2, p0, mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onPreAdminRemoval(I)V

    .line 1093
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1098
    return-void
.end method

.method public declared-synchronized removeDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/sec/enterprise/firewall/FirewallResponse;"
        }
    .end annotation

    .prologue
    .line 1036
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1037
    iget-object v0, p0, mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1036
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "rules"    # [Lcom/sec/enterprise/firewall/FirewallRule;

    .prologue
    .line 942
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8d

    move-result-object p1

    .line 943
    if-nez p2, :cond_a

    .line 944
    const/4 v3, 0x0

    .line 962
    :cond_8
    monitor-exit p0

    return-object v3

    .line 946
    :cond_a
    :try_start_a
    iget-object v4, p0, mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p1, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->changeRuleStatus([Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v0

    .line 948
    .local v0, "disableResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    array-length v4, p2

    new-array v3, v4, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 949
    .local v3, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    array-length v4, p2

    if-ge v1, v4, :cond_8

    .line 950
    aget-object v4, v0, v1

    if-eqz v4, :cond_31

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v4

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v4, v5}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 951
    aget-object v4, p2, v1

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$Status;->DISABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {v4, v5}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    .line 953
    :cond_31
    aget-object v4, p2, v1

    invoke-direct {p0, p1, v4}, removeRule(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v2

    .line 954
    .local v2, "response":Lcom/sec/enterprise/firewall/FirewallResponse;
    if-eqz v2, :cond_8a

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v4

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v4, v5}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 955
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v6, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallResponse;->getErrorCode()Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v1

    if-nez v4, :cond_70

    const-string v4, ""

    :goto_58
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v4}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v5, v3, v1

    .line 949
    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 955
    :cond_70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v1

    invoke-virtual {v9}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_58

    .line 959
    :cond_8a
    aput-object v2, v3, v1
    :try_end_8c
    .catchall {:try_start_a .. :try_end_8c} :catchall_8d

    goto :goto_6d

    .line 942
    .end local v0    # "disableResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v1    # "i":I
    .end local v2    # "response":Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v3    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :catchall_8d
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 1102
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 1103
    return-void
.end method
