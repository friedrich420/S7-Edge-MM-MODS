.class public Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.super Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager$Stub;
.source "UniversalCredentialManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;,
        Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;,
        Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UcsReceiver;
    }
.end annotation


# static fields
.field private static final ALL_PACKAGES:Ljava/lang/String; = "*"

.field private static final BOOT_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.boot"

.field private static final CAC_PLUGIN_PACKAGE:Ljava/lang/String; = "com.sec.smartcard.manager"

.field private static final CA_CERT_FILE_NAME:Ljava/lang/String; = "UCM_CA_CERT"

.field private static final CRED_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final CRED_VENDOR_INFO:Ljava/lang/String; = "vendorId"

.field private static DBG:Z = false

.field private static final ESE_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.ese"

.field private static final ESE_PLUGIN_UNIQUE_ID:Ljava/lang/String; = "com.samsung.ucs.agent.ese:eSE Credential Storage"

.field private static final EVENT_LICENSE_ACTIVATE:I = 0x1

.field private static final EVENT_LICENSE_EXPIRED:I = 0x2

.field private static final KNOX_UCM_ESE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_ESE"

.field private static final KNOX_UCM_OTHER_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_OTHER"

.field private static final KNOX_UCM_PLUGIN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

.field private static TAG:Ljava/lang/String;

.field private static mUcseService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private activePluginsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adminIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private exemptedAppsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expiredAdmins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBReciever:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPkgReciever:Landroid/content/BroadcastReceiver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRIdGenerator:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;

.field private mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

.field private mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

.field private mUniversalCredentialUtil:Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

.field private systemPlugin:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ucsCertLocation:Ljava/io/File;

.field private whitelistedAppsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 125
    const/4 v0, 0x1

    sput-boolean v0, DBG:Z

    .line 126
    const-string v0, "UniversalCredentialManagerService"

    sput-object v0, TAG:Ljava/lang/String;

    .line 129
    sput-object v1, sContext:Landroid/content/Context;

    .line 150
    sput-object v1, mUcseService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 20
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager$Stub;-><init>()V

    .line 128
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mContext:Landroid/content/Context;

    .line 130
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 131
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, systemPlugin:Ljava/util/List;

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, adminIds:Ljava/util/List;

    .line 145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, expiredAdmins:Ljava/util/HashMap;

    .line 146
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, activePluginsCache:Ljava/util/HashMap;

    .line 147
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, whitelistedAppsCache:Ljava/util/HashMap;

    .line 148
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, exemptedAppsCache:Ljava/util/HashMap;

    .line 149
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    .line 151
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mUniversalCredentialUtil:Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    .line 152
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mRIdGenerator:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;

    .line 153
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mPm:Landroid/content/pm/PackageManager;

    .line 154
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, ucsCertLocation:Ljava/io/File;

    .line 155
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    .line 343
    new-instance v2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$1;-><init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mBReciever:Landroid/content/BroadcastReceiver;

    .line 364
    new-instance v2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;-><init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mPkgReciever:Landroid/content/BroadcastReceiver;

    .line 161
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_87

    .line 162
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_87
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mContext:Landroid/content/Context;

    .line 164
    sput-object p1, sContext:Landroid/content/Context;

    .line 165
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 166
    new-instance v2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;-><init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    .line 167
    new-instance v2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;

    invoke-direct {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mRIdGenerator:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;

    .line 168
    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-direct {v2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mPm:Landroid/content/pm/PackageManager;

    .line 171
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v5, "systemFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mBReciever:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 179
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v9, "systemFilter1":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string/jumbo v2, "package"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, mPkgReciever:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 184
    new-instance v14, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UcsReceiver;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UcsReceiver;-><init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    .line 185
    .local v14, "mUcsReceiver":Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UcsReceiver;
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v13, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.knox.usm.plugin.CONFIG_STATUS"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v13, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 190
    .local v15, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    invoke-virtual {v2, v15}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    .line 193
    .local v12, "dataDir":Ljava/io/File;
    new-instance v17, Ljava/io/File;

    const-string/jumbo v2, "system"

    move-object/from16 v0, v17

    invoke-direct {v0, v12, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .local v17, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "ucm_ca_cert"

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, ucsCertLocation:Ljava/io/File;

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, ucsCertLocation:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_18c

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, ucsCertLocation:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_18c

    .line 197
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error!!! Cannot create root directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, ucsCertLocation:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_18c
    move-object/from16 v0, p0

    iget-object v2, v0, mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 202
    .local v16, "msg1":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, systemPlugin:Ljava/util/List;

    const-string v3, "com.samsung.ucs.agent.boot"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, systemPlugin:Ljava/util/List;

    const-string v3, "com.samsung.ucs.agent.ese"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, systemPlugin:Ljava/util/List;

    const-string v3, "com.sec.smartcard.manager"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 122
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .prologue
    .line 122
    iget-object v0, p0, mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .prologue
    .line 122
    iget-object v0, p0, activePluginsCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1}, getAdminIdRelatedToStorage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1}, performStorageCleanup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .prologue
    .line 122
    iget-object v0, p0, whitelistedAppsCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, performWhitelistAppCleanup(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .prologue
    .line 122
    iget-object v0, p0, exemptedAppsCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, performExemptedAppCleanup(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .prologue
    .line 122
    invoke-direct {p0}, getActivePlugin()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .prologue
    .line 122
    invoke-direct {p0}, getAllWhitelistedApps()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .prologue
    .line 122
    invoke-direct {p0}, getAllExemptedApps()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .prologue
    .line 122
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .prologue
    .line 122
    invoke-direct {p0}, getAllUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, processAdminLicenseExpiry(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .prologue
    .line 122
    iget-object v0, p0, mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .prologue
    .line 122
    invoke-direct {p0}, installCACertOnBoot()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, performUserCleanup(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .prologue
    .line 122
    invoke-direct {p0}, getAllAdmins()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .prologue
    .line 122
    iget-object v0, p0, adminIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, notifyAdminUninstall(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, performAdminCleanup(I)V

    return-void
.end method

.method private addOrUpdateDefaultInstallStorage(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 15
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    const/4 v8, 0x0

    .line 3106
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_c

    .line 3107
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "addOrUpdateDefaultInstallStorage is called..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    :cond_c
    const/4 v5, 0x0

    .line 3110
    .local v5, "ret":Z
    if-nez p3, :cond_1b

    .line 3111
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_1a

    .line 3112
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "addOrUpdateDefaultInstallStorage - Invalid Arguments"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    :cond_1a
    :goto_1a
    return v8

    .line 3116
    :cond_1b
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_59

    .line 3117
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addOrUpdateDefaultInstallStorage adminUid - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ContainerId - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Storage Name- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Storage Package name - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    :cond_59
    :try_start_59
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3125
    .local v0, "adminId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3126
    .local v1, "contId":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adminUid"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "userId"

    aput-object v9, v6, v8

    .line 3129
    .local v6, "sColumns":[Ljava/lang/String;
    const/4 v8, 0x2

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    .line 3133
    .local v7, "sValues":[Ljava/lang/String;
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 3136
    .local v4, "oldResult":Z
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addOrUpdateDefaultInstallStorage oldResult-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3138
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3139
    const-string/jumbo v8, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3140
    const-string/jumbo v8, "storageName"

    iget-object v9, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    const-string/jumbo v8, "storagePackageName"

    iget-object v9, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3143
    iget-object v8, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    if-eqz v8, :cond_d4

    iget-object v8, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_d4

    .line 3144
    const-string/jumbo v8, "storageManufacture"

    iget-object v9, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3147
    :cond_d4
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v8, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_db} :catch_f7

    move-result v5

    .line 3156
    .end local v0    # "adminId":Ljava/lang/String;
    .end local v1    # "contId":Ljava/lang/String;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "oldResult":Z
    .end local v6    # "sColumns":[Ljava/lang/String;
    .end local v7    # "sValues":[Ljava/lang/String;
    :cond_dc
    :goto_dc
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addOrUpdateDefaultInstallStorage retcode-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v5

    .line 3157
    goto/16 :goto_1a

    .line 3150
    :catch_f7
    move-exception v3

    .line 3151
    .local v3, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 3152
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_dc

    .line 3153
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addOrUpdateDefaultInstallStorage - Exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc
.end method

.method private addOrUpdateSecureStorageConfig(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Z)Z
    .registers 17
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p4, "enable"    # Z

    .prologue
    .line 1424
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_b

    .line 1425
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "addOrUpdateSecureStorageConfig is called..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_b
    const/4 v6, 0x0

    .line 1429
    .local v6, "ret":Z
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_4a

    .line 1430
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addOrUpdateSecureStorageConfig adminUid - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ContainerId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Storage Name- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Storage Package name - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_4a
    if-nez p4, :cond_e0

    .line 1437
    iget-object v9, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v10, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v9, v10}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a5

    .line 1438
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "addOrUpdateSecureStorageConfig - Removing Credential Storage for Admin"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const/4 v5, 0x0

    .line 1441
    .local v5, "result":Z
    const/4 v9, 0x4

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "userId"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "storageName"

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "storagePackageName"

    aput-object v10, v7, v9

    .line 1446
    .local v7, "sColumns":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v10, v8, v9

    .line 1451
    .local v8, "sValues":[Ljava/lang/String;
    :try_start_93
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "UniversalCredentialInfoTable"

    invoke-virtual {v9, v10, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    .line 1453
    if-eqz v6, :cond_a5

    .line 1454
    const/16 v9, 0xa

    invoke-direct {p0, v9, p1, p2, p3}, notifyToPlugin(IIILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 1455
    invoke-direct {p0, p1, p2, p3}, performCredentialStorageCleanup(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a5} :catch_be

    .line 1516
    .end local v5    # "result":Z
    .end local v7    # "sColumns":[Ljava/lang/String;
    .end local v8    # "sValues":[Ljava/lang/String;
    :cond_a5
    :goto_a5
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addOrUpdateSecureStorageConfig retcode-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    return v6

    .line 1457
    .restart local v5    # "result":Z
    .restart local v7    # "sColumns":[Ljava/lang/String;
    .restart local v8    # "sValues":[Ljava/lang/String;
    :catch_be
    move-exception v3

    .line 1458
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_a5

    .line 1459
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addOrUpdateSecureStorageConfig - Exception delete"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 1465
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "result":Z
    .end local v7    # "sColumns":[Ljava/lang/String;
    .end local v8    # "sValues":[Ljava/lang/String;
    :cond_e0
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_eb

    .line 1466
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "addOrUpdateSecureStorageConfig - enabling CS..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_eb
    const/4 v4, 0x0

    .line 1468
    .local v4, "pluginUid":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1469
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1470
    const-string/jumbo v9, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1471
    const-string/jumbo v9, "storageName"

    iget-object v10, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    const-string/jumbo v9, "storagePackageName"

    iget-object v10, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    :try_start_114
    iget-object v9, p0, mPm:Landroid/content/pm/PackageManager;

    iget-object v10, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    .line 1476
    const-string v9, "appUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1478
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "UniversalCredentialInfoTable"

    invoke-virtual {v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 1480
    .local v0, "count":I
    if-lez v0, :cond_1b2

    .line 1482
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1483
    .local v1, "cv":Landroid/content/ContentValues;
    iget-object v9, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    if-eqz v9, :cond_149

    iget-object v9, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_149

    .line 1484
    const-string/jumbo v9, "storageManufacture"

    iget-object v10, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    :cond_149
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "UniversalCredentialInfoTable"

    invoke-virtual {v9, v10, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v6

    .line 1503
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_151
    :goto_151
    iget-object v9, p0, activePluginsCache:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a5

    .line 1504
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addOrUpdateSecureStorageConfig - adding new plugin in cache pluginUid-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",pkg-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    iget-object v9, p0, activePluginsCache:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_18c} :catch_18e

    goto/16 :goto_a5

    .line 1507
    .end local v0    # "count":I
    :catch_18e
    move-exception v3

    .line 1508
    .restart local v3    # "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 1509
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_a5

    .line 1510
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addOrUpdateSecureStorageConfig - Exception addOrUpdateSecureStorageConfig"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a5

    .line 1491
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    :cond_1b2
    :try_start_1b2
    iget-object v9, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    if-eqz v9, :cond_1c6

    iget-object v9, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1c6

    .line 1492
    const-string/jumbo v9, "storageManufacture"

    iget-object v10, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    :cond_1c6
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "UniversalCredentialInfoTable"

    invoke-virtual {v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    .line 1498
    iget-object v9, p0, adminIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_151

    .line 1499
    iget-object v9, p0, adminIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1e3} :catch_18e

    goto/16 :goto_151
.end method

.method private addPackagesToWhiteListMain(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .registers 28
    .param p1, "adminId"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1623
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "addPackagesToWhiteListMain is called...."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1628
    .local v20, "id":J
    :try_start_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz p4, :cond_19

    if-nez p5, :cond_2a

    .line 1629
    :cond_19
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_24

    .line 1630
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "addPackagesToWhiteList - Invalid Arguments"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_24} :catch_133
    .catchall {:try_start_b .. :try_end_24} :catchall_154

    .line 1631
    :cond_24
    const/16 v4, -0xb

    .line 1687
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1690
    :goto_29
    return v4

    .line 1634
    :cond_2a
    :try_start_2a
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_54

    .line 1635
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPackagesToWhiteList is called for Caller UID-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mContainerId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_54
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 1640
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "Plugin is not active"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_65} :catch_133
    .catchall {:try_start_2a .. :try_end_65} :catchall_154

    .line 1641
    const/16 v4, -0xd

    .line 1687
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_29

    .line 1645
    :cond_6b
    const/4 v4, 0x1

    :try_start_6c
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v5, v6}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eq v4, v5, :cond_91

    .line 1646
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_8b

    .line 1647
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "addPackagesToWhiteList return false.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_8b} :catch_133
    .catchall {:try_start_6c .. :try_end_8b} :catchall_154

    .line 1648
    :cond_8b
    const/16 v4, -0xc

    .line 1687
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_29

    .line 1651
    :cond_91
    :try_start_91
    const-string v4, "access_type"

    const/4 v5, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 1654
    .local v16, "accessType":I
    const/4 v9, 0x0

    .line 1656
    .local v9, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, isValidAccessType(I)Z

    move-result v4

    if-nez v4, :cond_b7

    .line 1657
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_b0

    .line 1658
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "addPackagesToWhiteList not passed valid access_type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_b0} :catch_133
    .catchall {:try_start_91 .. :try_end_b0} :catchall_154

    .line 1659
    :cond_b0
    const/16 v4, -0xf

    .line 1687
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_29

    .line 1662
    :cond_b7
    const/16 v4, 0x68

    move/from16 v0, v16

    if-ne v0, v4, :cond_11c

    .line 1663
    :try_start_bd
    const-string v4, "alias"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1664
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPackagesToWhiteList alias-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 1666
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_ee

    .line 1667
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "addPackagesToWhiteList alias name not provided for Certificate access_type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_ee} :catch_133
    .catchall {:try_start_bd .. :try_end_ee} :catchall_154

    .line 1669
    :cond_ee
    const/16 v4, -0x10

    .line 1687
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_29

    .line 1672
    :cond_f5
    const/4 v10, 0x1

    :try_start_f6
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v4 .. v9}, checkCredentialStorageAliasForAdmin(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eq v10, v4, :cond_11c

    .line 1674
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_115

    .line 1675
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "- alias not exist for credential storage..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_115} :catch_133
    .catchall {:try_start_f6 .. :try_end_115} :catchall_154

    .line 1676
    :cond_115
    const/16 v4, -0xe

    .line 1687
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_29

    :cond_11c
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p5

    move-object/from16 v17, v9

    .line 1681
    :try_start_12a
    invoke-direct/range {v10 .. v17}, insertOrUpdateWhiteListPackages(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/util/List;IILandroid/os/Bundle;ILjava/lang/String;)I
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_12d} :catch_133
    .catchall {:try_start_12a .. :try_end_12d} :catchall_154

    move-result v4

    .line 1687
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_29

    .line 1684
    .end local v9    # "alias":Ljava/lang/String;
    .end local v16    # "accessType":I
    :catch_133
    move-exception v18

    .line 1685
    .local v18, "e":Ljava/lang/Exception;
    :try_start_134
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPackagesToWhiteList Exception -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catchall {:try_start_134 .. :try_end_14e} :catchall_154

    .line 1687
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1690
    const/4 v4, -0x1

    goto/16 :goto_29

    .line 1687
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_154
    move-exception v4

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private checkCACertAliasForAdmin(IILjava/lang/String;)Z
    .registers 10
    .param p1, "adminId"    # I
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 5488
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_b

    .line 5489
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "checkCACertAliasForAdmin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5491
    :cond_b
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3b

    .line 5492
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdminId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UserId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", alias - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5496
    :cond_3b
    :try_start_3b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5497
    .local v0, "cvW":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5498
    const-string/jumbo v3, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5499
    const-string v3, "alias"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5501
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "UniversalCredentialCACertificateTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 5504
    .local v2, "rowCount":I
    if-lez v2, :cond_90

    .line 5505
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_6d

    .line 5506
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "checkCACertAliasForAdmin Exists"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_6d} :catch_6f

    .line 5507
    :cond_6d
    const/4 v3, 0x1

    .line 5514
    .end local v0    # "cvW":Landroid/content/ContentValues;
    .end local v2    # "rowCount":I
    :goto_6e
    return v3

    .line 5509
    :catch_6f
    move-exception v1

    .line 5510
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_90

    .line 5511
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCACertAliasForAdmin - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5514
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_90
    const/4 v3, 0x0

    goto :goto_6e
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 836
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCallerPermissionFor is called for method-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const-string v1, "UniversalCredentialManagerService"

    .line 838
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_76

    .line 839
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 841
    .local v0, "e":Ljava/lang/SecurityException;
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_75

    .line 842
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 844
    :cond_75
    throw v0

    .line 846
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_76
    const/4 v2, 0x0

    return v2
.end method

.method private checkCredentialStorageAliasForAdmin(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "adminId"    # I
    .param p2, "userId"    # I
    .param p3, "storageName"    # Ljava/lang/String;
    .param p4, "storagePackageName"    # Ljava/lang/String;
    .param p5, "alias"    # Ljava/lang/String;

    .prologue
    .line 5519
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_b

    .line 5520
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "checkCredentialStorageAliasForAdmin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5522
    :cond_b
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_41

    .line 5523
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdminId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UserId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", storageName - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5527
    :cond_41
    :try_start_41
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5528
    .local v0, "cvW":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5529
    const-string/jumbo v3, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5530
    const-string/jumbo v3, "storageName"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5531
    const-string/jumbo v3, "storagePackageName"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5532
    const-string v3, "alias"

    invoke-virtual {v0, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5534
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "UniversalCredentialCertificateTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 5537
    .local v2, "rowCount":I
    if-lez v2, :cond_a2

    .line 5538
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_7f

    .line 5539
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "checkCredentialStorageAliasForAdmin Exists"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_7f} :catch_81

    .line 5540
    :cond_7f
    const/4 v3, 0x1

    .line 5547
    .end local v0    # "cvW":Landroid/content/ContentValues;
    .end local v2    # "rowCount":I
    :goto_80
    return v3

    .line 5542
    :catch_81
    move-exception v1

    .line 5543
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_a2

    .line 5544
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCredentialStorageAliasForAdmin - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5547
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a2
    const/4 v3, 0x0

    goto :goto_80
.end method

.method private checkCredentialStorageExists(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "storageName"    # Ljava/lang/String;
    .param p3, "storagePackageName"    # Ljava/lang/String;

    .prologue
    .line 5317
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_b

    .line 5318
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "checkCredentialStorageExists"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5320
    :cond_b
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3b

    .line 5321
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", storageName - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and storagePackageName-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5325
    :cond_3b
    :try_start_3b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5326
    .local v0, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v3, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5327
    const-string/jumbo v3, "storageName"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5328
    const-string/jumbo v3, "storagePackageName"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5330
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "UniversalCredentialInfoTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 5333
    .local v2, "rowCount":I
    if-lez v2, :cond_8e

    .line 5334
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_6b

    .line 5335
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "checkCredentialStorageExists Exists"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_6b} :catch_6d

    .line 5336
    :cond_6b
    const/4 v3, 0x1

    .line 5343
    .end local v0    # "cvW":Landroid/content/ContentValues;
    .end local v2    # "rowCount":I
    :goto_6c
    return v3

    .line 5338
    :catch_6d
    move-exception v1

    .line 5339
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_8e

    .line 5340
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCredentialStorageExists - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5343
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8e
    const/4 v3, 0x0

    goto :goto_6c
.end method

.method private checkCredentialStorageExistsForAdmin(IILjava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "adminId"    # I
    .param p2, "userId"    # I
    .param p3, "storageName"    # Ljava/lang/String;
    .param p4, "storagePackageName"    # Ljava/lang/String;

    .prologue
    .line 5457
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_b

    .line 5458
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "checkCredentialStorageExistsForAdmin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    :cond_b
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_41

    .line 5461
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdminId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UserId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", storageName - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5465
    :cond_41
    :try_start_41
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5466
    .local v0, "cvW":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5467
    const-string/jumbo v3, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5468
    const-string/jumbo v3, "storageName"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5469
    const-string/jumbo v3, "storagePackageName"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5471
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "UniversalCredentialInfoTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 5474
    .local v2, "rowCount":I
    if-lez v2, :cond_9d

    .line 5475
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_7a

    .line 5476
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "checkCredentialStorageExistsForAdmin Exists"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_7a} :catch_7c

    .line 5477
    :cond_7a
    const/4 v3, 0x1

    .line 5484
    .end local v0    # "cvW":Landroid/content/ContentValues;
    .end local v2    # "rowCount":I
    :goto_7b
    return v3

    .line 5479
    :catch_7c
    move-exception v1

    .line 5480
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_9d

    .line 5481
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCredentialStorageExistsForAdmin - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5484
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9d
    const/4 v3, 0x0

    goto :goto_7b
.end method

.method private checkDefaultInstallCredentialStorageExists(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "storageName"    # Ljava/lang/String;
    .param p3, "storagePackageName"    # Ljava/lang/String;

    .prologue
    .line 5348
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_b

    .line 5349
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "checkDefaultInstallCredentialStorageExists"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5351
    :cond_b
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3b

    .line 5352
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDefaultInstallCredentialStorageExists UserId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", storageName - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and storagePackageName-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5357
    :cond_3b
    :try_start_3b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5358
    .local v0, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v3, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5359
    const-string/jumbo v3, "storageName"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5360
    const-string/jumbo v3, "storagePackageName"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5362
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 5365
    .local v2, "rowCount":I
    if-lez v2, :cond_8e

    .line 5366
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_6b

    .line 5367
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "checkDefaultInstallCredentialStorageExists Exists"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_6b} :catch_6d

    .line 5368
    :cond_6b
    const/4 v3, 0x1

    .line 5376
    .end local v0    # "cvW":Landroid/content/ContentValues;
    .end local v2    # "rowCount":I
    :goto_6c
    return v3

    .line 5370
    :catch_6d
    move-exception v1

    .line 5371
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_8e

    .line 5372
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDefaultInstallCredentialStorageExists - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5376
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8e
    const/4 v3, 0x0

    goto :goto_6c
.end method

.method private checkDefaultInstallCredentialStorageExistsForAdmin(IILjava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "adminId"    # I
    .param p2, "userId"    # I
    .param p3, "storageName"    # Ljava/lang/String;
    .param p4, "storagePackageName"    # Ljava/lang/String;

    .prologue
    .line 5381
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_b

    .line 5382
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "checkDefaultInstallCredentialStorageExistsForAdmin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5384
    :cond_b
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_41

    .line 5385
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdminId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UserId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", storageName - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5389
    :cond_41
    :try_start_41
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5390
    .local v0, "cvW":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5391
    const-string/jumbo v3, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5392
    if-eqz p3, :cond_61

    .line 5393
    const-string/jumbo v3, "storageName"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5395
    :cond_61
    if-eqz p4, :cond_69

    .line 5396
    const-string/jumbo v3, "storagePackageName"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5398
    :cond_69
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 5401
    .local v2, "rowCount":I
    if-lez v2, :cond_a1

    .line 5402
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_7e

    .line 5403
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "checkDefaultInstallCredentialStorageExistsForAdmin Exists"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_7e} :catch_80

    .line 5404
    :cond_7e
    const/4 v3, 0x1

    .line 5413
    .end local v0    # "cvW":Landroid/content/ContentValues;
    .end local v2    # "rowCount":I
    :goto_7f
    return v3

    .line 5406
    :catch_80
    move-exception v1

    .line 5407
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_a1

    .line 5408
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDefaultInstallCredentialStorageExistsForAdmin - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5413
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a1
    const/4 v3, 0x0

    goto :goto_7f
.end method

.method private clearWhiteListPackages(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;IIILjava/lang/String;)Z
    .registers 13
    .param p1, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p2, "adminId"    # I
    .param p3, "userId"    # I
    .param p4, "accessType"    # I
    .param p5, "alias"    # Ljava/lang/String;

    .prologue
    .line 2557
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_b

    .line 2558
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "clearWhiteListPackages is called..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    :cond_b
    const/4 v1, 0x0

    .line 2562
    .local v1, "ret":Z
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_4a

    .line 2563
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ContainerId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Storage name - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Storage Package - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    :cond_4a
    if-nez p5, :cond_e8

    .line 2568
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearWhiteListPackages access_type-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    const/4 v4, 0x5

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "userId"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "storageName"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "storagePackageName"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "accessType"

    aput-object v5, v2, v4

    .line 2575
    .local v2, "sColumns":[Ljava/lang/String;
    const/4 v4, 0x5

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2580
    .local v3, "sValues":[Ljava/lang/String;
    :try_start_a5
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "UniversalCredentialWhiteListTable"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ac} :catch_c6

    move-result v1

    .line 2609
    :cond_ad
    :goto_ad
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearWhiteListPackages retcode-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    return v1

    .line 2582
    :catch_c6
    move-exception v0

    .line 2583
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_ad

    .line 2584
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearWhiteListPackages - Exception delete"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 2588
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :cond_e8
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeWhiteListPackages access_type-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and alias-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    const/4 v4, 0x6

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "userId"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "storageName"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "storagePackageName"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "accessType"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "alias"

    aput-object v5, v2, v4

    .line 2596
    .restart local v2    # "sColumns":[Ljava/lang/String;
    const/4 v4, 0x6

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p5, v3, v4

    .line 2601
    .restart local v3    # "sValues":[Ljava/lang/String;
    :try_start_154
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "UniversalCredentialWhiteListTable"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_15b} :catch_15e

    move-result v1

    goto/16 :goto_ad

    .line 2603
    :catch_15e
    move-exception v0

    .line 2604
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_ad

    .line 2605
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearWhiteListPackages - Exception delete"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ad
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .registers 11
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v6, 0x0

    .line 5589
    if-nez p0, :cond_b

    .line 5590
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "Signature s1 is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5612
    :goto_a
    return v6

    .line 5593
    :cond_b
    if-nez p1, :cond_15

    .line 5594
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "Signature s2 is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 5598
    :cond_15
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5599
    .local v3, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1d
    if-ge v1, v2, :cond_27

    aget-object v5, v0, v1

    .line 5600
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5599
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 5602
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_27
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 5603
    .local v4, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2f
    if-ge v1, v2, :cond_39

    aget-object v5, v0, v1

    .line 5604
    .restart local v5    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5603
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 5607
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_39
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 5608
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "Signature match"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5609
    const/4 v6, 0x1

    goto :goto_a

    .line 5611
    :cond_48
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "Signature doesn\'t match"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private configureCredentialStorageInternal(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Z)I
    .registers 13
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p4, "enable"    # Z

    .prologue
    .line 1125
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1127
    .local v2, "id":J
    if-eqz p4, :cond_10

    .line 1128
    :try_start_6
    invoke-direct {p0, p3, p1}, isValidCredentialStorage(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_20
    .catchall {:try_start_6 .. :try_end_9} :catchall_3d

    move-result v4

    .line 1129
    .local v4, "validStatus":I
    if-eqz v4, :cond_10

    .line 1140
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1142
    .end local v4    # "validStatus":I
    :goto_f
    return v4

    .line 1133
    :cond_10
    :try_start_10
    invoke-direct {p0, p1, p2, p3, p4}, addOrUpdateSecureStorageConfig(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Z)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_20
    .catchall {:try_start_10 .. :try_end_13} :catchall_3d

    move-result v1

    .line 1134
    .local v1, "success":Z
    if-eqz v1, :cond_1b

    .line 1135
    const/4 v4, 0x0

    .line 1140
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f

    :cond_1b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1142
    .end local v1    # "success":Z
    :goto_1e
    const/4 v4, -0x1

    goto :goto_f

    .line 1137
    :catch_20
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/Exception;
    :try_start_21
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configureCredentialStorageInternal exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_3d

    .line 1140
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3d
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private convertStringToSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 10
    .param p1, "sigs"    # Ljava/lang/String;

    .prologue
    .line 5617
    const/4 v4, 0x0

    .line 5618
    .local v4, "signatures":[Landroid/content/pm/Signature;
    if-eqz p1, :cond_bf

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bf

    .line 5619
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_27

    .line 5620
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertStringToSignature providerList sig:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5621
    :cond_27
    const-string v5, ","

    invoke-static {p1, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5622
    .local v3, "sigStrings":[Ljava/lang/String;
    if-eqz v3, :cond_b1

    array-length v5, v3

    if-lez v5, :cond_b1

    .line 5623
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertStringToSignature providerList sigStrings:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5624
    array-length v5, v3

    new-array v4, v5, [Landroid/content/pm/Signature;

    .line 5625
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4f
    array-length v5, v3

    if-ge v1, v5, :cond_b1

    .line 5626
    aget-object v5, v3, v1

    if-eqz v5, :cond_a9

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a9

    .line 5627
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_82

    .line 5628
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertStringToSignature creating signatures : ----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    :cond_82
    :try_start_82
    new-instance v2, Landroid/content/pm/Signature;

    aget-object v5, v3, v1

    invoke-direct {v2, v5}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 5632
    .local v2, "s":Landroid/content/pm/Signature;
    if-eqz v2, :cond_a9

    .line 5633
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_a7

    .line 5634
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertStringToSignature signature :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5635
    :cond_a7
    aput-object v2, v4, v1
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_a9} :catch_ac

    .line 5625
    .end local v2    # "s":Landroid/content/pm/Signature;
    :cond_a9
    :goto_a9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 5637
    :catch_ac
    move-exception v0

    .line 5638
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a9

    .line 5644
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_b1
    if-eqz v4, :cond_bf

    array-length v5, v4

    if-lez v5, :cond_bf

    .line 5646
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "convertStringToSignature SUCCESS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 5650
    .end local v3    # "sigStrings":[Ljava/lang/String;
    :goto_be
    return-object v5

    :cond_bf
    const/4 v5, 0x0

    goto :goto_be
.end method

.method private deleteCACertificateUsingAdminId(IILjava/lang/String;)Z
    .registers 16
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 3831
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_1f

    .line 3832
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "deleteCACertificateUsingAdminId is called for alias-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    :cond_1f
    const/4 v4, 0x0

    .line 3835
    .local v4, "ret":Z
    :try_start_20
    invoke-direct {p0, p1, p2, p3}, getCACertLocation(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3836
    .local v1, "certLocation":Ljava/lang/String;
    invoke-direct {p0, p3, p2, p1, v1}, removeCertificatefromTIMA(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v8

    if-eq v11, v8, :cond_37

    .line 3837
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_36

    .line 3838
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "deleteCACertificateUsingAdminId - removeCertificatefromProvider failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    .end local v1    # "certLocation":Ljava/lang/String;
    :cond_36
    :goto_36
    return v7

    .line 3843
    .restart local v1    # "certLocation":Ljava/lang/String;
    :cond_37
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3844
    .local v0, "adminId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3845
    .local v2, "contId":Ljava/lang/String;
    const/4 v7, 0x3

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "userId"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "alias"

    aput-object v8, v5, v7

    .line 3849
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x3

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    .line 3853
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "UniversalCredentialCACertificateTable"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 3855
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteCACertificateUsingAdminId is successful for alias-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_7f} :catch_81

    .end local v0    # "adminId":Ljava/lang/String;
    .end local v1    # "certLocation":Ljava/lang/String;
    .end local v2    # "contId":Ljava/lang/String;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :cond_7f
    :goto_7f
    move v7, v4

    .line 3861
    goto :goto_36

    .line 3857
    :catch_81
    move-exception v3

    .line 3858
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_7f

    .line 3859
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteCACertificateUsingAdminId - Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f
.end method

.method private deleteCertificateMain(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .registers 16
    .param p1, "adminId"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 3737
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificateMain is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3741
    .local v8, "id":J
    :try_start_d
    invoke-direct {p0, p3}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p4, :cond_1b

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2d

    .line 3743
    :cond_1b
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_27

    .line 3744
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_27} :catch_ee
    .catchall {:try_start_d .. :try_end_27} :catchall_10b

    .line 3745
    :cond_27
    const/16 v7, -0xb

    .line 3788
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3791
    :goto_2c
    return v7

    .line 3748
    :cond_2d
    :try_start_2d
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_54

    .line 3749
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteCertificate is called for Caller UID-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mContainerId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    :cond_54
    invoke-direct {p0, p3}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 3754
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Plugin is not active"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_61} :catch_ee
    .catchall {:try_start_2d .. :try_end_61} :catchall_10b

    .line 3755
    const/16 v7, -0xd

    .line 3788
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2c

    .line 3758
    :cond_67
    :try_start_67
    invoke-direct {p0, p4}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 3760
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_92

    .line 3761
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteCertificate userId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and adminId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    :cond_92
    iget-object v3, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v4, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, checkCredentialStorageAliasForAdmin(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eq v10, v0, :cond_b2

    .line 3766
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_ab

    .line 3767
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "- alias not exist for credential storage..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_ab} :catch_ee
    .catchall {:try_start_67 .. :try_end_ab} :catchall_10b

    .line 3768
    :cond_ab
    const/16 v7, -0xe

    .line 3788
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2c

    .line 3771
    :cond_b2
    :try_start_b2
    iget-object v1, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p4

    move v4, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, removeCertificatefromProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v7

    .line 3773
    .local v7, "status":I
    if-eqz v7, :cond_d1

    .line 3774
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_cc

    .line 3775
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - removeCertificatefromProvider failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_cc} :catch_ee
    .catchall {:try_start_b2 .. :try_end_cc} :catchall_10b

    .line 3788
    :cond_cc
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2c

    .line 3780
    :cond_d1
    :try_start_d1
    invoke-direct {p0, p1, p2, p3, p4}, deleteCertificateUsingAdminId(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)Z

    move-result v0

    if-ne v10, v0, :cond_e8

    .line 3781
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_e2

    .line 3782
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "- certificate deleted successfully..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_e2} :catch_ee
    .catchall {:try_start_d1 .. :try_end_e2} :catchall_10b

    .line 3783
    :cond_e2
    const/4 v7, 0x0

    .line 3788
    .end local v7    # "status":I
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2c

    .restart local v7    # "status":I
    :cond_e8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3791
    .end local v7    # "status":I
    :goto_eb
    const/4 v7, -0x1

    goto/16 :goto_2c

    .line 3785
    :catch_ee
    move-exception v6

    .line 3786
    .local v6, "e":Ljava/lang/Exception;
    :try_start_ef
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-deleteCertificate Exception-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catchall {:try_start_ef .. :try_end_107} :catchall_10b

    .line 3788
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_eb

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_10b
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private deleteCertificateUsingAdminId(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)Z
    .registers 19
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    .line 3796
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_1f

    .line 3797
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteCertificateUsingAdminId is called for alias-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    :cond_1f
    const/4 v10, 0x0

    .line 3800
    .local v10, "ret":Z
    :try_start_20
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 3801
    .local v7, "adminId":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 3802
    .local v8, "contId":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "adminUid"

    aput-object v2, v11, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "userId"

    aput-object v2, v11, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "storageName"

    aput-object v2, v11, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "storagePackageName"

    aput-object v2, v11, v1

    const/4 v1, 0x4

    const-string v2, "alias"

    aput-object v2, v11, v1

    .line 3808
    .local v11, "sColumns":[Ljava/lang/String;
    const/4 v1, 0x5

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v12, v1

    const/4 v1, 0x1

    aput-object v8, v12, v1

    const/4 v1, 0x2

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v2, v12, v1

    const/4 v1, 0x3

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v2, v12, v1

    const/4 v1, 0x4

    aput-object p4, v12, v1

    .line 3812
    .local v12, "sValues":[Ljava/lang/String;
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "UniversalCredentialCertificateTable"

    invoke-virtual {v1, v2, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    .line 3814
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteCertificateUsingAdminId is successful for alias-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3816
    if-eqz v10, :cond_ad

    .line 3818
    const/16 v5, 0x68

    move-object v1, p0

    move-object/from16 v2, p3

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, clearWhiteListPackages(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;IIILjava/lang/String;)Z

    move-result v13

    .line 3820
    .local v13, "status":Z
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteCertificateUsingAdminId remove whitelist status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_ad} :catch_ae

    .line 3827
    .end local v7    # "adminId":Ljava/lang/String;
    .end local v8    # "contId":Ljava/lang/String;
    .end local v11    # "sColumns":[Ljava/lang/String;
    .end local v12    # "sValues":[Ljava/lang/String;
    .end local v13    # "status":Z
    :cond_ad
    :goto_ad
    return v10

    .line 3823
    :catch_ae
    move-exception v9

    .line 3824
    .local v9, "e":Ljava/lang/Exception;
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_ad

    .line 3825
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteCertificateUsingAdminId - Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad
.end method

.method private getActivePlugin()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5220
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "getActivePlugin .."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5221
    const/4 v0, 0x0

    .line 5224
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v3, 0x2

    :try_start_a
    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "storagePackageName"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "appUid"

    aput-object v4, v2, v3

    .line 5229
    .local v2, "sAllReturnColumns":[Ljava/lang/String;
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "UniversalCredentialInfoTable"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_22

    move-result-object v0

    .line 5237
    .end local v2    # "sAllReturnColumns":[Ljava/lang/String;
    :cond_21
    :goto_21
    return-object v0

    .line 5233
    :catch_22
    move-exception v1

    .line 5234
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_21

    .line 5235
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getActivePlugin - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private getAdminIdRelatedToStorage(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .param p1, "stroragePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5132
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAdminIdRelatedToStorage stroragePackage-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5135
    .local v1, "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x1

    :try_start_1f
    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "storagePackageName"

    aput-object v10, v5, v9

    .line 5138
    .local v5, "sAllColumns":[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v7, v9

    .line 5142
    .local v7, "sAllValues":[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v6, v9

    .line 5145
    .local v6, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 5147
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "UniversalCredentialInfoTable"

    invoke-virtual {v9, v10, v5, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5151
    if-eqz v2, :cond_8a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8a

    .line 5152
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 5153
    .local v8, "value":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5154
    .local v0, "adminId":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_67} :catch_68

    goto :goto_4a

    .line 5158
    .end local v0    # "adminId":I
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "sAllColumns":[Ljava/lang/String;
    .end local v6    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v7    # "sAllValues":[Ljava/lang/String;
    .end local v8    # "value":Landroid/content/ContentValues;
    :catch_68
    move-exception v3

    .line 5159
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_8a

    .line 5160
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAdminIdRelatedToStorage - Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5162
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8a
    return-object v1
.end method

.method private getAdminIdRelatedToStorageAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Ljava/util/List;
    .registers 15
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5554
    .local v1, "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x3

    :try_start_6
    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "userId"

    aput-object v10, v5, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "storageName"

    aput-object v10, v5, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "storagePackageName"

    aput-object v10, v5, v9

    .line 5559
    .local v5, "sAllColumns":[Ljava/lang/String;
    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x2

    iget-object v10, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 5563
    .local v7, "sAllValues":[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v6, v9

    .line 5566
    .local v6, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 5568
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "UniversalCredentialInfoTable"

    invoke-virtual {v9, v10, v5, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5572
    if-eqz v2, :cond_8b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8b

    .line 5573
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 5574
    .local v8, "value":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5575
    .local v0, "adminId":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_68} :catch_69

    goto :goto_4b

    .line 5579
    .end local v0    # "adminId":I
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "sAllColumns":[Ljava/lang/String;
    .end local v6    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v7    # "sAllValues":[Ljava/lang/String;
    .end local v8    # "value":Landroid/content/ContentValues;
    :catch_69
    move-exception v3

    .line 5580
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_8b

    .line 5581
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAdminIdRelatedToStorageAsUser - Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5583
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8b
    return-object v1
.end method

.method private getAliasesInternal(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .registers 23
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 3940
    const/4 v4, 0x0

    .line 3941
    .local v4, "aliases":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3944
    .local v10, "id":J
    :try_start_5
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3945
    .local v2, "adminId":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 3947
    .local v5, "contId":Ljava/lang/String;
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v12, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "adminUid"

    aput-object v17, v12, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "userId"

    aput-object v17, v12, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "storageName"

    aput-object v17, v12, v16

    const/16 v16, 0x3

    const-string/jumbo v17, "storagePackageName"

    aput-object v17, v12, v16

    .line 3952
    .local v12, "sAllColumns":[Ljava/lang/String;
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v2, v14, v16

    const/16 v16, 0x1

    aput-object v5, v14, v16

    const/16 v16, 0x2

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v14, v16

    const/16 v16, 0x3

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v14, v16

    .line 3956
    .local v14, "sAllValues":[Ljava/lang/String;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v13, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "alias"

    aput-object v17, v13, v16

    .line 3959
    .local v13, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 3961
    .local v6, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v16, v0

    const-string v17, "UniversalCredentialCertificateTable"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12, v14, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 3964
    if-eqz v6, :cond_99

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_99

    .line 3965
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v4, v0, [Ljava/lang/String;

    .line 3966
    const/4 v8, 0x0

    .line 3967
    .local v8, "i":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_82
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_99

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 3968
    .local v15, "value":Landroid/content/ContentValues;
    const-string v16, "alias"

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3970
    .local v3, "alias":Ljava/lang/String;
    aput-object v3, v4, v8
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_96} :catch_9d
    .catchall {:try_start_5 .. :try_end_96} :catchall_c3

    .line 3971
    add-int/lit8 v8, v8, 0x1

    .line 3972
    goto :goto_82

    .line 3979
    .end local v3    # "alias":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "value":Landroid/content/ContentValues;
    :cond_99
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3981
    .end local v2    # "adminId":Ljava/lang/String;
    .end local v5    # "contId":Ljava/lang/String;
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v12    # "sAllColumns":[Ljava/lang/String;
    .end local v13    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v14    # "sAllValues":[Ljava/lang/String;
    :goto_9c
    return-object v4

    .line 3975
    :catch_9d
    move-exception v7

    .line 3976
    .local v7, "e":Ljava/lang/Exception;
    :try_start_9e
    sget-boolean v16, DBG:Z

    if-eqz v16, :cond_bf

    .line 3977
    sget-object v16, TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getAliases - Exception"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_9e .. :try_end_bf} :catchall_c3

    .line 3979
    :cond_bf
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9c

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_c3
    move-exception v16

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
.end method

.method private getAllAdmins()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 5202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5203
    .local v1, "allAdmins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "adminUid"

    aput-object v7, v4, v6

    .line 5204
    .local v4, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 5205
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "UniversalCredentialInfoTable"

    invoke-virtual {v6, v7, v8, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5208
    if-eqz v2, :cond_45

    .line 5209
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 5210
    .local v5, "value":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5211
    .local v0, "adminUid":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 5212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 5216
    .end local v0    # "adminUid":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "value":Landroid/content/ContentValues;
    :cond_45
    return-object v1
.end method

.method private getAllExemptedApps()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2155
    const/4 v0, 0x0

    .line 2157
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "appUid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "appPackage"

    aput-object v3, v1, v2

    .line 2161
    .local v1, "sAllReturnColumns":[Ljava/lang/String;
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "UniversalCredentialExemptTable"

    invoke-virtual {v2, v3, v4, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2164
    return-object v0
.end method

.method private getAllUsers()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5242
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "getAllUsers() is called..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5246
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x1

    :try_start_e
    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "userId"

    aput-object v8, v4, v7

    .line 5247
    .local v4, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 5249
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "UniversalCredentialCertificateTable"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5252
    if-eqz v1, :cond_6a

    .line 5253
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 5254
    .local v6, "value":Landroid/content/ContentValues;
    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5255
    .local v5, "userId":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 5256
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4f} :catch_50

    goto :goto_27

    .line 5296
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v6    # "value":Landroid/content/ContentValues;
    :catch_50
    move-exception v2

    .line 5297
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in getAllUsers "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5299
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_69
    return-object v0

    .line 5260
    .restart local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v4    # "sAllReturnColumns":[Ljava/lang/String;
    :cond_6a
    const/4 v1, 0x0

    .line 5261
    :try_start_6b
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "UniversalCredentialWhiteListTable"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5264
    if-eqz v1, :cond_a4

    .line 5265
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_7b
    :goto_7b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 5266
    .restart local v6    # "value":Landroid/content/ContentValues;
    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5267
    .restart local v5    # "userId":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 5268
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 5272
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "userId":I
    .end local v6    # "value":Landroid/content/ContentValues;
    :cond_a4
    const/4 v1, 0x0

    .line 5273
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "UniversalCredentialDefaultInstallTable"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5276
    if-eqz v1, :cond_de

    .line 5277
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_b5
    :goto_b5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_de

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 5278
    .restart local v6    # "value":Landroid/content/ContentValues;
    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5279
    .restart local v5    # "userId":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b5

    .line 5280
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    .line 5284
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "userId":I
    .end local v6    # "value":Landroid/content/ContentValues;
    :cond_de
    const/4 v1, 0x0

    .line 5285
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "UniversalCredentialExemptTable"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5288
    if-eqz v1, :cond_69

    .line 5289
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_ef
    :goto_ef
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 5290
    .restart local v6    # "value":Landroid/content/ContentValues;
    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5291
    .restart local v5    # "userId":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ef

    .line 5292
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_117} :catch_50

    goto :goto_ef
.end method

.method private getAllWhitelistedApps()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2141
    const/4 v0, 0x0

    .line 2143
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "appUid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "appPackage"

    aput-object v3, v1, v2

    .line 2147
    .local v1, "sAllReturnColumns":[Ljava/lang/String;
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "UniversalCredentialWhiteListTable"

    invoke-virtual {v2, v3, v4, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2150
    return-object v0
.end method

.method private getAvailableCredentialStorageInternal()[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .registers 15

    .prologue
    .line 915
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 917
    .local v6, "id":J
    const/4 v10, 0x0

    .line 919
    .local v10, "storages":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :try_start_5
    invoke-direct {p0}, getUniversalCredentialUtil()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v11

    if-eqz v11, :cond_55

    .line 920
    invoke-direct {p0}, getManagedProviders()[Ljava/security/Provider;

    move-result-object v9

    .line 921
    .local v9, "provider":[Ljava/security/Provider;
    if-eqz v9, :cond_48

    array-length v11, v9

    if-lez v11, :cond_48

    .line 922
    array-length v11, v9

    new-array v10, v11, [Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .line 923
    const/4 v1, 0x0

    .line 924
    .local v1, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    const/4 v3, 0x0

    .line 925
    .local v3, "i":I
    move-object v0, v9

    .local v0, "arr$":[Ljava/security/Provider;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1c
    if-ge v4, v5, :cond_44

    aget-object v8, v0, v4

    .line 926
    .local v8, "pr":Ljava/security/Provider;
    new-instance v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .end local v1    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 927
    .restart local v1    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-virtual {v8}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 928
    const-string/jumbo v11, "packageName"

    invoke-virtual {v8, v11}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 929
    const-string/jumbo v11, "vendorId"

    invoke-virtual {v8, v11}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    .line 930
    aput-object v1, v10, v3
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3f} :catch_5e
    .catchall {:try_start_5 .. :try_end_3f} :catchall_7c

    .line 931
    add-int/lit8 v3, v3, 0x1

    .line 925
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 945
    .end local v8    # "pr":Ljava/security/Provider;
    :cond_44
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 948
    .end local v0    # "arr$":[Ljava/security/Provider;
    .end local v1    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v3    # "i":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v9    # "provider":[Ljava/security/Provider;
    .end local v10    # "storages":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :goto_47
    return-object v10

    .line 936
    .restart local v9    # "provider":[Ljava/security/Provider;
    .restart local v10    # "storages":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_48
    :try_start_48
    sget-object v11, TAG:Ljava/lang/String;

    const-string/jumbo v12, "getAvailableCredentialStorage - UniversalCredentialUtil service returns no providers... "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_50} :catch_5e
    .catchall {:try_start_48 .. :try_end_50} :catchall_7c

    .line 945
    .end local v9    # "provider":[Ljava/security/Provider;
    :goto_50
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 948
    :goto_53
    const/4 v10, 0x0

    goto :goto_47

    .line 940
    :cond_55
    :try_start_55
    sget-object v11, TAG:Ljava/lang/String;

    const-string/jumbo v12, "getAvailableCredentialStorage - UniversalCredentialUtil service is null.... "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_5e
    .catchall {:try_start_55 .. :try_end_5d} :catchall_7c

    goto :goto_50

    .line 942
    :catch_5e
    move-exception v2

    .line 943
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5f
    sget-object v11, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getAvailableCredentialStorage - Exception -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_5f .. :try_end_78} :catchall_7c

    .line 945
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_53

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_7c
    move-exception v11

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method private getCACertLocation(IILjava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 3374
    const/4 v1, 0x0

    .line 3377
    .local v1, "certLocation":Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3378
    .local v0, "adminId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3380
    .local v2, "contId":Ljava/lang/String;
    const/4 v8, 0x3

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adminUid"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "userId"

    aput-object v9, v5, v8

    const/4 v8, 0x2

    const-string v9, "alias"

    aput-object v9, v5, v8

    .line 3383
    .local v5, "sAllColumns":[Ljava/lang/String;
    const/4 v8, 0x3

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    .line 3387
    .local v7, "sAllValues":[Ljava/lang/String;
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "location"

    aput-object v9, v6, v8

    .line 3390
    .local v6, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 3392
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialCACertificateTable"

    invoke-virtual {v8, v9, v5, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3395
    if-eqz v3, :cond_69

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_69

    .line 3397
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    const-string/jumbo v9, "location"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3398
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getCACertLocation - certLocation"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_69} :catch_6a

    .line 3405
    .end local v0    # "adminId":Ljava/lang/String;
    .end local v2    # "contId":Ljava/lang/String;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "sAllColumns":[Ljava/lang/String;
    .end local v6    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v7    # "sAllValues":[Ljava/lang/String;
    :cond_69
    :goto_69
    return-object v1

    .line 3401
    :catch_6a
    move-exception v4

    .line 3402
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_69

    .line 3403
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getCACertLocation - Exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69
.end method

.method private getCredentialStorageProvider(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Ljava/security/Provider;
    .registers 13
    .param p1, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 962
    :try_start_0
    invoke-direct {p0}, getUniversalCredentialUtil()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v8

    if-eqz v8, :cond_64

    .line 963
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getCredentialStorageProperties name-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and pkg-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-direct {p0}, getManagedProviders()[Ljava/security/Provider;

    move-result-object v7

    .line 965
    .local v7, "provider":[Ljava/security/Provider;
    if-eqz v7, :cond_6c

    array-length v8, v7

    if-lez v8, :cond_6c

    .line 966
    move-object v0, v7

    .local v0, "arr$":[Ljava/security/Provider;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_39
    if-ge v4, v5, :cond_6c

    aget-object v6, v0, v4

    .line 967
    .local v6, "pr":Ljava/security/Provider;
    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, "csName":Ljava/lang/String;
    const-string/jumbo v8, "packageName"

    invoke-virtual {v6, v8}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 969
    .local v2, "csPackage":Ljava/lang/String;
    iget-object v8, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_61

    iget-object v8, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 970
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "getCredentialStorageProperties match found..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    .end local v0    # "arr$":[Ljava/security/Provider;
    .end local v1    # "csName":Ljava/lang/String;
    .end local v2    # "csPackage":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pr":Ljava/security/Provider;
    .end local v7    # "provider":[Ljava/security/Provider;
    :goto_60
    return-object v6

    .line 966
    .restart local v0    # "arr$":[Ljava/security/Provider;
    .restart local v1    # "csName":Ljava/lang/String;
    .restart local v2    # "csPackage":Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "pr":Ljava/security/Provider;
    .restart local v7    # "provider":[Ljava/security/Provider;
    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 976
    .end local v0    # "arr$":[Ljava/security/Provider;
    .end local v1    # "csName":Ljava/lang/String;
    .end local v2    # "csPackage":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pr":Ljava/security/Provider;
    .end local v7    # "provider":[Ljava/security/Provider;
    :cond_64
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "getCredentialStorageProperties - UniversalCredentialUtil service is null.... "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6c} :catch_6e

    .line 981
    :cond_6c
    :goto_6c
    const/4 v6, 0x0

    goto :goto_60

    .line 978
    :catch_6e
    move-exception v3

    .line 979
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getCredentialStorageProperties - Exception -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 210
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 211
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 214
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getManagedProviders()[Ljava/security/Provider;
    .registers 15

    .prologue
    const/4 v12, 0x0

    .line 886
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 888
    .local v6, "id":J
    :try_start_5
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->listAllProviders()[Landroid/os/Bundle;

    move-result-object v2

    .line 889
    .local v2, "csList":[Landroid/os/Bundle;
    if-eqz v2, :cond_5a

    array-length v11, v2

    if-eqz v11, :cond_5a

    .line 890
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 891
    .local v10, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    move-object v0, v2

    .local v0, "arr$":[Landroid/os/Bundle;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1a
    if-ge v4, v8, :cond_4a

    aget-object v1, v0, v4

    .line 892
    .local v1, "cs":Landroid/os/Bundle;
    invoke-direct {p0}, getUniversalCredentialUtil()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    const-string/jumbo v11, "uniqueId"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 893
    .local v9, "name":Ljava/lang/String;
    if-nez v9, :cond_34

    .line 894
    sget-object v11, TAG:Ljava/lang/String;

    const-string v13, "NULL agent ID name Returned for bundle"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 897
    :cond_34
    new-instance v5, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider;

    invoke-direct {v5, v9, v1}, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 898
    .local v5, "ksProvider":Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider;
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_3d
    .catchall {:try_start_5 .. :try_end_3c} :catchall_6a

    goto :goto_31

    .line 905
    .end local v0    # "arr$":[Landroid/os/Bundle;
    .end local v1    # "cs":Landroid/os/Bundle;
    .end local v2    # "csList":[Landroid/os/Bundle;
    .end local v4    # "i$":I
    .end local v5    # "ksProvider":Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider;
    .end local v8    # "len$":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    :catch_3d
    move-exception v3

    .line 906
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3e
    sget-object v11, TAG:Ljava/lang/String;

    const-string v13, "Cannot connect to UCS service"

    invoke-static {v11, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_6a

    .line 908
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v11, v12

    .line 910
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_49
    return-object v11

    .line 900
    .restart local v0    # "arr$":[Landroid/os/Bundle;
    .restart local v2    # "csList":[Landroid/os/Bundle;
    .restart local v4    # "i$":I
    .restart local v8    # "len$":I
    .restart local v10    # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    :cond_4a
    :try_start_4a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/security/Provider;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/security/Provider;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_56} :catch_3d
    .catchall {:try_start_4a .. :try_end_56} :catchall_6a

    .line 908
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_49

    .line 902
    .end local v0    # "arr$":[Landroid/os/Bundle;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    :cond_5a
    :try_start_5a
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_65

    sget-object v11, TAG:Ljava/lang/String;

    const-string v13, "Provider list is empty"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_65} :catch_3d
    .catchall {:try_start_5a .. :try_end_65} :catchall_6a

    .line 908
    :cond_65
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v11, v12

    goto :goto_49

    .end local v2    # "csList":[Landroid/os/Bundle;
    :catchall_6a
    move-exception v11

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method private getPackagesFromExemptListAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;
    .registers 19
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4807
    sget-object v12, TAG:Ljava/lang/String;

    const-string/jumbo v13, "getPackagesFromExemptListAsUser is called...."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4808
    const/4 v6, 0x0

    .line 4812
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :try_start_9
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v12

    if-nez v12, :cond_1f

    .line 4813
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_1d

    .line 4814
    sget-object v12, TAG:Ljava/lang/String;

    const-string/jumbo v13, "getPackagesFromExemptListAsUser - Invalid Arguments"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4815
    :cond_1d
    const/4 v12, 0x0

    .line 4870
    :goto_1e
    return-object v12

    .line 4818
    :cond_1f
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_4a

    .line 4819
    sget-object v12, TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getPackagesFromExemptListAsUser is called for Container-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",type-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4822
    :cond_4a
    move/from16 v0, p3

    invoke-direct {p0, v0}, isValidExemptType(I)Z

    move-result v12

    if-nez v12, :cond_5c

    .line 4823
    sget-object v12, TAG:Ljava/lang/String;

    const-string/jumbo v13, "getPackagesFromExemptListAsUser - Invalid Exempt Type..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4824
    const/4 v12, 0x0

    goto :goto_1e

    .line 4827
    :cond_5c
    const/4 v3, 0x0

    .line 4828
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v12, 0x4

    new-array v8, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "userId"

    aput-object v13, v8, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "storageName"

    aput-object v13, v8, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "storagePackageName"

    aput-object v13, v8, v12

    const/4 v12, 0x3

    const-string/jumbo v13, "exemptType"

    aput-object v13, v8, v12

    .line 4834
    .local v8, "sAllColumns":[Ljava/lang/String;
    const/4 v12, 0x4

    new-array v10, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    const/4 v12, 0x1

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v13, v10, v12

    const/4 v12, 0x2

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v13, v10, v12

    const/4 v12, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    .line 4839
    .local v10, "sAllValues":[Ljava/lang/String;
    const/4 v12, 0x3

    new-array v9, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "adminUid"

    aput-object v13, v9, v12

    const/4 v12, 0x1

    const-string v13, "appPackage"

    aput-object v13, v9, v12

    const/4 v12, 0x2

    const-string v13, "appSignature"

    aput-object v13, v9, v12

    .line 4845
    .local v9, "sAllReturnColumns":[Ljava/lang/String;
    iget-object v12, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "UniversalCredentialExemptTable"

    invoke-virtual {v12, v13, v8, v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4849
    if-eqz v3, :cond_13c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_13c

    .line 4850
    sget-object v12, TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getPackagesFromExemptListAsUser - Size-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4851
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_db} :catch_13f

    .line 4852
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    const/4 v2, 0x0

    .line 4853
    .local v2, "app":Lcom/sec/enterprise/AppIdentity;
    :try_start_dc
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_e0
    :goto_e0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_141

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    .line 4854
    .local v11, "value":Landroid/content/ContentValues;
    new-instance v2, Lcom/sec/enterprise/AppIdentity;

    .end local v2    # "app":Lcom/sec/enterprise/AppIdentity;
    invoke-direct {v2}, Lcom/sec/enterprise/AppIdentity;-><init>()V

    .line 4855
    .restart local v2    # "app":Lcom/sec/enterprise/AppIdentity;
    const-string v12, "appPackage"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/sec/enterprise/AppIdentity;->setPackageName(Ljava/lang/String;)V

    .line 4857
    const-string v12, "appSignature"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/sec/enterprise/AppIdentity;->setSignature(Ljava/lang/String;)V

    .line 4859
    const-string v12, "adminUid"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4860
    .local v1, "adminId":I
    move-object/from16 v0, p2

    invoke-direct {p0, v1, v0}, isAdminLicenseActive(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v12

    if-eqz v12, :cond_e0

    .line 4861
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_118} :catch_119

    goto :goto_e0

    .line 4866
    .end local v1    # "adminId":I
    .end local v2    # "app":Lcom/sec/enterprise/AppIdentity;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v11    # "value":Landroid/content/ContentValues;
    :catch_119
    move-exception v4

    move-object v6, v7

    .line 4867
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .end local v8    # "sAllColumns":[Ljava/lang/String;
    .end local v9    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v10    # "sAllValues":[Ljava/lang/String;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :goto_11b
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_13c

    .line 4868
    sget-object v12, TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getPackagesFromExemptListAsUser - Exception"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_13c
    :goto_13c
    move-object v12, v6

    .line 4870
    goto/16 :goto_1e

    .line 4866
    :catch_13f
    move-exception v4

    goto :goto_11b

    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v2    # "app":Lcom/sec/enterprise/AppIdentity;
    .restart local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v8    # "sAllColumns":[Ljava/lang/String;
    .restart local v9    # "sAllReturnColumns":[Ljava/lang/String;
    .restart local v10    # "sAllValues":[Ljava/lang/String;
    :cond_141
    move-object v6, v7

    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    goto :goto_13c
.end method

.method private getPackagesFromWhiteListAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;
    .registers 22
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2369
    sget-object v15, TAG:Ljava/lang/String;

    const-string/jumbo v16, "getPackagesFromWhiteListAsUser is called...."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    const/4 v9, 0x0

    .line 2374
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v15

    if-eqz v15, :cond_15

    if-nez p3, :cond_23

    .line 2375
    :cond_15
    sget-boolean v15, DBG:Z

    if-eqz v15, :cond_21

    .line 2376
    sget-object v15, TAG:Ljava/lang/String;

    const-string/jumbo v16, "getPackagesFromWhiteListAsUser - Invalid Arguments"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    :cond_21
    const/4 v15, 0x0

    .line 2482
    :goto_22
    return-object v15

    .line 2380
    :cond_23
    sget-boolean v15, DBG:Z

    if-eqz v15, :cond_44

    .line 2381
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getPackagesFromWhiteListAsUser is called for mContainerId "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    :cond_44
    const-string v15, "access_type"

    const/16 v16, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2386
    .local v2, "accessType":I
    const/4 v4, 0x0

    .line 2388
    .local v4, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, isValidAccessType(I)Z

    move-result v15

    if-nez v15, :cond_67

    .line 2389
    sget-boolean v15, DBG:Z

    if-eqz v15, :cond_65

    .line 2390
    sget-object v15, TAG:Ljava/lang/String;

    const-string/jumbo v16, "getPackagesFromWhiteListAsUser not passed valid access_type"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    :cond_65
    const/4 v15, 0x0

    goto :goto_22

    .line 2393
    :cond_67
    const/16 v15, 0x68

    if-ne v2, v15, :cond_a2

    .line 2394
    const-string v15, "alias"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2395
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getPackagesFromWhiteListAsUser alias-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_a2

    .line 2397
    sget-boolean v15, DBG:Z

    if-eqz v15, :cond_a0

    .line 2398
    sget-object v15, TAG:Ljava/lang/String;

    const-string/jumbo v16, "getPackagesFromWhiteListAsUser alias name not provided for Certificate access_type"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    :cond_a0
    const/4 v15, 0x0

    goto :goto_22

    .line 2404
    :cond_a2
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getPackagesFromWhiteListAsUser mContainerId-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",name-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",package-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", accessType-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    const/4 v6, 0x0

    .line 2409
    .local v6, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-nez v4, :cond_21b

    .line 2410
    const/4 v15, 0x4

    new-array v11, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "userId"

    aput-object v16, v11, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "storageName"

    aput-object v16, v11, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "storagePackageName"

    aput-object v16, v11, v15

    const/4 v15, 0x3

    const-string v16, "accessType"

    aput-object v16, v11, v15

    .line 2416
    .local v11, "sAllColumns":[Ljava/lang/String;
    const/4 v15, 0x4

    new-array v13, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15

    const/4 v15, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v13, v15

    const/4 v15, 0x2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v13, v15

    const/4 v15, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15

    .line 2420
    .local v13, "sAllValues":[Ljava/lang/String;
    const/4 v15, 0x3

    new-array v12, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "adminUid"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    const-string v16, "appPackage"

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "appSignature"

    aput-object v16, v12, v15

    .line 2426
    .local v12, "sAllReturnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "UniversalCredentialWhiteListTable"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11, v13, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2455
    :goto_149
    if-eqz v6, :cond_218

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_218

    .line 2456
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getPackagesFromWhiteListAsUser - Size-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_173} :catch_280

    .line 2458
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    const/4 v5, 0x0

    .line 2459
    .local v5, "app":Lcom/sec/enterprise/AppIdentity;
    :try_start_174
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_178
    :goto_178
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_283

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    .line 2460
    .local v14, "value":Landroid/content/ContentValues;
    new-instance v5, Lcom/sec/enterprise/AppIdentity;

    .end local v5    # "app":Lcom/sec/enterprise/AppIdentity;
    invoke-direct {v5}, Lcom/sec/enterprise/AppIdentity;-><init>()V

    .line 2461
    .restart local v5    # "app":Lcom/sec/enterprise/AppIdentity;
    const-string v15, "appPackage"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/sec/enterprise/AppIdentity;->setPackageName(Ljava/lang/String;)V

    .line 2463
    const-string v15, "appSignature"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/sec/enterprise/AppIdentity;->setSignature(Ljava/lang/String;)V

    .line 2465
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getPackagesFromWhiteListAsUser APP PKG-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "appPackage"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getPackagesFromWhiteListAsUser APP PKG-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "appSignature"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    const-string v15, "adminUid"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2472
    .local v3, "adminId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, isAdminLicenseActive(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v15

    if-eqz v15, :cond_178

    .line 2473
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_1f4} :catch_1f5

    goto :goto_178

    .line 2477
    .end local v3    # "adminId":I
    .end local v5    # "app":Lcom/sec/enterprise/AppIdentity;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v14    # "value":Landroid/content/ContentValues;
    :catch_1f5
    move-exception v7

    move-object v9, v10

    .line 2478
    .end local v2    # "accessType":I
    .end local v4    # "alias":Ljava/lang/String;
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .end local v11    # "sAllColumns":[Ljava/lang/String;
    .end local v12    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v13    # "sAllValues":[Ljava/lang/String;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :goto_1f7
    sget-boolean v15, DBG:Z

    if-eqz v15, :cond_218

    .line 2479
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getPackagesFromWhiteListAsUser - Exception"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_218
    :goto_218
    move-object v15, v9

    .line 2482
    goto/16 :goto_22

    .line 2432
    .restart local v2    # "accessType":I
    .restart local v4    # "alias":Ljava/lang/String;
    .restart local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_21b
    const/4 v15, 0x5

    :try_start_21c
    new-array v11, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "userId"

    aput-object v16, v11, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "storageName"

    aput-object v16, v11, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "storagePackageName"

    aput-object v16, v11, v15

    const/4 v15, 0x3

    const-string v16, "accessType"

    aput-object v16, v11, v15

    const/4 v15, 0x4

    const-string v16, "alias"

    aput-object v16, v11, v15

    .line 2439
    .restart local v11    # "sAllColumns":[Ljava/lang/String;
    const/4 v15, 0x5

    new-array v13, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15

    const/4 v15, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v13, v15

    const/4 v15, 0x2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v13, v15

    const/4 v15, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15

    const/4 v15, 0x4

    aput-object v4, v13, v15

    .line 2444
    .restart local v13    # "sAllValues":[Ljava/lang/String;
    const/4 v15, 0x3

    new-array v12, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "adminUid"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    const-string v16, "appPackage"

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "appSignature"

    aput-object v16, v12, v15

    .line 2450
    .restart local v12    # "sAllReturnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "UniversalCredentialWhiteListTable"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11, v13, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_27d
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_27d} :catch_280

    move-result-object v6

    goto/16 :goto_149

    .line 2477
    .end local v2    # "accessType":I
    .end local v4    # "alias":Ljava/lang/String;
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v11    # "sAllColumns":[Ljava/lang/String;
    .end local v12    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v13    # "sAllValues":[Ljava/lang/String;
    :catch_280
    move-exception v7

    goto/16 :goto_1f7

    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v2    # "accessType":I
    .restart local v4    # "alias":Ljava/lang/String;
    .restart local v5    # "app":Lcom/sec/enterprise/AppIdentity;
    .restart local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v11    # "sAllColumns":[Ljava/lang/String;
    .restart local v12    # "sAllReturnColumns":[Ljava/lang/String;
    .restart local v13    # "sAllValues":[Ljava/lang/String;
    :cond_283
    move-object v9, v10

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    goto :goto_218
.end method

.method private getStoragesRelatedToAdminId(I)Ljava/util/List;
    .registers 14
    .param p1, "adminId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5167
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getStoragesRelatedToAdminId adminId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5168
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5170
    .local v7, "storages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    :try_start_1f
    new-array v3, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v3, v9

    .line 5173
    .local v3, "sAllColumns":[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    .line 5177
    .local v5, "sAllValues":[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "storageName"

    aput-object v10, v4, v9

    .line 5180
    .local v4, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 5182
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "UniversalCredentialInfoTable"

    invoke-virtual {v9, v10, v3, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5186
    if-eqz v0, :cond_87

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_87

    .line 5187
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 5188
    .local v8, "value":Landroid/content/ContentValues;
    const-string/jumbo v9, "storageName"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5189
    .local v6, "storage":Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_64} :catch_65

    goto :goto_4e

    .line 5193
    .end local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "sAllColumns":[Ljava/lang/String;
    .end local v4    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v5    # "sAllValues":[Ljava/lang/String;
    .end local v6    # "storage":Ljava/lang/String;
    .end local v8    # "value":Landroid/content/ContentValues;
    :catch_65
    move-exception v1

    .line 5194
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_87

    .line 5195
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getStoragesRelatedToAdminId - Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5197
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_87
    return-object v7
.end method

.method private getSupportedAlgorithmsInternal(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .registers 22
    .param p1, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 4124
    const/4 v2, 0x0

    .line 4125
    .local v2, "algos":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4127
    .local v8, "id":J
    :try_start_5
    invoke-direct/range {p0 .. p0}, getUniversalCredentialUtil()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v17

    if-eqz v17, :cond_8d

    .line 4128
    invoke-direct/range {p0 .. p0}, getManagedProviders()[Ljava/security/Provider;

    move-result-object v12

    .line 4129
    .local v12, "provider":[Ljava/security/Provider;
    if-eqz v12, :cond_81

    array-length v0, v12

    move/from16 v17, v0

    if-lez v17, :cond_81

    .line 4131
    const/4 v15, 0x0

    .line 4132
    .local v15, "storageName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 4133
    .local v16, "storagePackageName":Ljava/lang/String;
    move-object v3, v12

    .local v3, "arr$":[Ljava/security/Provider;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .local v7, "i$":I
    :goto_1d
    if-ge v7, v10, :cond_89

    aget-object v11, v3, v7

    .line 4134
    .local v11, "pr":Ljava/security/Provider;
    invoke-virtual {v11}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v15

    .line 4135
    const-string/jumbo v17, "packageName"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4136
    if-eqz v15, :cond_7a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7a

    if-eqz v16, :cond_7a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7a

    .line 4139
    invoke-virtual {v11}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v14

    .line 4140
    .local v14, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Provider$Service;>;"
    if-eqz v14, :cond_7a

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v17

    if-lez v17, :cond_7a

    .line 4141
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v2, v0, [Ljava/lang/String;

    .line 4142
    const/4 v5, 0x0

    .line 4143
    .local v5, "i":I
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v7    # "i$":I
    .local v6, "i$":Ljava/util/Iterator;
    :goto_65
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/Provider$Service;

    .line 4144
    .local v13, "service":Ljava/security/Provider$Service;
    invoke-virtual {v13}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v5

    .line 4145
    add-int/lit8 v5, v5, 0x1

    .line 4146
    goto :goto_65

    .line 4149
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v13    # "service":Ljava/security/Provider$Service;
    .end local v14    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Provider$Service;>;"
    :cond_7a
    const/4 v15, 0x0

    .line 4150
    const/16 v16, 0x0

    .line 4133
    add-int/lit8 v6, v7, 0x1

    .local v6, "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_1d

    .line 4153
    .end local v3    # "arr$":[Ljava/security/Provider;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "pr":Ljava/security/Provider;
    .end local v15    # "storageName":Ljava/lang/String;
    .end local v16    # "storagePackageName":Ljava/lang/String;
    :cond_81
    sget-object v17, TAG:Ljava/lang/String;

    const-string/jumbo v18, "getSupportedAlgorithmsInternal - UniversalCredentialUtil service returns no providers... "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_89} :catch_96
    .catchall {:try_start_5 .. :try_end_89} :catchall_b6

    .line 4163
    .end local v12    # "provider":[Ljava/security/Provider;
    :cond_89
    :goto_89
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4165
    :goto_8c
    return-object v2

    .line 4157
    :cond_8d
    :try_start_8d
    sget-object v17, TAG:Ljava/lang/String;

    const-string/jumbo v18, "getSupportedAlgorithmsInternal - UniversalCredentialUtil service is null.... "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_95} :catch_96
    .catchall {:try_start_8d .. :try_end_95} :catchall_b6

    goto :goto_89

    .line 4160
    :catch_96
    move-exception v4

    .line 4161
    .local v4, "e":Ljava/lang/Exception;
    :try_start_97
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getSupportedAlgorithmsInternal - Exception -"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_97 .. :try_end_b2} :catchall_b6

    .line 4163
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8c

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_b6
    move-exception v17

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17
.end method

.method static declared-synchronized getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    .registers 2

    .prologue
    .line 218
    const-class v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    monitor-enter v1

    :try_start_3
    sget-object v0, mUcseService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    if-nez v0, :cond_13

    .line 219
    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v0

    sput-object v0, mUcseService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    .line 222
    :cond_13
    sget-object v0, mUcseService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    .line 218
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUniversalCredentialUtil()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, mUniversalCredentialUtil:Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    if-nez v0, :cond_a

    .line 227
    invoke-static {}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v0

    iput-object v0, p0, mUniversalCredentialUtil:Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    .line 229
    :cond_a
    iget-object v0, p0, mUniversalCredentialUtil:Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    return-object v0
.end method

.method private getValidString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 5307
    if-nez p1, :cond_4

    .line 5311
    :cond_3
    :goto_3
    return-object v1

    .line 5307
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p1

    goto :goto_3

    .line 5308
    :catch_10
    move-exception v0

    .line 5309
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private getWhitelistedData(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p4, "accessType"    # I
    .param p5, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2169
    const/4 v0, 0x0

    .line 2171
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-nez p5, :cond_5a

    .line 2172
    const/4 v4, 0x5

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "userId"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "storageName"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "storagePackageName"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "accessType"

    aput-object v5, v1, v4

    .line 2178
    .local v1, "sAllColumns":[Ljava/lang/String;
    const/4 v4, 0x5

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2183
    .local v3, "sAllValues":[Ljava/lang/String;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "appPackage"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "appSignature"

    aput-object v5, v2, v4

    .line 2188
    .local v2, "sAllReturnColumns":[Ljava/lang/String;
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "UniversalCredentialWhiteListTable"

    invoke-virtual {v4, v5, v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2216
    :goto_59
    return-object v0

    .line 2194
    .end local v1    # "sAllColumns":[Ljava/lang/String;
    .end local v2    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v3    # "sAllValues":[Ljava/lang/String;
    :cond_5a
    const/4 v4, 0x6

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "userId"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "storageName"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "storagePackageName"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "accessType"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "alias"

    aput-object v5, v1, v4

    .line 2201
    .restart local v1    # "sAllColumns":[Ljava/lang/String;
    const/4 v4, 0x6

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p5, v3, v4

    .line 2206
    .restart local v3    # "sAllValues":[Ljava/lang/String;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "appPackage"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "appSignature"

    aput-object v5, v2, v4

    .line 2211
    .restart local v2    # "sAllReturnColumns":[Ljava/lang/String;
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "UniversalCredentialWhiteListTable"

    invoke-virtual {v4, v5, v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_59
.end method

.method private insertOrUpdateCACertificateProfile(IILjava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "adminId"    # I
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;

    .prologue
    .line 3674
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_c

    .line 3675
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "insertOrUpdateCACertificateProfile is called..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    :cond_c
    const/4 v3, 0x0

    .line 3679
    .local v3, "ret":Z
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_47

    .line 3680
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InstallerId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ContainerId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and alias-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", location -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    :cond_47
    invoke-direct {p0, p3}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3688
    :try_start_4b
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3689
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3690
    const-string/jumbo v4, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3691
    const-string/jumbo v4, "location"

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3692
    const-string v4, "alias"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3694
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "UniversalCredentialCACertificateTable"

    invoke-virtual {v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 3696
    .local v0, "count":I
    if-nez v0, :cond_9a

    .line 3697
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "UniversalCredentialCACertificateTable"

    invoke-virtual {v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_7f} :catch_a4

    move-result v3

    .line 3711
    .end local v0    # "count":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_80
    :goto_80
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retcode-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    return v3

    .line 3700
    .restart local v0    # "count":I
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_9a
    :try_start_9a
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "insertOrUpdateCACertificateProfile - record already exist.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a2} :catch_a4

    .line 3701
    const/4 v3, 0x1

    goto :goto_80

    .line 3703
    .end local v0    # "count":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :catch_a4
    move-exception v2

    .line 3704
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 3705
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_80

    .line 3706
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "insertOrUpdateCACertificateProfile - Exception allowAllPackages"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method

.method private insertOrUpdateCertificateProfile(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;IILjava/lang/String;)Z
    .registers 12
    .param p1, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p2, "adminId"    # I
    .param p3, "userId"    # I
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    .line 3623
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_c

    .line 3624
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "insertOrUpdateCertificateProfile is called..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    :cond_c
    const/4 v3, 0x0

    .line 3628
    .local v3, "ret":Z
    if-nez p1, :cond_1d

    .line 3629
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1b

    .line 3630
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "insertOrUpdateCertificateProfile - Invalid Arguments"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    :cond_1b
    const/4 v4, 0x0

    .line 3670
    :goto_1c
    return v4

    .line 3634
    :cond_1d
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_65

    .line 3635
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InstallerId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ContainerId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and alias-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", storage name -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", storage package - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    :cond_65
    invoke-direct {p0, p4}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 3643
    :try_start_69
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3644
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3645
    const-string/jumbo v4, "userId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3646
    const-string/jumbo v4, "storageName"

    iget-object v5, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3647
    const-string/jumbo v4, "storagePackageName"

    iget-object v5, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3648
    const-string v4, "alias"

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3650
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "UniversalCredentialCertificateTable"

    invoke-virtual {v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 3652
    .local v0, "count":I
    if-nez v0, :cond_cc

    .line 3653
    const-string/jumbo v4, "storageManufacture"

    iget-object v5, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3655
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "UniversalCredentialCertificateTable"

    invoke-virtual {v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_af} :catch_d6

    move-result v3

    .line 3669
    .end local v0    # "count":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_b0
    :goto_b0
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retcode-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 3670
    goto/16 :goto_1c

    .line 3658
    .restart local v0    # "count":I
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_cc
    :try_start_cc
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "insertOrUpdateCertificateProfile - record already exist.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d4} :catch_d6

    .line 3659
    const/4 v3, 0x1

    goto :goto_b0

    .line 3661
    .end local v0    # "count":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :catch_d6
    move-exception v2

    .line 3662
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 3663
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_b0

    .line 3664
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "insertOrUpdateCertificateProfile - Exception allowAllPackages"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0
.end method

.method private insertOrUpdateExemptPackages(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/util/List;III)I
    .registers 26
    .param p1, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "adminId"    # I
    .param p4, "userId"    # I
    .param p5, "exemptType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;III)I"
        }
    .end annotation

    .prologue
    .line 4477
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    sget-boolean v17, DBG:Z

    if-eqz v17, :cond_c

    .line 4478
    sget-object v17, TAG:Ljava/lang/String;

    const-string/jumbo v18, "insertOrUpdateExemptPackages is called..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    :cond_c
    const/4 v15, -0x1

    .line 4482
    .local v15, "ret":I
    sget-boolean v17, DBG:Z

    if-eqz v17, :cond_69

    .line 4483
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "adminId - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ContainerId - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Storage name - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Storage Package - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", exemptType-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4487
    :cond_69
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "insertOrUpdateExemptPackages - Exempt app size -"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    .line 4489
    .local v14, "pm":Landroid/content/pm/IPackageManager;
    const/4 v11, 0x0

    .line 4490
    .local v11, "packageInstalled":Z
    const/4 v13, 0x0

    .line 4492
    .local v13, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_90
    :goto_90
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_11f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/enterprise/AppIdentity;

    .line 4494
    .local v12, "pkg":Lcom/sec/enterprise/AppIdentity;
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "insertOrUpdateExemptPackages - pkg : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4495
    invoke-virtual {v12}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_90

    .line 4499
    invoke-virtual {v12}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_90

    .line 4504
    :try_start_c9
    invoke-virtual {v12}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x40

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p4

    invoke-interface {v14, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d8} :catch_13b

    move-result-object v13

    .line 4510
    :goto_d9
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package Info: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4511
    if-eqz v13, :cond_f6

    .line 4512
    const/4 v11, 0x1

    .line 4515
    :cond_f6
    invoke-virtual {v12}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_15c

    invoke-virtual {v12}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_15c

    .line 4518
    if-eqz v11, :cond_15c

    .line 4520
    invoke-virtual {v12}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, convertStringToSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 4521
    .local v4, "convertedSig":[Landroid/content/pm/Signature;
    if-nez v4, :cond_146

    .line 4522
    sget-object v17, TAG:Ljava/lang/String;

    const-string v18, "UniversalCredentialManagerPolicy passed String signature is invalid"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4524
    const/16 v15, -0x12

    .line 4599
    .end local v4    # "convertedSig":[Landroid/content/pm/Signature;
    .end local v12    # "pkg":Lcom/sec/enterprise/AppIdentity;
    :cond_11f
    :goto_11f
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "insertOrUpdateExemptPackages retcode-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4600
    return v15

    .line 4506
    .restart local v12    # "pkg":Lcom/sec/enterprise/AppIdentity;
    :catch_13b
    move-exception v10

    .line 4507
    .local v10, "n":Ljava/lang/Exception;
    sget-object v17, TAG:Ljava/lang/String;

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 4527
    .end local v10    # "n":Ljava/lang/Exception;
    .restart local v4    # "convertedSig":[Landroid/content/pm/Signature;
    :cond_146
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4}, compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v17

    if-nez v17, :cond_15c

    .line 4528
    sget-object v17, TAG:Ljava/lang/String;

    const-string v18, "Package is installed, and signature doesn\'t match. So return falure"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4530
    const/16 v15, -0x12

    .line 4531
    goto :goto_11f

    .line 4536
    .end local v4    # "convertedSig":[Landroid/content/pm/Signature;
    :cond_15c
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 4537
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v17, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4538
    const-string/jumbo v17, "userId"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4539
    const-string/jumbo v17, "storageName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4540
    const-string/jumbo v17, "storagePackageName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4541
    const-string/jumbo v17, "exemptType"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4543
    if-eqz v11, :cond_1c3

    .line 4544
    :try_start_1ac
    const-string v17, "appUid"

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1c3} :catch_27d

    .line 4549
    :cond_1c3
    :goto_1c3
    const-string v17, "appPackage"

    invoke-virtual {v12}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4550
    invoke-virtual {v12}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1e3

    .line 4551
    const-string v17, "appSignature"

    invoke-virtual {v12}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4553
    :cond_1e3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1fb

    .line 4554
    const-string/jumbo v17, "storageManufacture"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4556
    :cond_1fb
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 4558
    .local v6, "cvWhere":Landroid/content/ContentValues;
    const-string v17, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4559
    const-string/jumbo v17, "userId"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4560
    const-string/jumbo v17, "storageName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4561
    const-string/jumbo v17, "storagePackageName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4562
    const-string v17, "appPackage"

    invoke-virtual {v12}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4563
    const-string/jumbo v17, "exemptType"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4566
    :try_start_256
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "UniversalCredentialExemptTable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v16

    .line 4568
    .local v16, "status":Z
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_29d

    .line 4569
    sget-boolean v17, DBG:Z

    if-eqz v17, :cond_27a

    .line 4570
    sget-object v17, TAG:Ljava/lang/String;

    const-string/jumbo v18, "insertOrUpdateExemptPackages - DB operation failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27a
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_27a} :catch_2f5

    .line 4571
    :cond_27a
    const/4 v15, -0x1

    goto/16 :goto_11f

    .line 4546
    .end local v6    # "cvWhere":Landroid/content/ContentValues;
    .end local v16    # "status":Z
    :catch_27d
    move-exception v8

    .line 4547
    .local v8, "e1":Ljava/lang/Exception;
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "insertOrUpdateExemptPackages getting appuid - Exception"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c3

    .line 4574
    .end local v8    # "e1":Ljava/lang/Exception;
    .restart local v6    # "cvWhere":Landroid/content/ContentValues;
    .restart local v16    # "status":Z
    :cond_29d
    const/4 v15, 0x0

    .line 4584
    .end local v16    # "status":Z
    :cond_29e
    :goto_29e
    if-eqz v11, :cond_2f1

    .line 4585
    :try_start_2a0
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4586
    .local v3, "appUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, exemptedAppsCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2f1

    .line 4587
    move-object/from16 v0, p0

    iget-object v0, v0, exemptedAppsCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual {v12}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4588
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Caching Exempt app id-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", packageName-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f1
    .catch Ljava/lang/Exception; {:try_start_2a0 .. :try_end_2f1} :catch_319

    .line 4595
    .end local v3    # "appUid":I
    :cond_2f1
    :goto_2f1
    const/4 v11, 0x0

    .line 4596
    const/4 v13, 0x0

    .line 4598
    goto/16 :goto_90

    .line 4577
    :catch_2f5
    move-exception v7

    .line 4578
    .local v7, "e":Ljava/lang/Exception;
    const/4 v15, -0x1

    .line 4579
    sget-boolean v17, DBG:Z

    if-eqz v17, :cond_29e

    .line 4580
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "insertOrUpdateExemptPackages - Exception"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29e

    .line 4591
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_319
    move-exception v7

    .line 4592
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f1
.end method

.method private insertOrUpdateWhiteListPackages(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/util/List;IILandroid/os/Bundle;ILjava/lang/String;)I
    .registers 33
    .param p1, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "adminId"    # I
    .param p4, "userId"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "accessType"    # I
    .param p7, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;II",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1709
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    sget-boolean v22, DBG:Z

    if-eqz v22, :cond_c

    .line 1710
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "insertOrUpdateWhiteListPackages is called..."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_c
    const/16 v20, -0x1

    .line 1714
    .local v20, "ret":I
    sget-boolean v22, DBG:Z

    if-eqz v22, :cond_5c

    .line 1715
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "adminId - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ContainerId - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Storage name - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Storage Package - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_5c
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "addPackagesToWhiteList access_type-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/enterprise/AppIdentity;

    .line 1722
    .local v13, "firstApp":Lcom/sec/enterprise/AppIdentity;
    const/4 v5, 0x0

    .line 1723
    .local v5, "allowAllApp":Z
    invoke-virtual {v13}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1724
    .local v10, "data":Ljava/lang/String;
    if-eqz v10, :cond_96

    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_96

    .line 1725
    const/4 v5, 0x1

    .line 1727
    :cond_96
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_1d3

    const/4 v4, 0x1

    .line 1728
    .local v4, "accessTypeIntValue":I
    :goto_9d
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "addPackagesToWhiteList - allowAllApp -"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v0, v5, :cond_1fa

    .line 1731
    sget-object v22, TAG:Ljava/lang/String;

    const-string v23, "addPackagesToWhiteList - inside Allow all packages"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1733
    .local v8, "cv":Landroid/content/ContentValues;
    const-string v22, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1734
    const-string/jumbo v22, "userId"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1735
    const-string/jumbo v22, "storageName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    const-string/jumbo v22, "storagePackageName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11c

    .line 1738
    const-string/jumbo v22, "storageManufacture"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    :cond_11c
    const-string v22, "accessType"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1740
    if-eqz p7, :cond_134

    .line 1741
    const-string v22, "alias"

    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    :cond_134
    const-string v22, "appPackage"

    const-string v23, "*"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1746
    .local v9, "cvWhere":Landroid/content/ContentValues;
    const-string v22, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1747
    const-string/jumbo v22, "userId"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1748
    const-string/jumbo v22, "storageName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    const-string/jumbo v22, "storagePackageName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    const-string v22, "accessType"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1751
    if-eqz p7, :cond_197

    .line 1752
    const-string v22, "alias"

    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    :cond_197
    const-string v22, "appPackage"

    const-string v23, "*"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    :try_start_1a2
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "UniversalCredentialWhiteListTable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1b1} :catch_1d6

    move-result v21

    .line 1758
    .local v21, "status":Z
    if-eqz v21, :cond_1b6

    .line 1759
    const/16 v20, 0x0

    .line 1887
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v9    # "cvWhere":Landroid/content/ContentValues;
    .end local v21    # "status":Z
    :cond_1b6
    :goto_1b6
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "addPackagesToWhiteList retcode-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    return v20

    .line 1727
    .end local v4    # "accessTypeIntValue":I
    :cond_1d3
    const/4 v4, 0x0

    goto/16 :goto_9d

    .line 1761
    .restart local v4    # "accessTypeIntValue":I
    .restart local v8    # "cv":Landroid/content/ContentValues;
    .restart local v9    # "cvWhere":Landroid/content/ContentValues;
    :catch_1d6
    move-exception v11

    .line 1762
    .local v11, "e":Ljava/lang/Exception;
    const/16 v20, -0x1

    .line 1763
    sget-boolean v22, DBG:Z

    if-eqz v22, :cond_1b6

    .line 1764
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "addPackagesToWhiteList - Exception allowAllPackages"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b6

    .line 1768
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v9    # "cvWhere":Landroid/content/ContentValues;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1fa
    sget-object v22, TAG:Ljava/lang/String;

    const-string v23, "addPackagesToWhiteList - inside else block..."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "addPackagesToWhiteList - WhiteList app size -"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v19

    .line 1772
    .local v19, "pm":Landroid/content/pm/IPackageManager;
    const/16 v16, 0x0

    .line 1773
    .local v16, "packageInstalled":Z
    const/16 v18, 0x0

    .line 1775
    .local v18, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_229
    :goto_229
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1b6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/enterprise/AppIdentity;

    .line 1777
    .local v17, "pkg":Lcom/sec/enterprise/AppIdentity;
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "addPackagesToWhiteList - pkg : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_229

    .line 1782
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_229

    .line 1786
    :try_start_261
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x40

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, p4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_272
    .catch Ljava/lang/Exception; {:try_start_261 .. :try_end_272} :catch_2be

    move-result-object v18

    .line 1791
    :goto_273
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Package Info: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    if-eqz v18, :cond_293

    .line 1793
    const/16 v16, 0x1

    .line 1796
    :cond_293
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_2e2

    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_2e2

    .line 1800
    if-eqz v16, :cond_2e2

    .line 1801
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, convertStringToSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v7

    .line 1802
    .local v7, "convertedSig":[Landroid/content/pm/Signature;
    if-nez v7, :cond_2c9

    .line 1803
    sget-object v22, TAG:Ljava/lang/String;

    const-string v23, "UniversalCredentialManagerPolicy passed String signature is invalid"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    const/16 v20, -0x12

    .line 1806
    goto/16 :goto_1b6

    .line 1788
    .end local v7    # "convertedSig":[Landroid/content/pm/Signature;
    :catch_2be
    move-exception v15

    .line 1789
    .local v15, "n":Ljava/lang/Exception;
    sget-object v22, TAG:Ljava/lang/String;

    invoke-static {v15}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_273

    .line 1808
    .end local v15    # "n":Ljava/lang/Exception;
    .restart local v7    # "convertedSig":[Landroid/content/pm/Signature;
    :cond_2c9
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v7}, compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v22

    if-nez v22, :cond_2e2

    .line 1809
    sget-object v22, TAG:Ljava/lang/String;

    const-string v23, "Package is installed, and signature doesn\'t match. So return falure"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const/16 v20, -0x12

    .line 1812
    goto/16 :goto_1b6

    .line 1817
    .end local v7    # "convertedSig":[Landroid/content/pm/Signature;
    :cond_2e2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1818
    .restart local v8    # "cv":Landroid/content/ContentValues;
    const-string v22, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1819
    const-string/jumbo v22, "userId"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1820
    const-string/jumbo v22, "storageName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    const-string/jumbo v22, "storagePackageName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    const-string v22, "accessType"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1823
    if-eqz p7, :cond_33a

    .line 1824
    const-string v22, "alias"

    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    :cond_33a
    const-string v22, "appPackage"

    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    if-eqz v16, :cond_362

    .line 1829
    :try_start_349
    const-string v22, "appUid"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_362
    .catch Ljava/lang/Exception; {:try_start_349 .. :try_end_362} :catch_419

    .line 1834
    :cond_362
    :goto_362
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_375

    .line 1835
    const-string v22, "appSignature"

    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    :cond_375
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_38d

    .line 1838
    const-string/jumbo v22, "storageManufacture"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    :cond_38d
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1842
    .restart local v9    # "cvWhere":Landroid/content/ContentValues;
    const-string v22, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1843
    const-string/jumbo v22, "userId"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1844
    const-string/jumbo v22, "storageName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const-string/jumbo v22, "storagePackageName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const-string v22, "appPackage"

    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    const-string v22, "accessType"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1848
    if-eqz p7, :cond_3f2

    .line 1849
    const-string v22, "alias"

    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    :cond_3f2
    :try_start_3f2
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "UniversalCredentialWhiteListTable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v21

    .line 1855
    .restart local v21    # "status":Z
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_438

    .line 1856
    sget-boolean v22, DBG:Z

    if-eqz v22, :cond_415

    .line 1857
    sget-object v22, TAG:Ljava/lang/String;

    const-string v23, "addPackagesToWhiteList - DB operation failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_415
    .catch Ljava/lang/Exception; {:try_start_3f2 .. :try_end_415} :catch_495

    .line 1858
    :cond_415
    const/16 v20, -0x1

    goto/16 :goto_1b6

    .line 1831
    .end local v9    # "cvWhere":Landroid/content/ContentValues;
    .end local v21    # "status":Z
    :catch_419
    move-exception v12

    .line 1832
    .local v12, "e1":Ljava/lang/Exception;
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "addPackagesToWhiteList getting appuid - Exception"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_362

    .line 1861
    .end local v12    # "e1":Ljava/lang/Exception;
    .restart local v9    # "cvWhere":Landroid/content/ContentValues;
    .restart local v21    # "status":Z
    :cond_438
    const/16 v20, 0x0

    .line 1871
    .end local v21    # "status":Z
    :cond_43a
    :goto_43a
    if-eqz v16, :cond_48f

    .line 1872
    :try_start_43c
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1873
    .local v6, "appUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, whitelistedAppsCache:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_48f

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, whitelistedAppsCache:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Caching WhiteList app id-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", packageName-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48f
    .catch Ljava/lang/Exception; {:try_start_43c .. :try_end_48f} :catch_4b9

    .line 1882
    .end local v6    # "appUid":I
    :cond_48f
    :goto_48f
    const/16 v16, 0x0

    .line 1883
    const/16 v18, 0x0

    .line 1884
    goto/16 :goto_229

    .line 1864
    :catch_495
    move-exception v11

    .line 1865
    .restart local v11    # "e":Ljava/lang/Exception;
    const/16 v20, -0x1

    .line 1866
    sget-boolean v22, DBG:Z

    if-eqz v22, :cond_43a

    .line 1867
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "addPackagesToWhiteList - Exception"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43a

    .line 1878
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_4b9
    move-exception v11

    .line 1879
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48f
.end method

.method private installCACertOnBoot()V
    .registers 23

    .prologue
    .line 5102
    const/16 v18, 0x4

    :try_start_2
    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "adminUid"

    aput-object v19, v14, v18

    const/16 v18, 0x1

    const-string/jumbo v19, "userId"

    aput-object v19, v14, v18

    const/16 v18, 0x2

    const-string v19, "alias"

    aput-object v19, v14, v18

    const/16 v18, 0x3

    const-string/jumbo v19, "location"

    aput-object v19, v14, v18

    .line 5103
    .local v14, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 5104
    .local v8, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string v19, "UniversalCredentialCACertificateTable"

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 5107
    if-eqz v8, :cond_10e

    .line 5108
    const/4 v11, 0x0

    .line 5109
    .local v11, "fis":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 5110
    .local v13, "ois":Ljava/io/ObjectInputStream;
    const/4 v6, 0x0

    .line 5111
    .local v6, "certFile":Landroid/util/AtomicFile;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_42
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ContentValues;

    .line 5112
    .local v17, "value":Landroid/content/ContentValues;
    const-string v18, "adminUid"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 5113
    .local v4, "adminId":I
    const-string/jumbo v18, "userId"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 5114
    .local v16, "userId":I
    const-string v18, "alias"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5115
    .local v5, "alias":Ljava/lang/String;
    const-string/jumbo v18, "location"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5116
    .local v7, "certLocation":Ljava/lang/String;
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "********installCACertOnBoot - started for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5117
    new-instance v6, Landroid/util/AtomicFile;

    .end local v6    # "certFile":Landroid/util/AtomicFile;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 5118
    .restart local v6    # "certFile":Landroid/util/AtomicFile;
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11

    .line 5119
    new-instance v13, Ljava/io/ObjectInputStream;

    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    invoke-direct {v13, v11}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5120
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v0, v18

    check-cast v0, [B

    move-object v9, v0

    .line 5121
    .local v9, "data":[B
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "installCACertOnBoot - data"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    move-object/from16 v0, p0

    iget-object v0, v0, mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v5, v9, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->installCACerttificate(Ljava/lang/String;[BI)Z

    move-result v15

    .line 5123
    .local v15, "savedInTIMA":Z
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "installCACertOnBoot: savedInTIMA -"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f0} :catch_f2

    goto/16 :goto_42

    .line 5126
    .end local v4    # "adminId":I
    .end local v5    # "alias":Ljava/lang/String;
    .end local v6    # "certFile":Landroid/util/AtomicFile;
    .end local v7    # "certLocation":Ljava/lang/String;
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v9    # "data":[B
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .end local v14    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v15    # "savedInTIMA":Z
    .end local v16    # "userId":I
    .end local v17    # "value":Landroid/content/ContentValues;
    :catch_f2
    move-exception v10

    .line 5127
    .local v10, "e":Ljava/lang/Exception;
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "installCACertOnBoot: exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5129
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_10e
    return-void
.end method

.method private installCertificateInProvider(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IIZZ)I
    .registers 35
    .param p1, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p2, "certificate"    # [B
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "privateKeyPassword"    # Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "userId"    # I
    .param p7, "adminUid"    # I
    .param p8, "systemCalling"    # Z
    .param p9, "renew"    # Z

    .prologue
    .line 3508
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "installCertificateInProvider is called for userId-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " and adminId-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", systemCalling-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    const/16 v20, 0x0

    .line 3511
    .local v20, "status":Z
    const/4 v13, -0x1

    .line 3513
    .local v13, "errorCode":I
    :try_start_3c
    new-instance v4, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 3514
    .local v4, "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v11

    .line 3516
    .local v11, "csUri":Ljava/lang/String;
    if-eqz p8, :cond_14c

    .line 3517
    sget-object v22, TAG:Ljava/lang/String;

    const-string v23, "Inside systemCalling block..."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    if-eqz p2, :cond_122

    .line 3519
    sget-object v22, TAG:Ljava/lang/String;

    const-string v23, "Calling installCertificate in UCS"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    if-eqz p5, :cond_c7

    .line 3521
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "installCertificateInProvider setting extra values userId-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " and adminId-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    const-string/jumbo v22, "user_id"

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3523
    const-string v22, "admin_id"

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3524
    const-string/jumbo v22, "renew"

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    move/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3526
    :cond_c7
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-interface {v0, v11, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->installCertificate(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v21

    .line 3527
    .local v21, "ucmResponse":Landroid/os/Bundle;
    if-eqz v21, :cond_11d

    const-string v22, "booleanresponse"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 3528
    :goto_e3
    if-eqz v21, :cond_120

    const-string/jumbo v22, "errorresponse"

    const/16 v23, -0x1

    invoke-virtual/range {v21 .. v23}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_ed} :catch_12a

    move-result v13

    .line 3573
    .end local v4    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v11    # "csUri":Ljava/lang/String;
    .end local v21    # "ucmResponse":Landroid/os/Bundle;
    :cond_ee
    :goto_ee
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "status -"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " and errorCode-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    if-eqz v20, :cond_11a

    .line 3575
    const/4 v13, 0x0

    :cond_11a
    move/from16 v22, v13

    .line 3577
    :goto_11c
    return v22

    .line 3527
    .restart local v4    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .restart local v11    # "csUri":Ljava/lang/String;
    .restart local v21    # "ucmResponse":Landroid/os/Bundle;
    :cond_11d
    const/16 v20, 0x0

    goto :goto_e3

    .line 3528
    :cond_120
    const/4 v13, -0x1

    goto :goto_ee

    .line 3531
    .end local v21    # "ucmResponse":Landroid/os/Bundle;
    :cond_122
    :try_start_122
    sget-object v22, TAG:Ljava/lang/String;

    const-string v23, "Certificate is null..."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_129} :catch_12a

    goto :goto_ee

    .line 3569
    .end local v4    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v11    # "csUri":Ljava/lang/String;
    :catch_12a
    move-exception v12

    .line 3570
    .local v12, "e":Ljava/lang/Exception;
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "installCertificateInProvider Exception.... "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ee

    .line 3534
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v4    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .restart local v11    # "csUri":Ljava/lang/String;
    :cond_14c
    :try_start_14c
    const-string v22, "PKCS12"

    invoke-static/range {v22 .. v22}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v19

    .line 3535
    .local v19, "p12KEYtore":Ljava/security/KeyStore;
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3536
    .local v18, "p12Input":Ljava/io/InputStream;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 3537
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 3538
    invoke-virtual/range {v19 .. v19}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v6

    .line 3541
    .local v6, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_ee

    .line 3542
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3543
    .local v5, "aliasTmp":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v15

    .line 3545
    .local v15, "key":Ljava/security/Key;
    instance-of v0, v15, Ljava/security/PrivateKey;

    move/from16 v22, v0

    if-eqz v22, :cond_ee

    .line 3547
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v10

    .line 3548
    .local v10, "certs":[Ljava/security/cert/Certificate;
    if-eqz v10, :cond_19a

    array-length v0, v10

    move/from16 v22, v0

    if-nez v22, :cond_1a6

    .line 3549
    :cond_19a
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "getCertificateChain empty"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    const/16 v22, -0x1

    goto/16 :goto_11c

    .line 3552
    :cond_1a6
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3553
    .local v17, "outputStream":Ljava/io/ByteArrayOutputStream;
    move-object v7, v10

    .local v7, "arr$":[Ljava/security/cert/Certificate;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1b0
    move/from16 v0, v16

    if-ge v14, v0, :cond_1c4

    aget-object v8, v7, v14

    .line 3554
    .local v8, "c":Ljava/security/cert/Certificate;
    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 3553
    add-int/lit8 v14, v14, 0x1

    goto :goto_1b0

    .line 3556
    .end local v8    # "c":Ljava/security/cert/Certificate;
    :cond_1c4
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 3557
    .local v9, "certChain":[B
    if-eqz p5, :cond_20c

    .line 3558
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "installCertificateInProvider setting extra values userId-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " and adminId-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    const-string/jumbo v22, "user_id"

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3560
    const-string v22, "admin_id"

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3562
    :cond_20c
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v22

    invoke-interface {v15}, Ljava/security/Key;->getEncoded()[B

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    invoke-interface {v0, v11, v1, v9, v2}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->installCertificate(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v21

    .line 3563
    .restart local v21    # "ucmResponse":Landroid/os/Bundle;
    if-eqz v21, :cond_235

    const-string v22, "booleanresponse"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 3564
    :goto_228
    if-eqz v21, :cond_238

    const-string/jumbo v22, "errorresponse"

    const/16 v23, -0x1

    invoke-virtual/range {v21 .. v23}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_232
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_232} :catch_12a

    move-result v13

    :goto_233
    goto/16 :goto_ee

    .line 3563
    :cond_235
    const/16 v20, 0x0

    goto :goto_228

    .line 3564
    :cond_238
    const/4 v13, -0x1

    goto :goto_233
.end method

.method private installCertificateInTIMA([BLjava/lang/String;Landroid/os/Bundle;II)Ljava/lang/String;
    .registers 19
    .param p1, "certificate"    # [B
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "userId"    # I
    .param p5, "adminUid"    # I

    .prologue
    .line 3581
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "installCertificateInTIMA is called for userId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and adminId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    const/4 v5, 0x0

    .line 3585
    .local v5, "location":Ljava/lang/String;
    :try_start_28
    iget-object v9, p0, mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    move/from16 v0, p4

    invoke-virtual {v9, p2, p1, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->installCACerttificate(Ljava/lang/String;[BI)Z

    move-result v8

    .line 3586
    .local v8, "savedInTIMA":Z
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "installCertificateInTIMA: savedInTIMA -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    if-eqz v8, :cond_118

    .line 3588
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, ucsCertLocation:Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UCM_CA_CERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3589
    .local v1, "caCertFile":Landroid/util/AtomicFile;
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_93

    .line 3590
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_93} :catch_f9

    .line 3592
    :cond_93
    const/4 v4, 0x0

    .line 3593
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 3595
    .local v6, "oos":Ljava/io/ObjectOutputStream;
    :try_start_95
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 3596
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9e} :catch_bb
    .catchall {:try_start_95 .. :try_end_9e} :catchall_ed

    .line 3597
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .local v7, "oos":Ljava/io/ObjectOutputStream;
    :try_start_9e
    invoke-virtual {v7, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3598
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 3599
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_ab} :catch_12c
    .catchall {:try_start_9e .. :try_end_ab} :catchall_129

    move-result-object v5

    .line 3607
    if-eqz v7, :cond_b1

    :try_start_ae
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_121

    .line 3608
    :cond_b1
    :goto_b1
    if-eqz v4, :cond_b6

    :try_start_b3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b6} :catch_b8

    :cond_b6
    move-object v6, v7

    .line 3618
    .end local v1    # "caCertFile":Landroid/util/AtomicFile;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .end local v8    # "savedInTIMA":Z
    :cond_b7
    :goto_b7
    return-object v5

    .line 3608
    .restart local v1    # "caCertFile":Landroid/util/AtomicFile;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v8    # "savedInTIMA":Z
    :catch_b8
    move-exception v9

    move-object v6, v7

    .line 3609
    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_b7

    .line 3600
    :catch_bb
    move-exception v2

    .line 3601
    .local v2, "e":Ljava/lang/Exception;
    :goto_bc
    :try_start_bc
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error during saving certificates: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3603
    if-eqz v4, :cond_e0

    .line 3604
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_e0
    .catchall {:try_start_bc .. :try_end_e0} :catchall_ed

    .line 3607
    :cond_e0
    if-eqz v6, :cond_e5

    :try_start_e2
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_123

    .line 3608
    :cond_e5
    :goto_e5
    if-eqz v4, :cond_b7

    :try_start_e7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ea} :catch_eb

    goto :goto_b7

    :catch_eb
    move-exception v9

    goto :goto_b7

    .line 3607
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_ed
    move-exception v9

    :goto_ee
    if-eqz v6, :cond_f3

    :try_start_f0
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f3} :catch_125

    .line 3608
    :cond_f3
    :goto_f3
    if-eqz v4, :cond_f8

    :try_start_f5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_f8} :catch_127

    :cond_f8
    :goto_f8
    :try_start_f8
    throw v9
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_f9} :catch_f9

    .line 3615
    .end local v1    # "caCertFile":Landroid/util/AtomicFile;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .end local v8    # "savedInTIMA":Z
    :catch_f9
    move-exception v3

    .line 3616
    .local v3, "e1":Ljava/lang/Exception;
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "installCertificateInTIMA: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    .line 3612
    .end local v3    # "e1":Ljava/lang/Exception;
    .restart local v8    # "savedInTIMA":Z
    :cond_118
    :try_start_118
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "installCertificateInTIMA: savedInTIMA failed..."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_120} :catch_f9

    goto :goto_b7

    .line 3607
    .restart local v1    # "caCertFile":Landroid/util/AtomicFile;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    :catch_121
    move-exception v9

    goto :goto_b1

    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catch_123
    move-exception v9

    goto :goto_e5

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_125
    move-exception v10

    goto :goto_f3

    .line 3608
    :catch_127
    move-exception v10

    goto :goto_f8

    .line 3607
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_129
    move-exception v9

    move-object v6, v7

    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_ee

    .line 3600
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    :catch_12c
    move-exception v2

    move-object v6, v7

    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_bc
.end method

.method private installCertificateMain(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)I
    .registers 31
    .param p1, "adminId"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p4, "certBytes"    # [B
    .param p5, "alias"    # Ljava/lang/String;
    .param p6, "privateKeyPassword"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "systemCalling"    # Z
    .param p9, "renew"    # Z

    .prologue
    .line 3432
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "installCertificateMain is called...."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 3436
    .local v18, "id":J
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-eqz v6, :cond_1e

    if-eqz p4, :cond_1e

    if-eqz p5, :cond_1e

    if-nez p8, :cond_30

    if-nez p6, :cond_30

    .line 3438
    :cond_1e
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_2a

    .line 3439
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "installCertificate - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_15b
    .catchall {:try_start_c .. :try_end_2a} :catchall_17b

    .line 3440
    :cond_2a
    const/16 v17, -0xb

    .line 3501
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3503
    :goto_2f
    return v17

    .line 3443
    :cond_30
    :try_start_30
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_67

    .line 3444
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "installCertificate is called for Caller UID-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mContainerId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", renew-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    :cond_67
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 3449
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "Plugin is not active"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_78} :catch_15b
    .catchall {:try_start_30 .. :try_end_78} :catchall_17b

    .line 3450
    const/16 v17, -0xd

    .line 3501
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2f

    .line 3454
    :cond_7e
    const/4 v6, 0x1

    :try_start_7f
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v7, v8}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eq v6, v7, :cond_a5

    .line 3455
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_9f

    .line 3456
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "installCertificate return false.."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_9f} :catch_15b
    .catchall {:try_start_7f .. :try_end_9f} :catchall_17b

    .line 3457
    :cond_9f
    const/16 v17, -0xc

    .line 3501
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2f

    .line 3460
    :cond_a5
    const/4 v12, 0x1

    :try_start_a6
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, checkCredentialStorageAliasForAdmin(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-ne v12, v6, :cond_127

    .line 3462
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_c7

    .line 3463
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "- alias already exist for credential storage..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_c7} :catch_15b
    .catchall {:try_start_a6 .. :try_end_c7} :catchall_17b

    .line 3464
    :cond_c7
    if-nez p9, :cond_d0

    .line 3465
    const/16 v17, -0x14

    .line 3501
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2f

    .line 3467
    :cond_d0
    :try_start_d0
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, " It is special renew certificate flow...."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    :cond_d7
    const-string/jumbo v6, "ese_storage_option"

    const/4 v7, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 3479
    .local v20, "storageOption":I
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "installCertificate storageOption-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p2

    move/from16 v13, p1

    move/from16 v14, p8

    move/from16 v15, p9

    .line 3482
    invoke-direct/range {v6 .. v15}, installCertificateInProvider(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IIZZ)I

    move-result v17

    .line 3484
    .local v17, "status":I
    if-eqz v17, :cond_13c

    .line 3485
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_122

    .line 3486
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "installCertificateInProvider failed..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_122} :catch_15b
    .catchall {:try_start_d0 .. :try_end_122} :catchall_17b

    .line 3501
    :cond_122
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2f

    .line 3470
    .end local v17    # "status":I
    .end local v20    # "storageOption":I
    :cond_127
    if-eqz p9, :cond_d7

    .line 3471
    :try_start_129
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_135

    .line 3472
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "installCertificate invalid renew flow...."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_135} :catch_15b
    .catchall {:try_start_129 .. :try_end_135} :catchall_17b

    .line 3473
    :cond_135
    const/16 v17, -0xe

    .line 3501
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2f

    .line 3492
    .restart local v17    # "status":I
    .restart local v20    # "storageOption":I
    :cond_13c
    const/4 v6, 0x1

    :try_start_13d
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, insertOrUpdateCertificateProfile(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;IILjava/lang/String;)Z
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_14a} :catch_15b
    .catchall {:try_start_13d .. :try_end_14a} :catchall_17b

    move-result v7

    if-ne v6, v7, :cond_154

    .line 3494
    const/16 v17, 0x0

    .line 3501
    .end local v17    # "status":I
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2f

    .restart local v17    # "status":I
    :cond_154
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3503
    .end local v17    # "status":I
    .end local v20    # "storageOption":I
    :goto_157
    const/16 v17, -0x1

    goto/16 :goto_2f

    .line 3498
    :catch_15b
    move-exception v16

    .line 3499
    .local v16, "e":Ljava/lang/Exception;
    :try_start_15c
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "installCertificate Exception-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_177
    .catchall {:try_start_15c .. :try_end_177} :catchall_17b

    .line 3501
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_157

    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_17b
    move-exception v6

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private isAdminLicenseActive(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 11
    .param p1, "adminId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 5067
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAdminLicenseActive adminId-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", storagePackage-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    const/4 v4, 0x1

    .line 5070
    .local v4, "status":Z
    :try_start_26
    iget-object v5, p0, expiredAdmins:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 5071
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAdminLicenseActive - adminId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is expired admin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5072
    iget-object v5, p0, expiredAdmins:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 5073
    .local v3, "relatedStorages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_80

    iget-object v5, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 5074
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "isAdminLicenseActive - found the storage..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5075
    iget-object v5, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, isSystemStorage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 5076
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "isAdminLicenseActive - Storage is system. Blocking access"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5077
    const/4 v4, 0x0

    .line 5097
    .end local v3    # "relatedStorages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_80
    :goto_80
    return v4

    .line 5079
    .restart local v3    # "relatedStorages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_81
    invoke-direct {p0, p2}, getCredentialStorageProvider(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Ljava/security/Provider;

    move-result-object v0

    .line 5080
    .local v0, "csProvider":Ljava/security/Provider;
    if-eqz v0, :cond_80

    .line 5081
    const-string/jumbo v5, "enforceManagement"

    invoke-virtual {v0, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5082
    .local v2, "enforceMgt":Ljava/lang/String;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAdminLicenseActive - enforceMgt :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5083
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 5084
    const/4 v4, 0x0

    goto :goto_80

    .line 5090
    .end local v0    # "csProvider":Ljava/security/Provider;
    .end local v2    # "enforceMgt":Ljava/lang/String;
    .end local v3    # "relatedStorages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b2
    const/4 v4, 0x1

    .line 5091
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "isAdminLicenseActive - admin License is active"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_bb} :catch_bc

    goto :goto_80

    .line 5094
    :catch_bc
    move-exception v1

    .line 5095
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception isAdminLicenseActive e-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method

.method private isCertificateAccessAllowed(Ljava/lang/String;ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 2709
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "isCertificateAccessAllowed is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    invoke-direct {p0, p3}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_24

    .line 2712
    :cond_16
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_22

    .line 2713
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "isCertificateAccessAllowed - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_22
    const/4 v0, 0x0

    .line 2717
    :goto_23
    return v0

    :cond_24
    invoke-direct {p0, p3, p1, p2}, isCertificateAccessAllowedInternal(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_23
.end method

.method private isCertificateAccessAllowedInternal(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;I)Z
    .registers 26
    .param p1, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "packageUid"    # I

    .prologue
    .line 2723
    const/4 v15, 0x0

    .line 2724
    .local v15, "status":Z
    if-eqz p2, :cond_5

    if-nez p3, :cond_14

    .line 2725
    :cond_5
    sget-boolean v19, DBG:Z

    if-eqz v19, :cond_11

    .line 2726
    sget-object v19, TAG:Ljava/lang/String;

    const-string/jumbo v20, "isCertificateAccessAllowedInternal - Invalid Arguments"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move/from16 v16, v15

    .line 2791
    .end local v15    # "status":Z
    .local v16, "status":I
    :goto_13
    return v16

    .line 2731
    .end local v16    # "status":I
    .restart local v15    # "status":Z
    :cond_14
    :try_start_14
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    .line 2732
    .local v17, "userId":I
    const/16 v3, 0x68

    .line 2733
    .local v3, "certAccess":I
    sget-boolean v19, DBG:Z

    if-eqz v19, :cond_63

    .line 2734
    sget-object v19, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "isCertificateAccessAllowedInternal userId-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " and alias-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " and packageUid-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", certAccess-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    :cond_63
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v12, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v20, "userId"

    aput-object v20, v12, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "storageName"

    aput-object v20, v12, v19

    const/16 v19, 0x2

    const-string/jumbo v20, "storagePackageName"

    aput-object v20, v12, v19

    const/16 v19, 0x3

    const-string v20, "alias"

    aput-object v20, v12, v19

    const/16 v19, 0x4

    const-string v20, "accessType"

    aput-object v20, v12, v19

    .line 2745
    .local v12, "sAllColumns":[Ljava/lang/String;
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v19

    const/16 v19, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v14, v19

    const/16 v19, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v14, v19

    const/16 v19, 0x3

    aput-object p2, v14, v19

    const/16 v19, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v19

    .line 2750
    .local v14, "sAllValues":[Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v13, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "appPackage"

    aput-object v20, v13, v19

    .line 2753
    .local v13, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 2755
    .local v4, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "UniversalCredentialWhiteListTable"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12, v14, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2759
    if-eqz v4, :cond_19c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_19c

    .line 2761
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 2762
    .local v11, "pkgNames":[Ljava/lang/String;
    if-eqz v11, :cond_160

    .line 2763
    move-object v2, v11

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v7    # "i$":I
    .local v8, "i$":I
    :goto_f1
    if-ge v8, v9, :cond_17d

    aget-object v10, v2, v8

    .line 2764
    .local v10, "pkgName":Ljava/lang/String;
    sget-object v19, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "isCertificateAccessAllowedInternal pkgName-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v8    # "i$":I
    .local v7, "i$":Ljava/util/Iterator;
    :cond_114
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_15c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/ContentValues;

    .line 2766
    .local v18, "value":Landroid/content/ContentValues;
    const-string v19, "appPackage"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2768
    .local v5, "dbPackage":Ljava/lang/String;
    sget-object v19, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "isCertificateAccessAllowedInternal dbPackage-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    if-eqz v5, :cond_114

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_153

    const-string v19, "*"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_114

    .line 2772
    :cond_153
    sget-object v19, TAG:Ljava/lang/String;

    const-string/jumbo v20, "isCertificateAccessAllowedInternal match found..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    const/4 v15, 0x1

    .line 2763
    .end local v5    # "dbPackage":Ljava/lang/String;
    .end local v18    # "value":Landroid/content/ContentValues;
    :cond_15c
    add-int/lit8 v7, v8, 0x1

    .local v7, "i$":I
    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_f1

    .line 2779
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_160
    sget-object v19, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "isCertificateAccessAllowedInternal no packages related to uid-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17d} :catch_1a5

    .line 2790
    .end local v3    # "certAccess":I
    .end local v4    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v11    # "pkgNames":[Ljava/lang/String;
    .end local v12    # "sAllColumns":[Ljava/lang/String;
    .end local v13    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v14    # "sAllValues":[Ljava/lang/String;
    .end local v17    # "userId":I
    :cond_17d
    :goto_17d
    sget-object v19, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "isCertificateAccessAllowedInternal status-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v15

    .line 2791
    .restart local v16    # "status":I
    goto/16 :goto_13

    .line 2784
    .end local v16    # "status":I
    .restart local v3    # "certAccess":I
    .restart local v4    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v12    # "sAllColumns":[Ljava/lang/String;
    .restart local v13    # "sAllReturnColumns":[Ljava/lang/String;
    .restart local v14    # "sAllValues":[Ljava/lang/String;
    .restart local v17    # "userId":I
    :cond_19c
    :try_start_19c
    sget-object v19, TAG:Ljava/lang/String;

    const-string/jumbo v20, "isCertificateAccessAllowedInternal - No record found..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1a4} :catch_1a5

    goto :goto_17d

    .line 2786
    .end local v3    # "certAccess":I
    .end local v4    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v12    # "sAllColumns":[Ljava/lang/String;
    .end local v13    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v14    # "sAllValues":[Ljava/lang/String;
    .end local v17    # "userId":I
    :catch_1a5
    move-exception v6

    .line 2787
    .local v6, "e":Ljava/lang/Exception;
    sget-object v19, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "isCertificateAccessAllowedInternal - exception "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17d
.end method

.method private isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "storageName"    # Ljava/lang/String;
    .param p4, "storagePackageName"    # Ljava/lang/String;

    .prologue
    .line 5419
    const/4 v3, 0x0

    .line 5420
    .local v3, "status":Z
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_d

    .line 5421
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "isCredentialStorageManagedInternal"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5423
    :cond_d
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_3d

    .line 5424
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UserId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", storageName - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and storagePackageName-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5426
    :cond_3d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5429
    .local v4, "id":J
    :try_start_41
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5430
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const/4 v6, -0x1

    if-eq p1, v6, :cond_52

    .line 5431
    const-string v6, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5433
    :cond_52
    const-string/jumbo v6, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5434
    const-string/jumbo v6, "storageName"

    invoke-virtual {v1, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5435
    const-string/jumbo v6, "storagePackageName"

    invoke-virtual {v1, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5437
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "UniversalCredentialInfoTable"

    invoke-virtual {v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_6f} :catch_94
    .catchall {:try_start_41 .. :try_end_6f} :catchall_ba

    move-result v0

    .line 5439
    .local v0, "count":I
    if-lez v0, :cond_73

    .line 5440
    const/4 v3, 0x1

    .line 5447
    :cond_73
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5449
    .end local v0    # "count":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :goto_76
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_93

    .line 5450
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCredentialStorageManagedInternal - status : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    :cond_93
    return v3

    .line 5443
    :catch_94
    move-exception v2

    .line 5444
    .local v2, "e":Ljava/lang/Exception;
    :try_start_95
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_b6

    .line 5445
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCredentialStorageManagedInternal - Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_95 .. :try_end_b6} :catchall_ba

    .line 5447
    :cond_b6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_76

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_ba
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 5
    .param p1, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 952
    invoke-direct {p0, p1}, getCredentialStorageProvider(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Ljava/security/Provider;

    move-result-object v0

    .line 953
    .local v0, "pr":Ljava/security/Provider;
    if-eqz v0, :cond_f

    .line 954
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "Plugin is active..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v1, 0x1

    .line 957
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 331
    :try_start_1
    iget-object v4, p0, mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x40

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 334
    .local v2, "targetPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android"

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 337
    .local v1, "sys":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_28

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_28

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v4, v5}, compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_24} :catch_29

    move-result v4

    if-eqz v4, :cond_28

    const/4 v3, 0x1

    .line 339
    .end local v1    # "sys":Landroid/content/pm/PackageInfo;
    .end local v2    # "targetPkgInfo":Landroid/content/pm/PackageInfo;
    :cond_28
    :goto_28
    return v3

    .line 338
    :catch_29
    move-exception v0

    .line 339
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_28
.end method

.method private isSystemStorage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v0, p0, systemPlugin:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1}, isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 313
    const/4 v0, 0x1

    .line 315
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isValidAccessType(I)Z
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 1694
    const/4 v0, 0x0

    .line 1695
    .local v0, "status":Z
    packed-switch p1, :pswitch_data_2c

    .line 1701
    const/4 v0, 0x0

    .line 1703
    :goto_5
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidAccessType type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    return v0

    .line 1698
    :pswitch_29
    const/4 v0, 0x1

    .line 1699
    goto :goto_5

    .line 1695
    nop

    :pswitch_data_2c
    .packed-switch 0x67
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method private isValidAuthType(I)Z
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 1408
    const/4 v0, 0x0

    .line 1409
    .local v0, "status":Z
    sparse-switch p1, :sswitch_data_2e

    .line 1417
    const/4 v0, 0x0

    .line 1419
    :goto_5
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidAuthType type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return v0

    .line 1411
    :sswitch_29
    const/4 v0, 0x1

    .line 1412
    goto :goto_5

    .line 1414
    :sswitch_2b
    const/4 v0, 0x1

    .line 1415
    goto :goto_5

    .line 1409
    nop

    :sswitch_data_2e
    .sparse-switch
        0x64 -> :sswitch_29
        0x69 -> :sswitch_2b
    .end sparse-switch
.end method

.method private isValidCredentialStorage(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)I
    .registers 34
    .param p1, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p2, "callerId"    # I

    .prologue
    .line 1146
    const/16 v25, -0xd

    .line 1148
    .local v25, "ret":I
    :try_start_2
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_42

    .line 1149
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "UniversalCredentialManagerService.isValidCredentialStorage  cs.name-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ",cs.packageName-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "and callerId-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_42
    invoke-direct/range {p0 .. p1}, getCredentialStorageProvider(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Ljava/security/Provider;

    move-result-object v11

    .line 1152
    .local v11, "csProvider":Ljava/security/Provider;
    if-eqz v11, :cond_221

    .line 1153
    const-string/jumbo v28, "isManageable"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1154
    .local v16, "isManageable":Ljava/lang/String;
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "isValidCredentialStorage isManageable-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const-string/jumbo v28, "true"

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2c7

    .line 1156
    const-string v28, "configuratorList"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1157
    .local v9, "configuratorList":Ljava/lang/String;
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_a2

    .line 1158
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "isValidCredentialStorage configuratorList-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_a2
    if-eqz v9, :cond_2c3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_2c3

    .line 1161
    const-string v28, ":"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1162
    .local v8, "configPkg":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    .line 1163
    .local v22, "pkgNames":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 1164
    .local v19, "matchFound":Z
    if-eqz v22, :cond_287

    .line 1165
    move-object/from16 v3, v22

    .local v3, "arr$":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    move v15, v14

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .local v15, "i$":I
    :goto_cb
    move/from16 v0, v17

    if-ge v15, v0, :cond_287

    aget-object v5, v3, v15

    .line 1166
    .local v5, "callerPkg":Ljava/lang/String;
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "isValidCredentialStorage callerPkg-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    if-eqz v8, :cond_285

    array-length v0, v8

    move/from16 v28, v0

    if-lez v28, :cond_285

    .line 1168
    move-object v4, v8

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v14, 0x0

    .end local v15    # "i$":I
    .restart local v14    # "i$":I
    :goto_f8
    move/from16 v0, v18

    if-ge v14, v0, :cond_285

    aget-object v7, v4, v14

    .line 1169
    .local v7, "configData":Ljava/lang/String;
    const-string v28, "@"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1170
    .local v6, "config":[Ljava/lang/String;
    if-eqz v6, :cond_10e

    const/16 v28, 0x0

    aget-object v28, v6, v28

    if-nez v28, :cond_111

    .line 1168
    :cond_10e
    :goto_10e
    add-int/lit8 v14, v14, 0x1

    goto :goto_f8

    .line 1173
    :cond_111
    const/16 v28, 0x0

    aget-object v28, v6, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_10e

    .line 1174
    array-length v0, v6

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_296

    const/16 v28, 0x1

    aget-object v28, v6, v28

    if-eqz v28, :cond_296

    const/16 v28, 0x1

    aget-object v28, v6, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_296

    .line 1175
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "isValidCredentialStorage callerPkg-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " match found. Now Matching signature..."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_17e

    .line 1177
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "isValidCredentialStorage - config sign-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x1

    aget-object v30, v6, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_17e
    const/16 v28, 0x1

    aget-object v28, v6, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, convertStringToSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v10

    .line 1180
    .local v10, "convertedSig":[Landroid/content/pm/Signature;
    if-nez v10, :cond_198

    .line 1181
    sget-object v28, TAG:Ljava/lang/String;

    const-string/jumbo v29, "isValidCredentialStorage - failed to convert signature from db."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_198
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19b} :catch_21d

    move-result-object v23

    .line 1184
    .local v23, "pm":Landroid/content/pm/IPackageManager;
    const/16 v21, 0x0

    .line 1186
    .local v21, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/16 v28, 0x40

    :try_start_1a0
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v29

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v5, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_1ad
    .catch Landroid/os/RemoteException; {:try_start_1a0 .. :try_end_1ad} :catch_1ff
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1ad} :catch_222

    move-result-object v21

    .line 1194
    :goto_1ae
    if-eqz v22, :cond_10e

    .line 1195
    :try_start_1b0
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_269

    .line 1196
    const-string v26, ""

    .line 1197
    .local v26, "sig":Ljava/lang/String;
    if-eqz v21, :cond_269

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v28, v0

    if-eqz v28, :cond_269

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    if-lez v28, :cond_269

    .line 1198
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    .line 1199
    .local v27, "sigStrins":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1df
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v13, v0, :cond_242

    .line 1200
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v28, v0

    aget-object v28, v28, v13

    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v13

    .line 1199
    add-int/lit8 v13, v13, 0x1

    goto :goto_1df

    .line 1188
    .end local v13    # "i":I
    .end local v26    # "sig":Ljava/lang/String;
    .end local v27    # "sigStrins":[Ljava/lang/String;
    :catch_1ff
    move-exception v24

    .line 1189
    .local v24, "re":Landroid/os/RemoteException;
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Failed to get pkgInfo becuase of the exception - "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_21c} :catch_21d

    goto :goto_1ae

    .line 1239
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "callerPkg":Ljava/lang/String;
    .end local v6    # "config":[Ljava/lang/String;
    .end local v7    # "configData":Ljava/lang/String;
    .end local v8    # "configPkg":[Ljava/lang/String;
    .end local v9    # "configuratorList":Ljava/lang/String;
    .end local v10    # "convertedSig":[Landroid/content/pm/Signature;
    .end local v11    # "csProvider":Ljava/security/Provider;
    .end local v14    # "i$":I
    .end local v16    # "isManageable":Ljava/lang/String;
    .end local v18    # "len$":I
    .end local v19    # "matchFound":Z
    .end local v21    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v22    # "pkgNames":[Ljava/lang/String;
    .end local v23    # "pm":Landroid/content/pm/IPackageManager;
    .end local v24    # "re":Landroid/os/RemoteException;
    :catch_21d
    move-exception v12

    .line 1240
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 1242
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_221
    :goto_221
    return v25

    .line 1190
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v5    # "callerPkg":Ljava/lang/String;
    .restart local v6    # "config":[Ljava/lang/String;
    .restart local v7    # "configData":Ljava/lang/String;
    .restart local v8    # "configPkg":[Ljava/lang/String;
    .restart local v9    # "configuratorList":Ljava/lang/String;
    .restart local v10    # "convertedSig":[Landroid/content/pm/Signature;
    .restart local v11    # "csProvider":Ljava/security/Provider;
    .restart local v14    # "i$":I
    .restart local v16    # "isManageable":Ljava/lang/String;
    .restart local v18    # "len$":I
    .restart local v19    # "matchFound":Z
    .restart local v21    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v22    # "pkgNames":[Ljava/lang/String;
    .restart local v23    # "pm":Landroid/content/pm/IPackageManager;
    :catch_222
    move-exception v20

    .line 1191
    .local v20, "n":Ljava/lang/Exception;
    :try_start_223
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "isValidCredentialStorage exception - "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ae

    .line 1202
    .end local v20    # "n":Ljava/lang/Exception;
    .restart local v13    # "i":I
    .restart local v26    # "sig":Ljava/lang/String;
    .restart local v27    # "sigStrins":[Ljava/lang/String;
    :cond_242
    const-string v28, ","

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 1203
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "isValidCredentialStorage caller sign-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    .end local v13    # "i":I
    .end local v26    # "sig":Ljava/lang/String;
    .end local v27    # "sigStrins":[Ljava/lang/String;
    :cond_269
    if-eqz v10, :cond_28c

    if-eqz v21, :cond_28c

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v10}, compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v28

    if-eqz v28, :cond_28c

    .line 1207
    sget-object v28, TAG:Ljava/lang/String;

    const-string/jumbo v29, "isValidCredentialStorage signature match found"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const/16 v19, 0x1

    .line 1222
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "config":[Ljava/lang/String;
    .end local v7    # "configData":Ljava/lang/String;
    .end local v10    # "convertedSig":[Landroid/content/pm/Signature;
    .end local v14    # "i$":I
    .end local v18    # "len$":I
    .end local v21    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v23    # "pm":Landroid/content/pm/IPackageManager;
    :cond_285
    :goto_285
    if-eqz v19, :cond_2ba

    .line 1227
    .end local v5    # "callerPkg":Ljava/lang/String;
    :cond_287
    if-eqz v19, :cond_2bf

    .line 1228
    const/16 v25, 0x0

    goto :goto_221

    .line 1211
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v5    # "callerPkg":Ljava/lang/String;
    .restart local v6    # "config":[Ljava/lang/String;
    .restart local v7    # "configData":Ljava/lang/String;
    .restart local v10    # "convertedSig":[Landroid/content/pm/Signature;
    .restart local v14    # "i$":I
    .restart local v18    # "len$":I
    .restart local v21    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v23    # "pm":Landroid/content/pm/IPackageManager;
    :cond_28c
    sget-object v28, TAG:Ljava/lang/String;

    const-string/jumbo v29, "isValidCredentialStorage signature didn\'t matched"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10e

    .line 1215
    .end local v10    # "convertedSig":[Landroid/content/pm/Signature;
    .end local v21    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v23    # "pm":Landroid/content/pm/IPackageManager;
    :cond_296
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "isValidCredentialStorage callerPkg-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " is allowed to configure storage..."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b7
    .catch Ljava/lang/Exception; {:try_start_223 .. :try_end_2b7} :catch_21d

    .line 1216
    const/16 v19, 0x1

    .line 1217
    goto :goto_285

    .line 1165
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "config":[Ljava/lang/String;
    .end local v7    # "configData":Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v18    # "len$":I
    :cond_2ba
    add-int/lit8 v14, v15, 0x1

    .restart local v14    # "i$":I
    move v15, v14

    .end local v14    # "i$":I
    .restart local v15    # "i$":I
    goto/16 :goto_cb

    .line 1230
    .end local v5    # "callerPkg":Ljava/lang/String;
    .end local v15    # "i$":I
    :cond_2bf
    const/16 v25, -0x17

    goto/16 :goto_221

    .line 1233
    .end local v8    # "configPkg":[Ljava/lang/String;
    .end local v19    # "matchFound":Z
    .end local v22    # "pkgNames":[Ljava/lang/String;
    :cond_2c3
    const/16 v25, 0x0

    goto/16 :goto_221

    .line 1236
    .end local v9    # "configuratorList":Ljava/lang/String;
    :cond_2c7
    const/16 v25, -0x16

    goto/16 :goto_221
.end method

.method private isValidExemptType(I)Z
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 4415
    const/4 v0, 0x0

    .line 4416
    .local v0, "status":Z
    packed-switch p1, :pswitch_data_2c

    .line 4421
    const/4 v0, 0x0

    .line 4423
    :goto_5
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidExemptType type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    return v0

    .line 4418
    :pswitch_29
    const/4 v0, 0x1

    .line 4419
    goto :goto_5

    .line 4416
    nop

    :pswitch_data_2c
    .packed-switch 0x6a
        :pswitch_29
    .end packed-switch
.end method

.method private isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 4
    .param p1, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    const/4 v0, 0x0

    .line 6027
    if-nez p1, :cond_4

    .line 6036
    :cond_3
    :goto_3
    return v0

    .line 6030
    :cond_4
    iget-object v1, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6033
    iget-object v1, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6036
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private isValidStorageOption(I)Z
    .registers 6
    .param p1, "option"    # I

    .prologue
    .line 4232
    const/4 v0, 0x0

    .line 4233
    .local v0, "status":Z
    packed-switch p1, :pswitch_data_2c

    .line 4239
    const/4 v0, 0x0

    .line 4241
    :goto_5
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidStorageOption option-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    return v0

    .line 4236
    :pswitch_29
    const/4 v0, 0x1

    .line 4237
    goto :goto_5

    .line 4233
    nop

    :pswitch_data_2c
    .packed-switch 0x65
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method private lockCredentialStorageInternal(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Z)Z
    .registers 12
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p4, "lock"    # Z

    .prologue
    .line 1313
    const/4 v3, 0x0

    .line 1315
    .local v3, "ret":Z
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1316
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1317
    const-string/jumbo v4, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1318
    const-string/jumbo v4, "storageName"

    iget-object v5, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string/jumbo v4, "storagePackageName"

    iget-object v5, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1322
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "status"

    if-eqz p4, :cond_5d

    const/4 v4, 0x1

    :goto_34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1323
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "UniversalCredentialInfoTable"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_5f

    move-result v3

    .line 1332
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_43
    :goto_43
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lockCredentialStorageInternal retcode-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return v3

    .line 1322
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_5d
    const/4 v4, 0x0

    goto :goto_34

    .line 1325
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :catch_5f
    move-exception v2

    .line 1326
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1327
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_43

    .line 1328
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lockCredentialStorageInternal - Exception lockCredentialStorageInternal"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private notifyAdminUninstall(I)V
    .registers 16
    .param p1, "adminUid"    # I

    .prologue
    .line 5686
    sget-object v11, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "notifyAdminUninstall -> adminUid-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5688
    const/4 v11, 0x1

    :try_start_1a
    new-array v6, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "adminUid"

    aput-object v12, v6, v11

    .line 5691
    .local v6, "sAllColumns":[Ljava/lang/String;
    const/4 v11, 0x1

    new-array v8, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    .line 5695
    .local v8, "sAllValues":[Ljava/lang/String;
    const/4 v11, 0x3

    new-array v7, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "userId"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "storageName"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "storagePackageName"

    aput-object v12, v7, v11

    .line 5700
    .local v7, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 5702
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v11, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "UniversalCredentialInfoTable"

    invoke-virtual {v11, v12, v6, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5706
    if-eqz v3, :cond_d8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_d8

    .line 5707
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_55
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 5708
    .local v10, "value":Landroid/content/ContentValues;
    const-string/jumbo v11, "userId"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 5709
    .local v9, "userId":I
    const-string/jumbo v11, "storageName"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5710
    .local v1, "csName":Ljava/lang/String;
    const-string/jumbo v11, "storagePackageName"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5711
    .local v2, "csPackage":Ljava/lang/String;
    sget-object v11, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "notifyAdminUninstall - userId-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", csName-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", csPackage-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5712
    new-instance v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 5713
    .local v0, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iput-object v1, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 5714
    iput-object v2, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 5715
    const/16 v11, 0xa

    invoke-direct {p0, v11, p1, v9, v0}, notifyToPlugin(IIILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_b5} :catch_b6

    goto :goto_55

    .line 5719
    .end local v0    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v1    # "csName":Ljava/lang/String;
    .end local v2    # "csPackage":Ljava/lang/String;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "sAllColumns":[Ljava/lang/String;
    .end local v7    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v8    # "sAllValues":[Ljava/lang/String;
    .end local v9    # "userId":I
    .end local v10    # "value":Landroid/content/ContentValues;
    :catch_b6
    move-exception v4

    .line 5720
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_d8

    .line 5721
    sget-object v11, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "notifyAdminUninstall - Exception"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5723
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d8
    return-void
.end method

.method private notifyToPlugin(IIILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V
    .registers 12
    .param p1, "eventId"    # I
    .param p2, "adminUid"    # I
    .param p3, "userId"    # I
    .param p4, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 5655
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyToPlugin eventId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", adminUid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", userId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5657
    :try_start_2d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5658
    .local v2, "data":Landroid/os/Bundle;
    new-instance v4, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v5, p4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 5659
    .local v1, "csUri":Ljava/lang/String;
    packed-switch p1, :pswitch_data_94

    .line 5683
    .end local v1    # "csUri":Ljava/lang/String;
    .end local v2    # "data":Landroid/os/Bundle;
    :cond_40
    :goto_40
    return-void

    .line 5662
    .restart local v1    # "csUri":Ljava/lang/String;
    .restart local v2    # "data":Landroid/os/Bundle;
    :pswitch_41
    const-string v4, "adminUid"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5663
    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5664
    invoke-direct {p0, p2, p3, p4}, getAliasesInternal(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v0

    .line 5665
    .local v0, "aliases":[Ljava/lang/String;
    if-eqz v0, :cond_5a

    array-length v4, v0

    if-lez v4, :cond_5a

    .line 5666
    const-string v4, "aliases"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5668
    :cond_5a
    invoke-direct {p0, p2, p3, p4, v2}, processPackagesForPlugin(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)V

    .line 5669
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 5670
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "notifyChangeToPlugin is called for plugin unmanaged..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5671
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v4

    const/16 v5, 0xa

    invoke-interface {v4, v1, v5, v2}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_74} :catch_75

    goto :goto_40

    .line 5679
    .end local v0    # "aliases":[Ljava/lang/String;
    .end local v1    # "csUri":Ljava/lang/String;
    .end local v2    # "data":Landroid/os/Bundle;
    :catch_75
    move-exception v3

    .line 5680
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyToPlugin - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 5659
    :pswitch_data_94
    .packed-switch 0xa
        :pswitch_41
    .end packed-switch
.end method

.method private performAdminCleanup(I)V
    .registers 13
    .param p1, "adminUID"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5965
    const/4 v5, 0x0

    .line 5966
    .local v5, "ret":Z
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 5967
    .local v0, "adminId":Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/String;

    const-string v8, "adminUid"

    aput-object v8, v6, v9

    .line 5970
    .local v6, "sColumns":[Ljava/lang/String;
    new-array v7, v10, [Ljava/lang/String;

    aput-object v0, v7, v9

    .line 5976
    .local v7, "sValues":[Ljava/lang/String;
    :try_start_11
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialCertificateTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_b7

    move-result v5

    .line 5982
    :cond_19
    :goto_19
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performAdminCleanup Clean certificate status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5986
    :try_start_32
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialWhiteListTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_db

    move-result v5

    .line 5992
    :cond_3a
    :goto_3a
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performAdminCleanup WhiteList APP status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5996
    :try_start_53
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_ff

    move-result v5

    .line 6002
    :cond_5b
    :goto_5b
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performAdminCleanup Default Install status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6006
    :try_start_74
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialInfoTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7b} :catch_123

    move-result v5

    .line 6012
    :cond_7c
    :goto_7c
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performAdminCleanup Certificate info status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6016
    :try_start_95
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialExemptTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9c} :catch_147

    move-result v5

    .line 6022
    :cond_9d
    :goto_9d
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performAdminCleanup - Exempt apps status- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6024
    return-void

    .line 5978
    :catch_b7
    move-exception v1

    .line 5979
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_19

    .line 5980
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performAdminCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 5988
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_db
    move-exception v2

    .line 5989
    .local v2, "e1":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_3a

    .line 5990
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performAdminCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 5998
    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_ff
    move-exception v3

    .line 5999
    .local v3, "e2":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_5b

    .line 6000
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performAdminCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    .line 6008
    .end local v3    # "e2":Ljava/lang/Exception;
    :catch_123
    move-exception v4

    .line 6009
    .local v4, "e4":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_7c

    .line 6010
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performAdminCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7c

    .line 6018
    .end local v4    # "e4":Ljava/lang/Exception;
    :catch_147
    move-exception v3

    .line 6019
    .restart local v3    # "e2":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_9d

    .line 6020
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performAdminCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d
.end method

.method private performCredentialStorageCleanup(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V
    .registers 15
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 5727
    const/4 v5, 0x0

    .line 5728
    .local v5, "ret":Z
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 5729
    .local v0, "adminId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 5730
    .local v1, "contId":Ljava/lang/String;
    const/4 v8, 0x4

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adminUid"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "userId"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "storageName"

    aput-object v9, v6, v8

    const/4 v8, 0x3

    const-string/jumbo v9, "storagePackageName"

    aput-object v9, v6, v8

    .line 5735
    .local v6, "sColumns":[Ljava/lang/String;
    const/4 v8, 0x4

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v8, 0x2

    iget-object v9, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v9, v7, v8

    .line 5741
    .local v7, "sValues":[Ljava/lang/String;
    :try_start_36
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialCertificateTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3d} :catch_bb

    move-result v5

    .line 5747
    :cond_3e
    :goto_3e
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performCredentialStorageCleanup Clean certificate status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5751
    :try_start_57
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialWhiteListTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5e} :catch_df

    move-result v5

    .line 5757
    :cond_5f
    :goto_5f
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performCredentialStorageCleanup WhiteList APP status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5761
    :try_start_78
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7f} :catch_103

    move-result v5

    .line 5767
    :cond_80
    :goto_80
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performCredentialStorageCleanup Default Install status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5771
    :try_start_99
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialExemptTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a0} :catch_127

    move-result v5

    .line 5777
    :cond_a1
    :goto_a1
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performCredentialStorageCleanup Default Install status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5779
    return-void

    .line 5743
    :catch_bb
    move-exception v2

    .line 5744
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_3e

    .line 5745
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performCredentialStorageCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 5753
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_df
    move-exception v3

    .line 5754
    .local v3, "e1":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_5f

    .line 5755
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performCredentialStorageCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f

    .line 5763
    .end local v3    # "e1":Ljava/lang/Exception;
    :catch_103
    move-exception v4

    .line 5764
    .local v4, "e2":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_80

    .line 5765
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performCredentialStorageCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_80

    .line 5773
    .end local v4    # "e2":Ljava/lang/Exception;
    :catch_127
    move-exception v4

    .line 5774
    .restart local v4    # "e2":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_a1

    .line 5775
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performCredentialStorageCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a1
.end method

.method private performExemptedAppCleanup(ILjava/lang/String;)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "appPkg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5807
    const/4 v2, 0x0

    .line 5808
    .local v2, "ret":Z
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 5809
    .local v0, "contId":Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v5, "userId"

    aput-object v5, v3, v6

    const-string v5, "appPackage"

    aput-object v5, v3, v7

    .line 5813
    .local v3, "sColumns":[Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    aput-object v0, v4, v6

    aput-object p2, v4, v7

    .line 5819
    .local v4, "sValues":[Ljava/lang/String;
    :try_start_19
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "UniversalCredentialExemptTable"

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_3b

    move-result v2

    .line 5825
    :cond_21
    :goto_21
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performExemptedAppCleanup Exempted App status-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5827
    return-void

    .line 5821
    :catch_3b
    move-exception v1

    .line 5822
    .local v1, "e1":Ljava/lang/Exception;
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_21

    .line 5823
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performExemptedAppCleanup - Exception delete"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private performStorageCleanup(Ljava/lang/String;)V
    .registers 12
    .param p1, "storagePkg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5831
    const/4 v4, 0x0

    .line 5832
    .local v4, "ret":Z
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v7, "storagePackageName"

    aput-object v7, v5, v8

    .line 5835
    .local v5, "sColumns":[Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/String;

    aput-object p1, v6, v8

    .line 5841
    .local v6, "sValues":[Ljava/lang/String;
    :try_start_e
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "UniversalCredentialCertificateTable"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_9b

    move-result v4

    .line 5847
    :cond_16
    :goto_16
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "performStorageCleanup Clean certificate status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5851
    :try_start_2f
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "UniversalCredentialWhiteListTable"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_bf

    move-result v4

    .line 5857
    :cond_37
    :goto_37
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "performStorageCleanup WhiteList APP status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5861
    :try_start_50
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_57} :catch_e3

    move-result v4

    .line 5867
    :cond_58
    :goto_58
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "performStorageCleanup Default Install status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5872
    :try_start_71
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "UniversalCredentialInfoTable"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_78} :catch_107

    move-result v4

    .line 5878
    :cond_79
    :goto_79
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "performStorageCleanup Certificate info status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5882
    :try_start_92
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "UniversalCredentialExemptTable"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_99} :catch_12b

    move-result v4

    .line 5889
    :cond_9a
    :goto_9a
    return-void

    .line 5843
    :catch_9b
    move-exception v0

    .line 5844
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_16

    .line 5845
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "performStorageCleanup - Exception delete"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 5853
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_bf
    move-exception v1

    .line 5854
    .local v1, "e1":Ljava/lang/Exception;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_37

    .line 5855
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "performStorageCleanup - Exception delete"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 5863
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_e3
    move-exception v2

    .line 5864
    .local v2, "e2":Ljava/lang/Exception;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_58

    .line 5865
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "performStorageCleanup - Exception delete"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 5874
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_107
    move-exception v3

    .line 5875
    .local v3, "e4":Ljava/lang/Exception;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_79

    .line 5876
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "performStorageCleanup - Exception delete"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_79

    .line 5884
    .end local v3    # "e4":Ljava/lang/Exception;
    :catch_12b
    move-exception v2

    .line 5885
    .restart local v2    # "e2":Ljava/lang/Exception;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_9a

    .line 5886
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "performStorageCleanup - Exception delete"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9a
.end method

.method private performUserCleanup(I)V
    .registers 13
    .param p1, "userId"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5893
    const/4 v5, 0x0

    .line 5894
    .local v5, "ret":Z
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 5895
    .local v0, "contId":Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/String;

    const-string/jumbo v8, "userId"

    aput-object v8, v6, v9

    .line 5898
    .local v6, "sColumns":[Ljava/lang/String;
    new-array v7, v10, [Ljava/lang/String;

    aput-object v0, v7, v9

    .line 5904
    .local v7, "sValues":[Ljava/lang/String;
    :try_start_12
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialCertificateTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_a7

    move-result v5

    .line 5910
    :cond_1a
    :goto_1a
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performUserCleanup Clean certificate status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5914
    :try_start_33
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialWhiteListTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_cb

    move-result v5

    .line 5920
    :cond_3b
    :goto_3b
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performUserCleanup WhiteList APP status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5924
    :try_start_54
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5b} :catch_ef

    move-result v5

    .line 5930
    :cond_5c
    :goto_5c
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performUserCleanup Default Install status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5935
    :try_start_75
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialInfoTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7c} :catch_113

    move-result v5

    .line 5941
    :cond_7d
    :goto_7d
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performUserCleanup Certificate info status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5945
    :try_start_96
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialExemptTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9d} :catch_137

    move-result v5

    .line 5954
    :cond_9e
    :goto_9e
    :try_start_9e
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialCACertificateTable"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a5} :catch_15b

    move-result v5

    .line 5961
    :cond_a6
    :goto_a6
    return-void

    .line 5906
    :catch_a7
    move-exception v1

    .line 5907
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_1a

    .line 5908
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performUserCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 5916
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_cb
    move-exception v2

    .line 5917
    .local v2, "e1":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_3b

    .line 5918
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performUserCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 5926
    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_ef
    move-exception v3

    .line 5927
    .local v3, "e2":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_5c

    .line 5928
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performUserCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 5937
    .end local v3    # "e2":Ljava/lang/Exception;
    :catch_113
    move-exception v4

    .line 5938
    .local v4, "e4":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_7d

    .line 5939
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performUserCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7d

    .line 5947
    .end local v4    # "e4":Ljava/lang/Exception;
    :catch_137
    move-exception v3

    .line 5948
    .restart local v3    # "e2":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_9e

    .line 5949
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performUserCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e

    .line 5956
    .end local v3    # "e2":Ljava/lang/Exception;
    :catch_15b
    move-exception v3

    .line 5957
    .restart local v3    # "e2":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_a6

    .line 5958
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performUserCleanup - Exception delete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a6
.end method

.method private performWhitelistAppCleanup(ILjava/lang/String;)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "appPkg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5783
    const/4 v2, 0x0

    .line 5784
    .local v2, "ret":Z
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 5785
    .local v0, "contId":Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v5, "userId"

    aput-object v5, v3, v6

    const-string v5, "appPackage"

    aput-object v5, v3, v7

    .line 5789
    .local v3, "sColumns":[Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    aput-object v0, v4, v6

    aput-object p2, v4, v7

    .line 5795
    .local v4, "sValues":[Ljava/lang/String;
    :try_start_19
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "UniversalCredentialWhiteListTable"

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_3b

    move-result v2

    .line 5801
    :cond_21
    :goto_21
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performWhitelistAPpCleanup WhiteList APP status-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5803
    return-void

    .line 5797
    :catch_3b
    move-exception v1

    .line 5798
    .local v1, "e1":Ljava/lang/Exception;
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_21

    .line 5799
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performWhitelistAPpCleanup - Exception delete"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private processAdminLicenseExpiry(I)V
    .registers 11
    .param p1, "admin"    # I

    .prologue
    .line 5046
    invoke-direct {p0, p1}, getStoragesRelatedToAdminId(I)Ljava/util/List;

    move-result-object v5

    .line 5047
    .local v5, "storages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, expiredAdmins:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8d

    .line 5048
    iget-object v6, p0, expiredAdmins:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5049
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminLicenseExpiry expired admin-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5050
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v6

    if-eqz v6, :cond_8d

    .line 5051
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "processAdminLicenseExpiry is called for license expiry..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    :try_start_46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5054
    .local v1, "data":Landroid/os/Bundle;
    const-string v6, "adminUid"

    invoke-virtual {v1, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5055
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5056
    .local v4, "storage":Ljava/lang/String;
    new-instance v6, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v6, v4}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 5057
    .local v0, "csUri":Ljava/lang/String;
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v6

    const/16 v7, 0xd

    invoke-interface {v6, v0, v7, v1}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_72} :catch_73

    goto :goto_54

    .line 5059
    .end local v0    # "csUri":Ljava/lang/String;
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "storage":Ljava/lang/String;
    :catch_73
    move-exception v2

    .line 5060
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminLicenseExpiry Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5064
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8d
    return-void
.end method

.method private processPackagesForPlugin(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)V
    .registers 32
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p4, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2221
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processPackagesForPlugin - adminUid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Storage -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    :try_start_35
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, getAdminIdRelatedToStorageAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Ljava/util/List;

    move-result-object v9

    .line 2224
    .local v9, "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 2225
    .local v26, "whitelistPkgsByOtherAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .line 2226
    .local v24, "storageAdminWhitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_4a
    :goto_4a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 2227
    .local v23, "storageAdmin":Ljava/lang/Integer;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminUid related to storage is - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, p1

    if-ne v3, v0, :cond_b2

    .line 2229
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring current adminUid  - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_92} :catch_93

    goto :goto_4a

    .line 2287
    .end local v9    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v23    # "storageAdmin":Ljava/lang/Integer;
    .end local v24    # "storageAdminWhitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v26    # "whitelistPkgsByOtherAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_93
    move-exception v14

    .line 2288
    .local v14, "e":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processPackagesForPlugin - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_b1
    :goto_b1
    return-void

    .line 2232
    .restart local v9    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v23    # "storageAdmin":Ljava/lang/Integer;
    .restart local v24    # "storageAdminWhitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v26    # "whitelistPkgsByOtherAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b2
    :try_start_b2
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0x67

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v8}, getWhitelistedData(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 2233
    if-eqz v24, :cond_4a

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4a

    .line 2234
    const/4 v11, 0x0

    .line 2235
    .local v11, "app":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_d0
    :goto_d0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/ContentValues;

    .line 2236
    .local v25, "value":Landroid/content/ContentValues;
    const-string v3, "appPackage"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2237
    move-object/from16 v0, v26

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d0

    .line 2238
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding app in whitelistPkgsByOtherAdmin -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    move-object/from16 v0, v26

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    .line 2244
    .end local v11    # "app":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v23    # "storageAdmin":Ljava/lang/Integer;
    .end local v25    # "value":Landroid/content/ContentValues;
    :cond_10a
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_121

    .line 2245
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Blocking all packages..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    const-string/jumbo v3, "package_access_type"

    const/4 v4, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b1

    .line 2247
    :cond_121
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b1

    .line 2248
    const-string v3, "*"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_143

    .line 2249
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Allowing all packages..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    const-string/jumbo v3, "package_access_type"

    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_b1

    .line 2252
    :cond_143
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2254
    .local v12, "appUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v22

    .line 2255
    .local v22, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_150
    :goto_150
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 2256
    .local v20, "pkg":Ljava/lang/String;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Allowed pkg - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_176} :catch_93

    .line 2258
    const/16 v21, 0x0

    .line 2260
    .local v21, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/16 v3, 0x40

    :try_start_17a
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_183} :catch_18f

    move-result-object v21

    .line 2265
    :goto_184
    if-nez v21, :cond_1ab

    .line 2266
    :try_start_186
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "pkgInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_150

    .line 2261
    :catch_18f
    move-exception v19

    .line 2262
    .local v19, "n":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Internal processPackagesForPlugin exception - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_184

    .line 2269
    .end local v19    # "n":Ljava/lang/Exception;
    :cond_1ab
    move-object/from16 v0, p0

    iget-object v3, v0, mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v13

    .line 2270
    .local v13, "applicationUid":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_150

    .line 2271
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_150

    .line 2274
    .end local v13    # "applicationUid":I
    .end local v20    # "pkg":Ljava/lang/String;
    .end local v21    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1c9
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    new-array v10, v3, [I

    .line 2275
    .local v10, "allowedPkgs":[I
    const/4 v15, 0x0

    .line 2276
    .local v15, "i":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1d4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_203

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 2277
    .local v18, "id":Ljava/lang/Integer;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding id-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v10, v15

    .line 2279
    add-int/lit8 v15, v15, 0x1

    .line 2280
    goto :goto_1d4

    .line 2282
    .end local v18    # "id":Ljava/lang/Integer;
    :cond_203
    const-string/jumbo v3, "package_access_type"

    const/4 v4, 0x3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2283
    const-string v3, "allowed_packages"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V
    :try_end_213
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_213} :catch_93

    goto/16 :goto_b1
.end method

.method private removeCertificatefromProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 15
    .param p1, "storageName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "adminUid"    # I

    .prologue
    .line 3887
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeCertificatefromProvider is called for userId-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and adminId-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and alias-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    const/4 v4, 0x0

    .line 3891
    .local v4, "status":Z
    const/4 v3, -0x1

    .line 3893
    .local v3, "errorCode":I
    :try_start_2f
    new-instance v0, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 3894
    .local v0, "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 3895
    .local v1, "csUri":Ljava/lang/String;
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v6

    invoke-interface {v6, v1, p4}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->deleteCertificate(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v5

    .line 3896
    .local v5, "ucmResponse":Landroid/os/Bundle;
    if-eqz v5, :cond_91

    const-string v6, "booleanresponse"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 3897
    :goto_56
    if-eqz v5, :cond_93

    const-string/jumbo v6, "errorresponse"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3898
    :goto_60
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeCertificatefromProvider : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; csUri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_8d} :catch_95

    .line 3904
    .end local v0    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v1    # "csUri":Ljava/lang/String;
    .end local v5    # "ucmResponse":Landroid/os/Bundle;
    :goto_8d
    if-eqz v4, :cond_90

    .line 3905
    const/4 v3, 0x0

    .line 3908
    :cond_90
    return v3

    .line 3896
    .restart local v0    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .restart local v1    # "csUri":Ljava/lang/String;
    .restart local v5    # "ucmResponse":Landroid/os/Bundle;
    :cond_91
    const/4 v4, 0x0

    goto :goto_56

    .line 3897
    :cond_93
    const/4 v3, -0x1

    goto :goto_60

    .line 3899
    .end local v0    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v1    # "csUri":Ljava/lang/String;
    .end local v5    # "ucmResponse":Landroid/os/Bundle;
    :catch_95
    move-exception v2

    .line 3900
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeCertificatefromProvider Exception.... "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8d
.end method

.method private removeCertificatefromTIMA(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 12
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "adminUid"    # I
    .param p4, "location"    # Ljava/lang/String;

    .prologue
    .line 3865
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeCertificatefromTIMA is called for userId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and adminId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and alias-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    const/4 v2, 0x0

    .line 3869
    .local v2, "status":Z
    :try_start_2e
    iget-object v4, p0, mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v4, p2, p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->deleteCACerttificate(ILjava/lang/String;)Z

    move-result v3

    .line 3870
    .local v3, "timaStatus":Z
    if-eqz v3, :cond_46

    .line 3871
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3872
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 3873
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3874
    const/4 v2, 0x1

    .line 3882
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "timaStatus":Z
    :cond_45
    :goto_45
    return v2

    .line 3877
    .restart local v3    # "timaStatus":Z
    :cond_46
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeCertificatefromTIMA : timaStatus "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_5f} :catch_60

    goto :goto_45

    .line 3879
    .end local v3    # "timaStatus":Z
    :catch_60
    move-exception v0

    .line 3880
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeCertificatefromTIMA : Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method private removeExemptPackages(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/util/List;III)Z
    .registers 15
    .param p1, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "adminId"    # I
    .param p4, "userId"    # I
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;III)Z"
        }
    .end annotation

    .prologue
    .line 4655
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_c

    .line 4656
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "removeExemptPackages is called..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4658
    :cond_c
    const/4 v3, 0x0

    .line 4660
    .local v3, "ret":Z
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_55

    .line 4661
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adminId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ContainerId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Storage name - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Storage Package - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4666
    :cond_55
    if-eqz p2, :cond_164

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_164

    .line 4667
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeExemptPackages - WhiteList app size -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4668
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7e
    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_126

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/AppIdentity;

    .line 4670
    .local v2, "pkg":Lcom/sec/enterprise/AppIdentity;
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeExemptPackages - pkg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7e

    .line 4675
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeExemptPackages exempt type-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4676
    const/4 v6, 0x6

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "adminUid"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "userId"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "storageName"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "storagePackageName"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "exemptType"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "appPackage"

    aput-object v7, v4, v6

    .line 4683
    .local v4, "sColumns":[Ljava/lang/String;
    const/4 v6, 0x6

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 4688
    .local v5, "sValues":[Ljava/lang/String;
    :try_start_114
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "UniversalCredentialExemptTable"

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    .line 4690
    if-nez v3, :cond_7e

    .line 4691
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "removeExemptPackages - failed to remove record..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_126} :catch_140

    .line 4720
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .end local v4    # "sColumns":[Ljava/lang/String;
    .end local v5    # "sValues":[Ljava/lang/String;
    :cond_126
    :goto_126
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeExemptPackages retcode-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4721
    return v3

    .line 4694
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .restart local v4    # "sColumns":[Ljava/lang/String;
    .restart local v5    # "sValues":[Ljava/lang/String;
    :catch_140
    move-exception v0

    .line 4695
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_7e

    .line 4696
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeExemptPackages - Exception delete"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7e

    .line 4700
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .end local v4    # "sColumns":[Ljava/lang/String;
    .end local v5    # "sValues":[Ljava/lang/String;
    :cond_164
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "removeExemptPackages clearing all packages...."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    const/4 v6, 0x5

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "adminUid"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "userId"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "storageName"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "storagePackageName"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "exemptType"

    aput-object v7, v4, v6

    .line 4707
    .restart local v4    # "sColumns":[Ljava/lang/String;
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 4712
    .restart local v5    # "sValues":[Ljava/lang/String;
    :try_start_1ae
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "UniversalCredentialExemptTable"

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1b5} :catch_1b8

    move-result v3

    goto/16 :goto_126

    .line 4714
    :catch_1b8
    move-exception v0

    .line 4715
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_126

    .line 4716
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeExemptPackages - Exception delete"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_126
.end method

.method private removeWhiteListPackages(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/util/List;IILandroid/os/Bundle;ILjava/lang/String;)Z
    .registers 18
    .param p1, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "adminId"    # I
    .param p4, "userId"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "accessType"    # I
    .param p7, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;II",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1966
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_c

    .line 1967
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "removeWhiteListPackages is called..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :cond_c
    const/4 v4, 0x0

    .line 1971
    .local v4, "ret":Z
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_63

    .line 1972
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adminId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ContainerId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Storage name - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Storage Package - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", accessType-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", alias-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_63
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeWhiteListPackages - WhiteList app size -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_84
    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/AppIdentity;

    .line 1981
    .local v3, "pkg":Lcom/sec/enterprise/AppIdentity;
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeWhiteListPackages - pkg : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_84

    .line 1986
    if-nez p7, :cond_16d

    .line 1987
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeWhiteListPackages access_type-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    const/4 v7, 0x6

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "userId"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "storageName"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "storagePackageName"

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const-string v8, "accessType"

    aput-object v8, v5, v7

    const/4 v7, 0x5

    const-string v8, "appPackage"

    aput-object v8, v5, v7

    .line 1995
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x6

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2000
    .local v6, "sValues":[Ljava/lang/String;
    :try_start_11d
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "UniversalCredentialWhiteListTable"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 2002
    if-nez v4, :cond_84

    .line 2003
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "removeWhiteListPackages - failed to remove record..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_12f} :catch_149

    .line 2041
    .end local v3    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :cond_12f
    :goto_12f
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeWhiteListPackages retcode-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    return v4

    .line 2006
    .restart local v3    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .restart local v5    # "sColumns":[Ljava/lang/String;
    .restart local v6    # "sValues":[Ljava/lang/String;
    :catch_149
    move-exception v1

    .line 2007
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_84

    .line 2008
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeWhiteListPackages - Exception delete"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_84

    .line 2012
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :cond_16d
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeWhiteListPackages access_type-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and alias-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const/4 v7, 0x7

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "userId"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "storageName"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "storagePackageName"

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const-string v8, "accessType"

    aput-object v8, v5, v7

    const/4 v7, 0x5

    const-string v8, "alias"

    aput-object v8, v5, v7

    const/4 v7, 0x6

    const-string v8, "appPackage"

    aput-object v8, v5, v7

    .line 2022
    .restart local v5    # "sColumns":[Ljava/lang/String;
    const/4 v7, 0x7

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object p7, v6, v7

    const/4 v7, 0x6

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2027
    .restart local v6    # "sValues":[Ljava/lang/String;
    :try_start_1e9
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "UniversalCredentialWhiteListTable"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 2029
    if-nez v4, :cond_84

    .line 2030
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "removeWhiteListPackages - failed to remove record..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_1fb} :catch_1fd

    goto/16 :goto_12f

    .line 2033
    :catch_1fd
    move-exception v1

    .line 2034
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_84

    .line 2035
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeWhiteListPackages - Exception delete"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_84
.end method

.method private setAuthTypeInternal(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)Z
    .registers 12
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p4, "type"    # I

    .prologue
    .line 4346
    const/4 v3, 0x0

    .line 4348
    .local v3, "ret":Z
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4349
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4350
    const-string/jumbo v4, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4351
    const-string/jumbo v4, "storageName"

    iget-object v5, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4352
    const-string/jumbo v4, "storagePackageName"

    iget-object v5, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4354
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4355
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "storageAuthType"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4356
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "UniversalCredentialInfoTable"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_5a

    move-result v3

    .line 4365
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_40
    :goto_40
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAuthTypeInternal retcode-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4366
    return v3

    .line 4358
    :catch_5a
    move-exception v2

    .line 4359
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 4360
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_40

    .line 4361
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAuthTypeInternal - Exception setAuthTypeInternal"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method private setDefaultInstallStorageInternal(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I
    .registers 15
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    const/4 v7, 0x0

    .line 3061
    :try_start_1
    invoke-direct {p0, p3}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8

    if-nez v8, :cond_52

    .line 3062
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "setDefaultInstallStorageInternal cs is null so removing admin entry..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3064
    .local v0, "adminId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3065
    .local v1, "contId":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adminUid"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "userId"

    aput-object v9, v4, v8

    .line 3068
    .local v4, "sColumns":[Ljava/lang/String;
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v5, v8

    const/4 v8, 0x1

    aput-object v1, v5, v8

    .line 3072
    .local v5, "sValues":[Ljava/lang/String;
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v8, v9, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    .line 3075
    .local v3, "result":Z
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setDefaultInstallStorageInternal result-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    if-eqz v3, :cond_88

    .line 3102
    .end local v0    # "adminId":Ljava/lang/String;
    .end local v1    # "contId":Ljava/lang/String;
    .end local v3    # "result":Z
    .end local v4    # "sColumns":[Ljava/lang/String;
    .end local v5    # "sValues":[Ljava/lang/String;
    :goto_51
    return v7

    .line 3080
    :cond_52
    iget-object v8, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v9, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v8, v9}, checkDefaultInstallCredentialStorageExists(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 3081
    iget-object v8, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v9, p3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v8, v9}, checkDefaultInstallCredentialStorageExistsForAdmin(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 3083
    sget-object v8, TAG:Ljava/lang/String;

    const-string v9, "configureSecureStorageInternal record already exist..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6d} :catch_6e

    goto :goto_51

    .line 3099
    :catch_6e
    move-exception v2

    .line 3100
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDefaultInstallStorageInternal exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_88
    const/4 v7, -0x1

    goto :goto_51

    .line 3086
    :cond_8a
    :try_start_8a
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "setDefaultInstallStorageInternal Credential storage is configured by some other admin"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    const/16 v7, -0xa

    goto :goto_51

    .line 3092
    :cond_95
    invoke-direct {p0, p1, p2, p3}, addOrUpdateDefaultInstallStorage(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_98} :catch_6e

    move-result v6

    .line 3093
    .local v6, "success":Z
    if-eqz v6, :cond_88

    goto :goto_51
.end method


# virtual methods
.method public addPackagesToExemptList(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4429
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "addPackagesToExemptList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4430
    if-eqz p1, :cond_11

    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p4, :cond_1f

    .line 4431
    :cond_11
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1c

    .line 4432
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "addPackagesToExemptList - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    :cond_1c
    const/16 v0, -0xb

    .line 4472
    :goto_1e
    return v0

    .line 4436
    :cond_1f
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 4437
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4438
    .local v3, "adminId":I
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 4439
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4442
    .local v8, "id":J
    :try_start_2a
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_50

    .line 4443
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPackagesToExemptList is called for Caller UID-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mContainerId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    :cond_50
    invoke-direct {p0, p2}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 4448
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Storage is not active"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5d} :catch_9e
    .catchall {:try_start_2a .. :try_end_5d} :catchall_bd

    .line 4449
    const/16 v0, -0xd

    .line 4469
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 4453
    :cond_63
    const/4 v0, 0x1

    :try_start_64
    iget-object v1, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v1, v2}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_7f

    .line 4454
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_79

    .line 4455
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "addPackagesToExemptList return false.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_79} :catch_9e
    .catchall {:try_start_64 .. :try_end_79} :catchall_bd

    .line 4456
    :cond_79
    const/16 v0, -0xc

    .line 4469
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 4459
    :cond_7f
    :try_start_7f
    invoke-direct {p0, p3}, isValidExemptType(I)Z

    move-result v0

    if-nez v0, :cond_92

    .line 4460
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "addPackagesToExemptList - Invalid Exempt Type..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8c} :catch_9e
    .catchall {:try_start_7f .. :try_end_8c} :catchall_bd

    .line 4461
    const/16 v0, -0x15

    .line 4469
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    :cond_92
    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v5, p3

    .line 4464
    :try_start_96
    invoke-direct/range {v0 .. v5}, insertOrUpdateExemptPackages(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/util/List;III)I
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_9e
    .catchall {:try_start_96 .. :try_end_99} :catchall_bd

    move-result v0

    .line 4469
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 4466
    :catch_9e
    move-exception v6

    .line 4467
    .local v6, "e":Ljava/lang/Exception;
    :try_start_9f
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPackagesToExemptList Exception -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_9f .. :try_end_b7} :catchall_bd

    .line 4469
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4472
    const/4 v0, -0x1

    goto/16 :goto_1e

    .line 4469
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_bd
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addPackagesToWhiteList(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1609
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    sget-object v0, TAG:Ljava/lang/String;

    const-string v3, "addPackagesToWhiteList is called...."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    if-nez p1, :cond_14

    .line 1611
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v3, "cxtInfo is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const/16 v0, -0xb

    .line 1617
    :goto_13
    return v0

    .line 1614
    :cond_14
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 1615
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1616
    .local v1, "adminId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v2, "userId":I
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1617
    invoke-direct/range {v0 .. v5}, addPackagesToWhiteListMain(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    move-result v0

    goto :goto_13
.end method

.method public addPackagesToWhiteListInternal(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .registers 8
    .param p1, "callerId"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1600
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "addPackagesToWhiteListInternal is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const-string v0, "addPackagesToWhiteListInternal"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1602
    invoke-direct/range {p0 .. p5}, addPackagesToWhiteListMain(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public clearWhiteList(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .registers 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2487
    sget-object v2, TAG:Ljava/lang/String;

    const-string v5, "clearWhiteList is called...."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    if-eqz p1, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 2489
    :cond_13
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_1e

    .line 2490
    sget-object v2, TAG:Ljava/lang/String;

    const-string v5, "clearWhiteList - Invalid Arguments"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    :cond_1e
    const/16 v2, -0xb

    .line 2552
    :goto_20
    return v2

    .line 2494
    :cond_21
    invoke-virtual/range {p0 .. p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 2495
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2496
    .local v3, "adminId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2497
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2499
    .local v16, "id":J
    :try_start_30
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_56

    .line 2500
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearWhiteList is called for Caller UID-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mContainerId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    :cond_56
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_5d} :catch_125
    .catchall {:try_start_30 .. :try_end_5d} :catchall_142

    move-result v2

    if-nez v2, :cond_66

    .line 2505
    const/16 v2, -0xd

    .line 2549
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    .line 2509
    :cond_66
    const/4 v2, 0x1

    :try_start_67
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eq v2, v5, :cond_88

    .line 2510
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_82

    .line 2511
    sget-object v2, TAG:Ljava/lang/String;

    const-string v5, "clearWhiteList return false.."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_82} :catch_125
    .catchall {:try_start_67 .. :try_end_82} :catchall_142

    .line 2512
    :cond_82
    const/16 v2, -0xc

    .line 2549
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    .line 2515
    :cond_88
    :try_start_88
    const-string v2, "access_type"

    const/4 v5, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 2517
    .local v12, "accessType":I
    const/4 v7, 0x0

    .line 2519
    .local v7, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, isValidAccessType(I)Z

    move-result v2

    if-nez v2, :cond_ac

    .line 2520
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_a5

    .line 2521
    sget-object v2, TAG:Ljava/lang/String;

    const-string v5, "clearWhiteList not passed valid access_type"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_a5} :catch_125
    .catchall {:try_start_88 .. :try_end_a5} :catchall_142

    .line 2522
    :cond_a5
    const/16 v2, -0xf

    .line 2549
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .line 2524
    :cond_ac
    const/16 v2, 0x68

    if-ne v12, v2, :cond_10b

    .line 2525
    :try_start_b0
    const-string v2, "alias"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2526
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearWhiteList alias-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 2528
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_e1

    .line 2529
    sget-object v2, TAG:Ljava/lang/String;

    const-string v5, "clearWhiteList alias name not provided for Certificate access_type"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_e1} :catch_125
    .catchall {:try_start_b0 .. :try_end_e1} :catchall_142

    .line 2531
    :cond_e1
    const/16 v2, -0x10

    .line 2549
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .line 2533
    :cond_e8
    const/4 v8, 0x1

    :try_start_e9
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, checkCredentialStorageAliasForAdmin(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eq v8, v2, :cond_10b

    .line 2535
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_104

    .line 2536
    sget-object v2, TAG:Ljava/lang/String;

    const-string v5, "clearWhiteList - alias not exist for credential storage..."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_104} :catch_125
    .catchall {:try_start_e9 .. :try_end_104} :catchall_142

    .line 2537
    :cond_104
    const/16 v2, -0xe

    .line 2549
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .line 2542
    :cond_10b
    const/4 v2, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move v10, v3

    move v11, v4

    move-object v13, v7

    :try_start_113
    invoke-direct/range {v8 .. v13}, clearWhiteListPackages(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;IIILjava/lang/String;)Z
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_116} :catch_125
    .catchall {:try_start_113 .. :try_end_116} :catchall_142

    move-result v5

    if-ne v2, v5, :cond_11f

    .line 2544
    const/4 v2, 0x0

    .line 2549
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    :cond_11f
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2552
    .end local v7    # "alias":Ljava/lang/String;
    .end local v12    # "accessType":I
    :goto_122
    const/4 v2, -0x1

    goto/16 :goto_20

    .line 2546
    :catch_125
    move-exception v14

    .line 2547
    .local v14, "e":Ljava/lang/Exception;
    :try_start_126
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearWhiteList Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catchall {:try_start_126 .. :try_end_13e} :catchall_142

    .line 2549
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_122

    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_142
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public configureCredentialStorageForODESettings(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 6040
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "configureCredentialStorageForODESettings is called...."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6041
    if-eqz p1, :cond_f

    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 6042
    :cond_f
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_1a

    .line 6043
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "configureCredentialStorageForODESettings - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6044
    :cond_1a
    const/16 v6, -0xb

    .line 6080
    :goto_1c
    return v6

    .line 6047
    :cond_1d
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 6048
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 6049
    .local v0, "adminId":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 6050
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6051
    .local v4, "id":J
    new-instance v6, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v7, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 6053
    .local v1, "csUri":Ljava/lang/String;
    :try_start_33
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_59

    .line 6054
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configureCredentialStorageForODESettings is called for Caller UID-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mContainerId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6058
    :cond_59
    invoke-direct {p0, p2}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-nez v6, :cond_6c

    .line 6059
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "Storage is not active"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_66} :catch_a8
    .catchall {:try_start_33 .. :try_end_66} :catchall_c5

    .line 6060
    const/16 v6, -0xd

    .line 6077
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    .line 6064
    :cond_6c
    const/4 v6, 0x1

    :try_start_6d
    iget-object v7, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v8, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v7, v8}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eq v6, v7, :cond_88

    .line 6065
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_82

    .line 6066
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "configureCredentialStorageForODESettings return false.."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_82} :catch_a8
    .catchall {:try_start_6d .. :try_end_82} :catchall_c5

    .line 6067
    :cond_82
    const/16 v6, -0xc

    .line 6077
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    .line 6069
    :cond_88
    :try_start_88
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v6

    if-eqz v6, :cond_a2

    .line 6070
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "configureCredentialStorageForODESettings is called for plugin unmanaged..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6071
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->configureODESettings(Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_9c} :catch_a8
    .catchall {:try_start_88 .. :try_end_9c} :catchall_c5

    move-result v6

    .line 6077
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1c

    :cond_a2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6080
    :goto_a5
    const/4 v6, -0x1

    goto/16 :goto_1c

    .line 6074
    :catch_a8
    move-exception v2

    .line 6075
    .local v2, "e":Ljava/lang/Exception;
    :try_start_a9
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configureCredentialStorageForODESettings Exception -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_a9 .. :try_end_c1} :catchall_c5

    .line 6077
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a5

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_c5
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public configureCredentialStoragePlugin(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "profile"    # Landroid/os/Bundle;

    .prologue
    .line 987
    sget-object v2, TAG:Ljava/lang/String;

    const-string v6, "configureCredentialStoragePlugin is called...."

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    if-eqz p1, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 989
    :cond_13
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_1e

    .line 990
    sget-object v2, TAG:Ljava/lang/String;

    const-string v6, "configureCredentialStoragePlugin - Invalid Arguments"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_1e
    const/16 v7, -0xb

    .line 1049
    :goto_20
    return v7

    .line 994
    :cond_21
    invoke-virtual/range {p0 .. p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 995
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 996
    .local v3, "adminUid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 997
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1000
    .local v10, "id":J
    :try_start_30
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 1001
    sget-object v2, TAG:Ljava/lang/String;

    const-string v6, "Plugin is not active"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_41} :catch_142
    .catchall {:try_start_30 .. :try_end_41} :catchall_15f

    .line 1002
    const/16 v7, -0xd

    .line 1047
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    .line 1005
    :cond_47
    :try_start_47
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_6d

    .line 1006
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "configureCredentialStoragePlugin is called for Caller UID-"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " mContainerId "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_6d
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v6, v15}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eq v2, v6, :cond_8f

    .line 1013
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_89

    .line 1014
    sget-object v2, TAG:Ljava/lang/String;

    const-string v6, "configureCredentialStoragePlugin return false.."

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_89} :catch_142
    .catchall {:try_start_47 .. :try_end_89} :catchall_15f

    .line 1015
    :cond_89
    const/16 v7, -0xc

    .line 1047
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    .line 1019
    :cond_8f
    :try_start_8f
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 1021
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    const-string v6, "com.samsung.ucs.agent.ese:eSE Credential Storage"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c6

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    const-string v6, "com.samsung.ucs.agent.ese"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 1022
    sget-object v2, TAG:Ljava/lang/String;

    const-string v6, "Adding install flag for ESE applet"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    if-nez p3, :cond_bd

    .line 1024
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .end local p3    # "profile":Landroid/os/Bundle;
    .local v12, "profile":Landroid/os/Bundle;
    move-object/from16 p3, v12

    .line 1026
    .end local v12    # "profile":Landroid/os/Bundle;
    .restart local p3    # "profile":Landroid/os/Bundle;
    :cond_bd
    const-string/jumbo v2, "installAppletUsingLCCM"

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1029
    :cond_c6
    sget-object v2, TAG:Ljava/lang/String;

    const-string v6, "configureCredentialStoragePlugin - pass to agent..."

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    new-instance v2, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v2, v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v5

    .line 1033
    .local v5, "csUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mRIdGenerator:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;

    invoke-virtual {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v7

    .line 1034
    .local v7, "requestId":I
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v2

    move-object/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->setAdminConfigureBundleForCs(IILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v14

    .line 1035
    .local v14, "ucmResponse":Landroid/os/Bundle;
    if-eqz v14, :cond_132

    const-string/jumbo v2, "intresponse"

    const/4 v6, -0x1

    invoke-virtual {v14, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1036
    .local v13, "retCode":I
    :goto_ff
    if-eqz v14, :cond_134

    const-string/jumbo v2, "errorresponse"

    const/4 v6, -0x1

    invoke-virtual {v14, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1037
    .local v9, "errorCode":I
    :goto_109
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "configureCredentialStoragePlugin - requestId -"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " and retCode-"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_12b} :catch_142
    .catchall {:try_start_8f .. :try_end_12b} :catchall_15f

    .line 1038
    if-nez v13, :cond_136

    .line 1047
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .line 1035
    .end local v9    # "errorCode":I
    .end local v13    # "retCode":I
    :cond_132
    const/4 v13, -0x1

    goto :goto_ff

    .line 1036
    .restart local v13    # "retCode":I
    :cond_134
    const/4 v9, -0x1

    goto :goto_109

    .line 1047
    .restart local v9    # "errorCode":I
    :cond_136
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v9

    goto/16 :goto_20

    .end local v5    # "csUri":Ljava/lang/String;
    .end local v7    # "requestId":I
    .end local v9    # "errorCode":I
    .end local v13    # "retCode":I
    .end local v14    # "ucmResponse":Landroid/os/Bundle;
    :cond_13c
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1049
    :goto_13f
    const/4 v7, -0x1

    goto/16 :goto_20

    .line 1044
    :catch_142
    move-exception v8

    .line 1045
    .local v8, "e":Ljava/lang/Exception;
    :try_start_143
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "configureCredentialStoragePlugin - Exception -"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15b
    .catchall {:try_start_143 .. :try_end_15b} :catchall_15f

    .line 1047
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13f

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_15f
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public deleteCACertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/16 v5, -0xb

    .line 3227
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "deleteCACertificate is called...."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    if-nez p1, :cond_16

    .line 3229
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "cxtInfo is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    :goto_15
    return v5

    .line 3232
    :cond_16
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3233
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3234
    .local v0, "adminId":I
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 3235
    .local v4, "userId":I
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deleteCACertificate  : adminId-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",userId-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3240
    .local v2, "id":J
    if-eqz p2, :cond_4d

    :try_start_47
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5d

    .line 3241
    :cond_4d
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_59

    .line 3242
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "deleteCACertificate - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_59} :catch_bd
    .catchall {:try_start_47 .. :try_end_59} :catchall_da

    .line 3267
    :cond_59
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    .line 3246
    :cond_5d
    :try_start_5d
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_84

    .line 3247
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deleteCACertificate is called for Caller UID-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mContainerId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    :cond_84
    invoke-direct {p0, p2}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3254
    invoke-direct {p0, v0, v4, p2}, checkCACertAliasForAdmin(IILjava/lang/String;)Z

    move-result v5

    if-eq v9, v5, :cond_a0

    .line 3255
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_99

    .line 3256
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "- alias not exist ..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_99} :catch_bd
    .catchall {:try_start_5d .. :try_end_99} :catchall_da

    .line 3257
    :cond_99
    const/16 v5, -0xe

    .line 3267
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_15

    .line 3259
    :cond_a0
    :try_start_a0
    invoke-direct {p0, v0, v4, p2}, deleteCACertificateUsingAdminId(IILjava/lang/String;)Z

    move-result v5

    if-ne v9, v5, :cond_b7

    .line 3260
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_b1

    .line 3261
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "- certificate deleted successfully..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b1} :catch_bd
    .catchall {:try_start_a0 .. :try_end_b1} :catchall_da

    .line 3262
    :cond_b1
    const/4 v5, 0x0

    .line 3267
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_15

    :cond_b7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3270
    :goto_ba
    const/4 v5, -0x1

    goto/16 :goto_15

    .line 3264
    :catch_bd
    move-exception v1

    .line 3265
    .local v1, "e":Ljava/lang/Exception;
    :try_start_be
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-deleteCACertificate Exception-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catchall {:try_start_be .. :try_end_d6} :catchall_da

    .line 3267
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_ba

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_da
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public deleteCertificate(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 3724
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteCertificate is called...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3725
    if-nez p1, :cond_15

    .line 3726
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    const/16 v2, -0xb

    .line 3732
    :goto_14
    return v2

    .line 3729
    :cond_15
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3730
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 3731
    .local v1, "userId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3732
    .local v0, "adminId":I
    invoke-direct {p0, v0, v1, p2, p3}, deleteCertificateMain(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    move-result v2

    goto :goto_14
.end method

.method public deleteCertificateInternal(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .registers 7
    .param p1, "callerId"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    .line 3717
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificateInternal is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    const-string/jumbo v0, "deleteCertificateInternal"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3719
    invoke-direct {p0, p1, p2, p3, p4}, deleteCertificateMain(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 285
    if-eqz p2, :cond_3a

    .line 286
    iget-object v1, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 287
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 288
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_20

    if-eqz v2, :cond_20

    .line 289
    invoke-direct {p0, v2}, isSystemStorage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 290
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Enforcing ESE permission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    const-string v4, "com.sec.enterprise.permission.KNOX_UCM_ESE"

    invoke-virtual {v3, p1, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 308
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_20
    :goto_20
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "enforceSecurityPermission : caller has valid UCM permission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void

    .line 293
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_29
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Enforcing OTHER permission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    const-string v4, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    invoke-virtual {v3, p1, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_20

    .line 298
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3a
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Check if caller has some UCM permission..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :try_start_41
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    const-string v4, "com.sec.enterprise.permission.KNOX_UCM_ESE"

    invoke-virtual {v3, p1, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    :try_end_4a
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_4a} :catch_4b

    goto :goto_20

    .line 302
    :catch_4b
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Caller don\'t have any UCM ESE permission. Trying UCM Other permission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    const-string v4, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    invoke-virtual {v3, p1, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_20
.end method

.method public getAliases(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    const/4 v2, 0x0

    .line 3913
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "getAliases is called...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3914
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3916
    if-eqz p1, :cond_14

    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 3917
    :cond_14
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_20

    .line 3918
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "getAliases - Invalid Arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3935
    :cond_20
    :goto_20
    return-object v2

    .line 3922
    :cond_21
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3923
    .local v0, "adminId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 3925
    .local v1, "userId":I
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_4c

    .line 3926
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAliases is called for Caller UID-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mContainerId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    :cond_4c
    invoke-direct {p0, p2}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 3931
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Plugin is not active"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 3935
    :cond_5a
    invoke-direct {p0, v0, v1, p2}, getAliasesInternal(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_20
.end method

.method public getAllCertificateAliases(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .registers 19
    .param p1, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 4048
    const-string/jumbo v14, "getAllCertificateAliases"

    invoke-static {v14}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4049
    sget-object v14, TAG:Ljava/lang/String;

    const-string/jumbo v15, "getAllCertificateAliases is called...."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    invoke-direct/range {p0 .. p1}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v14

    if-nez v14, :cond_22

    .line 4052
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_20

    .line 4053
    sget-object v14, TAG:Ljava/lang/String;

    const-string/jumbo v15, "getAllCertificateAliases - Invalid Arguments"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    :cond_20
    const/4 v4, 0x0

    .line 4096
    :goto_21
    return-object v4

    .line 4057
    :cond_22
    const/4 v4, 0x0

    .line 4058
    .local v4, "aliases":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4061
    .local v8, "id":J
    const/4 v14, 0x2

    :try_start_28
    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "storageName"

    aput-object v15, v10, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "storagePackageName"

    aput-object v15, v10, v14

    .line 4065
    .local v10, "sAllColumns":[Ljava/lang/String;
    const/4 v14, 0x2

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v15, v12, v14

    const/4 v14, 0x1

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v15, v12, v14

    .line 4069
    .local v12, "sAllValues":[Ljava/lang/String;
    const/4 v14, 0x2

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "adminUid"

    aput-object v15, v11, v14

    const/4 v14, 0x1

    const-string v15, "alias"

    aput-object v15, v11, v14

    .line 4073
    .local v11, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 4075
    .local v5, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "UniversalCredentialCertificateTable"

    invoke-virtual {v14, v15, v10, v12, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4078
    if-eqz v5, :cond_c1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_c1

    .line 4079
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4080
    .local v3, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_70
    :goto_70
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    .line 4081
    .local v13, "value":Landroid/content/ContentValues;
    const-string v14, "alias"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4083
    .local v2, "alias":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_70

    .line 4084
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_8b} :catch_8c
    .catchall {:try_start_28 .. :try_end_8b} :catchall_c6

    goto :goto_70

    .line 4090
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "sAllColumns":[Ljava/lang/String;
    .end local v11    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v12    # "sAllValues":[Ljava/lang/String;
    .end local v13    # "value":Landroid/content/ContentValues;
    :catch_8c
    move-exception v6

    .line 4091
    .local v6, "e":Ljava/lang/Exception;
    :try_start_8d
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_ae

    .line 4092
    sget-object v14, TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getAllCertificateAliases - Exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_8d .. :try_end_ae} :catchall_c6

    .line 4094
    :cond_ae
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_21

    .line 4087
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "sAllColumns":[Ljava/lang/String;
    .restart local v11    # "sAllReturnColumns":[Ljava/lang/String;
    .restart local v12    # "sAllValues":[Ljava/lang/String;
    :cond_b3
    :try_start_b3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v3, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_c1} :catch_8c
    .catchall {:try_start_b3 .. :try_end_c1} :catchall_c6

    .line 4094
    .end local v3    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_c1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_21

    .end local v5    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v10    # "sAllColumns":[Ljava/lang/String;
    .end local v11    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v12    # "sAllValues":[Ljava/lang/String;
    :catchall_c6
    move-exception v14

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
.end method

.method public getAuthType(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 4370
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getAuthType is called...."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4371
    if-eqz p1, :cond_10

    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 4372
    :cond_10
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_1c

    .line 4373
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getAuthType - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4374
    :cond_1c
    const/16 v4, -0xb

    .line 4411
    :goto_1e
    return v4

    .line 4377
    :cond_1f
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 4378
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 4379
    .local v5, "userId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4380
    .local v0, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4384
    .local v2, "id":J
    :try_start_2a
    invoke-direct {p0, p2}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 4385
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "Storage is not active"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_37} :catch_89
    .catchall {:try_start_2a .. :try_end_37} :catchall_a9

    .line 4386
    const/16 v4, -0xd

    .line 4409
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 4389
    :cond_3d
    :try_start_3d
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_64

    .line 4390
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAuthType is called for Caller UID-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mContainerId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4395
    :cond_64
    const/4 v6, 0x1

    iget-object v7, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v8, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v7, v8}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eq v6, v7, :cond_81

    .line 4397
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_7b

    .line 4398
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getAuthType return false.."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_7b} :catch_89
    .catchall {:try_start_3d .. :try_end_7b} :catchall_a9

    .line 4399
    :cond_7b
    const/16 v4, -0xc

    .line 4409
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 4403
    :cond_81
    :try_start_81
    invoke-virtual {p0, v5, p2}, getStorageAuthenticationType(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_89
    .catchall {:try_start_81 .. :try_end_84} :catchall_a9

    move-result v4

    .line 4409
    .local v4, "type":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 4406
    .end local v4    # "type":I
    :catch_89
    move-exception v1

    .line 4407
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8a
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAuthType Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_8a .. :try_end_a3} :catchall_a9

    .line 4409
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4411
    const/4 v4, -0x1

    goto/16 :goto_1e

    .line 4409
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_a9
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public getAvailableCredentialStorages(Landroid/app/enterprise/ContextInfo;)[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v0, 0x0

    .line 868
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAvailableCredentialStorage is called...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual {p0, p1, v0}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 871
    if-nez p1, :cond_1b

    .line 872
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_1a

    .line 873
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAvailableCredentialStorage - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_1a
    :goto_1a
    return-object v0

    .line 877
    :cond_1b
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_46

    .line 878
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAvailableCredentialStorage is called for Caller UID-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mContainerId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_46
    invoke-direct {p0}, getAvailableCredentialStorageInternal()[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    move-result-object v0

    goto :goto_1a
.end method

.method public getCACertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    .registers 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 3328
    sget-object v18, TAG:Ljava/lang/String;

    const-string/jumbo v19, "getCACertificate is called...."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    if-nez p1, :cond_14

    .line 3330
    sget-object v18, TAG:Ljava/lang/String;

    const-string/jumbo v19, "cxtInfo is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    const/4 v7, 0x0

    .line 3370
    :goto_13
    return-object v7

    .line 3333
    :cond_14
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3334
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3335
    .local v4, "adminId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v17, v0

    .line 3336
    .local v17, "userId":I
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getCACertificate  : adminId-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",userId-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", alias"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3338
    .local v14, "id":J
    const/4 v12, 0x0

    .line 3339
    .local v12, "fis":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 3340
    .local v13, "ois":Ljava/io/ObjectInputStream;
    const/4 v7, 0x0

    .line 3341
    .local v7, "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    const/4 v5, 0x0

    .line 3344
    .local v5, "certFile":Landroid/util/AtomicFile;
    const/16 v18, 0x1

    :try_start_6a
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, checkCACertAliasForAdmin(IILjava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_94

    .line 3345
    sget-boolean v18, DBG:Z

    if-eqz v18, :cond_85

    .line 3346
    sget-object v18, TAG:Ljava/lang/String;

    const-string v19, "- alias not exist ..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_85} :catch_114
    .catchall {:try_start_6a .. :try_end_85} :catchall_145

    .line 3347
    :cond_85
    const/4 v7, 0x0

    .line 3366
    .end local v7    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    if-eqz v13, :cond_8b

    :try_start_88
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_154

    .line 3367
    :cond_8b
    :goto_8b
    if-eqz v12, :cond_90

    :try_start_8d
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_157

    .line 3368
    :cond_90
    :goto_90
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13

    .line 3349
    .restart local v7    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    :cond_94
    :try_start_94
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, getCACertLocation(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3350
    .local v9, "certLocation":Ljava/lang/String;
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getCACertificateAliases - certLocation"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    new-instance v6, Landroid/util/AtomicFile;

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_c7} :catch_114
    .catchall {:try_start_94 .. :try_end_c7} :catchall_145

    .line 3352
    .end local v5    # "certFile":Landroid/util/AtomicFile;
    .local v6, "certFile":Landroid/util/AtomicFile;
    :try_start_c7
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v12

    .line 3353
    new-instance v16, Ljava/io/ObjectInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d2} :catch_174
    .catchall {:try_start_c7 .. :try_end_d2} :catchall_166

    .line 3354
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .local v16, "ois":Ljava/io/ObjectInputStream;
    :try_start_d2
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v0, v18

    check-cast v0, [B

    move-object v10, v0

    .line 3356
    .local v10, "data":[B
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getCACertificateAliases - data"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    if-eqz v10, :cond_102

    .line 3358
    new-instance v8, Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;

    invoke-direct {v8}, Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;-><init>()V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_ff} :catch_177
    .catchall {:try_start_d2 .. :try_end_ff} :catchall_169

    .line 3359
    .end local v7    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    .local v8, "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    :try_start_ff
    iput-object v10, v8, Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;->certificate:[B
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_101} :catch_17c
    .catchall {:try_start_ff .. :try_end_101} :catchall_16e

    move-object v7, v8

    .line 3366
    .end local v8    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    .restart local v7    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    :cond_102
    if-eqz v16, :cond_107

    :try_start_104
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectInputStream;->close()V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_107} :catch_15a

    .line 3367
    :cond_107
    :goto_107
    if-eqz v12, :cond_10c

    :try_start_109
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_10c} :catch_15c

    .line 3368
    :cond_10c
    :goto_10c
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v5, v6

    .end local v6    # "certFile":Landroid/util/AtomicFile;
    .restart local v5    # "certFile":Landroid/util/AtomicFile;
    move-object/from16 v13, v16

    .line 3369
    .end local v16    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_13

    .line 3362
    .end local v9    # "certLocation":Ljava/lang/String;
    .end local v10    # "data":[B
    :catch_114
    move-exception v11

    .line 3363
    .local v11, "e":Ljava/lang/Exception;
    :goto_115
    :try_start_115
    sget-boolean v18, DBG:Z

    if-eqz v18, :cond_136

    .line 3364
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getCACertificateAliases - Exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catchall {:try_start_115 .. :try_end_136} :catchall_145

    .line 3366
    :cond_136
    if-eqz v13, :cond_13b

    :try_start_138
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->close()V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_13b} :catch_15e

    .line 3367
    :cond_13b
    :goto_13b
    if-eqz v12, :cond_140

    :try_start_13d
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_140} :catch_160

    .line 3368
    :cond_140
    :goto_140
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_13

    .line 3366
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_145
    move-exception v18

    :goto_146
    if-eqz v13, :cond_14b

    :try_start_148
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->close()V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_14b} :catch_162

    .line 3367
    :cond_14b
    :goto_14b
    if-eqz v12, :cond_150

    :try_start_14d
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_150} :catch_164

    .line 3368
    :cond_150
    :goto_150
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    .line 3366
    .end local v7    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    :catch_154
    move-exception v18

    goto/16 :goto_8b

    .line 3367
    :catch_157
    move-exception v18

    goto/16 :goto_90

    .line 3366
    .end local v5    # "certFile":Landroid/util/AtomicFile;
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "certFile":Landroid/util/AtomicFile;
    .restart local v7    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    .restart local v9    # "certLocation":Ljava/lang/String;
    .restart local v10    # "data":[B
    .restart local v16    # "ois":Ljava/io/ObjectInputStream;
    :catch_15a
    move-exception v18

    goto :goto_107

    .line 3367
    :catch_15c
    move-exception v18

    goto :goto_10c

    .line 3366
    .end local v6    # "certFile":Landroid/util/AtomicFile;
    .end local v9    # "certLocation":Ljava/lang/String;
    .end local v10    # "data":[B
    .end local v16    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "certFile":Landroid/util/AtomicFile;
    .restart local v11    # "e":Ljava/lang/Exception;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    :catch_15e
    move-exception v18

    goto :goto_13b

    .line 3367
    :catch_160
    move-exception v18

    goto :goto_140

    .line 3366
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_162
    move-exception v19

    goto :goto_14b

    .line 3367
    :catch_164
    move-exception v19

    goto :goto_150

    .line 3366
    .end local v5    # "certFile":Landroid/util/AtomicFile;
    .restart local v6    # "certFile":Landroid/util/AtomicFile;
    .restart local v9    # "certLocation":Ljava/lang/String;
    :catchall_166
    move-exception v18

    move-object v5, v6

    .end local v6    # "certFile":Landroid/util/AtomicFile;
    .restart local v5    # "certFile":Landroid/util/AtomicFile;
    goto :goto_146

    .end local v5    # "certFile":Landroid/util/AtomicFile;
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "certFile":Landroid/util/AtomicFile;
    .restart local v16    # "ois":Ljava/io/ObjectInputStream;
    :catchall_169
    move-exception v18

    move-object v5, v6

    .end local v6    # "certFile":Landroid/util/AtomicFile;
    .restart local v5    # "certFile":Landroid/util/AtomicFile;
    move-object/from16 v13, v16

    .end local v16    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_146

    .end local v5    # "certFile":Landroid/util/AtomicFile;
    .end local v7    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "certFile":Landroid/util/AtomicFile;
    .restart local v8    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    .restart local v10    # "data":[B
    .restart local v16    # "ois":Ljava/io/ObjectInputStream;
    :catchall_16e
    move-exception v18

    move-object v5, v6

    .end local v6    # "certFile":Landroid/util/AtomicFile;
    .restart local v5    # "certFile":Landroid/util/AtomicFile;
    move-object v7, v8

    .end local v8    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    .restart local v7    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    move-object/from16 v13, v16

    .end local v16    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_146

    .line 3362
    .end local v5    # "certFile":Landroid/util/AtomicFile;
    .end local v10    # "data":[B
    .restart local v6    # "certFile":Landroid/util/AtomicFile;
    :catch_174
    move-exception v11

    move-object v5, v6

    .end local v6    # "certFile":Landroid/util/AtomicFile;
    .restart local v5    # "certFile":Landroid/util/AtomicFile;
    goto :goto_115

    .end local v5    # "certFile":Landroid/util/AtomicFile;
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "certFile":Landroid/util/AtomicFile;
    .restart local v16    # "ois":Ljava/io/ObjectInputStream;
    :catch_177
    move-exception v11

    move-object v5, v6

    .end local v6    # "certFile":Landroid/util/AtomicFile;
    .restart local v5    # "certFile":Landroid/util/AtomicFile;
    move-object/from16 v13, v16

    .end local v16    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_115

    .end local v5    # "certFile":Landroid/util/AtomicFile;
    .end local v7    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "certFile":Landroid/util/AtomicFile;
    .restart local v8    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    .restart local v10    # "data":[B
    .restart local v16    # "ois":Ljava/io/ObjectInputStream;
    :catch_17c
    move-exception v11

    move-object v5, v6

    .end local v6    # "certFile":Landroid/util/AtomicFile;
    .restart local v5    # "certFile":Landroid/util/AtomicFile;
    move-object v7, v8

    .end local v8    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    .restart local v7    # "certInfo":Lcom/sec/enterprise/knox/ucm/configurator/CACertificateInfo;
    move-object/from16 v13, v16

    .end local v16    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_115
.end method

.method public getCACertificateAliases(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)[Ljava/lang/String;
    .registers 26
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 3275
    sget-object v20, TAG:Ljava/lang/String;

    const-string/jumbo v21, "getCACertificateAliases is called...."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    if-nez p1, :cond_14

    .line 3277
    sget-object v20, TAG:Ljava/lang/String;

    const-string/jumbo v21, "cxtInfo is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    const/4 v7, 0x0

    .line 3323
    :goto_13
    return-object v7

    .line 3280
    :cond_14
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3281
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3282
    .local v4, "adminId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v18, v0

    .line 3283
    .local v18, "userId":I
    sget-object v20, TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getCACertificateAliases  : adminId-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",userId-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    const/4 v7, 0x0

    .line 3285
    .local v7, "aliases":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3288
    .local v14, "id":J
    :try_start_57
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 3289
    .local v5, "adminUId":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 3291
    .local v8, "contId":Ljava/lang/String;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v13, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "adminUid"

    aput-object v21, v13, v20

    const/16 v20, 0x1

    const-string/jumbo v21, "userId"

    aput-object v21, v13, v20

    .line 3294
    .local v13, "sAllColumns":[Ljava/lang/String;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    aput-object v5, v17, v20

    const/16 v20, 0x1

    aput-object v8, v17, v20

    .line 3298
    .local v17, "sAllValues":[Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v20, 0x0

    const-string v21, "alias"

    aput-object v21, v16, v20

    .line 3301
    .local v16, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 3303
    .local v9, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "UniversalCredentialCACertificateTable"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 3306
    if-eqz v9, :cond_d1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_d1

    .line 3307
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v7, v0, [Ljava/lang/String;

    .line 3308
    const/4 v11, 0x0

    .line 3309
    .local v11, "i":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_ba
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ContentValues;

    .line 3310
    .local v19, "value":Landroid/content/ContentValues;
    const-string v20, "alias"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3312
    .local v6, "alias":Ljava/lang/String;
    aput-object v6, v7, v11
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_ce} :catch_d6
    .catchall {:try_start_57 .. :try_end_ce} :catchall_fd

    .line 3313
    add-int/lit8 v11, v11, 0x1

    .line 3314
    goto :goto_ba

    .line 3321
    .end local v6    # "alias":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v19    # "value":Landroid/content/ContentValues;
    :cond_d1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_13

    .line 3317
    .end local v5    # "adminUId":Ljava/lang/String;
    .end local v8    # "contId":Ljava/lang/String;
    .end local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v13    # "sAllColumns":[Ljava/lang/String;
    .end local v16    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v17    # "sAllValues":[Ljava/lang/String;
    :catch_d6
    move-exception v10

    .line 3318
    .local v10, "e":Ljava/lang/Exception;
    :try_start_d7
    sget-boolean v20, DBG:Z

    if-eqz v20, :cond_f8

    .line 3319
    sget-object v20, TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getCACertificateAliases - Exception"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_d7 .. :try_end_f8} :catchall_fd

    .line 3321
    :cond_f8
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_13

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_fd
    move-exception v20

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
.end method

.method public getCertificateAliases(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .registers 34
    .param p1, "packageUid"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 2796
    const-string/jumbo v28, "getCertificateAliases"

    invoke-static/range {v28 .. v28}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2797
    sget-object v28, TAG:Ljava/lang/String;

    const-string/jumbo v29, "getAliasesForUid is called...."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v28

    if-nez v28, :cond_26

    .line 2801
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_24

    .line 2802
    sget-object v28, TAG:Ljava/lang/String;

    const-string/jumbo v29, "getAliasesForUid - Invalid Arguments"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    :cond_24
    const/4 v9, 0x0

    .line 2885
    :cond_25
    :goto_25
    return-object v9

    .line 2806
    :cond_26
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v26

    .line 2807
    .local v26, "userId":I
    const/16 v11, 0x68

    .line 2809
    .local v11, "certAccess":I
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_4d

    .line 2810
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "getAliasesForUid is called for mContainerId "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    :cond_4d
    const/4 v9, 0x0

    .line 2814
    .local v9, "aliases":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2815
    .local v8, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2818
    .local v18, "id":J
    :try_start_57
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 2820
    .local v12, "contId":Ljava/lang/String;
    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "userId"

    aput-object v29, v23, v28

    const/16 v28, 0x1

    const-string/jumbo v29, "storageName"

    aput-object v29, v23, v28

    const/16 v28, 0x2

    const-string/jumbo v29, "storagePackageName"

    aput-object v29, v23, v28

    const/16 v28, 0x3

    const-string v29, "accessType"

    aput-object v29, v23, v28

    .line 2826
    .local v23, "sAllColumns":[Ljava/lang/String;
    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v28, 0x0

    aput-object v12, v25, v28

    const/16 v28, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    aput-object v29, v25, v28

    const/16 v28, 0x2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    aput-object v29, v25, v28

    const/16 v28, 0x3

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v25, v28

    .line 2830
    .local v25, "sAllValues":[Ljava/lang/String;
    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v28, 0x0

    const-string v29, "adminUid"

    aput-object v29, v24, v28

    const/16 v28, 0x1

    const-string v29, "alias"

    aput-object v29, v24, v28

    const/16 v28, 0x2

    const-string v29, "appPackage"

    aput-object v29, v24, v28

    .line 2835
    .local v24, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 2837
    .local v13, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v28, v0

    const-string v29, "UniversalCredentialWhiteListTable"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 2841
    if-eqz v13, :cond_229

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_229

    .line 2842
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    .line 2843
    .local v22, "pkgNames":[Ljava/lang/String;
    if-eqz v22, :cond_206

    .line 2844
    move-object/from16 v10, v22

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .local v17, "i$":I
    :goto_f8
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1ed

    aget-object v21, v10, v17

    .line 2845
    .local v21, "pkgName":Ljava/lang/String;
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "getAliasesForUid pkgName-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v17    # "i$":I
    .local v16, "i$":Ljava/util/Iterator;
    :cond_121
    :goto_121
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1e7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    .line 2847
    .local v27, "value":Landroid/content/ContentValues;
    const-string v28, "appPackage"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2849
    .local v14, "dbPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2850
    .local v7, "alias":Ljava/lang/String;
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "getAliasesForUid dbPackage-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    if-eqz v14, :cond_121

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_163

    const-string v28, "*"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_121

    .line 2854
    :cond_163
    const-string v28, "alias"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2856
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "getAliasesForUid alias found alias-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    const-string v28, "adminUid"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2858
    .local v6, "adminId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v1}, isAdminLicenseActive(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v28

    if-eqz v28, :cond_121

    .line 2859
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_121

    .line 2860
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_1a1} :catch_1a2
    .catchall {:try_start_57 .. :try_end_1a1} :catchall_224

    goto :goto_121

    .line 2875
    .end local v6    # "adminId":I
    .end local v7    # "alias":Ljava/lang/String;
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v12    # "contId":Ljava/lang/String;
    .end local v13    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v14    # "dbPackage":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v20    # "len$":I
    .end local v21    # "pkgName":Ljava/lang/String;
    .end local v22    # "pkgNames":[Ljava/lang/String;
    .end local v23    # "sAllColumns":[Ljava/lang/String;
    .end local v24    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v25    # "sAllValues":[Ljava/lang/String;
    .end local v27    # "value":Landroid/content/ContentValues;
    :catch_1a2
    move-exception v15

    .line 2876
    .local v15, "e":Ljava/lang/Exception;
    :try_start_1a3
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_1c4

    .line 2877
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "getAliasesForUid - Exception"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c4
    .catchall {:try_start_1a3 .. :try_end_1c4} :catchall_224

    .line 2879
    :cond_1c4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2882
    .end local v15    # "e":Ljava/lang/Exception;
    :goto_1c7
    if-eqz v9, :cond_25

    .line 2883
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "getAliasesForUid - aliases size -"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    array-length v0, v9

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 2844
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v12    # "contId":Ljava/lang/String;
    .restart local v13    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v20    # "len$":I
    .restart local v21    # "pkgName":Ljava/lang/String;
    .restart local v22    # "pkgNames":[Ljava/lang/String;
    .restart local v23    # "sAllColumns":[Ljava/lang/String;
    .restart local v24    # "sAllReturnColumns":[Ljava/lang/String;
    .restart local v25    # "sAllValues":[Ljava/lang/String;
    :cond_1e7
    add-int/lit8 v16, v17, 0x1

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    goto/16 :goto_f8

    .line 2866
    .end local v21    # "pkgName":Ljava/lang/String;
    :cond_1ed
    :try_start_1ed
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_202} :catch_1a2
    .catchall {:try_start_1ed .. :try_end_202} :catchall_224

    .line 2879
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v20    # "len$":I
    .end local v22    # "pkgNames":[Ljava/lang/String;
    :goto_202
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c7

    .line 2868
    .restart local v22    # "pkgNames":[Ljava/lang/String;
    :cond_206
    :try_start_206
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "getAliasesForUid no packages related to uid-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_223} :catch_1a2
    .catchall {:try_start_206 .. :try_end_223} :catchall_224

    goto :goto_202

    .line 2879
    .end local v12    # "contId":Ljava/lang/String;
    .end local v13    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v22    # "pkgNames":[Ljava/lang/String;
    .end local v23    # "sAllColumns":[Ljava/lang/String;
    .end local v24    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v25    # "sAllValues":[Ljava/lang/String;
    :catchall_224
    move-exception v28

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v28

    .line 2872
    .restart local v12    # "contId":Ljava/lang/String;
    .restart local v13    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v23    # "sAllColumns":[Ljava/lang/String;
    .restart local v24    # "sAllReturnColumns":[Ljava/lang/String;
    .restart local v25    # "sAllValues":[Ljava/lang/String;
    :cond_229
    :try_start_229
    sget-object v28, TAG:Ljava/lang/String;

    const-string/jumbo v29, "getAliasesForUid - No record found..."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_231
    .catch Ljava/lang/Exception; {:try_start_229 .. :try_end_231} :catch_1a2
    .catchall {:try_start_229 .. :try_end_231} :catchall_224

    goto :goto_202
.end method

.method public getCertificateAliasesAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .registers 22
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 3986
    const-string/jumbo v16, "getCertificateAliasesAsUser"

    invoke-static/range {v16 .. v16}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3987
    sget-object v16, TAG:Ljava/lang/String;

    const-string/jumbo v17, "getCertificateAliasesAsUser is called...."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3989
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v16

    if-nez v16, :cond_26

    .line 3990
    sget-boolean v16, DBG:Z

    if-eqz v16, :cond_24

    .line 3991
    sget-object v16, TAG:Ljava/lang/String;

    const-string/jumbo v17, "getCertificateAliasesAsUser - Invalid Arguments"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    :cond_24
    const/4 v5, 0x0

    .line 4043
    :goto_25
    return-object v5

    .line 3995
    :cond_26
    sget-boolean v16, DBG:Z

    if-eqz v16, :cond_47

    .line 3996
    sget-object v16, TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getCertificateAliasesAsUser is called for mContainerId "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3999
    :cond_47
    const/4 v5, 0x0

    .line 4000
    .local v5, "aliases":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4003
    .local v10, "id":J
    :try_start_4c
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4005
    .local v6, "contId":Ljava/lang/String;
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v12, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "userId"

    aput-object v17, v12, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "storageName"

    aput-object v17, v12, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "storagePackageName"

    aput-object v17, v12, v16

    .line 4010
    .local v12, "sAllColumns":[Ljava/lang/String;
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v6, v14, v16

    const/16 v16, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v14, v16

    const/16 v16, 0x2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v14, v16

    .line 4014
    .local v14, "sAllValues":[Ljava/lang/String;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v13, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "adminUid"

    aput-object v17, v13, v16

    const/16 v16, 0x1

    const-string v17, "alias"

    aput-object v17, v13, v16

    .line 4018
    .local v13, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 4020
    .local v7, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v16, v0

    const-string v17, "UniversalCredentialCertificateTable"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12, v14, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4023
    if-eqz v7, :cond_119

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_119

    .line 4024
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4025
    .local v4, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_bd
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_104

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 4026
    .local v15, "value":Landroid/content/ContentValues;
    const-string v16, "alias"

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4028
    .local v3, "alias":Ljava/lang/String;
    const-string v16, "adminUid"

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4030
    .local v2, "adminId":I
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_dc} :catch_dd
    .catchall {:try_start_4c .. :try_end_dc} :catchall_11e

    goto :goto_bd

    .line 4037
    .end local v2    # "adminId":I
    .end local v3    # "alias":Ljava/lang/String;
    .end local v4    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "contId":Ljava/lang/String;
    .end local v7    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "sAllColumns":[Ljava/lang/String;
    .end local v13    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v14    # "sAllValues":[Ljava/lang/String;
    .end local v15    # "value":Landroid/content/ContentValues;
    :catch_dd
    move-exception v8

    .line 4038
    .local v8, "e":Ljava/lang/Exception;
    :try_start_de
    sget-boolean v16, DBG:Z

    if-eqz v16, :cond_ff

    .line 4039
    sget-object v16, TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getCertificateAliasesAsUser - Exception"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_de .. :try_end_ff} :catchall_11e

    .line 4041
    :cond_ff
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_25

    .line 4034
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "contId":Ljava/lang/String;
    .restart local v7    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "sAllColumns":[Ljava/lang/String;
    .restart local v13    # "sAllReturnColumns":[Ljava/lang/String;
    .restart local v14    # "sAllValues":[Ljava/lang/String;
    :cond_104
    :try_start_104
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_119} :catch_dd
    .catchall {:try_start_104 .. :try_end_119} :catchall_11e

    .line 4041
    .end local v4    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_119
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_25

    .end local v6    # "contId":Ljava/lang/String;
    .end local v7    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v12    # "sAllColumns":[Ljava/lang/String;
    .end local v13    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v14    # "sAllValues":[Ljava/lang/String;
    :catchall_11e
    move-exception v16

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
.end method

.method public getCredentialStoragePluginConfiguration(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Landroid/os/Bundle;
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    const/4 v6, 0x0

    .line 1054
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCredentialStoragePluginConfiguration is called...."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    if-eqz p1, :cond_11

    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 1056
    :cond_11
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_1d

    .line 1057
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCredentialStoragePluginConfiguration - Invalid Arguments"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_1d
    :goto_1d
    return-object v6

    .line 1061
    :cond_1e
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 1062
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1063
    .local v0, "adminUid":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1064
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1067
    .local v4, "id":J
    :try_start_29
    invoke-direct {p0, p2}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v7

    if-nez v7, :cond_3a

    .line 1068
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "Plugin is not active"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_36} :catch_b0
    .catchall {:try_start_29 .. :try_end_36} :catchall_cf

    .line 1095
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .line 1072
    :cond_3a
    :try_start_3a
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_61

    .line 1073
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCredentialStoragePluginConfiguration is called for Caller UID-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mContainerId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_61
    const/4 v7, 0x1

    iget-object v8, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v9, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v8, v9}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eq v7, v8, :cond_7c

    .line 1080
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_78

    .line 1081
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCredentialStoragePluginConfiguration return null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_78} :catch_b0
    .catchall {:try_start_3a .. :try_end_78} :catchall_cf

    .line 1095
    :cond_78
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .line 1085
    :cond_7c
    :try_start_7c
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v7

    if-eqz v7, :cond_ab

    .line 1086
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCredentialStoragePluginConfiguration - pass to agent..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    new-instance v7, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v8, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, "csUri":Ljava/lang/String;
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v7

    invoke-interface {v7, v0, v3, v1}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->getAdminConfigureBundleFromCs(IILjava/lang/String;)Landroid/os/Bundle;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_a5} :catch_b0
    .catchall {:try_start_7c .. :try_end_a5} :catchall_cf

    move-result-object v6

    .line 1095
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1d

    .end local v1    # "csUri":Ljava/lang/String;
    :cond_ab
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1d

    .line 1092
    :catch_b0
    move-exception v2

    .line 1093
    .local v2, "e":Ljava/lang/Exception;
    :try_start_b1
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCredentialStoragePluginConfiguration - Exception -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catchall {:try_start_b1 .. :try_end_ca} :catchall_cf

    .line 1095
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1d

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_cf
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public getCredentialStorages(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .registers 28
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2615
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "getCredentialStorages is called...."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_21

    .line 2617
    :cond_12
    sget-boolean v22, DBG:Z

    if-eqz v22, :cond_1e

    .line 2618
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "getCredentialStorages - Invalid Arguments"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    :cond_1e
    const/16 v17, 0x0

    .line 2704
    :cond_20
    :goto_20
    return-object v17

    .line 2622
    :cond_21
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 2624
    const/16 v17, 0x0

    .line 2625
    .local v17, "storage":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2626
    .local v4, "adminId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v20, v0

    .line 2627
    .local v20, "userId":I
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2629
    .local v9, "hashList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;>;"
    sget-boolean v22, DBG:Z

    if-eqz v22, :cond_6a

    .line 2630
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "getCredentialStorages is called for Caller UID-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mContainerId "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    :cond_6a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2636
    .local v12, "id":J
    const/16 v22, 0x2

    :try_start_70
    move/from16 v0, v22

    new-array v14, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "adminUid"

    aput-object v23, v14, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "userId"

    aput-object v23, v14, v22

    .line 2639
    .local v14, "sAllColumns":[Ljava/lang/String;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v22, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v16, v22

    const/16 v22, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v16, v22

    .line 2643
    .local v16, "sAllValues":[Ljava/lang/String;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v15, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string/jumbo v23, "storageName"

    aput-object v23, v15, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "storagePackageName"

    aput-object v23, v15, v22

    const/16 v22, 0x2

    const-string/jumbo v23, "storageManufacture"

    aput-object v23, v15, v22

    const/16 v22, 0x3

    const-string v23, "appPackage"

    aput-object v23, v15, v22

    .line 2649
    .local v15, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2650
    .local v6, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "UniversalCredentialWhiteListTable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2654
    if-eqz v6, :cond_1bc

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_1bc

    .line 2655
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "getCredentialStorages - Size-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    const/4 v5, 0x0

    .line 2658
    .local v5, "cr":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    const/16 v18, 0x0

    .line 2659
    .local v18, "storageName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 2660
    .local v19, "storagePkg":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2662
    .local v11, "manufacturer":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_fc
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1bc

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    .line 2664
    .local v21, "value":Landroid/content/ContentValues;
    const-string v22, "appPackage"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2666
    .local v7, "dbPackage":Ljava/lang/String;
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "getCredentialStorages dbPackage-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    if-eqz v7, :cond_1b4

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_13d

    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1b4

    .line 2670
    :cond_13d
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "getCredentialStorages match found..."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    const-string/jumbo v22, "storageName"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2673
    const-string/jumbo v22, "storagePackageName"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2675
    const-string/jumbo v22, "storageManufacture"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2677
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1b4

    .line 2678
    new-instance v5, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .end local v5    # "cr":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-direct {v5}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 2679
    .restart local v5    # "cr":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 2680
    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 2681
    iput-object v11, v5, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    .line 2682
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_1b4} :catch_1f8
    .catchall {:try_start_70 .. :try_end_1b4} :catchall_21e

    .line 2686
    :cond_1b4
    const/4 v5, 0x0

    .line 2687
    const/16 v18, 0x0

    .line 2688
    const/16 v19, 0x0

    .line 2689
    const/4 v11, 0x0

    .line 2690
    goto/16 :goto_fc

    .line 2697
    .end local v5    # "cr":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v7    # "dbPackage":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "manufacturer":Ljava/lang/String;
    .end local v18    # "storageName":Ljava/lang/String;
    .end local v19    # "storagePkg":Ljava/lang/String;
    .end local v21    # "value":Landroid/content/ContentValues;
    :cond_1bc
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2700
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v14    # "sAllColumns":[Ljava/lang/String;
    .end local v15    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v16    # "sAllValues":[Ljava/lang/String;
    :goto_1bf
    if-eqz v9, :cond_20

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v22

    if-lez v22, :cond_20

    .line 2701
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "getCredentialStorages - hashList.size()"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "storage":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    check-cast v17, [Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .restart local v17    # "storage":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    goto/16 :goto_20

    .line 2693
    :catch_1f8
    move-exception v8

    .line 2694
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1f9
    sget-boolean v22, DBG:Z

    if-eqz v22, :cond_21a

    .line 2695
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "getCredentialStorages - Exception"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21a
    .catchall {:try_start_1f9 .. :try_end_21a} :catchall_21e

    .line 2697
    :cond_21a
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1bf

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_21e
    move-exception v22

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22
.end method

.method public getDefaultInstallStorage(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v11, 0x0

    .line 2890
    sget-object v12, TAG:Ljava/lang/String;

    const-string/jumbo v13, "getDefaultInstallStorage is called...."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    invoke-virtual {p0, p1, v11}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 2893
    const/4 v2, 0x0

    .line 2894
    .local v2, "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    if-nez p1, :cond_1c

    .line 2895
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_1b

    .line 2896
    sget-object v12, TAG:Ljava/lang/String;

    const-string/jumbo v13, "getDefaultInstallStorage - Invalid Arguments"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    :cond_1b
    :goto_1b
    return-object v11

    .line 2900
    :cond_1c
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2901
    .local v0, "adminId":I
    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2903
    .local v10, "userId":I
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_47

    .line 2904
    sget-object v11, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getDefaultInstallStorage is called for Caller UID-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mContainerId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    :cond_47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2909
    .local v6, "id":J
    const/4 v11, 0x1

    :try_start_4c
    new-array v5, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "userId"

    aput-object v12, v5, v11

    .line 2912
    .local v5, "sAllColumns":[Ljava/lang/String;
    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    .line 2916
    .local v9, "sAllValues":[Ljava/lang/String;
    const/4 v11, 0x3

    new-array v8, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "storageName"

    aput-object v12, v8, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "storagePackageName"

    aput-object v12, v8, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "storageManufacture"

    aput-object v12, v8, v11

    .line 2921
    .local v8, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2923
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v11, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v11, v12, v5, v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2927
    if-eqz v1, :cond_ba

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_ba

    .line 2928
    new-instance v3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_89} :catch_c0
    .catchall {:try_start_4c .. :try_end_89} :catchall_e6

    .line 2929
    .end local v2    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .local v3, "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    const/4 v11, 0x0

    :try_start_8a
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    const-string/jumbo v12, "storageName"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 2931
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    const-string/jumbo v12, "storagePackageName"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 2933
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    const-string/jumbo v12, "storageManufacture"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_b9} :catch_ee
    .catchall {:try_start_8a .. :try_end_b9} :catchall_eb

    move-object v2, v3

    .line 2941
    .end local v3    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v2    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_ba
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "sAllColumns":[Ljava/lang/String;
    .end local v8    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v9    # "sAllValues":[Ljava/lang/String;
    :goto_bd
    move-object v11, v2

    .line 2944
    goto/16 :goto_1b

    .line 2937
    :catch_c0
    move-exception v4

    .line 2938
    .local v4, "e":Ljava/lang/Exception;
    :goto_c1
    :try_start_c1
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_e2

    .line 2939
    sget-object v11, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getDefaultInstallStorage - Exception"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catchall {:try_start_c1 .. :try_end_e2} :catchall_e6

    .line 2941
    :cond_e2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_bd

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_e6
    move-exception v11

    :goto_e7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .end local v2    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v3    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v5    # "sAllColumns":[Ljava/lang/String;
    .restart local v8    # "sAllReturnColumns":[Ljava/lang/String;
    .restart local v9    # "sAllValues":[Ljava/lang/String;
    :catchall_eb
    move-exception v11

    move-object v2, v3

    .end local v3    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v2    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    goto :goto_e7

    .line 2937
    .end local v2    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v3    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :catch_ee
    move-exception v4

    move-object v2, v3

    .end local v3    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v2    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    goto :goto_c1
.end method

.method public getDefaultInstallStorageAsUser(I)Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .registers 14
    .param p1, "userId"    # I

    .prologue
    .line 2949
    const-string/jumbo v9, "getDefaultInstallStorageAsUser"

    invoke-static {v9}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2950
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "getDefaultInstallStorage is called...."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    const/4 v1, 0x0

    .line 2954
    .local v1, "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_2c

    .line 2955
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getDefaultInstallStorageAsUser is called for userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    :cond_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2959
    .local v4, "id":J
    const/4 v9, 0x1

    :try_start_31
    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "userId"

    aput-object v10, v6, v9

    .line 2962
    .local v6, "sAllColumns":[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 2966
    .local v8, "sAllValues":[Ljava/lang/String;
    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "storageName"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "storagePackageName"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "storageManufacture"

    aput-object v10, v7, v9

    .line 2971
    .local v7, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2973
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v9, v10, v6, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2977
    if-eqz v0, :cond_9f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_9f

    .line 2978
    new-instance v2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_6e} :catch_a3
    .catchall {:try_start_31 .. :try_end_6e} :catchall_c9

    .line 2979
    .end local v1    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .local v2, "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    const/4 v9, 0x0

    :try_start_6f
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    const-string/jumbo v10, "storageName"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 2981
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    const-string/jumbo v10, "storagePackageName"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 2983
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    const-string/jumbo v10, "storageManufacture"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_9e} :catch_d1
    .catchall {:try_start_6f .. :try_end_9e} :catchall_ce

    move-object v1, v2

    .line 2991
    .end local v2    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v1    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_9f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2994
    .end local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "sAllColumns":[Ljava/lang/String;
    .end local v7    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v8    # "sAllValues":[Ljava/lang/String;
    :goto_a2
    return-object v1

    .line 2987
    :catch_a3
    move-exception v3

    .line 2988
    .local v3, "e":Ljava/lang/Exception;
    :goto_a4
    :try_start_a4
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_c5

    .line 2989
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getDefaultInstallStorage - Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_a4 .. :try_end_c5} :catchall_c9

    .line 2991
    :cond_c5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a2

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_c9
    move-exception v9

    :goto_ca
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .end local v1    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v2    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v6    # "sAllColumns":[Ljava/lang/String;
    .restart local v7    # "sAllReturnColumns":[Ljava/lang/String;
    .restart local v8    # "sAllValues":[Ljava/lang/String;
    :catchall_ce
    move-exception v9

    move-object v1, v2

    .end local v2    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v1    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    goto :goto_ca

    .line 2987
    .end local v1    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v2    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :catch_d1
    move-exception v3

    move-object v1, v2

    .end local v2    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v1    # "defaultCs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    goto :goto_a4
.end method

.method public getODESettingsConfiguration(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x0

    .line 6085
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getODESettingsConfiguration is called...."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6087
    invoke-virtual {p0, p1, v5}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 6088
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 6089
    .local v0, "adminId":I
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 6090
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6093
    .local v2, "id":J
    :try_start_14
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_3b

    .line 6094
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getODESettingsConfiguration is called for Caller UID-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mContainerId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6098
    :cond_3b
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v6

    if-eqz v6, :cond_55

    .line 6099
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getODESettingsConfiguration is called for plugin unmanaged..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6100
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->getODESettingsConfiguration()Landroid/os/Bundle;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_50} :catch_59
    .catchall {:try_start_14 .. :try_end_50} :catchall_77

    move-result-object v5

    .line 6106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6109
    :goto_54
    return-object v5

    .line 6106
    :cond_55
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_54

    .line 6103
    :catch_59
    move-exception v1

    .line 6104
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5a
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getODESettingsConfiguration Exception -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_5a .. :try_end_73} :catchall_77

    .line 6106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_54

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_77
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getPackageSetting(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Lcom/sec/enterprise/AppIdentity;)Landroid/os/Bundle;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "appInfo"    # Lcom/sec/enterprise/AppIdentity;

    .prologue
    const/4 v7, 0x0

    .line 4247
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v3, "getPackageSetting is called...."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    if-eqz p1, :cond_13

    if-eqz p3, :cond_13

    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 4249
    :cond_13
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1f

    .line 4250
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v3, "getPackageSetting - Invalid Arguments"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move-object v0, v7

    .line 4292
    :goto_20
    return-object v0

    .line 4254
    :cond_21
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 4255
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 4256
    .local v5, "userId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4257
    .local v1, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4261
    .local v8, "id":J
    :try_start_2c
    invoke-direct {p0, p2}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 4262
    sget-object v0, TAG:Ljava/lang/String;

    const-string v3, "Storage is not active"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_39} :catch_be
    .catchall {:try_start_2c .. :try_end_39} :catchall_dc

    .line 4289
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v7

    goto :goto_20

    .line 4266
    :cond_3e
    :try_start_3e
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_65

    .line 4267
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageSetting is called for mCallerUid- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " user- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    :cond_65
    const/4 v0, 0x1

    iget-object v3, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v4, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v5, v3, v4}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eq v0, v3, :cond_81

    .line 4274
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_7c

    .line 4275
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPackageSetting return false.."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_7c} :catch_be
    .catchall {:try_start_3e .. :try_end_7c} :catchall_dc

    .line 4289
    :cond_7c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v7

    goto :goto_20

    .line 4279
    :cond_81
    :try_start_81
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 4280
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v3, "getPackageSetting - pass to agent..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4281
    new-instance v0, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v3, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v2

    .line 4284
    .local v2, "csUri":Ljava/lang/String;
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v0 .. v5}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->getPackageSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_b2} :catch_be
    .catchall {:try_start_81 .. :try_end_b2} :catchall_dc

    move-result-object v0

    .line 4289
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .end local v2    # "csUri":Ljava/lang/String;
    :cond_b8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_bb
    move-object v0, v7

    .line 4292
    goto/16 :goto_20

    .line 4286
    :catch_be
    move-exception v6

    .line 4287
    .local v6, "e":Ljava/lang/Exception;
    :try_start_bf
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageSetting - Exception -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catchall {:try_start_bf .. :try_end_d8} :catchall_dc

    .line 4289
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_bb

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_dc
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getPackagesFromExemptList(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;
    .registers 25
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4725
    sget-object v18, TAG:Ljava/lang/String;

    const-string/jumbo v19, "getPackagesFromExemptList is called...."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4726
    if-eqz p1, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v18

    if-nez v18, :cond_22

    .line 4727
    :cond_14
    sget-boolean v18, DBG:Z

    if-eqz v18, :cond_20

    .line 4728
    sget-object v18, TAG:Ljava/lang/String;

    const-string/jumbo v19, "getPackagesFromExemptList - Invalid Arguments"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    :cond_20
    const/4 v9, 0x0

    .line 4803
    :goto_21
    return-object v9

    .line 4732
    :cond_22
    invoke-virtual/range {p0 .. p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 4733
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4734
    .local v4, "adminId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v16, v0

    .line 4735
    .local v16, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4736
    .local v10, "id":J
    const/4 v9, 0x0

    .line 4739
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :try_start_34
    sget-boolean v18, DBG:Z

    if-eqz v18, :cond_6f

    .line 4740
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getPackagesFromExemptList is called for Caller UID-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mContainerId "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",type-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4744
    :cond_6f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v18

    if-nez v18, :cond_85

    .line 4745
    sget-object v18, TAG:Ljava/lang/String;

    const-string v19, "Storage is not active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_80} :catch_1dc
    .catchall {:try_start_34 .. :try_end_80} :catchall_1d4

    .line 4746
    const/4 v9, 0x0

    .line 4800
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_21

    .line 4750
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :cond_85
    const/16 v18, 0x1

    :try_start_87
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v4, v1, v2, v3}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b7

    .line 4751
    sget-boolean v18, DBG:Z

    if-eqz v18, :cond_b1

    .line 4752
    sget-object v18, TAG:Ljava/lang/String;

    const-string/jumbo v19, "getPackagesFromExemptList return false.."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b1} :catch_1dc
    .catchall {:try_start_87 .. :try_end_b1} :catchall_1d4

    .line 4753
    :cond_b1
    const/4 v9, 0x0

    .line 4800
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_21

    .line 4756
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :cond_b7
    :try_start_b7
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, isValidExemptType(I)Z

    move-result v18

    if-nez v18, :cond_cf

    .line 4757
    sget-object v18, TAG:Ljava/lang/String;

    const-string/jumbo v19, "getPackagesFromExemptList - Invalid Exempt Type..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c9} :catch_1dc
    .catchall {:try_start_b7 .. :try_end_c9} :catchall_1d4

    .line 4758
    const/4 v9, 0x0

    .line 4800
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_21

    .line 4761
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :cond_cf
    const/4 v6, 0x0

    .line 4762
    .local v6, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/16 v18, 0x5

    :try_start_d2
    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "adminUid"

    aput-object v19, v13, v18

    const/16 v18, 0x1

    const-string/jumbo v19, "userId"

    aput-object v19, v13, v18

    const/16 v18, 0x2

    const-string/jumbo v19, "storageName"

    aput-object v19, v13, v18

    const/16 v18, 0x3

    const-string/jumbo v19, "storagePackageName"

    aput-object v19, v13, v18

    const/16 v18, 0x4

    const-string/jumbo v19, "exemptType"

    aput-object v19, v13, v18

    .line 4768
    .local v13, "sAllColumns":[Ljava/lang/String;
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v15, v18

    const/16 v18, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v15, v18

    const/16 v18, 0x2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v15, v18

    const/16 v18, 0x3

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v15, v18

    const/16 v18, 0x4

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v15, v18

    .line 4773
    .local v15, "sAllValues":[Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "appPackage"

    aput-object v19, v14, v18

    const/16 v18, 0x1

    const-string v19, "appSignature"

    aput-object v19, v14, v18

    .line 4778
    .local v14, "sAllReturnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string v19, "UniversalCredentialExemptTable"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13, v15, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 4782
    if-eqz v6, :cond_1cf

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_1cf

    .line 4783
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getPackagesFromExemptList - Size-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4784
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_176} :catch_1dc
    .catchall {:try_start_d2 .. :try_end_176} :catchall_1d4

    .line 4785
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    const/4 v5, 0x0

    .line 4786
    .local v5, "app":Lcom/sec/enterprise/AppIdentity;
    :try_start_177
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_17b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1ce

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ContentValues;

    .line 4787
    .local v17, "value":Landroid/content/ContentValues;
    new-instance v5, Lcom/sec/enterprise/AppIdentity;

    .end local v5    # "app":Lcom/sec/enterprise/AppIdentity;
    invoke-direct {v5}, Lcom/sec/enterprise/AppIdentity;-><init>()V

    .line 4788
    .restart local v5    # "app":Lcom/sec/enterprise/AppIdentity;
    const-string v18, "appPackage"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/AppIdentity;->setPackageName(Ljava/lang/String;)V

    .line 4790
    const-string v18, "appSignature"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/AppIdentity;->setSignature(Ljava/lang/String;)V

    .line 4792
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_1a5} :catch_1a6
    .catchall {:try_start_177 .. :try_end_1a5} :catchall_1d9

    goto :goto_17b

    .line 4796
    .end local v5    # "app":Lcom/sec/enterprise/AppIdentity;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v17    # "value":Landroid/content/ContentValues;
    :catch_1a6
    move-exception v7

    move-object v9, v12

    .line 4797
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .end local v13    # "sAllColumns":[Ljava/lang/String;
    .end local v14    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v15    # "sAllValues":[Ljava/lang/String;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :goto_1a8
    :try_start_1a8
    sget-boolean v18, DBG:Z

    if-eqz v18, :cond_1c9

    .line 4798
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getPackagesFromExemptList - Exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c9
    .catchall {:try_start_1a8 .. :try_end_1c9} :catchall_1d4

    .line 4800
    :cond_1c9
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_21

    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v5    # "app":Lcom/sec/enterprise/AppIdentity;
    .restart local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v13    # "sAllColumns":[Ljava/lang/String;
    .restart local v14    # "sAllReturnColumns":[Ljava/lang/String;
    .restart local v15    # "sAllValues":[Ljava/lang/String;
    :cond_1ce
    move-object v9, v12

    .end local v5    # "app":Lcom/sec/enterprise/AppIdentity;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :cond_1cf
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_21

    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v13    # "sAllColumns":[Ljava/lang/String;
    .end local v14    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v15    # "sAllValues":[Ljava/lang/String;
    :catchall_1d4
    move-exception v18

    :goto_1d5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v13    # "sAllColumns":[Ljava/lang/String;
    .restart local v14    # "sAllReturnColumns":[Ljava/lang/String;
    .restart local v15    # "sAllValues":[Ljava/lang/String;
    :catchall_1d9
    move-exception v18

    move-object v9, v12

    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    goto :goto_1d5

    .line 4796
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v13    # "sAllColumns":[Ljava/lang/String;
    .end local v14    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v15    # "sAllValues":[Ljava/lang/String;
    :catch_1dc
    move-exception v7

    goto :goto_1a8
.end method

.method public getPackagesFromWhiteList(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;
    .registers 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2047
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "getPackagesFromWhiteList is called...."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    if-eqz p1, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-nez p3, :cond_24

    .line 2049
    :cond_16
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_22

    .line 2050
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "getPackagesFromWhiteList - Invalid Arguments"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :cond_22
    const/4 v13, 0x0

    .line 2135
    :goto_23
    return-object v13

    .line 2054
    :cond_24
    invoke-virtual/range {p0 .. p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 2055
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2056
    .local v3, "adminId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2057
    .local v4, "userId":I
    const/4 v13, 0x0

    .line 2058
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2060
    .local v14, "id":J
    :try_start_34
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_5b

    .line 2061
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackagesFromWhiteList is called for Caller UID-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mContainerId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_5b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 2066
    sget-object v2, TAG:Ljava/lang/String;

    const-string v5, "Plugin is not active"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_6c} :catch_1f7
    .catchall {:try_start_34 .. :try_end_6c} :catchall_1f9

    .line 2067
    const/4 v13, 0x0

    .line 2132
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    .line 2071
    .restart local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :cond_71
    const/4 v2, 0x1

    :try_start_72
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eq v2, v5, :cond_93

    .line 2072
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_8e

    .line 2073
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "getPackagesFromWhiteList return false.."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_8e} :catch_1f7
    .catchall {:try_start_72 .. :try_end_8e} :catchall_1f9

    .line 2074
    :cond_8e
    const/4 v13, 0x0

    .line 2132
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    .line 2077
    .restart local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :cond_93
    :try_start_93
    const-string v2, "access_type"

    const/4 v5, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 2079
    .local v8, "accessType":I
    const/4 v7, 0x0

    .line 2081
    .local v7, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, isValidAccessType(I)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 2082
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_b1

    .line 2083
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "getPackagesFromWhiteList not passed valid access_type"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b1} :catch_1f7
    .catchall {:try_start_93 .. :try_end_b1} :catchall_1f9

    .line 2084
    :cond_b1
    const/4 v13, 0x0

    .line 2132
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_23

    .line 2086
    .restart local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :cond_b7
    const/16 v2, 0x68

    if-ne v8, v2, :cond_11a

    .line 2087
    :try_start_bb
    const-string v2, "alias"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2088
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackagesFromWhiteList alias-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 2090
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_ee

    .line 2091
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "getPackagesFromWhiteList alias name not provided for Certificate access_type"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_ee} :catch_1f7
    .catchall {:try_start_bb .. :try_end_ee} :catchall_1f9

    .line 2093
    :cond_ee
    const/4 v13, 0x0

    .line 2132
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_23

    .line 2095
    .restart local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :cond_f4
    const/16 v18, 0x1

    :try_start_f6
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, checkCredentialStorageAliasForAdmin(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move/from16 v0, v18

    if-eq v0, v2, :cond_11a

    .line 2097
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_114

    .line 2098
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "getPackagesFromWhiteList - alias not exist for credential storage..."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_114} :catch_1f7
    .catchall {:try_start_f6 .. :try_end_114} :catchall_1f9

    .line 2100
    :cond_114
    const/4 v13, 0x0

    .line 2132
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_23

    .line 2106
    .restart local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :cond_11a
    :try_start_11a
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackagesFromWhiteList cxtInfo.mContainerId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",name-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",package-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", accessType-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move v6, v8

    .line 2110
    invoke-direct/range {v2 .. v7}, getWhitelistedData(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 2112
    .local v10, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v10, :cond_1ee

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1ee

    .line 2113
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackagesFromWhiteList - Size-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_18c} :catch_1f7
    .catchall {:try_start_11a .. :try_end_18c} :catchall_1f9

    .line 2115
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    const/4 v9, 0x0

    .line 2116
    .local v9, "app":Lcom/sec/enterprise/AppIdentity;
    :try_start_18d
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_191
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ContentValues;

    .line 2117
    .local v17, "value":Landroid/content/ContentValues;
    new-instance v9, Lcom/sec/enterprise/AppIdentity;

    .end local v9    # "app":Lcom/sec/enterprise/AppIdentity;
    invoke-direct {v9}, Lcom/sec/enterprise/AppIdentity;-><init>()V

    .line 2118
    .restart local v9    # "app":Lcom/sec/enterprise/AppIdentity;
    const-string v2, "appPackage"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/sec/enterprise/AppIdentity;->setPackageName(Ljava/lang/String;)V

    .line 2120
    const-string v2, "appSignature"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/sec/enterprise/AppIdentity;->setSignature(Ljava/lang/String;)V

    .line 2122
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_1bd} :catch_1be
    .catchall {:try_start_18d .. :try_end_1bd} :catchall_1fe

    goto :goto_191

    .line 2128
    .end local v9    # "app":Lcom/sec/enterprise/AppIdentity;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "value":Landroid/content/ContentValues;
    :catch_1be
    move-exception v11

    move-object/from16 v13, v16

    .line 2129
    .end local v7    # "alias":Ljava/lang/String;
    .end local v8    # "accessType":I
    .end local v10    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .local v11, "e":Ljava/lang/Exception;
    .restart local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :goto_1c1
    :try_start_1c1
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_1e2

    .line 2130
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackagesFromWhiteList - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e2
    .catchall {:try_start_1c1 .. :try_end_1e2} :catchall_1f9

    .line 2132
    :cond_1e2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_23

    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v7    # "alias":Ljava/lang/String;
    .restart local v8    # "accessType":I
    .restart local v9    # "app":Lcom/sec/enterprise/AppIdentity;
    .restart local v10    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :cond_1e7
    move-object/from16 v13, v16

    .end local v9    # "app":Lcom/sec/enterprise/AppIdentity;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :goto_1e9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_23

    .line 2125
    :cond_1ee
    :try_start_1ee
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "getPackagesFromWhiteList DB is empty..."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1ee .. :try_end_1f6} :catch_1f7
    .catchall {:try_start_1ee .. :try_end_1f6} :catchall_1f9

    goto :goto_1e9

    .line 2128
    .end local v7    # "alias":Ljava/lang/String;
    .end local v8    # "accessType":I
    .end local v10    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_1f7
    move-exception v11

    goto :goto_1c1

    .line 2132
    :catchall_1f9
    move-exception v2

    :goto_1fa
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v7    # "alias":Ljava/lang/String;
    .restart local v8    # "accessType":I
    .restart local v10    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :catchall_1fe
    move-exception v2

    move-object/from16 v13, v16

    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    goto :goto_1fa
.end method

.method public getStorageAuthenticationType(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I
    .registers 19
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 1538
    const-string/jumbo v13, "getStorageAuthenticationType"

    invoke-static {v13}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1539
    sget-object v13, TAG:Ljava/lang/String;

    const-string/jumbo v14, "getStorageAuthenticationType is called...."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const/16 v3, 0x69

    .line 1543
    .local v3, "authType":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v13

    if-nez v13, :cond_28

    .line 1544
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_26

    .line 1545
    sget-object v13, TAG:Ljava/lang/String;

    const-string/jumbo v14, "getStorageAuthenticationType - Invalid Arguments"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_26
    const/4 v13, -0x1

    .line 1593
    :goto_27
    return v13

    .line 1549
    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v13

    if-nez v13, :cond_3c

    .line 1550
    sget-object v13, TAG:Ljava/lang/String;

    const-string v14, "Plugin is not active"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    const/16 v13, -0xd

    goto :goto_27

    .line 1554
    :cond_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1556
    .local v8, "id":J
    const/4 v13, 0x3

    :try_start_41
    new-array v7, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "userId"

    aput-object v14, v7, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "storageName"

    aput-object v14, v7, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "storagePackageName"

    aput-object v14, v7, v13

    .line 1561
    .local v7, "sAllColumns":[Ljava/lang/String;
    const/4 v13, 0x3

    new-array v11, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    aput-object v14, v11, v13

    const/4 v13, 0x2

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v14, v11, v13

    .line 1565
    .local v11, "sAllValues":[Ljava/lang/String;
    const/4 v13, 0x1

    new-array v10, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "storageAuthType"

    aput-object v14, v10, v13

    .line 1568
    .local v10, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1570
    .local v4, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "UniversalCredentialInfoTable"

    invoke-virtual {v13, v14, v7, v11, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1574
    if-eqz v4, :cond_b1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_b1

    .line 1575
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_8d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    .line 1576
    .local v12, "value":Landroid/content/ContentValues;
    const-string/jumbo v13, "storageAuthType"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1578
    .local v2, "auth":I
    const/16 v13, 0x64

    if-ne v2, v13, :cond_8d

    .line 1579
    sget-object v13, TAG:Ljava/lang/String;

    const-string/jumbo v14, "getStorageAuthenticationType - found the strictest value..."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_b0} :catch_b7
    .catchall {:try_start_41 .. :try_end_b0} :catchall_dd

    .line 1580
    move v3, v2

    .line 1590
    .end local v2    # "auth":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v12    # "value":Landroid/content/ContentValues;
    :cond_b1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v7    # "sAllColumns":[Ljava/lang/String;
    .end local v10    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v11    # "sAllValues":[Ljava/lang/String;
    :goto_b4
    move v13, v3

    .line 1593
    goto/16 :goto_27

    .line 1586
    :catch_b7
    move-exception v5

    .line 1587
    .local v5, "e":Ljava/lang/Exception;
    :try_start_b8
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_d9

    .line 1588
    sget-object v13, TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getStorageAuthenticationType - Exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catchall {:try_start_b8 .. :try_end_d9} :catchall_dd

    .line 1590
    :cond_d9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b4

    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_dd
    move-exception v13

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
.end method

.method public getSupportedAlgorithms(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    const/4 v0, 0x0

    .line 4101
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSupportedAlgorithms is called...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 4104
    if-eqz p1, :cond_14

    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 4105
    :cond_14
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_20

    .line 4106
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSupportedAlgorithms - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4120
    :cond_20
    :goto_20
    return-object v0

    .line 4110
    :cond_21
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_4c

    .line 4111
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSupportedAlgorithms is called for Caller UID-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mContainerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4115
    :cond_4c
    invoke-direct {p0, p2}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 4116
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "Plugin is not active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 4120
    :cond_5a
    invoke-direct {p0, p2}, getSupportedAlgorithmsInternal(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method public installCACertificate(Landroid/app/enterprise/ContextInfo;[BLjava/lang/String;Landroid/os/Bundle;)I
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certBytes"    # [B
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 3162
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installCACertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    if-nez p1, :cond_15

    .line 3164
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    const/16 v0, -0xb

    .line 3222
    :goto_14
    return v0

    .line 3167
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3168
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3169
    .local v5, "adminId":I
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 3170
    .local v4, "userId":I
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "installCACertificate  : adminId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",userId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",alias-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",certBytes-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3175
    .local v8, "id":J
    if-eqz p2, :cond_5e

    if-eqz p3, :cond_5e

    if-nez p4, :cond_70

    .line 3176
    :cond_5e
    :try_start_5e
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_6a

    .line 3177
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installCACertificate - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6a} :catch_118
    .catchall {:try_start_5e .. :try_end_6a} :catchall_136

    .line 3178
    :cond_6a
    const/16 v0, -0xb

    .line 3220
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14

    .line 3180
    :cond_70
    :try_start_70
    const-string v0, "cert_type"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3181
    .local v6, "certType":Ljava/lang/String;
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_a7

    .line 3182
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "installCACertificate is called for Caller UID-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mContainerId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "certType-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    :cond_a7
    if-nez v6, :cond_b8

    .line 3187
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installCACertificate - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_b1} :catch_118
    .catchall {:try_start_70 .. :try_end_b1} :catchall_136

    .line 3188
    const/16 v0, -0xb

    .line 3220
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_14

    .line 3191
    :cond_b8
    :try_start_b8
    const-string v0, "SCP_SD"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    .line 3192
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installCACertificate - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c8} :catch_118
    .catchall {:try_start_b8 .. :try_end_c8} :catchall_136

    .line 3193
    const/16 v0, -0xb

    .line 3220
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_14

    .line 3196
    :cond_cf
    const/4 v0, 0x1

    :try_start_d0
    invoke-direct {p0, v5, v4, p3}, checkCACertAliasForAdmin(IILjava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_e8

    .line 3197
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_e1

    .line 3198
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "- alias already exist ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_e1} :catch_118
    .catchall {:try_start_d0 .. :try_end_e1} :catchall_136

    .line 3199
    :cond_e1
    const/16 v0, -0x14

    .line 3220
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_14

    :cond_e8
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 3203
    :try_start_ec
    invoke-direct/range {v0 .. v5}, installCertificateInTIMA([BLjava/lang/String;Landroid/os/Bundle;II)Ljava/lang/String;

    move-result-object v10

    .line 3204
    .local v10, "location":Ljava/lang/String;
    if-nez v10, :cond_105

    .line 3205
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_fe

    .line 3206
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installCertificateInTIMA failed..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_fe} :catch_118
    .catchall {:try_start_ec .. :try_end_fe} :catchall_136

    .line 3207
    :cond_fe
    const/16 v0, -0x19

    .line 3220
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_14

    .line 3211
    :cond_105
    const/4 v0, 0x1

    :try_start_106
    invoke-direct {p0, v5, v4, p3, v10}, insertOrUpdateCACertificateProfile(IILjava/lang/String;Ljava/lang/String;)Z
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_109} :catch_118
    .catchall {:try_start_106 .. :try_end_109} :catchall_136

    move-result v1

    if-ne v0, v1, :cond_112

    .line 3213
    const/4 v0, 0x0

    .line 3220
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_14

    :cond_112
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3222
    .end local v6    # "certType":Ljava/lang/String;
    .end local v10    # "location":Ljava/lang/String;
    :goto_115
    const/4 v0, -0x1

    goto/16 :goto_14

    .line 3217
    :catch_118
    move-exception v7

    .line 3218
    .local v7, "e":Ljava/lang/Exception;
    :try_start_119
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "installCACertificate Exception-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_132
    .catchall {:try_start_119 .. :try_end_132} :catchall_136

    .line 3220
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_115

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_136
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public installCertificate(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "certBytes"    # [B
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "privateKeyPassword"    # Ljava/lang/String;
    .param p6, "options"    # Landroid/os/Bundle;

    .prologue
    .line 3419
    if-nez p1, :cond_d

    .line 3420
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v3, "cxtInfo is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    const/16 v0, -0xb

    .line 3427
    :goto_c
    return v0

    .line 3423
    :cond_d
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate is called...."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3425
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3426
    .local v1, "adminId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 3427
    .local v2, "userId":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, installCertificateMain(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)I

    move-result v0

    goto :goto_c
.end method

.method public installCertificateInternal(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Landroid/os/Bundle;Z)I
    .registers 18
    .param p1, "callerId"    # I
    .param p2, "userId"    # I
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p4, "certBytes"    # [B
    .param p5, "alias"    # Ljava/lang/String;
    .param p6, "options"    # Landroid/os/Bundle;
    .param p7, "renew"    # Z

    .prologue
    .line 3411
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installCertificateInternal is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    const-string/jumbo v0, "installCertificateInternal"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3413
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, installCertificateMain(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)I

    move-result v0

    return v0
.end method

.method public isAccessAllowed(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Z
    .registers 29
    .param p1, "packageUid"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2294
    const-string/jumbo v22, "isAccessAllowed"

    invoke-static/range {v22 .. v22}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2295
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "isAccessAllowed is called...."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    const/16 v21, 0x0

    .line 2297
    .local v21, "status":Z
    const/4 v14, 0x0

    .line 2298
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2300
    .local v12, "id":J
    :try_start_15
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, getPackagesFromWhiteListAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v14

    .line 2301
    if-eqz v14, :cond_18f

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_18f

    .line 2302
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_31
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_57

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/enterprise/AppIdentity;

    .line 2303
    .local v16, "pkg":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2304
    .local v6, "dbPackageName":Ljava/lang/String;
    if-eqz v6, :cond_31

    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_31

    .line 2305
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "isAccessAllowed All packages are allowed..."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    const/16 v21, 0x1

    .line 2310
    .end local v6    # "dbPackageName":Ljava/lang/String;
    .end local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    :cond_57
    if-nez v21, :cond_10f

    .line 2311
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v19

    .line 2312
    .local v19, "pkgNames":[Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    .line 2313
    .local v20, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v19, :cond_171

    .line 2314
    move-object/from16 v4, v19

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .local v10, "i$":I
    :goto_72
    if-ge v10, v11, :cond_10f

    aget-object v18, v4, v10

    .line 2315
    .local v18, "pkgName":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10    # "i$":I
    .local v9, "i$":Ljava/util/Iterator;
    :cond_7a
    :goto_7a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_10d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/enterprise/AppIdentity;

    .line 2316
    .restart local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2317
    .restart local v6    # "dbPackageName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    .line 2318
    .local v7, "dbSignature":Ljava/lang/String;
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isAccessAllowed pkgName-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " and DB packageName-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    if-eqz v18, :cond_7a

    if-eqz v6, :cond_7a

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7a

    .line 2320
    if-eqz v7, :cond_161

    .line 2321
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "isAccessAllowed package matched. Now matching signature...."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, convertStringToSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v5

    .line 2323
    .local v5, "convertedSig":[Landroid/content/pm/Signature;
    if-nez v5, :cond_dd

    .line 2324
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "isAccessAllowed - failed to convert signature from db."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_dd} :catch_130
    .catchall {:try_start_15 .. :try_end_dd} :catchall_15c

    .line 2326
    :cond_dd
    const/16 v17, 0x0

    .line 2328
    .local v17, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/16 v22, 0x40

    :try_start_e1
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_f0} :catch_113
    .catchall {:try_start_e1 .. :try_end_f0} :catchall_15c

    move-result-object v17

    .line 2333
    :goto_f1
    if-eqz v5, :cond_152

    if-eqz v17, :cond_152

    :try_start_f5
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v5}, compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v22

    if-eqz v22, :cond_152

    .line 2334
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "isAccessAllowed match found with signature matching..."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_10b} :catch_130
    .catchall {:try_start_f5 .. :try_end_10b} :catchall_15c

    .line 2335
    const/16 v21, 0x1

    .line 2347
    .end local v5    # "convertedSig":[Landroid/content/pm/Signature;
    .end local v6    # "dbPackageName":Ljava/lang/String;
    .end local v7    # "dbSignature":Ljava/lang/String;
    .end local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_10d
    :goto_10d
    if-eqz v21, :cond_16c

    .line 2361
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "len$":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v19    # "pkgNames":[Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/IPackageManager;
    :cond_10f
    :goto_10f
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2363
    :goto_112
    return v21

    .line 2330
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v5    # "convertedSig":[Landroid/content/pm/Signature;
    .restart local v6    # "dbPackageName":Ljava/lang/String;
    .restart local v7    # "dbSignature":Ljava/lang/String;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "len$":I
    .restart local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .restart local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v18    # "pkgName":Ljava/lang/String;
    .restart local v19    # "pkgNames":[Ljava/lang/String;
    .restart local v20    # "pm":Landroid/content/pm/IPackageManager;
    :catch_113
    move-exception v15

    .line 2331
    .local v15, "n":Ljava/lang/Exception;
    :try_start_114
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isAccessAllowed exception - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_12f} :catch_130
    .catchall {:try_start_114 .. :try_end_12f} :catchall_15c

    goto :goto_f1

    .line 2358
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "convertedSig":[Landroid/content/pm/Signature;
    .end local v6    # "dbPackageName":Ljava/lang/String;
    .end local v7    # "dbSignature":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "len$":I
    .end local v15    # "n":Ljava/lang/Exception;
    .end local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v19    # "pkgNames":[Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/IPackageManager;
    :catch_130
    move-exception v8

    .line 2359
    .local v8, "e":Ljava/lang/Exception;
    :try_start_131
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isAccessAllowed - Exception"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catchall {:try_start_131 .. :try_end_14e} :catchall_15c

    .line 2361
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_112

    .line 2338
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v5    # "convertedSig":[Landroid/content/pm/Signature;
    .restart local v6    # "dbPackageName":Ljava/lang/String;
    .restart local v7    # "dbSignature":Ljava/lang/String;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "len$":I
    .restart local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .restart local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v18    # "pkgName":Ljava/lang/String;
    .restart local v19    # "pkgNames":[Ljava/lang/String;
    .restart local v20    # "pm":Landroid/content/pm/IPackageManager;
    :cond_152
    :try_start_152
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "isAccessAllowed signature mismatch happened...Ignoring package"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_15a} :catch_130
    .catchall {:try_start_152 .. :try_end_15a} :catchall_15c

    goto/16 :goto_7a

    .line 2361
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "convertedSig":[Landroid/content/pm/Signature;
    .end local v6    # "dbPackageName":Ljava/lang/String;
    .end local v7    # "dbSignature":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "len$":I
    .end local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v19    # "pkgNames":[Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_15c
    move-exception v22

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22

    .line 2341
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v6    # "dbPackageName":Ljava/lang/String;
    .restart local v7    # "dbSignature":Ljava/lang/String;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "len$":I
    .restart local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .restart local v18    # "pkgName":Ljava/lang/String;
    .restart local v19    # "pkgNames":[Ljava/lang/String;
    .restart local v20    # "pm":Landroid/content/pm/IPackageManager;
    :cond_161
    :try_start_161
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "isAccessAllowed match found ..."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    const/16 v21, 0x1

    .line 2343
    goto :goto_10d

    .line 2314
    .end local v6    # "dbPackageName":Ljava/lang/String;
    .end local v7    # "dbSignature":Ljava/lang/String;
    .end local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    :cond_16c
    add-int/lit8 v9, v10, 0x1

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_72

    .line 2352
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .local v9, "i$":Ljava/util/Iterator;
    :cond_171
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isAccessAllowed no packages related to uid-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10f

    .line 2356
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v19    # "pkgNames":[Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/IPackageManager;
    :cond_18f
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "getPackagesFromWhiteListAsUser returned empty/null whitelist"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_197} :catch_130
    .catchall {:try_start_161 .. :try_end_197} :catchall_15c

    goto/16 :goto_10f
.end method

.method public isCredentialStorageLocked(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 1338
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "isCredentialStorageLocked is called...."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    if-eqz p1, :cond_10

    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 1340
    :cond_10
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_1c

    .line 1341
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "isCredentialStorageLocked - Invalid Arguments"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_1c
    const/4 v1, 0x0

    .line 1366
    :goto_1d
    return v1

    .line 1345
    :cond_1e
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 1346
    const/4 v1, 0x0

    .line 1347
    .local v1, "status":Z
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1349
    .local v4, "userId":I
    invoke-direct {p0, p2}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 1350
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "Plugin is not active"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/4 v1, 0x1

    goto :goto_1d

    .line 1354
    :cond_33
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_5c

    .line 1355
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCredentialStorageLocked is called for Caller UID-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mContainerId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_5c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1360
    .local v2, "id":J
    :try_start_60
    invoke-virtual {p0, v4, p2}, isCredentialStorageLockedAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_68
    .catchall {:try_start_60 .. :try_end_63} :catchall_86

    move-result v1

    .line 1364
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .line 1361
    :catch_68
    move-exception v0

    .line 1362
    .local v0, "e":Ljava/lang/Exception;
    :try_start_69
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCredentialStorageLocked - Exception -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_86

    .line 1364
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_86
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public isCredentialStorageLockedAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 1371
    const-string/jumbo v4, "isCredentialStorageLockedAsUser"

    invoke-static {v4}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1372
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "isCredentialStorageLockedAsUser is called...."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v3, 0x0

    .line 1374
    .local v3, "isLocked":Z
    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 1375
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_21

    .line 1376
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "isCredentialStorageLockedAsUser - Invalid Arguments"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_21
    const/4 v4, 0x0

    .line 1404
    :goto_22
    return v4

    .line 1380
    :cond_23
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_40

    .line 1381
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCredentialStorageLockedAsUser is called for userId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_40
    :try_start_40
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1386
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1387
    const-string/jumbo v4, "storageName"

    iget-object v5, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    const-string/jumbo v4, "storagePackageName"

    iget-object v5, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string/jumbo v4, "status"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1391
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "UniversalCredentialInfoTable"

    invoke-virtual {v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_71} :catch_94

    move-result v0

    .line 1393
    .local v0, "count":I
    if-lez v0, :cond_75

    .line 1394
    const/4 v3, 0x1

    .line 1401
    .end local v0    # "count":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_75
    :goto_75
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_92

    .line 1402
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCredentialStorageLockedAsUser - isLocked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    move v4, v3

    .line 1404
    goto :goto_22

    .line 1397
    :catch_94
    move-exception v2

    .line 1398
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_75

    .line 1399
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCredentialStorageLockedAsUser - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75
.end method

.method public isCredentialStorageManaged(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 1247
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "isCredentialStorageManaged is called...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 1250
    if-eqz p1, :cond_13

    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1251
    :cond_13
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_1f

    .line 1252
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "isCredentialStorageManaged - Invalid Arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_1f
    const/4 v2, 0x0

    .line 1264
    :goto_20
    return v2

    .line 1256
    :cond_21
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1257
    .local v0, "adminId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1259
    .local v1, "userId":I
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_4c

    .line 1260
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCredentialStorageManaged is called for Caller UID-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mContainerId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_4c
    iget-object v2, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_20
.end method

.method public isCredentialStorageManagedAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 1522
    const-string/jumbo v0, "isCredentialStorageManagedAsUser"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1523
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "isCredentialStorageManagedAsUser is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1525
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_20

    .line 1526
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "isCredentialStorageManagedAsUser - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_20
    const/4 v0, 0x0

    .line 1533
    :goto_21
    return v0

    .line 1530
    :cond_22
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_3f

    .line 1531
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCredentialStorageManagedAsUser is called for ContainerId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_3f
    const/4 v0, -0x1

    iget-object v1, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1, v2}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_21
.end method

.method public isPackageFromExemptList(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)Z
    .registers 29
    .param p1, "uid"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "type"    # I

    .prologue
    .line 4875
    const-string/jumbo v22, "isPackageFromExemptList"

    invoke-static/range {v22 .. v22}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4876
    const/16 v21, 0x0

    .line 4877
    .local v21, "status":Z
    const/4 v14, 0x0

    .line 4878
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 4880
    .local v12, "id":J
    :try_start_d
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, getPackagesFromExemptListAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;

    move-result-object v14

    .line 4881
    if-eqz v14, :cond_15d

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_15d

    .line 4882
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v19

    .line 4883
    .local v19, "pkgNames":[Ljava/lang/String;
    const/16 v22, 0x3f2

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_53

    .line 4884
    const/16 v19, 0x0

    .line 4885
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 4886
    const/16 v22, 0x0

    const-string v23, "com.samsung.knox.virtual.wifi"

    aput-object v23, v19, v22

    .line 4887
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "isPackageFromExemptList WIFI special block..."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4889
    :cond_53
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    .line 4890
    .local v20, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v19, :cond_fb

    .line 4891
    move-object/from16 v4, v19

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .local v10, "i$":I
    :goto_5e
    if-ge v10, v11, :cond_fb

    aget-object v18, v4, v10

    .line 4892
    .local v18, "pkgName":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10    # "i$":I
    .local v9, "i$":Ljava/util/Iterator;
    :cond_66
    :goto_66
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_f9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/enterprise/AppIdentity;

    .line 4893
    .local v16, "pkg":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4894
    .local v6, "dbPackageName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    .line 4895
    .local v7, "dbSignature":Ljava/lang/String;
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isPackageFromExemptList pkgName-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " and DB packageName-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4896
    if-eqz v18, :cond_66

    if-eqz v6, :cond_66

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_66

    .line 4897
    if-eqz v7, :cond_14d

    .line 4898
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "isPackageFromExemptList package matched. Now matching signature...."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, convertStringToSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v5

    .line 4900
    .local v5, "convertedSig":[Landroid/content/pm/Signature;
    if-nez v5, :cond_c9

    .line 4901
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "isPackageFromExemptList - failed to convert signature from db."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_c9} :catch_11c
    .catchall {:try_start_d .. :try_end_c9} :catchall_148

    .line 4903
    :cond_c9
    const/16 v17, 0x0

    .line 4905
    .local v17, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/16 v22, 0x40

    :try_start_cd
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_dc} :catch_ff
    .catchall {:try_start_cd .. :try_end_dc} :catchall_148

    move-result-object v17

    .line 4910
    :goto_dd
    if-eqz v5, :cond_13e

    if-eqz v17, :cond_13e

    :try_start_e1
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v5}, compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v22

    if-eqz v22, :cond_13e

    .line 4911
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "isPackageFromExemptList match found with signature matching..."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_f7} :catch_11c
    .catchall {:try_start_e1 .. :try_end_f7} :catchall_148

    .line 4912
    const/16 v21, 0x1

    .line 4924
    .end local v5    # "convertedSig":[Landroid/content/pm/Signature;
    .end local v6    # "dbPackageName":Ljava/lang/String;
    .end local v7    # "dbSignature":Ljava/lang/String;
    .end local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_f9
    :goto_f9
    if-eqz v21, :cond_158

    .line 4937
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "len$":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v19    # "pkgNames":[Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/IPackageManager;
    :cond_fb
    :goto_fb
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4939
    :goto_fe
    return v21

    .line 4907
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v5    # "convertedSig":[Landroid/content/pm/Signature;
    .restart local v6    # "dbPackageName":Ljava/lang/String;
    .restart local v7    # "dbSignature":Ljava/lang/String;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "len$":I
    .restart local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .restart local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v18    # "pkgName":Ljava/lang/String;
    .restart local v19    # "pkgNames":[Ljava/lang/String;
    .restart local v20    # "pm":Landroid/content/pm/IPackageManager;
    :catch_ff
    move-exception v15

    .line 4908
    .local v15, "n":Ljava/lang/Exception;
    :try_start_100
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isPackageFromExemptList exception - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_11b} :catch_11c
    .catchall {:try_start_100 .. :try_end_11b} :catchall_148

    goto :goto_dd

    .line 4934
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "convertedSig":[Landroid/content/pm/Signature;
    .end local v6    # "dbPackageName":Ljava/lang/String;
    .end local v7    # "dbSignature":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "len$":I
    .end local v15    # "n":Ljava/lang/Exception;
    .end local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v19    # "pkgNames":[Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/IPackageManager;
    :catch_11c
    move-exception v8

    .line 4935
    .local v8, "e":Ljava/lang/Exception;
    :try_start_11d
    sget-object v22, TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isPackageFromExemptList - Exception"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13a
    .catchall {:try_start_11d .. :try_end_13a} :catchall_148

    .line 4937
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_fe

    .line 4915
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v5    # "convertedSig":[Landroid/content/pm/Signature;
    .restart local v6    # "dbPackageName":Ljava/lang/String;
    .restart local v7    # "dbSignature":Ljava/lang/String;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "len$":I
    .restart local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .restart local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v18    # "pkgName":Ljava/lang/String;
    .restart local v19    # "pkgNames":[Ljava/lang/String;
    .restart local v20    # "pm":Landroid/content/pm/IPackageManager;
    :cond_13e
    :try_start_13e
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "isPackageFromExemptList signature mismatch happened...Ignoring package"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_146} :catch_11c
    .catchall {:try_start_13e .. :try_end_146} :catchall_148

    goto/16 :goto_66

    .line 4937
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "convertedSig":[Landroid/content/pm/Signature;
    .end local v6    # "dbPackageName":Ljava/lang/String;
    .end local v7    # "dbSignature":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "len$":I
    .end local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v19    # "pkgNames":[Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_148
    move-exception v22

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22

    .line 4918
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v6    # "dbPackageName":Ljava/lang/String;
    .restart local v7    # "dbSignature":Ljava/lang/String;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "len$":I
    .restart local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    .restart local v18    # "pkgName":Ljava/lang/String;
    .restart local v19    # "pkgNames":[Ljava/lang/String;
    .restart local v20    # "pm":Landroid/content/pm/IPackageManager;
    :cond_14d
    :try_start_14d
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "isPackageFromExemptList match found ..."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4919
    const/16 v21, 0x1

    .line 4920
    goto :goto_f9

    .line 4891
    .end local v6    # "dbPackageName":Ljava/lang/String;
    .end local v7    # "dbSignature":Ljava/lang/String;
    .end local v16    # "pkg":Lcom/sec/enterprise/AppIdentity;
    :cond_158
    add-int/lit8 v9, v10, 0x1

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_5e

    .line 4931
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v19    # "pkgNames":[Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/IPackageManager;
    :cond_15d
    sget-object v22, TAG:Ljava/lang/String;

    const-string/jumbo v23, "isPackageFromExemptList returned empty/null whitelist"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_165} :catch_11c
    .catchall {:try_start_14d .. :try_end_165} :catchall_148

    goto :goto_fb
.end method

.method public lockCredentialStorage(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Z)I
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "lock"    # Z

    .prologue
    .line 1269
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "lockCredentialStorage is called...."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    if-eqz p1, :cond_10

    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 1271
    :cond_10
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_1c

    .line 1272
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "lockCredentialStorage - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_1c
    const/16 v6, -0xb

    .line 1308
    :goto_1e
    return v6

    .line 1276
    :cond_1f
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 1277
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1278
    .local v0, "adminId":I
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1279
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1282
    .local v2, "id":J
    :try_start_2a
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_51

    .line 1283
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lockCredentialStorage is called for Caller UID-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mContainerId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_51
    invoke-direct {p0, p2}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 1288
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "Plugin is not active"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5e} :catch_91
    .catchall {:try_start_2a .. :try_end_5e} :catchall_af

    .line 1289
    const/16 v6, -0xd

    .line 1306
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 1293
    :cond_64
    const/4 v6, 0x1

    :try_start_65
    iget-object v7, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v8, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v7, v8}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eq v6, v7, :cond_81

    .line 1295
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_7b

    .line 1296
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "lockCredentialStorage return false.."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7b} :catch_91
    .catchall {:try_start_65 .. :try_end_7b} :catchall_af

    .line 1297
    :cond_7b
    const/16 v6, -0xc

    .line 1306
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 1299
    :cond_81
    :try_start_81
    invoke-direct {p0, v0, v5, p2, p3}, lockCredentialStorageInternal(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Z)Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_91
    .catchall {:try_start_81 .. :try_end_84} :catchall_af

    move-result v4

    .line 1300
    .local v4, "status":Z
    if-eqz v4, :cond_8c

    .line 1301
    const/4 v6, 0x0

    .line 1306
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    :cond_8c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1308
    .end local v4    # "status":Z
    :goto_8f
    const/4 v6, -0x1

    goto :goto_1e

    .line 1303
    :catch_91
    move-exception v1

    .line 1304
    .local v1, "e":Ljava/lang/Exception;
    :try_start_92
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lockCredentialStorage Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_92 .. :try_end_ab} :catchall_af

    .line 1306
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8f

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_af
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public manageCredentialStorage(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Z)I
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "enable"    # Z

    .prologue
    .line 1102
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "manageCredentialStorage is called...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 1105
    if-eqz p1, :cond_13

    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1106
    :cond_13
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_1f

    .line 1107
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "manageCredentialStorage - Invalid Arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_1f
    const/16 v2, -0xb

    .line 1118
    :goto_21
    return v2

    .line 1110
    :cond_22
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1111
    .local v0, "adminId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1113
    .local v1, "userId":I
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_57

    .line 1114
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "manageCredentialStorage is called for Caller UID-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mContainerId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_57
    invoke-direct {p0, v0, v1, p2, p3}, configureCredentialStorageInternal(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v2

    goto :goto_21
.end method

.method public notifyLicenseStatus(ILjava/lang/String;)Z
    .registers 32
    .param p1, "event"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4945
    const-string/jumbo v26, "notifyLicenseStatus"

    invoke-static/range {v26 .. v26}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4946
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "notifyLicenseStatus : event-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", packageName-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4947
    const/16 v23, 0x0

    .line 4950
    .local v23, "status":Z
    const/16 v26, 0x1

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_159

    .line 4952
    const/4 v4, -0x1

    .line 4953
    .local v4, "activatedAdminId":I
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v0, v0, expiredAdmins:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 4954
    .local v13, "entries":Ljava/util/Iterator;
    :cond_4a
    :goto_4a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d4

    .line 4955
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 4956
    .local v14, "entry":Ljava/util/Map$Entry;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 4957
    .local v6, "adminId":Ljava/lang/Integer;
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "EVENT_LICENSE_ACTIVATE -> expiredAdmins Admin ID = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4958
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v26, v0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v21

    .line 4959
    .local v21, "pkgs":[Ljava/lang/String;
    if-eqz v21, :cond_4a

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_4a

    .line 4960
    move-object/from16 v9, v21

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_93
    move/from16 v0, v17

    if-ge v15, v0, :cond_4a

    aget-object v19, v9, v15

    .line 4961
    .local v19, "pkg":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d1

    .line 4962
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "admin license has renewed, admin-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", packageName-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4963
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4964
    goto/16 :goto_4a

    .line 4960
    :cond_d1
    add-int/lit8 v15, v15, 0x1

    goto :goto_93

    .line 4969
    .end local v6    # "adminId":Ljava/lang/Integer;
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v14    # "entry":Ljava/util/Map$Entry;
    .end local v15    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "pkg":Ljava/lang/String;
    .end local v21    # "pkgs":[Ljava/lang/String;
    :cond_d4
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v4, v0, :cond_158

    .line 4970
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v26

    if-eqz v26, :cond_14b

    .line 4971
    sget-object v26, TAG:Ljava/lang/String;

    const-string/jumbo v27, "notifyChangeToPlugin is called for EVENT_LICENSE_ACTIVATE..."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_e8} :catch_26f

    .line 4973
    :try_start_e8
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 4974
    .local v11, "data":Landroid/os/Bundle;
    const-string v26, "adminUid"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4975
    move-object/from16 v0, p0

    iget-object v0, v0, expiredAdmins:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    .line 4976
    .local v25, "storages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_108
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_14b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 4977
    .local v24, "storage":Ljava/lang/String;
    new-instance v26, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v10

    .line 4978
    .local v10, "csUri":Ljava/lang/String;
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v26

    const/16 v27, 0xe

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v0, v10, v1, v11}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_12e} :catch_12f

    goto :goto_108

    .line 4980
    .end local v10    # "csUri":Ljava/lang/String;
    .end local v11    # "data":Landroid/os/Bundle;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v24    # "storage":Ljava/lang/String;
    .end local v25    # "storages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_12f
    move-exception v12

    .line 4981
    .local v12, "e":Ljava/lang/Exception;
    :try_start_130
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4984
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_14b
    move-object/from16 v0, p0

    iget-object v0, v0, expiredAdmins:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5041
    .end local v4    # "activatedAdminId":I
    .end local v13    # "entries":Ljava/util/Iterator;
    .end local v23    # "status":Z
    :cond_158
    :goto_158
    return v23

    .line 4987
    .restart local v23    # "status":Z
    :cond_159
    const/16 v26, 0x2

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_158

    .line 4988
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, getAdminIdRelatedToStorage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 4989
    .local v8, "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_28c

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_28c

    .line 4990
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v26, v0

    const-string v27, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_18f

    .line 4991
    sget-object v26, TAG:Ljava/lang/String;

    const-string v27, "Plugin still have permission. Ignoring notification to MDM."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4992
    const/16 v23, 0x0

    goto :goto_158

    .line 4994
    :cond_18f
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_193
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_293

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 4995
    .local v7, "adminUid":Ljava/lang/Integer;
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "notifyLicenseStatus expire - adminUid-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4996
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v26, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v21

    .line 4997
    .restart local v21    # "pkgs":[Ljava/lang/String;
    if-eqz v21, :cond_193

    .line 4998
    move-object/from16 v9, v21

    .restart local v9    # "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_1d1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_193

    aget-object v20, v9, v16

    .line 4999
    .local v20, "pkgName":Ljava/lang/String;
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Sending event update to package "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5000
    new-instance v18, Landroid/content/Intent;

    const-string v26, "com.samsung.knox.ucm.NOTIFY_EVENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5001
    .local v18, "notifyIntent":Landroid/content/Intent;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5002
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 5003
    .restart local v11    # "data":Landroid/os/Bundle;
    const-string/jumbo v26, "event_id"

    const/16 v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5004
    const-string/jumbo v26, "package_name"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5005
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_227} :catch_26f

    .line 5008
    :try_start_227
    sget-object v26, TAG:Ljava/lang/String;

    const-string v27, "Sending intent with UCSM Other permission..."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5009
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/UserHandle;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v28

    invoke-direct/range {v27 .. v28}, Landroid/os/UserHandle;-><init>(I)V

    const-string v28, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_24e} :catch_251

    .line 4998
    :goto_24e
    add-int/lit8 v16, v16, 0x1

    goto :goto_1d1

    .line 5012
    :catch_251
    move-exception v22

    .line 5013
    .local v22, "se":Ljava/lang/Exception;
    :try_start_252
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  Exception se-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26e
    .catch Ljava/lang/Exception; {:try_start_252 .. :try_end_26e} :catch_26f

    goto :goto_24e

    .line 5038
    .end local v7    # "adminUid":Ljava/lang/Integer;
    .end local v8    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v11    # "data":Landroid/os/Bundle;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    .end local v18    # "notifyIntent":Landroid/content/Intent;
    .end local v20    # "pkgName":Ljava/lang/String;
    .end local v21    # "pkgs":[Ljava/lang/String;
    .end local v22    # "se":Ljava/lang/Exception;
    :catch_26f
    move-exception v12

    .line 5039
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_158

    .line 5020
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v8    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_28c
    :try_start_28c
    sget-object v26, TAG:Ljava/lang/String;

    const-string v27, "No admin found related to package..."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5023
    :cond_293
    move-object/from16 v0, p0

    iget-object v0, v0, adminIds:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_29d
    :goto_29d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_158

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 5024
    .local v5, "admin":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v26, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v21

    .line 5025
    .restart local v21    # "pkgs":[Ljava/lang/String;
    if-eqz v21, :cond_29d

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_29d

    .line 5026
    move-object/from16 v9, v21

    .restart local v9    # "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/16 v16, 0x0

    .restart local v16    # "i$":I
    :goto_2c7
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_29d

    aget-object v19, v9, v16

    .line 5027
    .restart local v19    # "pkg":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_30d

    .line 5028
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "admin license has expired, admin-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", packageName-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5029
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, processAdminLicenseExpiry(I)V
    :try_end_30c
    .catch Ljava/lang/Exception; {:try_start_28c .. :try_end_30c} :catch_26f

    goto :goto_29d

    .line 5026
    :cond_30d
    add-int/lit8 v16, v16, 0x1

    goto :goto_2c7
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 390
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 7
    .param p1, "adminUid"    # I

    .prologue
    .line 400
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_1d

    .line 401
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAdminRemoved - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1d
    iget-object v2, p0, mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 404
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    new-array v0, v2, [I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 405
    .local v0, "appUid":[I
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 406
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "onAdminRemoved is called...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v2, p0, mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5
    .param p1, "adminId"    # I

    .prologue
    .line 394
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1d

    .line 395
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreAdminRemoval - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_1d
    return-void
.end method

.method public removePackagesFromExemptList(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4605
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "removePackagesFromExemptList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4606
    if-eqz p1, :cond_10

    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 4607
    :cond_10
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1c

    .line 4608
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "removePackagesFromExemptList - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    :cond_1c
    const/16 v0, -0xb

    .line 4649
    :goto_1e
    return v0

    .line 4612
    :cond_1f
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 4613
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4614
    .local v3, "adminId":I
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 4615
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4617
    .local v8, "id":J
    :try_start_2a
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_51

    .line 4618
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePackagesFromExemptList is called for Caller UID-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mContainerId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4622
    :cond_51
    invoke-direct {p0, p2}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 4623
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Storage is not active"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5e} :catch_ab
    .catchall {:try_start_2a .. :try_end_5e} :catchall_c9

    .line 4624
    const/16 v0, -0xd

    .line 4646
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 4628
    :cond_64
    const/4 v0, 0x1

    :try_start_65
    iget-object v1, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v1, v2}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_81

    .line 4629
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_7b

    .line 4630
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "removePackagesFromExemptList return false.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7b} :catch_ab
    .catchall {:try_start_65 .. :try_end_7b} :catchall_c9

    .line 4631
    :cond_7b
    const/16 v0, -0xc

    .line 4646
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 4634
    :cond_81
    :try_start_81
    invoke-direct {p0, p3}, isValidExemptType(I)Z

    move-result v0

    if-nez v0, :cond_95

    .line 4635
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "removePackagesFromExemptList - Invalid Exempt Type..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8f} :catch_ab
    .catchall {:try_start_81 .. :try_end_8f} :catchall_c9

    .line 4636
    const/16 v0, -0x15

    .line 4646
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    :cond_95
    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v5, p3

    .line 4639
    :try_start_99
    invoke-direct/range {v0 .. v5}, removeExemptPackages(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/util/List;III)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_ab
    .catchall {:try_start_99 .. :try_end_9c} :catchall_c9

    move-result v0

    if-eqz v0, :cond_a5

    .line 4640
    const/4 v0, 0x0

    .line 4646
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1e

    :cond_a5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4649
    :goto_a8
    const/4 v0, -0x1

    goto/16 :goto_1e

    .line 4643
    :catch_ab
    move-exception v6

    .line 4644
    .local v6, "e":Ljava/lang/Exception;
    :try_start_ac
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePackagesFromExemptList Exception -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_ac .. :try_end_c5} :catchall_c9

    .line 4646
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a8

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_c9
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public removePackagesFromWhiteList(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .registers 25
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1894
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "removePackagesFromWhiteList is called...."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    if-eqz p1, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-nez p3, :cond_25

    .line 1896
    :cond_16
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_22

    .line 1897
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "removePackagesFromWhiteList - Invalid Arguments"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_22
    const/16 v2, -0xb

    .line 1961
    :goto_24
    return v2

    .line 1901
    :cond_25
    invoke-virtual/range {p0 .. p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 1902
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1903
    .local v3, "adminId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1904
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1906
    .local v18, "id":J
    :try_start_34
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_5b

    .line 1907
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removePackagesFromWhiteList is called for Caller UID-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mContainerId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_5b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 1912
    sget-object v2, TAG:Ljava/lang/String;

    const-string v5, "Plugin is not active"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_6c} :catch_13a
    .catchall {:try_start_34 .. :try_end_6c} :catchall_15a

    .line 1913
    const/16 v2, -0xd

    .line 1958
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    .line 1917
    :cond_72
    const/4 v2, 0x1

    :try_start_73
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eq v2, v5, :cond_95

    .line 1918
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_8f

    .line 1919
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "removePackagesFromWhiteList return false.."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_8f} :catch_13a
    .catchall {:try_start_73 .. :try_end_8f} :catchall_15a

    .line 1920
    :cond_8f
    const/16 v2, -0xc

    .line 1958
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    .line 1923
    :cond_95
    :try_start_95
    const-string v2, "access_type"

    const/4 v5, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1925
    .local v14, "accessType":I
    const/4 v7, 0x0

    .line 1927
    .local v7, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, isValidAccessType(I)Z

    move-result v2

    if-nez v2, :cond_ba

    .line 1928
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_b3

    .line 1929
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "removePackagesFromWhiteList not passed valid access_type"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b3} :catch_13a
    .catchall {:try_start_95 .. :try_end_b3} :catchall_15a

    .line 1930
    :cond_b3
    const/16 v2, -0xf

    .line 1958
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_24

    .line 1932
    :cond_ba
    const/16 v2, 0x68

    if-ne v14, v2, :cond_11c

    .line 1933
    :try_start_be
    const-string v2, "alias"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1934
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removePackagesFromWhiteList alias-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 1936
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_f1

    .line 1937
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "removePackagesFromWhiteList alias name not provided for Certificate access_type"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_f1} :catch_13a
    .catchall {:try_start_be .. :try_end_f1} :catchall_15a

    .line 1939
    :cond_f1
    const/16 v2, -0x10

    .line 1958
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_24

    .line 1941
    :cond_f8
    const/4 v8, 0x1

    :try_start_f9
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, checkCredentialStorageAliasForAdmin(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eq v8, v2, :cond_11c

    .line 1943
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_115

    .line 1944
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "removePackagesFromWhiteList - alias not exist for credential storage..."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_115} :catch_13a
    .catchall {:try_start_f9 .. :try_end_115} :catchall_15a

    .line 1946
    :cond_115
    const/16 v2, -0xe

    .line 1958
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_24

    .line 1951
    :cond_11c
    const/4 v2, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move v11, v3

    move v12, v4

    move-object/from16 v13, p4

    move-object v15, v7

    :try_start_128
    invoke-direct/range {v8 .. v15}, removeWhiteListPackages(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Ljava/util/List;IILandroid/os/Bundle;ILjava/lang/String;)Z
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12b} :catch_13a
    .catchall {:try_start_128 .. :try_end_12b} :catchall_15a

    move-result v5

    if-ne v2, v5, :cond_134

    .line 1953
    const/4 v2, 0x0

    .line 1958
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_24

    :cond_134
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1961
    .end local v7    # "alias":Ljava/lang/String;
    .end local v14    # "accessType":I
    :goto_137
    const/4 v2, -0x1

    goto/16 :goto_24

    .line 1955
    :catch_13a
    move-exception v16

    .line 1956
    .local v16, "e":Ljava/lang/Exception;
    :try_start_13b
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removePackagesFromWhiteList Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_156
    .catchall {:try_start_13b .. :try_end_156} :catchall_15a

    .line 1958
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_137

    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_15a
    move-exception v2

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAuthType(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "authType"    # I

    .prologue
    .line 4296
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "setAuthType is called...."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4297
    if-eqz p1, :cond_10

    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 4298
    :cond_10
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_1c

    .line 4299
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "setAuthType - Invalid Arguments"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    :cond_1c
    const/16 v5, -0xb

    .line 4342
    :goto_1e
    return v5

    .line 4303
    :cond_1f
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 4304
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 4305
    .local v4, "userId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4306
    .local v0, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4309
    .local v2, "id":J
    :try_start_2a
    invoke-direct {p0, p2}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 4310
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "Storage is not active"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_37} :catch_b1
    .catchall {:try_start_2a .. :try_end_37} :catchall_cf

    .line 4311
    const/16 v5, -0xd

    .line 4340
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 4314
    :cond_3d
    :try_start_3d
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_66

    .line 4315
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAuthType is called for Caller UID-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mContainerId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4320
    :cond_66
    const/4 v5, 0x1

    iget-object v6, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v7, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v6, v7}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eq v5, v6, :cond_83

    .line 4322
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_7d

    .line 4323
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "setAuthType return false.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_7d} :catch_b1
    .catchall {:try_start_3d .. :try_end_7d} :catchall_cf

    .line 4324
    :cond_7d
    const/16 v5, -0xc

    .line 4340
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 4327
    :cond_83
    :try_start_83
    invoke-direct {p0, p3}, isValidAuthType(I)Z

    move-result v5

    if-nez v5, :cond_97

    .line 4328
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "setAuthType - Invalid AUTH Type..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_91} :catch_b1
    .catchall {:try_start_83 .. :try_end_91} :catchall_cf

    .line 4329
    const/16 v5, -0x11

    .line 4340
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 4332
    :cond_97
    :try_start_97
    invoke-direct {p0, v0, v4, p2, p3}, setAuthTypeInternal(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 4333
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "setAuthTypeInternal is successful"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a5} :catch_b1
    .catchall {:try_start_97 .. :try_end_a5} :catchall_cf

    .line 4334
    const/4 v5, 0x0

    .line 4340
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1e

    :cond_ab
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4342
    :goto_ae
    const/4 v5, -0x1

    goto/16 :goto_1e

    .line 4337
    :catch_b1
    move-exception v1

    .line 4338
    .local v1, "e":Ljava/lang/Exception;
    :try_start_b2
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPackageSetting Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_b2 .. :try_end_cb} :catchall_cf

    .line 4340
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_ae

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_cf
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public setDefaultInstallStorage(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    const/16 v7, -0xc

    .line 2999
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "setDefaultInstallStorage is called...."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    invoke-virtual {p0, p1, p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3002
    if-nez p1, :cond_1e

    .line 3003
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_1b

    .line 3004
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "setDefaultInstallStorage - Invalid Arguments"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    :cond_1b
    const/16 v5, -0xb

    .line 3055
    :goto_1d
    return v5

    .line 3008
    :cond_1e
    invoke-direct {p0, p2}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8

    if-nez v8, :cond_2e

    .line 3009
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "Plugin is not active"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    const/16 v5, -0xd

    goto :goto_1d

    .line 3013
    :cond_2e
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 3014
    .local v6, "userId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3015
    .local v0, "callerUid":I
    const/4 v5, -0x1

    .line 3016
    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3019
    .local v2, "id":J
    :try_start_37
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_5e

    .line 3020
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setDefaultInstallStorage is called for Caller UID-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mContainerId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    :cond_5e
    const/16 v8, 0x64

    if-lt v6, v8, :cond_a9

    .line 3025
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    .line 3026
    .local v4, "ownerUid":I
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setDefaultInstallStorage container ownerUid - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    if-eq v4, v0, :cond_a9

    .line 3028
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDefaultInstallStorage callerUid - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not owner of container. Request fail..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_a2} :catch_ef
    .catchall {:try_start_37 .. :try_end_a2} :catchall_10e

    .line 3029
    const/16 v5, -0x18

    .line 3053
    .end local v5    # "result":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1d

    .line 3033
    .end local v4    # "ownerUid":I
    .restart local v5    # "result":I
    :cond_a9
    :try_start_a9
    invoke-direct {p0, p2}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 3035
    const/4 v8, 0x1

    iget-object v9, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v10, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v9, v10}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eq v8, v9, :cond_e6

    .line 3037
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_c6

    .line 3038
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "setDefaultInstallStorage return false.."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_c6} :catch_ef
    .catchall {:try_start_a9 .. :try_end_c6} :catchall_10e

    .line 3053
    :cond_c6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v7

    goto/16 :goto_1d

    .line 3043
    :cond_cc
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_ce
    invoke-direct {p0, v0, v6, v8, v9}, checkDefaultInstallCredentialStorageExistsForAdmin(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e6

    .line 3044
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_e0

    .line 3045
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "setDefaultInstallStorage MDM don\'t own any credential storage..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_e0} :catch_ef
    .catchall {:try_start_ce .. :try_end_e0} :catchall_10e

    .line 3053
    :cond_e0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v7

    goto/16 :goto_1d

    .line 3049
    :cond_e6
    :try_start_e6
    invoke-direct {p0, v0, v6, p2}, setDefaultInstallStorageInternal(IILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_ef
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_10e

    move-result v5

    .line 3053
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1d

    .line 3050
    :catch_ef
    move-exception v1

    .line 3051
    .local v1, "e":Ljava/lang/Exception;
    :try_start_f0
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDefaultInstallStorage Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catchall {:try_start_f0 .. :try_end_109} :catchall_10e

    .line 3053
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1d

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_10e
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public setPackageSetting(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;Lcom/sec/enterprise/AppIdentity;)I
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "option"    # Landroid/os/Bundle;
    .param p4, "appInfo"    # Lcom/sec/enterprise/AppIdentity;

    .prologue
    .line 4171
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "setPackageSetting is called...."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    if-eqz p1, :cond_16

    if-eqz p4, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isValidParam(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 4173
    :cond_16
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_22

    .line 4174
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "setPackageSetting - Invalid Arguments"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    :cond_22
    const/16 v14, -0xb

    .line 4228
    :goto_24
    return v14

    .line 4178
    :cond_25
    invoke-virtual/range {p0 .. p2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 4179
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 4180
    .local v8, "userId":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4181
    .local v3, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 4185
    .local v12, "id":J
    :try_start_34
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isPluginActive(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 4186
    sget-object v2, TAG:Ljava/lang/String;

    const-string v5, "Plugin is not active.."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_45} :catch_10a
    .catchall {:try_start_34 .. :try_end_45} :catchall_128

    .line 4187
    const/16 v14, -0xd

    .line 4226
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    .line 4191
    :cond_4b
    :try_start_4b
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_72

    .line 4192
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPackageSetting is called for Caller UID-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mContainerId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    :cond_72
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v5, v6}, isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eq v2, v5, :cond_95

    .line 4199
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_8f

    .line 4200
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "setPackageSetting return false.."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_8f} :catch_10a
    .catchall {:try_start_4b .. :try_end_8f} :catchall_128

    .line 4201
    :cond_8f
    const/16 v14, -0xc

    .line 4226
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    .line 4204
    :cond_95
    :try_start_95
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v2

    if-eqz v2, :cond_104

    .line 4205
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v5, "setPackageSetting - pass to agent..."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    new-instance v2, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v2, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v4

    .line 4209
    .local v4, "csUri":Ljava/lang/String;
    if-eqz p3, :cond_cf

    .line 4210
    move-object/from16 v0, p0

    iget-object v2, v0, mPm:Landroid/content/pm/PackageManager;

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v9

    .line 4211
    .local v9, "applicationUid":I
    const-string/jumbo v2, "package_uid"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4213
    .end local v9    # "applicationUid":I
    :cond_cf
    invoke-static {}, getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v8}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->setPackageSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v15

    .line 4214
    .local v15, "ucmResponse":Landroid/os/Bundle;
    if-eqz v15, :cond_fa

    const-string/jumbo v2, "intresponse"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 4215
    .local v14, "status":I
    :goto_ea
    if-eqz v15, :cond_fc

    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_f2} :catch_10a
    .catchall {:try_start_95 .. :try_end_f2} :catchall_128

    move-result v11

    .line 4216
    .local v11, "errorCode":I
    :goto_f3
    if-nez v14, :cond_fe

    .line 4226
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_24

    .line 4214
    .end local v11    # "errorCode":I
    .end local v14    # "status":I
    :cond_fa
    const/4 v14, -0x1

    goto :goto_ea

    .line 4215
    .restart local v14    # "status":I
    :cond_fc
    const/4 v11, -0x1

    goto :goto_f3

    .line 4226
    .restart local v11    # "errorCode":I
    :cond_fe
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v14, v11

    goto/16 :goto_24

    .end local v4    # "csUri":Ljava/lang/String;
    .end local v11    # "errorCode":I
    .end local v14    # "status":I
    .end local v15    # "ucmResponse":Landroid/os/Bundle;
    :cond_104
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4228
    :goto_107
    const/4 v14, -0x1

    goto/16 :goto_24

    .line 4223
    :catch_10a
    move-exception v10

    .line 4224
    .local v10, "e":Ljava/lang/Exception;
    :try_start_10b
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPackageSetting Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catchall {:try_start_10b .. :try_end_124} :catchall_128

    .line 4226
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_107

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_128
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 384
    return-void
.end method
