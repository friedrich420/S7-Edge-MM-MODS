.class public Lcom/android/server/pm/PersonaPolicyManagerService;
.super Landroid/content/pm/IPersonaPolicyManager$Stub;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;,
        Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;,
        Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    }
.end annotation


# static fields
.field private static final INVALID_UID:I = -0x1

.field private static final PERSONA_POLICIES_XML:Ljava/lang/String; = "persona_policies.xml"

.field private static final TAG:Ljava/lang/String; = "PersonaPolicyManagerService"

.field private static sContext:Landroid/content/Context;


# instance fields
.field mContext:Landroid/content/Context;

.field mLocalPkgAddedCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPersona:Lcom/android/server/pm/PersonaManagerService;

.field final mPersonaData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/content/pm/IPersonaPolicyManager$Stub;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLocalPkgAddedCache:Ljava/util/List;

    .line 174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mPersonaData:Landroid/util/SparseArray;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, mPersona:Lcom/android/server/pm/PersonaManagerService;

    .line 183
    new-instance v0, Lcom/android/server/pm/PersonaPolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PersonaPolicyManagerService$1;-><init>(Lcom/android/server/pm/PersonaPolicyManagerService;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 180
    sput-object p1, sContext:Landroid/content/Context;

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/PersonaPolicyManagerService;)Lcom/android/server/pm/PersonaManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaPolicyManagerService;

    .prologue
    .line 65
    invoke-direct {p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/PersonaPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, removePersonaData(I)V

    return-void
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v1, "PersonaPolicyManagerService"

    .line 79
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5a

    .line 80
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

    .line 82
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 83
    throw v0

    .line 85
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_5a
    const/4 v2, 0x0

    return v2
.end method

.method private checkReturnStatus(Landroid/os/Bundle;)Z
    .registers 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 227
    if-eqz p1, :cond_a

    .line 228
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 230
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private dumpRCPSettings(Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;)V
    .registers 6
    .param p1, "policy"    # Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    .prologue
    .line 134
    const-string v1, "PersonaPolicyManagerService"

    const-string v2, "********************START dump RCPSettings ********************"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz p1, :cond_13

    .line 137
    :try_start_9
    iget-object v1, p1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, v1}, dumpRCPSettings(Ljava/util/HashMap;)V

    .line 138
    iget-object v1, p1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-direct {p0, v1}, dumpRCPSettings(Ljava/util/HashMap;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_1b

    .line 144
    :cond_13
    :goto_13
    const-string v1, "PersonaPolicyManagerService"

    const-string v2, "--------------------END dump RCPSettings--------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 141
    :catch_1b
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PersonaPolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private dumpRCPSettings(Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 150
    .local v6, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "PersonaPolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "names:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 152
    .local v2, "keys":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v3, v2

    .line 153
    .local v3, "length":I
    const-string v7, "PersonaPolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v7, "PersonaPolicyManagerService"

    const-string/jumbo v8, "{"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    :goto_48
    if-ge v0, v3, :cond_bf

    .line 156
    aget-object v7, v2, v0

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 157
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v4, :cond_bc

    .line 158
    const-string v7, "PersonaPolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v2, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " :[ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_b5

    .line 160
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 161
    .local v5, "object":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    if-eqz v5, :cond_ad

    .line 162
    const-string v7, "PersonaPolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   { name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "},"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 165
    :cond_ad
    const-string v7, "PersonaPolicyManagerService"

    const-string v8, "List contains NULL object."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 168
    .end local v5    # "object":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :cond_b5
    const-string v7, "PersonaPolicyManagerService"

    const-string v8, " ],"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v1    # "j":I
    :cond_bc
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 171
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_bf
    const-string v7, "PersonaPolicyManagerService"

    const-string/jumbo v8, "}"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method private final enforceSystemService()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1269
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 1270
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system can call this API. Are you Process.SYSTEM_UID!!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_10
    return-void
.end method

.method private final enforceSystemServiceOrSystemUI(I)V
    .registers 8
    .param p1, "callerUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_1c

    .line 1277
    const/4 v2, -0x1

    .line 1279
    .local v2, "sysUiUid":I
    :try_start_9
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.systemui"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_15} :catch_1d

    move-result v2

    .line 1284
    :goto_16
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1285
    .local v0, "callingAppId":I
    if-ne v0, v2, :cond_26

    .line 1291
    .end local v0    # "callingAppId":I
    .end local v2    # "sysUiUid":I
    :cond_1c
    return-void

    .line 1280
    .restart local v2    # "sysUiUid":I
    :catch_1d
    move-exception v1

    .line 1281
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PersonaPolicyManagerService"

    const-string v4, "Unable to resolve SystemUI\'s UID."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 1289
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "callingAppId":I
    :cond_26
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Only system can call this API. Are you Process.SYSTEM_UID!!"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p1, "userId"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1327
    invoke-direct/range {p0 .. p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v13

    if-eqz v13, :cond_1e

    invoke-direct/range {p0 .. p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v13

    if-eqz v13, :cond_1e

    const/4 v5, 0x1

    .line 1328
    .local v5, "isPersona":Z
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1329
    .local v3, "defaultValue":Ljava/lang/String;
    if-nez v5, :cond_20

    .line 1376
    .end local v3    # "defaultValue":Ljava/lang/String;
    :cond_1d
    :goto_1d
    return-object v3

    .line 1327
    .end local v5    # "isPersona":Z
    :cond_1e
    const/4 v5, 0x0

    goto :goto_13

    .line 1332
    .restart local v3    # "defaultValue":Ljava/lang/String;
    .restart local v5    # "isPersona":Z
    :cond_20
    const/4 v7, 0x0

    .line 1333
    .local v7, "mdmValue":Ljava/lang/String;
    const-string/jumbo v13, "mum_container_rcp_policy"

    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    .line 1335
    .local v9, "rcpPolicy":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    if-eqz v9, :cond_36

    .line 1336
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getDataSyncPolicyByUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1348
    :cond_36
    if-eqz v7, :cond_41

    const-string/jumbo v13, "true"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_86

    .line 1349
    :cond_41
    monitor-enter p0

    .line 1350
    if-eqz v5, :cond_85

    .line 1351
    :try_start_44
    invoke-virtual/range {p0 .. p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v8

    .line 1352
    .local v8, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v8, :cond_85

    .line 1353
    iget-object v13, v8, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1355
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v6, :cond_85

    .line 1356
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1357
    .local v10, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iget-object v13, v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5a

    .line 1358
    iget-object v13, v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    if-eqz v13, :cond_5a

    iget-object v13, v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5a

    .line 1359
    iget-object v3, v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .end local v3    # "defaultValue":Ljava/lang/String;
    monitor-exit p0

    goto :goto_1d

    .line 1366
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v8    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v10    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :catchall_82
    move-exception v13

    monitor-exit p0
    :try_end_84
    .catchall {:try_start_44 .. :try_end_84} :catchall_82

    throw v13

    .restart local v3    # "defaultValue":Ljava/lang/String;
    :cond_85
    :try_start_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_82

    .line 1368
    :cond_86
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getConfigurationType(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v11

    .line 1369
    .local v11, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v11, :cond_1d

    .line 1370
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getDataSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1371
    .local v12, "value":Ljava/lang/String;
    const-string v13, "PersonaPolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "configuration value set by MDM : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    if-eqz v12, :cond_1d

    move-object v3, v12

    .line 1373
    goto/16 :goto_1d
.end method

.method private final getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "isPersona"    # Z
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1295
    const-string/jumbo v0, "knox-import-data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1296
    if-eqz p1, :cond_f

    .line 1297
    const-string/jumbo v0, "false"

    .line 1322
    :goto_e
    return-object v0

    .line 1299
    :cond_f
    const-string/jumbo v0, "true"

    goto :goto_e

    .line 1301
    :cond_13
    const-string/jumbo v0, "knox-export-data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1302
    if-eqz p1, :cond_22

    .line 1303
    const-string/jumbo v0, "false"

    goto :goto_e

    .line 1305
    :cond_22
    const-string/jumbo v0, "true"

    goto :goto_e

    .line 1307
    :cond_26
    const-string/jumbo v0, "knox-sanitize-data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1308
    if-eqz p1, :cond_35

    .line 1309
    const-string/jumbo v0, "true"

    goto :goto_e

    .line 1311
    :cond_35
    const-string/jumbo v0, "false"

    goto :goto_e

    .line 1314
    :cond_39
    const-string/jumbo v0, "knox-sanitize-data-lockscreen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1315
    if-eqz p1, :cond_48

    .line 1316
    const-string/jumbo v0, "true"

    goto :goto_e

    .line 1318
    :cond_48
    const-string/jumbo v0, "false"

    goto :goto_e

    .line 1322
    :cond_4c
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private getNotificationSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1380
    invoke-direct {p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    if-eqz v7, :cond_18

    invoke-direct {p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v1, 0x1

    .line 1381
    .local v1, "isPersona":Z
    :goto_11
    if-nez v1, :cond_1a

    .line 1382
    invoke-direct {p0, v1, p3}, getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1413
    :cond_17
    :goto_17
    return-object v3

    .line 1380
    .end local v1    # "isPersona":Z
    :cond_18
    const/4 v1, 0x0

    goto :goto_11

    .line 1385
    .restart local v1    # "isPersona":Z
    :cond_1a
    const/4 v3, 0x0

    .line 1386
    .local v3, "mdmValue":Ljava/lang/String;
    const-string/jumbo v7, "mum_container_rcp_policy"

    invoke-static {v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    .line 1388
    .local v5, "rcpPolicy":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    if-eqz v5, :cond_2a

    .line 1389
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getNotificationSyncPolicyByUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1392
    :cond_2a
    if-nez v3, :cond_17

    .line 1393
    monitor-enter p0

    .line 1394
    if-eqz v1, :cond_6c

    .line 1395
    :try_start_2f
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v4

    .line 1396
    .local v4, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v4, :cond_6c

    .line 1397
    iget-object v7, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1399
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v2, :cond_6c

    .line 1400
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1401
    .local v6, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iget-object v7, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 1402
    iget-object v7, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    if-eqz v7, :cond_43

    iget-object v7, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_43

    .line 1403
    iget-object v3, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .end local v3    # "mdmValue":Ljava/lang/String;
    monitor-exit p0

    goto :goto_17

    .line 1411
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v4    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v6    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :catchall_69
    move-exception v7

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_2f .. :try_end_6b} :catchall_69

    throw v7

    .line 1410
    .restart local v3    # "mdmValue":Ljava/lang/String;
    :cond_6c
    :try_start_6c
    invoke-direct {p0, v1, p3}, getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "mdmValue":Ljava/lang/String;
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_69

    goto :goto_17
.end method

.method private getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .registers 2

    .prologue
    .line 1254
    iget-object v0, p0, mPersona:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_f

    .line 1255
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    iput-object v0, p0, mPersona:Lcom/android/server/pm/PersonaManagerService;

    .line 1257
    :cond_f
    iget-object v0, p0, mPersona:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method private getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;
    .registers 3
    .param p1, "personaId"    # I

    .prologue
    .line 1262
    invoke-direct {p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1263
    invoke-direct {p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaPolicyHandler(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 1265
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private loadSettingsLocked(Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;I)V
    .registers 20
    .param p1, "policy"    # Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .param p2, "userHandle"    # I

    .prologue
    .line 765
    invoke-static/range {p2 .. p2}, makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    .line 766
    .local v3, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v9, 0x0

    .line 767
    .local v9, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v2

    .line 769
    .local v2, "file":Ljava/io/File;
    :try_start_9
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_e} :catch_410
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_e} :catch_40d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_e} :catch_40a
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_407
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_404
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_e} :catch_401

    .line 770
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 771
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v14, 0x0

    invoke-interface {v5, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 775
    :cond_16
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_20

    const/4 v14, 0x2

    if-ne v12, v14, :cond_16

    .line 777
    :cond_20
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 778
    .local v11, "tag":Ljava/lang/String;
    const-string/jumbo v14, "policies"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_74

    .line 779
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Settings do not start with policies tag: found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_46
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_46} :catch_46
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_46} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_46} :catch_df
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_46} :catch_121
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_46} :catch_13f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_46} :catch_180

    .line 914
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_46
    move-exception v1

    move-object v9, v10

    .line 915
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/NullPointerException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_48
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_6b
    if-eqz v9, :cond_70

    .line 929
    :try_start_6d
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_3fe

    .line 934
    :cond_70
    :goto_70
    invoke-direct/range {p0 .. p1}, dumpRCPSettings(Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;)V

    .line 935
    return-void

    .line 782
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_74
    const/4 v4, 0x0

    .line 783
    .local v4, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 784
    .local v8, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_76
    :goto_76
    :try_start_76
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_3fb

    .line 785
    packed-switch v12, :pswitch_data_414

    goto :goto_76

    .line 787
    :pswitch_81
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 788
    const-string/jumbo v14, "passwordLockEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c5

    .line 790
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z
    :try_end_9e
    .catch Ljava/lang/NullPointerException; {:try_start_76 .. :try_end_9e} :catch_46
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_9e} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_76 .. :try_end_9e} :catch_df
    .catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_9e} :catch_121
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_9e} :catch_13f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_76 .. :try_end_9e} :catch_180

    goto :goto_76

    .line 916
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_9f
    move-exception v1

    move-object v9, v10

    .line 917
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_a1
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 792
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_c5
    :try_start_c5
    const-string/jumbo v14, "encryptionEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_106

    .line 794
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z
    :try_end_de
    .catch Ljava/lang/NullPointerException; {:try_start_c5 .. :try_end_de} :catch_46
    .catch Ljava/lang/NumberFormatException; {:try_start_c5 .. :try_end_de} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c5 .. :try_end_de} :catch_df
    .catch Ljava/io/FileNotFoundException; {:try_start_c5 .. :try_end_de} :catch_121
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_de} :catch_13f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c5 .. :try_end_de} :catch_180

    goto :goto_76

    .line 918
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_df
    move-exception v1

    move-object v9, v10

    .line 919
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_e1
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 796
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_106
    :try_start_106
    const-string/jumbo v14, "secureKeystoreEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_125

    .line 798
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    goto/16 :goto_76

    .line 920
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_121
    move-exception v14

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_6b

    .line 800
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_125
    const-string v14, "cameraModeChangeEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_166

    .line 802
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z
    :try_end_13d
    .catch Ljava/lang/NullPointerException; {:try_start_106 .. :try_end_13d} :catch_46
    .catch Ljava/lang/NumberFormatException; {:try_start_106 .. :try_end_13d} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_106 .. :try_end_13d} :catch_df
    .catch Ljava/io/FileNotFoundException; {:try_start_106 .. :try_end_13d} :catch_121
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_13d} :catch_13f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_106 .. :try_end_13d} :catch_180

    goto/16 :goto_76

    .line 922
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_13f
    move-exception v1

    move-object v9, v10

    .line 923
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_141
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 804
    .end local v1    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_166
    :try_start_166
    const-string v14, "allowCustomBadgeIcon"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a7

    .line 806
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z
    :try_end_17e
    .catch Ljava/lang/NullPointerException; {:try_start_166 .. :try_end_17e} :catch_46
    .catch Ljava/lang/NumberFormatException; {:try_start_166 .. :try_end_17e} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_166 .. :try_end_17e} :catch_df
    .catch Ljava/io/FileNotFoundException; {:try_start_166 .. :try_end_17e} :catch_121
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_17e} :catch_13f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_166 .. :try_end_17e} :catch_180

    goto/16 :goto_76

    .line 924
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_180
    move-exception v1

    move-object v9, v10

    .line 925
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_182
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 808
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_1a7
    :try_start_1a7
    const-string/jumbo v14, "disableSwitchWidget"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c2

    .line 810
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    goto/16 :goto_76

    .line 812
    :cond_1c2
    const-string v14, "allowCustomPersonaIcon"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1dc

    .line 814
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    goto/16 :goto_76

    .line 816
    :cond_1dc
    const-string v14, "allowCustomColorId"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f6

    .line 818
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    goto/16 :goto_76

    .line 820
    :cond_1f6
    const-string v14, "allowContainerReset"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_210

    .line 822
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    goto/16 :goto_76

    .line 824
    :cond_210
    const-string v14, "allowShortcutCreation"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22a

    .line 826
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    goto/16 :goto_76

    .line 828
    :cond_22a
    const-string v14, "allowDLNADataTransfer"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_244

    .line 830
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    goto/16 :goto_76

    .line 832
    :cond_244
    const-string v14, "allowPrint"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_25e

    .line 834
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    goto/16 :goto_76

    .line 836
    :cond_25e
    const-string/jumbo v14, "modifyLockscreenTimeout"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_279

    .line 838
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    goto/16 :goto_76

    .line 840
    :cond_279
    const-string v14, "allowAllshare"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_293

    .line 842
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    goto/16 :goto_76

    .line 844
    :cond_293
    const-string/jumbo v14, "gearSupportEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2ae

    .line 846
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    goto/16 :goto_76

    .line 848
    :cond_2ae
    const-string/jumbo v14, "penWindowEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c9

    .line 850
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    goto/16 :goto_76

    .line 852
    :cond_2c9
    const-string v14, "airCommandEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e3

    .line 854
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    goto/16 :goto_76

    .line 856
    :cond_2e3
    const-string v14, "allowUniversalCallerId"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2fd

    .line 858
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    goto/16 :goto_76

    .line 860
    :cond_2fd
    const-string v14, "allowImportFiles"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_317

    .line 862
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    goto/16 :goto_76

    .line 864
    :cond_317
    const-string v14, "allowExportFiles"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_331

    .line 866
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    goto/16 :goto_76

    .line 868
    :cond_331
    const-string v14, "allowExportAndDeleteFiles"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_34b

    .line 870
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    goto/16 :goto_76

    .line 872
    :cond_34b
    const-string/jumbo v14, "switchNotifEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_366

    .line 874
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    goto/16 :goto_76

    .line 876
    :cond_366
    const-string/jumbo v14, "rcp-data-settings"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_76

    .line 878
    const-string v14, "application"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_38d

    .line 879
    const/4 v14, 0x0

    const-string/jumbo v15, "name"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 880
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v14, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_76

    .line 882
    :cond_38d
    const-string/jumbo v14, "rcp-notif-settings"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_76

    .line 884
    const-string/jumbo v14, "package"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3b5

    .line 886
    const/4 v14, 0x0

    const-string/jumbo v15, "name"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 887
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 888
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v14, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_76

    .line 890
    :cond_3b5
    const-string/jumbo v14, "property"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3de

    .line 892
    const/4 v14, 0x0

    const-string/jumbo v15, "name"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 893
    .local v6, "property":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 894
    .local v13, "value":Ljava/lang/String;
    new-instance v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    invoke-direct {v7}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;-><init>()V

    .line 895
    .local v7, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iput-object v6, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    .line 896
    iput-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .line 897
    if-eqz v8, :cond_76

    .line 898
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_76

    .line 903
    .end local v6    # "property":Ljava/lang/String;
    .end local v7    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    .end local v13    # "value":Ljava/lang/String;
    :cond_3de
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown tag: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3f9
    .catch Ljava/lang/NullPointerException; {:try_start_1a7 .. :try_end_3f9} :catch_46
    .catch Ljava/lang/NumberFormatException; {:try_start_1a7 .. :try_end_3f9} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a7 .. :try_end_3f9} :catch_df
    .catch Ljava/io/FileNotFoundException; {:try_start_1a7 .. :try_end_3f9} :catch_121
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_3f9} :catch_13f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a7 .. :try_end_3f9} :catch_180

    goto/16 :goto_76

    :cond_3fb
    move-object v9, v10

    .line 926
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_6b

    .line 931
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_3fe
    move-exception v14

    goto/16 :goto_70

    .line 924
    :catch_401
    move-exception v1

    goto/16 :goto_182

    .line 922
    :catch_404
    move-exception v1

    goto/16 :goto_141

    .line 920
    :catch_407
    move-exception v14

    goto/16 :goto_6b

    .line 918
    :catch_40a
    move-exception v1

    goto/16 :goto_e1

    .line 916
    :catch_40d
    move-exception v1

    goto/16 :goto_a1

    .line 914
    :catch_410
    move-exception v1

    goto/16 :goto_48

    .line 785
    nop

    :pswitch_data_414
    .packed-switch 0x2
        :pswitch_81
    .end packed-switch
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7
    .param p0, "userId"    # I

    .prologue
    .line 758
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "persona_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private removePersonaData(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 1173
    monitor-enter p0

    .line 1174
    :try_start_1
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 1175
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v0, :cond_c

    .line 1176
    iget-object v2, p0, mPersonaData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1178
    :cond_c
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "persona_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1180
    .local v1, "policyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1181
    const-string v2, "PersonaPolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed persona policy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    monitor-exit p0

    .line 1183
    return-void

    .line 1182
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v1    # "policyFile":Ljava/io/File;
    :catchall_39
    move-exception v2

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    throw v2
.end method

.method private saveSettingsLocked(I)V
    .registers 16
    .param p1, "userHandle"    # I

    .prologue
    .line 938
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v6

    .line 939
    .local v6, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    invoke-static {p1}, makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    .line 940
    .local v3, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v9, 0x0

    .line 942
    .local v9, "stream":Ljava/io/FileOutputStream;
    :try_start_9
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_4d5

    .line 943
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .local v10, "stream":Ljava/io/FileOutputStream;
    :try_start_13
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 944
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v11, "utf-8"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 945
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 947
    const-string v11, "\n\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 948
    const/4 v11, 0x0

    const-string/jumbo v12, "policies"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 950
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_58

    .line 952
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 953
    const/4 v11, 0x0

    const-string/jumbo v12, "passwordLockEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 954
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 955
    const/4 v11, 0x0

    const-string/jumbo v12, "passwordLockEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 957
    :cond_58
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_7d

    .line 959
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 960
    const/4 v11, 0x0

    const-string/jumbo v12, "encryptionEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 961
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 962
    const/4 v11, 0x0

    const-string/jumbo v12, "encryptionEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 964
    :cond_7d
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_a2

    .line 966
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 967
    const/4 v11, 0x0

    const-string/jumbo v12, "secureKeystoreEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 968
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 969
    const/4 v11, 0x0

    const-string/jumbo v12, "secureKeystoreEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 971
    :cond_a2
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z

    if-eqz v11, :cond_c4

    .line 973
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 974
    const/4 v11, 0x0

    const-string v12, "cameraModeChangeEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 975
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 976
    const/4 v11, 0x0

    const-string v12, "cameraModeChangeEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 978
    :cond_c4
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_e7

    .line 980
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 981
    const/4 v11, 0x0

    const-string v12, "allowCustomBadgeIcon"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 982
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 983
    const/4 v11, 0x0

    const-string v12, "allowCustomBadgeIcon"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 985
    :cond_e7
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    if-eqz v11, :cond_10b

    .line 987
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 988
    const/4 v11, 0x0

    const-string/jumbo v12, "disableSwitchWidget"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 989
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 990
    const/4 v11, 0x0

    const-string/jumbo v12, "disableSwitchWidget"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 992
    :cond_10b
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_12e

    .line 994
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 995
    const/4 v11, 0x0

    const-string v12, "allowCustomPersonaIcon"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 996
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 997
    const/4 v11, 0x0

    const-string v12, "allowCustomPersonaIcon"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 999
    :cond_12e
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_151

    .line 1001
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1002
    const/4 v11, 0x0

    const-string v12, "allowCustomColorId"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1003
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1004
    const/4 v11, 0x0

    const-string v12, "allowCustomColorId"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1006
    :cond_151
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    if-eqz v11, :cond_173

    .line 1008
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1009
    const/4 v11, 0x0

    const-string v12, "allowContainerReset"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1010
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1011
    const/4 v11, 0x0

    const-string v12, "allowContainerReset"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1013
    :cond_173
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_196

    .line 1015
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1016
    const/4 v11, 0x0

    const-string v12, "allowShortcutCreation"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1017
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1018
    const/4 v11, 0x0

    const-string v12, "allowShortcutCreation"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1020
    :cond_196
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    if-eqz v11, :cond_1b8

    .line 1022
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1023
    const/4 v11, 0x0

    const-string v12, "allowDLNADataTransfer"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1024
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1025
    const/4 v11, 0x0

    const-string v12, "allowDLNADataTransfer"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1027
    :cond_1b8
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    if-eqz v11, :cond_1da

    .line 1029
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1030
    const/4 v11, 0x0

    const-string v12, "allowPrint"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1031
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1032
    const/4 v11, 0x0

    const-string v12, "allowPrint"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1034
    :cond_1da
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1ff

    .line 1036
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1037
    const/4 v11, 0x0

    const-string/jumbo v12, "modifyLockscreenTimeout"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1038
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1039
    const/4 v11, 0x0

    const-string/jumbo v12, "modifyLockscreenTimeout"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1041
    :cond_1ff
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    if-eqz v11, :cond_221

    .line 1043
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1044
    const/4 v11, 0x0

    const-string v12, "allowAllshare"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1045
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1046
    const/4 v11, 0x0

    const-string v12, "allowAllshare"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1048
    :cond_221
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_246

    .line 1050
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1051
    const/4 v11, 0x0

    const-string/jumbo v12, "gearSupportEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1052
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1053
    const/4 v11, 0x0

    const-string/jumbo v12, "gearSupportEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1055
    :cond_246
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_26b

    .line 1057
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1058
    const/4 v11, 0x0

    const-string/jumbo v12, "penWindowEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1059
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1060
    const/4 v11, 0x0

    const-string/jumbo v12, "penWindowEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1062
    :cond_26b
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_28e

    .line 1064
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1065
    const/4 v11, 0x0

    const-string v12, "airCommandEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1066
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1067
    const/4 v11, 0x0

    const-string v12, "airCommandEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1069
    :cond_28e
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2b1

    .line 1071
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1072
    const/4 v11, 0x0

    const-string v12, "allowUniversalCallerId"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1073
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1074
    const/4 v11, 0x0

    const-string v12, "allowUniversalCallerId"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1076
    :cond_2b1
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2d4

    .line 1078
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1079
    const/4 v11, 0x0

    const-string v12, "allowImportFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1080
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1081
    const/4 v11, 0x0

    const-string v12, "allowImportFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1083
    :cond_2d4
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    if-eqz v11, :cond_2f6

    .line 1085
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1086
    const/4 v11, 0x0

    const-string v12, "allowExportFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1087
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1088
    const/4 v11, 0x0

    const-string v12, "allowExportFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1090
    :cond_2f6
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    if-eqz v11, :cond_318

    .line 1092
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1093
    const/4 v11, 0x0

    const-string v12, "allowExportAndDeleteFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1094
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1095
    const/4 v11, 0x0

    const-string v12, "allowExportAndDeleteFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1097
    :cond_318
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_33d

    .line 1099
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1100
    const/4 v11, 0x0

    const-string/jumbo v12, "switchNotifEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1101
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1102
    const/4 v11, 0x0

    const-string/jumbo v12, "switchNotifEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1104
    :cond_33d
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    if-eqz v11, :cond_400

    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_400

    .line 1106
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1107
    const/4 v11, 0x0

    const-string/jumbo v12, "rcp-data-settings"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1108
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_35f
    :goto_35f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3f4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1109
    .local v4, "key":Ljava/lang/String;
    const-string v11, "PersonaPolicyManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "key : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1111
    .local v8, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v8, :cond_35f

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_35f

    .line 1112
    const-string v11, "\n\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1113
    const/4 v11, 0x0

    const-string v12, "application"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1114
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v5, v11, v12, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1115
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3e7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1116
    .local v7, "rcpSetting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    const-string v11, "\n\t\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1117
    const/4 v11, 0x0

    const-string/jumbo v12, "property"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1118
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    iget-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1119
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1120
    const/4 v11, 0x0

    const-string/jumbo v12, "property"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3db
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_3db} :catch_3dc

    goto :goto_3aa

    .line 1160
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "rcpSetting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :catch_3dc
    move-exception v0

    move-object v9, v10

    .line 1162
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :goto_3de
    if-eqz v9, :cond_3e3

    .line 1163
    :try_start_3e0
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e3
    .catch Ljava/io/IOException; {:try_start_3e0 .. :try_end_3e3} :catch_4d2

    .line 1168
    :cond_3e3
    :goto_3e3
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 1170
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3e6
    return-void

    .line 1122
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileOutputStream;
    :cond_3e7
    :try_start_3e7
    const-string v11, "\n\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1123
    const/4 v11, 0x0

    const-string v12, "application"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_35f

    .line 1126
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_3f4
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    const/4 v11, 0x0

    const-string/jumbo v12, "rcp-data-settings"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1129
    :cond_400
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    if-eqz v11, :cond_4ba

    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4ba

    .line 1131
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1132
    const/4 v11, 0x0

    const-string/jumbo v12, "rcp-notif-settings"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1133
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_422
    :goto_422
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1134
    .restart local v4    # "key":Ljava/lang/String;
    const-string v11, "PersonaPolicyManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "key : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1136
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v8, :cond_422

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_422

    .line 1137
    const-string v11, "\n\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1138
    const/4 v11, 0x0

    const-string/jumbo v12, "package"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1139
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v5, v11, v12, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1140
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_46e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1141
    .restart local v7    # "rcpSetting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    const-string v11, "\n\t\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1142
    const/4 v11, 0x0

    const-string/jumbo v12, "property"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1143
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    iget-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1144
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1145
    const/4 v11, 0x0

    const-string/jumbo v12, "property"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_46e

    .line 1147
    .end local v7    # "rcpSetting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :cond_4a0
    const-string v11, "\n\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1148
    const/4 v11, 0x0

    const-string/jumbo v12, "package"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_422

    .line 1151
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_4ae
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1152
    const/4 v11, 0x0

    const-string/jumbo v12, "rcp-notif-settings"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1154
    :cond_4ba
    const-string v11, "\n\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1155
    const/4 v11, 0x0

    const-string/jumbo v12, "policies"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1157
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1158
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1159
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_4cf
    .catch Ljava/io/IOException; {:try_start_3e7 .. :try_end_4cf} :catch_3dc

    move-object v9, v10

    .line 1169
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_3e6

    .line 1165
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_4d2
    move-exception v11

    goto/16 :goto_3e3

    .line 1160
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4d5
    move-exception v0

    goto/16 :goto_3de
.end method

.method private setRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "userId"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1472
    monitor-enter p0

    .line 1473
    :try_start_2
    invoke-direct {p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    if-eqz v7, :cond_68

    invoke-direct {p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 1474
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v3

    .line 1475
    .local v3, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v3, :cond_66

    .line 1476
    iget-object v6, v3, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1478
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-nez v1, :cond_3e

    .line 1479
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :goto_27
    new-instance v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    invoke-direct {v4}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;-><init>()V

    .line 1491
    .local v4, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iput-object p3, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    .line 1492
    iput-object p4, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .line 1493
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    iget-object v6, v3, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 1496
    const/4 v6, 0x1

    monitor-exit p0

    .line 1501
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v4    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :goto_3d
    return v6

    .line 1481
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_3e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1482
    .local v5, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_47
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1483
    .local v2, "listItem":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iget-object v6, v2, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1484
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 1503
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v2    # "listItem":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :catchall_5f
    move-exception v6

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_2 .. :try_end_61} :catchall_5f

    throw v6

    .line 1487
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .restart local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_62
    :try_start_62
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_27

    .line 1498
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_66
    monitor-exit p0

    goto :goto_3d

    .line 1501
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_5f

    goto :goto_3d
.end method

.method private setRCPNotificationPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1515
    monitor-enter p0

    .line 1516
    :try_start_2
    invoke-direct {p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    if-eqz v7, :cond_68

    invoke-direct {p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 1517
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v3

    .line 1518
    .local v3, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v3, :cond_66

    .line 1519
    iget-object v6, v3, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1521
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-nez v1, :cond_3e

    .line 1522
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1533
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :goto_27
    new-instance v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    invoke-direct {v4}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;-><init>()V

    .line 1534
    .local v4, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iput-object p3, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    .line 1535
    iput-object p4, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .line 1536
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1537
    iget-object v6, v3, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 1539
    const/4 v6, 0x1

    monitor-exit p0

    .line 1544
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v4    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :goto_3d
    return v6

    .line 1524
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_3e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1525
    .local v5, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_47
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1526
    .local v2, "listItem":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iget-object v6, v2, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1527
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 1546
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v2    # "listItem":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :catchall_5f
    move-exception v6

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_2 .. :try_end_61} :catchall_5f

    throw v6

    .line 1530
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .restart local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_62
    :try_start_62
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_27

    .line 1541
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_66
    monitor-exit p0

    goto :goto_3d

    .line 1544
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_5f

    goto :goto_3d
.end method


# virtual methods
.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1244
    const-string v0, "addLockOnImage"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAirCommandEnabled(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 636
    const-string/jumbo v1, "getAirCommandEnabled"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 637
    monitor-enter p0

    .line 638
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 639
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    monitor-exit p0

    return v1

    .line 640
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getAllowAllShare(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 567
    const-string/jumbo v1, "getAllowAllShare"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 568
    monitor-enter p0

    .line 569
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 570
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    monitor-exit p0

    return v1

    .line 571
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getAllowContainerReset(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 452
    const-string/jumbo v1, "getAllowContainerReset"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 453
    monitor-enter p0

    .line 454
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 455
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    monitor-exit p0

    return v1

    .line 456
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getAllowCustomBadgeIcon(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    const-string/jumbo v1, "getAllowCustomBadgeIcon"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 360
    monitor-enter p0

    .line 361
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 362
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z

    monitor-exit p0

    return v1

    .line 363
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getAllowCustomColorIdentification(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 429
    const-string/jumbo v1, "getAllowCustomColorIdentification"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 430
    monitor-enter p0

    .line 431
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 432
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    monitor-exit p0

    return v1

    .line 433
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getAllowCustomPersonaIcon(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 405
    const-string/jumbo v1, "getAllowCustomPersonaIcon"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 406
    monitor-enter p0

    .line 407
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 408
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    monitor-exit p0

    return v1

    .line 409
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getAllowDLNADataTransfer(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 498
    const-string/jumbo v1, "getAllowDLNADataTransfer"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 499
    monitor-enter p0

    .line 500
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 501
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    monitor-exit p0

    return v1

    .line 502
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getAllowExportAndDeleteFiles(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 727
    const-string/jumbo v1, "getAllowExportAndDeleteFiles"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 728
    monitor-enter p0

    .line 729
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 730
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    monitor-exit p0

    return v1

    .line 731
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getAllowExportFiles(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 705
    const-string/jumbo v1, "getAllowExportFiles"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 706
    monitor-enter p0

    .line 707
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 708
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    monitor-exit p0

    return v1

    .line 709
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getAllowImportFiles(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 682
    const-string/jumbo v1, "getAllowImportFiles"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 683
    monitor-enter p0

    .line 684
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 685
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    monitor-exit p0

    return v1

    .line 686
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getAllowPrint(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 521
    const-string/jumbo v1, "getAllowPrint"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 522
    monitor-enter p0

    .line 523
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 524
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    monitor-exit p0

    return v1

    .line 525
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getAllowShortCutCreation(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 475
    const-string/jumbo v1, "getAllowShortCutCreation"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 476
    monitor-enter p0

    .line 477
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 478
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    monitor-exit p0

    return v1

    .line 479
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getAllowUniversalCallerId(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 659
    const-string/jumbo v1, "getAllowUniversalCallerId"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 660
    monitor-enter p0

    .line 661
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 662
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    monitor-exit p0

    return v1

    .line 663
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getCameraModeChangeEnabled(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    const-string/jumbo v1, "getCameraModeChangeEnabled"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 337
    monitor-enter p0

    .line 338
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 339
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z

    monitor-exit p0

    return v1

    .line 340
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getDisableSwitchWidgetOnLockScreen(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    const-string/jumbo v1, "getDisableSwitchWidgetOnLockScreen"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 383
    monitor-enter p0

    .line 384
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 385
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    monitor-exit p0

    return v1

    .line 386
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getEncryptionStatus(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    const-string/jumbo v1, "getEncryptionStatus"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 291
    monitor-enter p0

    .line 292
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 293
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z

    monitor-exit p0

    return v1

    .line 294
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getGearSupportEnabled(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 590
    const-string/jumbo v1, "getGearSupportEnabled"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 591
    monitor-enter p0

    .line 592
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 593
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    monitor-exit p0

    return v1

    .line 594
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getModifyLockScreenTimeout(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 544
    const-string/jumbo v1, "getModifyLockScreenTimeout"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 545
    monitor-enter p0

    .line 546
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 547
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    monitor-exit p0

    return v1

    .line 548
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getPasswordLockPolicy(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 267
    const-string/jumbo v1, "getPasswordLockPolicy"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 268
    monitor-enter p0

    .line 269
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 270
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z

    monitor-exit p0

    return v1

    .line 271
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getPenWindowEnabled(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 613
    const-string/jumbo v1, "getPenWindowEnabled"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 614
    monitor-enter p0

    .line 615
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 616
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    monitor-exit p0

    return v1

    .line 617
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 239
    monitor-enter p0

    .line 240
    :try_start_1
    iget-object v1, p0, mPersonaData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    .line 241
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-nez v0, :cond_18

    .line 242
    new-instance v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    invoke-direct {v0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;-><init>(I)V

    .line 243
    .restart local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-object v1, p0, mPersonaData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 244
    invoke-direct {p0, v0, p1}, loadSettingsLocked(Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;I)V

    .line 246
    :cond_18
    monitor-exit p0

    return-object v0

    .line 247
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1436
    const-string/jumbo v4, "getRCPDataPolicy"

    invoke-static {v4}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1437
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1438
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1440
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1443
    .local v2, "token":J
    :try_start_12
    invoke-direct {p0, v1, p1, p2}, getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1a

    move-result-object v4

    .line 1445
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_1a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1418
    const-string/jumbo v2, "getRCPDataPolicyForUser"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1419
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2}, enforceSystemServiceOrSystemUI(I)V

    .line 1420
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1422
    .local v0, "token":J
    :try_start_11
    invoke-direct {p0, p1, p2, p3}, getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_19

    move-result-object v2

    .line 1424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1451
    const-string/jumbo v4, "getRCPNotificationPolicy"

    invoke-static {v4}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1452
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1453
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1455
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1457
    .local v2, "token":J
    :try_start_12
    invoke-direct {p0, v1, p1, p2}, getNotificationSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1a

    move-result-object v4

    .line 1459
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_1a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getRCPNotificationPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1429
    const-string/jumbo v0, "getRCPNotificationPolicyForUser"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1430
    invoke-direct {p0}, enforceSystemService()V

    .line 1431
    invoke-direct {p0, p1, p2, p3}, getNotificationSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureKeystoreEnabled(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    const-string/jumbo v1, "getSecureKeystoreEnabled"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 314
    monitor-enter p0

    .line 315
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 316
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    monitor-exit p0

    return v1

    .line 317
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getSwitchNotifEnabled(I)Z
    .registers 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 750
    const-string/jumbo v1, "getSwitchNotifEnabled"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 751
    monitor-enter p0

    .line 752
    :try_start_7
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 753
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    monitor-exit p0

    return v1

    .line 754
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isBadgeRequired()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1187
    const-string/jumbo v0, "isBadgeRequired"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1197
    const/4 v0, 0x0

    return v0
.end method

.method public isBadgeRequiredFromOwner(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1202
    const-string/jumbo v0, "isBadgeRequiredFromOwner"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1225
    const/4 v0, 0x0

    return v0
.end method

.method public isMoveFilesToContainerAllowed(I)Z
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 1569
    const/4 v5, 0x0

    .line 1571
    .local v5, "result":Z
    :try_start_1
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 1572
    .local v2, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v0

    .line 1573
    .local v0, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v4

    .line 1574
    .local v4, "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/RCPPolicy;->isMoveFilesToContainerAllowed()Z
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_12} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_12} :catch_1e

    move-result v5

    .line 1582
    .end local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v2    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v4    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    :goto_13
    return v5

    .line 1575
    :catch_14
    move-exception v1

    .line 1576
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v6, "PersonaPolicyManagerService"

    const-string v7, "allowShareClipboardDataToOwner : SecurityException occured"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const/4 v5, 0x0

    .line 1581
    goto :goto_13

    .line 1578
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1e
    move-exception v3

    .line 1579
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v6, "PersonaPolicyManagerService"

    const-string v7, "allowShareClipboardDataToOwner : NullPointerException occured"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const/4 v5, 0x0

    goto :goto_13
.end method

.method public isShareClipboardDataToOwnerAllowed(I)Z
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 1551
    const/4 v5, 0x0

    .line 1553
    .local v5, "result":Z
    :try_start_1
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 1554
    .local v2, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v0

    .line 1555
    .local v0, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v4

    .line 1556
    .local v4, "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/RCPPolicy;->isShareClipboardDataToOwnerAllowed()Z
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_12} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_12} :catch_1e

    move-result v5

    .line 1564
    .end local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v2    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v4    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    :goto_13
    return v5

    .line 1557
    :catch_14
    move-exception v1

    .line 1558
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v6, "PersonaPolicyManagerService"

    const-string v7, "allowShareClipboardDataToOwner : SecurityException occured"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const/4 v5, 0x0

    .line 1563
    goto :goto_13

    .line 1560
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1e
    move-exception v3

    .line 1561
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v6, "PersonaPolicyManagerService"

    const-string v7, "allowShareClipboardDataToOwner : NullPointerException occured"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const/4 v5, 0x0

    goto :goto_13
.end method

.method public registerReceivers()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1230
    const-string/jumbo v0, "registerReceivers"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1232
    new-instance v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;-><init>(Lcom/android/server/pm/PersonaPolicyManagerService;)V

    .line 1233
    .local v1, "receiver":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1234
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1235
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1236
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1237
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1239
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1240
    return-void
.end method

.method public setAirCommandEnabled(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 622
    const-string/jumbo v2, "setAirCommandEnabled"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 623
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 626
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1d

    const-string v2, "airCommand"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 627
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 628
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    .line 629
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 631
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1d
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowAllShare(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 553
    const-string/jumbo v2, "setAllowAllShare"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 554
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 557
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1d

    const-string v2, "allShare"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 558
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 559
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    .line 560
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 562
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1d
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowContainerReset(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    const-string/jumbo v2, "setAllowContainerReset"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 439
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 442
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1d

    const-string v2, "containerReset"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 443
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 444
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    .line 445
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 447
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1d
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowCustomBadgeIcon(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 345
    const-string/jumbo v2, "setAllowCustomBadgeIcon"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 346
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 349
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "customBadgeIcon"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 350
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 351
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z

    .line 352
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 354
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowCustomColorIdentification(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 415
    const-string/jumbo v2, "setAllowCustomColorIdentification"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 416
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 419
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "customColorIdentification"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 420
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 421
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    .line 422
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 424
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowCustomPersonaIcon(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 391
    const-string/jumbo v2, "setAllowCustomPersonaIcon"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 392
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 395
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "customPersonaIcon"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 396
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 397
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    .line 398
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 400
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowDLNADataTransfer(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 484
    const-string/jumbo v2, "setAllowDLNADataTransfer"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 485
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 488
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "dlnaDataTransfer"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 489
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 490
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    .line 491
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 493
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowExportAndDeleteFiles(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 714
    const-string/jumbo v2, "setAllowExportAndDeleteFiles"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 715
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 717
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "exportAndDeleteFiles"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 718
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 719
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    .line 720
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 722
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowExportFiles(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 691
    const-string/jumbo v2, "setAllowExportFiles"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 692
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 695
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "exportFiles"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 696
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 697
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    .line 698
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 700
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowImportFiles(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 668
    const-string/jumbo v2, "setAllowImportFiles"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 669
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 672
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "importFiles"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 673
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 674
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    .line 675
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 677
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowPrint(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 507
    const-string/jumbo v2, "setAllowPrint"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 508
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 511
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "print"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 512
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 513
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    .line 514
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 516
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowShortCutCreation(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 461
    const-string/jumbo v2, "setAllowShortCutCreation"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 462
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 465
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "shortcutCreation"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 466
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 467
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    .line 468
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 470
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowUniversalCallerId(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 645
    const-string/jumbo v2, "setAllowUniversalCallerId"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 646
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 649
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "universalCallerId"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 650
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 651
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    .line 652
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 654
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setCameraModeChangeEnabled(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 322
    const-string/jumbo v2, "setCameraModeChangeEnabled"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 323
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 326
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1d

    const-string v2, "cameraMode"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 327
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 328
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z

    .line 329
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 331
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1d
    const/4 v2, 0x0

    return v2
.end method

.method public setDisableSwitchWidgetOnLockScreen(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    const-string/jumbo v2, "setDisableSwitchWidgetOnLockScreen"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 369
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 372
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "disableSwitchWidget"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 373
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 374
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    .line 375
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 377
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setEncryptionStatus(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    const-string/jumbo v2, "setEncryptionStatus"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 277
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 280
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "encryption"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 281
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 282
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z

    .line 283
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 285
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setGearSupportEnabled(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 576
    const-string/jumbo v2, "setGearSupportEnabled"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 577
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 580
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "gearSupport"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 581
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 582
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    .line 583
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 585
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setModifyLockScreenTimeout(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 530
    const-string/jumbo v2, "setModifyLockScreenTimeout"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 531
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 534
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "modifyTimeout"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 535
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 536
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    .line 537
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 539
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setPasswordLockPolicy(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    const-string/jumbo v2, "setPasswordLockPolicy"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 253
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 257
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "passwordLock"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 258
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 259
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z

    .line 260
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 262
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setPenWindowEnabled(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 599
    const-string/jumbo v2, "setPenWindowEnabled"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 600
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 603
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "penWindow"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 604
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 605
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    .line 606
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 608
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1465
    const-string/jumbo v2, "setRCPDataPolicy"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1466
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1467
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1468
    .local v1, "userHandle":I
    invoke-direct {p0, v1, p1, p2, p3}, setRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1508
    const-string/jumbo v2, "setRCPNotificationPolicy"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1509
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1510
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1511
    .local v1, "userHandle":I
    invoke-direct {p0, v1, p1, p2, p3}, setRCPNotificationPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public setSecureKeystoreEnabled(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 299
    const-string/jumbo v2, "setSecureKeystoreEnabled"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 300
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 303
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "secureKeystore"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 304
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 305
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    .line 306
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 308
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public setSwitchNotifEnabled(IZ)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 736
    const-string/jumbo v2, "setSwitchNotifEnabled"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 737
    invoke-direct {p0, p1}, getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 740
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "switchNotif"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 741
    invoke-virtual {p0, p1}, getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 742
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    .line 743
    invoke-direct {p0, p1}, saveSettingsLocked(I)V

    .line 745
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method
