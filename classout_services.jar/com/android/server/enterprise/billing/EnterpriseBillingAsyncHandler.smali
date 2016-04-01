.class public Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;
.super Ljava/lang/Thread;
.source "EnterpriseBillingAsyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;
    }
.end annotation


# static fields
.field private static final ACTION_ADMIN_CHANGED:I = 0x2

.field private static final ACTION_APN_CHANGE:I = 0x5

.field private static final ACTION_BOOT_COMPLETE:I = 0x3

.field private static final ACTION_PACKAGE_MODIFIED:I = 0x1

.field private static final ACTION_TELEPHONY_CHANGE:I = 0x4

.field private static final ACTION_USER_REMOVED:I = 0x0

.field private static final INTENT_CONTAINER_ADMIN_CHANGED_ACTION:Ljava/lang/String; = "enterprise.container.admin.changed"

.field private static final TAG:Ljava/lang/String; = "EnterpriseBillingAsyncHandler"

.field private static sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;


# instance fields
.field private bootCompletereceiver:Landroid/content/BroadcastReceiver;

.field private containerAdminChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mApnObserver:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;

.field private mContext:Landroid/content/Context;

.field private mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

.field private mHandler:Landroid/os/Handler;

.field private packageModificationReceiver:Landroid/content/BroadcastReceiver;

.field private telephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private userRemovalReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ebpInternal"    # Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 158
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$2;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, userRemovalReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, packageModificationReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$4;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, containerAdminChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$5;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$5;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, bootCompletereceiver:Landroid/content/BroadcastReceiver;

    .line 213
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$6;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$6;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, telephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 49
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    .prologue
    .line 20
    iget-object v0, p0, mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    .prologue
    .line 20
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;)Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ebpInternal"    # Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    .prologue
    .line 55
    sget-object v0, sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    if-nez v0, :cond_13

    .line 56
    const-class v1, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    monitor-enter v1

    .line 57
    :try_start_7
    sget-object v0, sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    if-nez v0, :cond_12

    .line 58
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-direct {v0, p0, p1}, <init>(Landroid/content/Context;Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;)V

    sput-object v0, sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    .line 60
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 63
    :cond_13
    sget-object v0, sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    return-object v0

    .line 60
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private initialize()V
    .registers 18

    .prologue
    .line 69
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v4, "userRemovalFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, userRemovalReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 73
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v8, "packageModificationFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, packageModificationReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 84
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v12, "containerAdminChangeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "enterprise.container.admin.changed"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v9, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, containerAdminChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 88
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v15, "bootCompleteFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, bootCompletereceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 94
    .local v16, "telephonyManager":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v1, v0, telephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 96
    new-instance v1, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, mApnObserver:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, mApnObserver:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 104
    const-string v0, "EnterpriseBillingAsyncHandler"

    const-string/jumbo v1, "run - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, initialize()V

    .line 108
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 110
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$1;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 148
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 150
    const-string v0, "EnterpriseBillingAsyncHandler"

    const-string/jumbo v1, "run - end - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method
