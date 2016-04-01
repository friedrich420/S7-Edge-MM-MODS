.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SELinuxMMAC$MDMID;,
        Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    }
.end annotation


# static fields
.field private static final ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final AMS_POLICY_ENFORCING:Ljava/lang/String; = "persist.security.ams.enforcing"

.field private static final BASE_MAC_PERMISSIONS:Ljava/lang/String;

.field private static final BASE_SEAPP_CONTEXTS:Ljava/lang/String; = "/seapp_contexts"

.field private static final BASE_VERSION_FILE:Ljava/lang/String; = "/selinux_version"

.field public static final BBCCONTAINER:I = 0x3

.field private static final BBCCONTAIN_START_NUM:I = 0x1f5

.field private static final BBC_CONTAINER_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final BBC_MDM_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final BBC_SECURED_APPTYPE:I = 0x5

.field public static final BLACKLISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static BT_TYPE:I = 0x0

.field private static final CONTAINER_APP:Ljava/lang/String; = "container"

.field private static final DATA_MAC_PERMISSIONS:Ljava/lang/String;

.field private static final DATA_SEAPP_CONTEXTS:Ljava/lang/String;

.field private static final DATA_VERSION_FILE:Ljava/lang/String;

.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final DEBUG_POLICY_ORDER:Z = false

.field private static final FILECOPIER_METADATA_PREFIX:Ljava/lang/String; = "rcpFileCopier"

.field private static final GENERIC_CONTAINER_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final GENERIC_MDM_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final GENERIC_SECURED_APPTYPE:I = 0x3

.field public static final GENERIC_SEINFO:Ljava/lang/String; = "generic_mdm"

.field private static final GENERIC_TRUSTED_APPTYPE:I = 0x4

.field public static final GOOD_CONTAINER:I = 0x1

.field private static final GSD_CATEGORY:I = 0x66

.field private static final INSTALL_POLICY_FILE:[Ljava/io/File;

.field private static final INSTALL_POLICY_PATH:[Ljava/lang/String;

.field public static final IRMCONTAINER:I = 0x4

.field private static final IRM_CATEGORY:I = 0x2be

.field private static final IRM_SERVICE:Ljava/lang/String; = "com.samsung.android.irm.service"

.field private static final MAC_PERMISSIONS:Ljava/lang/String;

.field private static final MAX_BBCCONTAIN_NUM:I = 0xc6

.field private static final MAX_IRMCONTAIN_NUM:I = 0x1

.field private static final MAX_MYCONTAIN_NUM:I = 0x12c

.field public static final MYCONTAINER:I = 0x2

.field private static final MYCONTAIN_START_NUM:I = 0xc9

.field public static final NON_CONTAINER_TYPE:I = 0x0

.field private static final PROVIDER_METADATA_PREFIX:Ljava/lang/String; = "RCPProviderName_"

.field private static final PROXY_METADATA_PREFIX:Ljava/lang/String; = "proxyName"

.field private static RESOURCE_NUM:I = 0x0

.field public static final SBALISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static SDCARD_TYPE:I = 0x0

.field private static final SEAPP_CONTEXTS:Ljava/lang/String;

.field private static final SEAPP_HASH_FILE:Ljava/lang/String;

.field private static final SECURED_APPTYPE:I = 0x1

.field private static final SECURE_PKG_PREFIX:Ljava/lang/String; = "sec_container_"

.field private static final SIG_POLICY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Lcom/android/server/pm/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYNCER_METADATA_PREFIX:Ljava/lang/String; = "RCPSyncerName_"

.field static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field static final TAG1:Ljava/lang/String; = "SEContainer"

.field private static final TRUSTED_APPTYPE:I = 0x2

.field private static final USE_OVERRIDE_POLICY:Z

.field public static final WHITELISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static bbc_containerIDTable:[I

.field private static bbc_flag:Z

.field private static generic_containerIDTable:[I

.field private static irm_containerIDTable:[I

.field private static sDefaultSeinfo:Ljava/lang/String;

.field private static sPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static sSigSeinfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Lcom/android/server/pm/Policy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, sPolicies:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/selinux_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, DATA_VERSION_FILE:Ljava/lang/String;

    .line 112
    invoke-static {}, useOverridePolicy()Z

    move-result v0

    sput-boolean v0, USE_OVERRIDE_POLICY:Z

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, DATA_MAC_PERMISSIONS:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/security/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, BASE_MAC_PERMISSIONS:Ljava/lang/String;

    .line 123
    sget-boolean v0, USE_OVERRIDE_POLICY:Z

    if-eqz v0, :cond_148

    sget-object v0, DATA_MAC_PERMISSIONS:Ljava/lang/String;

    :goto_63
    sput-object v0, MAC_PERMISSIONS:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/seapp_contexts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, DATA_SEAPP_CONTEXTS:Ljava/lang/String;

    .line 134
    sget-boolean v0, USE_OVERRIDE_POLICY:Z

    if-eqz v0, :cond_14c

    sget-object v0, DATA_SEAPP_CONTEXTS:Ljava/lang/String;

    :goto_84
    sput-object v0, SEAPP_CONTEXTS:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/seapp_hash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, SEAPP_HASH_FILE:Ljava/lang/String;

    .line 143
    sput-object v7, sDefaultSeinfo:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sSigSeinfo:Ljava/util/HashMap;

    .line 156
    sput v4, SDCARD_TYPE:I

    .line 157
    sput v5, BT_TYPE:I

    .line 158
    sput v6, RESOURCE_NUM:I

    .line 172
    sput-boolean v4, bbc_flag:Z

    .line 234
    const/16 v0, 0x12c

    new-array v0, v0, [I

    sput-object v0, generic_containerIDTable:[I

    .line 235
    const/16 v0, 0xc6

    new-array v0, v0, [I

    sput-object v0, bbc_containerIDTable:[I

    .line 236
    new-array v0, v5, [I

    sput-object v0, irm_containerIDTable:[I

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, SIG_POLICY:Ljava/util/HashMap;

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, GENERIC_MDM_INFO:Ljava/util/HashMap;

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, BBC_MDM_INFO:Ljava/util/HashMap;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, WHITELISTS:Ljava/util/ArrayList;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, BLACKLISTS:Ljava/util/ArrayList;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, SBALISTS:Ljava/util/ArrayList;

    .line 254
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "security/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "security/spota/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "etc/security/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v6

    aput-object v7, v0, v8

    sput-object v0, INSTALL_POLICY_FILE:[Ljava/io/File;

    .line 262
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/data/security/seapp_contexts"

    aput-object v1, v0, v4

    const-string v1, "/data/security/spota/seapp_contexts"

    aput-object v1, v0, v5

    sget-object v1, SEAPP_CONTEXTS:Ljava/lang/String;

    aput-object v1, v0, v6

    aput-object v7, v0, v8

    sput-object v0, INSTALL_POLICY_PATH:[Ljava/lang/String;

    return-void

    .line 123
    :cond_148
    sget-object v0, BASE_MAC_PERMISSIONS:Ljava/lang/String;

    goto/16 :goto_63

    .line 134
    :cond_14c
    const-string v0, "/seapp_contexts"

    goto/16 :goto_84
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method

.method private static arraylist_to_int_array(Ljava/util/ArrayList;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 853
    .local p0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_a

    .line 857
    :cond_8
    const/4 v0, 0x0

    .line 865
    :cond_9
    return-object v0

    .line 859
    :cond_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 860
    .local v0, "array":[I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 861
    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 862
    .local v1, "i":I
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 863
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_15
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)Z
    .registers 19
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 2369
    const/4 v2, 0x0

    .line 2372
    .local v2, "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v11, v1

    .local v11, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_7
    if-ge v3, v11, :cond_3d4

    aget-object v13, v1, v3

    .line 2373
    .local v13, "s":Landroid/content/pm/Signature;
    if-nez v13, :cond_10

    .line 2372
    :cond_d
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2375
    :cond_10
    sget-object v15, SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 2379
    sget-object v15, SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/Policy;

    .line 2380
    .local v14, "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    if-eqz v14, :cond_3cb

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v15, :cond_3cb

    .line 2381
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/server/pm/Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 2382
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v14, Lcom/android/server/pm/Policy;->category:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2383
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v14, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 2384
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 2385
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 2386
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 2387
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 2388
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 2389
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    .line 2393
    new-instance v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v12}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 2394
    .local v12, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    invoke-virtual {v13}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 2395
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v15, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 2397
    sget-object v15, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b1

    .line 2398
    sget-object v15, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 2400
    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :cond_b1
    if-eqz v2, :cond_127

    .line 2401
    sget-object v15, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e1

    .line 2402
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2403
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 2404
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 2405
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 2406
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 2407
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 2408
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 2409
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 2410
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    .line 2431
    :cond_127
    :goto_127
    sget-object v15, ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_146

    .line 2432
    const/4 v2, 0x0

    .line 2433
    sget-object v15, ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 2434
    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    if-eqz v2, :cond_146

    .line 2435
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->destPackageName:[Ljava/lang/String;

    .line 2452
    :cond_146
    sget-object v15, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_199

    .line 2453
    const/4 v2, 0x0

    .line 2454
    sget-object v15, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 2455
    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    if-eqz v2, :cond_199

    sget-object v15, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_199

    .line 2456
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    .line 2457
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    .line 2458
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 2459
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    if-nez v15, :cond_257

    .line 2460
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 2486
    :cond_199
    :goto_199
    const-string/jumbo v15, "platform"

    invoke-virtual {v14}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1b3

    const-string/jumbo v15, "shared"

    invoke-virtual {v14}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3c9

    :cond_1b3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v15, :cond_3c9

    .line 2488
    const/4 v5, 0x0

    .line 2489
    .local v5, "isProvider":Z
    const/4 v7, 0x0

    .line 2490
    .local v7, "isSyncer":Z
    const/4 v6, 0x0

    .line 2491
    .local v6, "isProxy":Z
    const/4 v4, 0x0

    .line 2492
    .local v4, "isFileCopier":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 2493
    .local v10, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_3c9

    .line 2494
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2495
    .local v8, "it":Ljava/util/Iterator;
    :cond_1cb
    :goto_1cb
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2ab

    .line 2496
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2497
    .local v9, "key":Ljava/lang/String;
    const-string v15, "RCPProviderName_"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_288

    .line 2498
    const/4 v5, 0x1

    goto :goto_1cb

    .line 2420
    .end local v4    # "isFileCopier":Z
    .end local v5    # "isProvider":Z
    .end local v6    # "isProxy":Z
    .end local v7    # "isSyncer":Z
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1e1
    iget-boolean v15, v14, Lcom/android/server/pm/Policy;->isContainerApp:Z

    if-eqz v15, :cond_127

    .line 2421
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2422
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v16, 0x3ff

    move/from16 v0, v16

    if-eq v15, v0, :cond_24a

    .line 2423
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":s0:c"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 2427
    :goto_230
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    goto/16 :goto_127

    .line 2425
    :cond_24a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_230

    .line 2462
    :cond_257
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    goto/16 :goto_199

    .line 2499
    .restart local v4    # "isFileCopier":Z
    .restart local v5    # "isProvider":Z
    .restart local v6    # "isProxy":Z
    .restart local v7    # "isSyncer":Z
    .restart local v8    # "it":Ljava/util/Iterator;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_288
    const-string v15, "RCPSyncerName_"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_293

    .line 2500
    const/4 v7, 0x1

    goto/16 :goto_1cb

    .line 2501
    :cond_293
    const-string/jumbo v15, "proxyName"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_29f

    .line 2502
    const/4 v6, 0x1

    goto/16 :goto_1cb

    .line 2503
    :cond_29f
    const-string/jumbo v15, "rcpFileCopier"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1cb

    .line 2504
    const/4 v4, 0x1

    goto/16 :goto_1cb

    .line 2507
    .end local v9    # "key":Ljava/lang/String;
    :cond_2ab
    if-nez v5, :cond_2b3

    if-nez v7, :cond_2b3

    if-nez v6, :cond_2b3

    if-eqz v4, :cond_3c9

    .line 2508
    :cond_2b3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 2509
    if-eqz v5, :cond_2f9

    .line 2511
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 2513
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 2514
    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as a Provider Agent App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :cond_2f9
    if-eqz v7, :cond_335

    .line 2518
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 2520
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 2521
    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as a Syncer Agent App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    :cond_335
    if-eqz v6, :cond_38d

    .line 2525
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 2527
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 2528
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 2529
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 2530
    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as a Proxy Agent App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    :cond_38d
    if-eqz v4, :cond_3c9

    .line 2534
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 2536
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 2537
    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as an RCP File Copier App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    .end local v4    # "isFileCopier":Z
    .end local v5    # "isProvider":Z
    .end local v6    # "isProxy":Z
    .end local v7    # "isSyncer":Z
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3c9
    const/4 v15, 0x1

    .line 2582
    .end local v12    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v13    # "s":Landroid/content/pm/Signature;
    .end local v14    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :goto_3ca
    return v15

    .line 2544
    .restart local v13    # "s":Landroid/content/pm/Signature;
    .restart local v14    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :cond_3cb
    const-string v15, "SELinuxMMAC"

    const-string v16, "Install policy instance is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 2548
    .end local v13    # "s":Landroid/content/pm/Signature;
    .end local v14    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :cond_3d4
    sget-object v15, SIG_POLICY:Ljava/util/HashMap;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4b1

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    invoke-virtual {v15}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 2550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    invoke-virtual {v15}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 2551
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    iget v15, v15, Lcom/android/server/pm/Policy;->category:I

    move-object/from16 v0, v16

    iput v15, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2552
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    iget v15, v15, Lcom/android/server/pm/Policy;->category:I

    move-object/from16 v0, v16

    iput v15, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    .line 2553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    iget-object v15, v15, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 2554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    iget-object v15, v15, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    .line 2555
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 2556
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 2557
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 2558
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 2559
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 2560
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    .line 2564
    const/4 v15, 0x1

    goto/16 :goto_3ca

    .line 2567
    :cond_4b1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 2568
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 2569
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x3ff

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2570
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x3ff

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    .line 2571
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 2572
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    .line 2573
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 2574
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 2575
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 2576
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 2577
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 2578
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    .line 2580
    const-string v15, "SEContainer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " assignseinfovalue, no default seinfo case, <package name > = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "<seinfo> = null, <category> = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "<allow category> = null"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    const/4 v15, 0x0

    goto/16 :goto_3ca
.end method

.method public static checkContainerAllowCategory(Ljava/lang/String;)Z
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1740
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1741
    .local v1, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1742
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1743
    .local v0, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-eqz v1, :cond_2d

    .line 1744
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1751
    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1752
    sget-object v2, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1753
    const-string v2, "SELinuxMMAC"

    const-string v4, " Given Package Name has a non-empty BBC Container Allow Category"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1760
    :goto_2c
    return v2

    .line 1747
    :cond_2d
    const-string v2, "SELinuxMMAC"

    const-string v3, "Given Package Name has returned sigs NULL"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1749
    goto :goto_2c

    .line 1755
    :cond_36
    sget-object v2, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1756
    const-string v2, "SELinuxMMAC"

    const-string v4, " Given Package Name has a non-empty MyContainer Allow Category"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1757
    goto :goto_2c

    .line 1759
    :cond_47
    const-string v2, "SELinuxMMAC"

    const-string v3, "checkContainerAllowCategory, false is returned."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1760
    goto :goto_2c
.end method

.method protected static checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 512
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 513
    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .line 514
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 515
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 516
    sget-object v3, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 520
    sget-object v3, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 521
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v3, v2, :cond_22

    .line 526
    :goto_21
    return v2

    .line 525
    :cond_22
    const-string v2, "SEContainer"

    const-string v3, "checkIfSingleContainerOwnerIsBeingAdded, false is returned"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v2, 0x0

    goto :goto_21
.end method

.method protected static compareHashsets(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1796
    .local p0, "oldlist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p1, "newlist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v3, "SELinuxMMAC"

    const-string v4, "Entered compareHashsets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1798
    .local v0, "diffList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1799
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Looping over packages in old list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1801
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Package not found in new list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1805
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_56
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5a
    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1806
    .restart local v2    # "pkgName":Ljava/lang/String;
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Looping over packages in new list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    invoke-virtual {p0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1808
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Package not found in old list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1812
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_a0
    return-object v0
.end method

.method protected static createBBCContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    .line 431
    const-string v8, "container"

    monitor-enter v8

    .line 432
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    const/16 v7, 0xc6

    if-ge v3, v7, :cond_8b

    .line 436
    :try_start_8
    sget-object v7, bbc_containerIDTable:[I

    aget v7, v7, v3

    if-nez v7, :cond_87

    .line 440
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 441
    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v1, 0x0

    .line 442
    .local v1, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 443
    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 444
    sget-object v7, BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 448
    sget-object v7, BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/HashSet;

    .line 465
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_28
    sget-object v7, bbc_containerIDTable:[I

    const/4 v9, 0x1

    aput v9, v7, v3

    .line 466
    add-int/lit16 v7, v3, 0x1f5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object v7, BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    add-int/lit16 v6, v3, 0x1f5

    .line 472
    .local v6, "newContainerID":I
    add-int/lit16 v7, v3, 0x1f5

    monitor-exit v8

    .line 476
    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v6    # "newContainerID":I
    :goto_40
    return v7

    .line 450
    .restart local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_41
    sget-object v7, BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 451
    .local v5, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 452
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4b

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 456
    const-string v7, "SEContainer"

    const-string/jumbo v9, "createBBCContainerID failed"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v7, -0x1

    monitor-exit v8

    goto :goto_40

    .line 477
    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :catchall_7e
    move-exception v7

    monitor-exit v8
    :try_end_80
    .catchall {:try_start_8 .. :try_end_80} :catchall_7e

    throw v7

    .line 463
    .restart local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :cond_81
    :try_start_81
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_28

    .line 432
    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 475
    :cond_8b
    const-string v7, "SEContainer"

    const-string/jumbo v9, "createBBCContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v7, -0x7

    monitor-exit v8
    :try_end_95
    .catchall {:try_start_81 .. :try_end_95} :catchall_7e

    goto :goto_40
.end method

.method protected static createContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "bbcFlag":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 352
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 353
    .local v2, "pid":I
    const/4 v1, 0x0

    .line 354
    .local v1, "callpkgName":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-static {}, isBBCAgent()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 356
    invoke-static {}, getBBCFlag()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 357
    const/4 v0, 0x1

    .line 363
    :cond_1c
    if-eqz v0, :cond_23

    .line 364
    invoke-static {p0, p1}, createBBCContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 369
    :goto_22
    return v4

    .line 366
    :cond_23
    const-string v4, "com.samsung.android.irm.service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 367
    invoke-static {p0, p1}, createIRMContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_22

    .line 369
    :cond_30
    invoke-static {p0, p1}, createMyContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_22
.end method

.method protected static createIRMContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2be

    .line 484
    const-string v3, "container"

    monitor-enter v3

    .line 485
    :try_start_5
    sget-object v4, irm_containerIDTable:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-nez v4, :cond_31

    .line 489
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 490
    .local v1, "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .line 491
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 492
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 494
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 495
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v4, irm_containerIDTable:[I

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 496
    const/16 v4, 0x2be

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 497
    sget-object v4, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    monitor-exit v3

    .line 504
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_30
    return v2

    .line 503
    :cond_31
    const-string v2, "SEContainer"

    const-string/jumbo v4, "create IRMContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v2, -0x7

    monitor-exit v3

    goto :goto_30

    .line 505
    :catchall_3c
    move-exception v2

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method protected static createMyContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    .line 378
    const-string v8, "container"

    monitor-enter v8

    .line 379
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    const/16 v7, 0x12c

    if-ge v3, v7, :cond_8b

    .line 383
    :try_start_8
    sget-object v7, generic_containerIDTable:[I

    aget v7, v7, v3

    if-nez v7, :cond_87

    .line 387
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v2}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 388
    .local v2, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .line 389
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 390
    iput-object p0, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 391
    sget-object v7, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 395
    sget-object v7, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 412
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_28
    sget-object v7, generic_containerIDTable:[I

    const/4 v9, 0x1

    aput v9, v7, v3

    .line 413
    add-int/lit16 v7, v3, 0xc9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v7, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    add-int/lit16 v6, v3, 0xc9

    .line 419
    .local v6, "newContainerID":I
    add-int/lit16 v7, v3, 0xc9

    monitor-exit v8

    .line 423
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v6    # "newContainerID":I
    :goto_40
    return v7

    .line 397
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_41
    sget-object v7, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 398
    .local v5, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 399
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4b

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 403
    const-string v7, "SEContainer"

    const-string/jumbo v9, "createMyContainerID failed"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v7, -0x1

    monitor-exit v8

    goto :goto_40

    .line 424
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :catchall_7e
    move-exception v7

    monitor-exit v8
    :try_end_80
    .catchall {:try_start_8 .. :try_end_80} :catchall_7e

    throw v7

    .line 410
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :cond_81
    :try_start_81
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_28

    .line 379
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 422
    :cond_8b
    const-string v7, "SEContainer"

    const-string/jumbo v9, "createMyContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v7, -0x7

    monitor-exit v8
    :try_end_95
    .catchall {:try_start_81 .. :try_end_95} :catchall_7e

    goto :goto_40
.end method

.method private static dumpHash(Ljava/io/File;[B)V
    .registers 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2677
    const/4 v0, 0x0

    .line 2678
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 2680
    .local v2, "tmp":Ljava/io/File;
    :try_start_2
    const-string/jumbo v3, "seapp_hash"

    const-string v4, ".journal"

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 2681
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/File;->setReadable(Z)Z

    .line 2682
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_59

    .line 2683
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_18
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2684
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 2685
    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 2686
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure renaming "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_45
    .catchall {:try_start_18 .. :try_end_45} :catchall_45

    .line 2689
    :catchall_45
    move-exception v3

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_47
    if-eqz v2, :cond_4c

    .line 2690
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2692
    :cond_4c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 2689
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_50
    if-eqz v2, :cond_55

    .line 2690
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2692
    :cond_55
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2694
    return-void

    .line 2689
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_59
    move-exception v3

    goto :goto_47
.end method

.method public static findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p0, "signature"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1136
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 1137
    .local v0, "certs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1138
    invoke-static {p1, v0}, getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method private static flushInstallPolicy()V
    .registers 16

    .prologue
    .line 1818
    :try_start_0
    sget-object v13, SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1820
    sget-object v13, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1821
    sget-object v13, BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1822
    .local v2, "bbc_mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_35

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1823
    .local v1, "bbc_entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1824
    .local v0, "bbc_containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_14

    .line 1866
    .end local v0    # "bbc_containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "bbc_entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_2a
    move-exception v3

    .line 1867
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "SELinuxMMAC"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_34
    return-void

    .line 1826
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_35
    :try_start_35
    sget-object v13, BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1827
    sget-object v13, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1828
    sget-object v13, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 1829
    .local v7, "generic_mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_49
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1830
    .local v6, "generic_entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 1831
    .local v5, "generic_containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    goto :goto_49

    .line 1833
    .end local v5    # "generic_containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v6    # "generic_entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    :cond_5f
    sget-object v13, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1834
    sget-object v13, ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1835
    const/4 v10, 0x0

    .local v10, "pos":I
    :goto_6a
    sget-object v13, SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_80

    .line 1836
    sget-object v13, SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    .line 1835
    add-int/lit8 v10, v10, 0x1

    goto :goto_6a

    .line 1838
    :cond_80
    sget-object v13, SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1839
    const/4 v10, 0x0

    :goto_86
    sget-object v13, WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_c2

    .line 1840
    sget-object v13, WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    .line 1841
    .local v11, "wlaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1842
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    .line 1843
    .local v12, "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    goto :goto_9e

    .line 1845
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v12    # "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_b4
    sget-object v13, WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1839
    add-int/lit8 v10, v10, 0x1

    goto :goto_86

    .line 1847
    .end local v11    # "wlaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;>;"
    :cond_c2
    const/4 v10, 0x0

    :goto_c3
    sget-object v13, BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_ff

    .line 1848
    sget-object v13, BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    .line 1849
    .restart local v11    # "wlaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_db
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1850
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    .line 1851
    .restart local v12    # "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    goto :goto_db

    .line 1853
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v12    # "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_f1
    sget-object v13, BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1847
    add-int/lit8 v10, v10, 0x1

    goto :goto_c3

    .line 1855
    .end local v11    # "wlaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;>;"
    :cond_ff
    invoke-static {}, setupResourceLists()V

    .line 1857
    sget-object v13, irm_containerIDTable:[I

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 1859
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_109
    const/16 v13, 0xc6

    if-ge v8, v13, :cond_115

    .line 1860
    sget-object v13, bbc_containerIDTable:[I

    const/4 v14, 0x0

    aput v14, v13, v8

    .line 1859
    add-int/lit8 v8, v8, 0x1

    goto :goto_109

    .line 1862
    :cond_115
    const/4 v8, 0x0

    :goto_116
    const/16 v13, 0x12c

    if-ge v8, v13, :cond_34

    .line 1863
    sget-object v13, generic_containerIDTable:[I

    const/4 v14, 0x0

    aput v14, v13, v8
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_11f} :catch_2a

    .line 1862
    add-int/lit8 v8, v8, 0x1

    goto :goto_116
.end method

.method protected static getAcrossKnoxPkgInfo()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 305
    sget-object v0, ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getAllPackageNamesFromSEContainer(I)Ljava/util/List;
    .registers 9
    .param p0, "CONTAINER_TYPE"    # I
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
    const/4 v5, 0x0

    .line 593
    const-string v6, "container"

    monitor-enter v6

    .line 594
    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 596
    .local v2, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    const/4 v4, 0x2

    if-ne p0, v4, :cond_10

    .line 597
    monitor-exit v6

    move-object v3, v5

    .line 614
    .end local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_f
    return-object v3

    .line 598
    .restart local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    const/4 v4, 0x1

    if-ne p0, v4, :cond_16

    .line 599
    monitor-exit v6

    move-object v3, v5

    goto :goto_f

    .line 600
    :cond_16
    const/4 v4, 0x4

    if-ne p0, v4, :cond_1c

    .line 601
    monitor-exit v6

    move-object v3, v5

    goto :goto_f

    .line 602
    :cond_1c
    const/4 v4, 0x3

    if-ne p0, v4, :cond_57

    .line 603
    sget-object v4, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 604
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 605
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 613
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .end local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_41
    move-exception v4

    monitor-exit v6
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_41

    throw v4

    .line 607
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .restart local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_44
    :try_start_44
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_55

    .line 608
    const-string v4, "SEContainer"

    const-string/jumbo v7, "getAllPackageNamesFromSEContainer, packageNames.size is 0"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    monitor-exit v6

    move-object v3, v5

    goto :goto_f

    .line 611
    :cond_55
    monitor-exit v6

    goto :goto_f

    .line 613
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_57
    monitor-exit v6
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_41

    move-object v3, v5

    .line 614
    goto :goto_f
.end method

.method public static getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 14
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # [Ljava/lang/String;

    .prologue
    .line 1142
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 1143
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    array-length v10, p1

    new-array v9, v10, [Landroid/content/pm/Signature;

    .line 1144
    .local v9, "signatures":[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .line 1145
    .local v2, "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    array-length v10, p1

    if-ge v3, v10, :cond_19

    .line 1146
    new-instance v10, Landroid/content/pm/Signature;

    aget-object v11, p1, v3

    invoke-direct {v10, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v3

    .line 1145
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1150
    :cond_19
    move-object v1, v9

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1c
    if-ge v4, v5, :cond_12e

    aget-object v7, v1, v4

    .line 1151
    .local v7, "s":Landroid/content/pm/Signature;
    if-nez v7, :cond_25

    .line 1150
    :cond_22
    :goto_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1154
    :cond_25
    sget-object v10, SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 1158
    sget-object v10, SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/Policy;

    .line 1159
    .local v8, "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    if-eqz v8, :cond_125

    if-eqz p0, :cond_125

    .line 1160
    invoke-virtual {v8, p0}, Lcom/android/server/pm/Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 1161
    iget v10, v8, Lcom/android/server/pm/Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    .line 1162
    iget-object v10, v8, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    .line 1163
    invoke-virtual {v8, p0}, Lcom/android/server/pm/Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1164
    iget v10, v8, Lcom/android/server/pm/Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1165
    iget-object v10, v8, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 1166
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 1167
    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 1168
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 1169
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 1170
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 1171
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    .line 1172
    new-instance v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v6}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1173
    .local v6, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1174
    iput-object p0, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1176
    sget-object v10, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a8

    .line 1177
    sget-object v10, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 1178
    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1179
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 1180
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 1181
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1182
    iget v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 1183
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 1184
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 1185
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 1186
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    .line 1189
    :cond_a8
    sget-object v10, ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_bc

    .line 1190
    sget-object v10, ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 1191
    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->destPackageName:[Ljava/lang/String;

    .line 1194
    :cond_bc
    sget-object v10, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e3

    .line 1195
    const/4 v2, 0x0

    .line 1196
    sget-object v10, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 1197
    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    if-eqz v2, :cond_e3

    .line 1198
    iget v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    .line 1199
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    .line 1200
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 1201
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    if-nez v10, :cond_107

    .line 1202
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 1208
    :cond_e3
    :goto_e3
    const-string/jumbo v10, "sec_container_"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_106

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {v10}, isSystemApp(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_106

    .line 1209
    const-string v10, "container"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1210
    invoke-static {p0}, getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1211
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 1267
    .end local v6    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v7    # "s":Landroid/content/pm/Signature;
    .end local v8    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :cond_106
    :goto_106
    return-object v0

    .line 1204
    .restart local v6    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v7    # "s":Landroid/content/pm/Signature;
    .restart local v8    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :cond_107
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    goto :goto_e3

    .line 1226
    .end local v6    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_125
    const-string v10, "SELinuxMMAC"

    const-string v11, "Install policy instance is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 1233
    .end local v7    # "s":Landroid/content/pm/Signature;
    .end local v8    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :cond_12e
    sget-object v10, SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19d

    .line 1234
    sget-object v10, SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    invoke-virtual {v10}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1235
    sget-object v10, SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    invoke-virtual {v10}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 1236
    sget-object v10, SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    iget v10, v10, Lcom/android/server/pm/Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1237
    sget-object v10, SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    iget v10, v10, Lcom/android/server/pm/Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    .line 1238
    sget-object v10, SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    iget-object v10, v10, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 1239
    sget-object v10, SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    iget-object v10, v10, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    .line 1240
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 1241
    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 1242
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 1243
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 1244
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 1245
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    goto/16 :goto_106

    .line 1251
    :cond_19d
    const-string/jumbo v10, "untrusted"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1252
    const-string/jumbo v10, "untrusted"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 1253
    const/16 v10, 0x3ff

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1254
    const/16 v10, 0x3ff

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    .line 1255
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 1256
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    .line 1257
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 1258
    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 1259
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 1260
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 1261
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 1262
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    goto/16 :goto_106
.end method

.method protected static getBBCContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .registers 6
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 916
    const-string v3, "container"

    monitor-enter v3

    .line 917
    :try_start_3
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 918
    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 919
    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 920
    sget-object v2, BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 921
    .local v1, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-exit v3

    return-object v1

    .line 922
    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catchall_16
    move-exception v2

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public static getBBCFlag()Z
    .registers 1

    .prologue
    .line 2009
    sget-boolean v0, bbc_flag:Z

    return v0
.end method

.method public static getBlacklist(II)Ljava/util/HashSet;
    .registers 4
    .param p0, "userId"    # I
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    sget-object v0, BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method public static getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    .line 1723
    const/4 v1, 0x0

    .line 1724
    .local v1, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1725
    .local v0, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1726
    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1727
    sget-object v2, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1728
    sget-object v2, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 1729
    .restart local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget-object v2, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    .line 1734
    :goto_1c
    return-object v2

    .line 1730
    :cond_1d
    sget-object v2, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1731
    sget-object v2, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 1732
    .restart local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget-object v2, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_1c

    .line 1734
    :cond_30
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method protected static getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;
    .registers 18
    .param p0, "containerID"    # I
    .param p1, "CONTAINER_TYPE"    # I
    .param p2, "appType"    # I

    .prologue
    .line 757
    const/4 v2, 0x0

    .line 758
    .local v2, "bbcFlag":Z
    const/4 v9, 0x0

    .line 762
    .local v9, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    const-string v13, "container"

    monitor-enter v13

    .line 763
    const/4 v5, 0x0

    .line 764
    .local v5, "existContainerAllowCat":Ljava/lang/String;
    :try_start_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v10, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, isBBCAgent()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 766
    invoke-static {}, getBBCFlag()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 767
    const/4 v2, 0x1

    .line 771
    :cond_18
    if-eqz v2, :cond_95

    .line 772
    sget-object v12, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 779
    :goto_20
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 780
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget-object v5, v12, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    .line 784
    const/4 v11, 0x0

    .line 785
    .local v11, "srcCategories":[Ljava/lang/String;
    if-eqz v5, :cond_24

    .line 786
    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 790
    move-object v1, v11

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_44
    if-ge v7, v8, :cond_24

    aget-object v3, v1, v7

    .line 794
    .local v3, "cat":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_92

    .line 798
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_73

    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_73

    .line 799
    const/16 v12, 0x66

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_73

    .line 803
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v12, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_73
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_92

    const/4 v12, 0x4

    move/from16 v0, p2

    if-ne v0, v12, :cond_92

    .line 807
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, isMyContainerID(I)Z

    move-result v12

    if-eqz v12, :cond_92

    .line 811
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v12, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_92
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 774
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "cat":Ljava/lang/String;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "srcCategories":[Ljava/lang/String;
    :cond_95
    sget-object v12, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    goto :goto_20

    .line 822
    :cond_9c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_b0

    .line 823
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    monitor-exit v13

    .line 826
    :goto_af
    return-object v12

    .line 825
    :cond_b0
    const-string v12, "SEContainer"

    const-string/jumbo v14, "getContainerAllowPackageNamesFromSEContainer, null is returned"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v12, 0x0

    monitor-exit v13

    goto :goto_af

    .line 827
    .end local v10    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_bb
    move-exception v12

    monitor-exit v13
    :try_end_bd
    .catchall {:try_start_6 .. :try_end_bd} :catchall_bb

    throw v12
.end method

.method protected static getMyContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .registers 6
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 903
    const-string v3, "container"

    monitor-enter v3

    .line 904
    :try_start_3
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 905
    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 906
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 907
    sget-object v2, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 908
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-exit v3

    return-object v0

    .line 909
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :catchall_16
    move-exception v2

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v2
.end method

.method private static getPackageLevelbyKey(Ljava/lang/String;)I
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 309
    const/16 v0, 0x3ff

    .line 310
    .local v0, "category":I
    if-eqz p0, :cond_22

    const-string/jumbo v5, "sec_container_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 311
    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 312
    .local v2, "dotIndex":I
    const-string/jumbo v5, "sec_container_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 313
    .local v1, "categoryStartIndex":I
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "strCategory":Ljava/lang/String;
    :try_start_1e
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_21} :catch_23

    move-result v0

    .line 320
    .end local v1    # "categoryStartIndex":I
    .end local v2    # "dotIndex":I
    .end local v4    # "strCategory":Ljava/lang/String;
    :cond_22
    :goto_22
    return v0

    .line 316
    .restart local v1    # "categoryStartIndex":I
    .restart local v2    # "dotIndex":I
    .restart local v4    # "strCategory":Ljava/lang/String;
    :catch_23
    move-exception v3

    .line 317
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SELinuxMMAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not define category."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method protected static getPackageNamesFromSEContainerID(III)[Ljava/lang/String;
    .registers 11
    .param p0, "containerID"    # I
    .param p1, "CONTAINER_TYPE"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v5, 0x0

    .line 533
    const-string v6, "container"

    monitor-enter v6

    .line 534
    const/4 v4, 0x2

    if-ne p1, v4, :cond_17

    .line 535
    :try_start_7
    invoke-static {p0}, isMyContainerID(I)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 537
    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not my Container ID - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    monitor-exit v6

    move-object v4, v5

    .line 585
    :goto_16
    return-object v4

    .line 541
    :cond_17
    const/4 v4, 0x1

    if-ne p1, v4, :cond_28

    .line 542
    const/16 v4, 0x66

    if-eq p0, v4, :cond_4c

    .line 544
    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not GSD_Category - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    monitor-exit v6

    move-object v4, v5

    goto :goto_16

    .line 548
    :cond_28
    const/4 v4, 0x4

    if-ne p1, v4, :cond_39

    .line 549
    const/16 v4, 0x2be

    if-eq p0, v4, :cond_4c

    .line 551
    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not IRM Container ID - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    monitor-exit v6

    move-object v4, v5

    goto :goto_16

    .line 555
    :cond_39
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4c

    .line 556
    invoke-static {p0}, isBBCContainerID(I)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 558
    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not BBC Container ID - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    monitor-exit v6

    move-object v4, v5

    goto :goto_16

    .line 563
    :cond_4c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v3, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 565
    .local v2, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    const/4 v4, 0x5

    if-ne p2, v4, :cond_8e

    .line 566
    sget-object v4, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 570
    :goto_5b
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5f
    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 571
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget v4, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    if-eq v4, p0, :cond_7f

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget v4, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    if-ne v4, p0, :cond_5f

    .line 575
    :cond_7f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 586
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .end local v3    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_8b
    move-exception v4

    monitor-exit v6
    :try_end_8d
    .catchall {:try_start_7 .. :try_end_8d} :catchall_8b

    throw v4

    .line 568
    .restart local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .restart local v3    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8e
    :try_start_8e
    sget-object v4, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_5b

    .line 578
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_95
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_a7

    .line 582
    const-string v4, "SEContainer"

    const-string/jumbo v7, "getPackageNamesFromSEContainerID, packageNames.size is 0"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    monitor-exit v6

    move-object v4, v5

    goto/16 :goto_16

    .line 585
    :cond_a7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    monitor-exit v6
    :try_end_b4
    .catchall {:try_start_8e .. :try_end_b4} :catchall_8b

    goto/16 :goto_16
.end method

.method public static getSBAlist(I)Ljava/util/HashSet;
    .registers 2
    .param p0, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    sget-object v0, SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method protected static getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 16
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "CONTAINER_TYPE"    # I
    .param p4, "appType"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, -0x1

    .line 618
    const/4 v2, 0x0

    .line 622
    .local v2, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const-string v6, "container"

    monitor-enter v6

    .line 623
    :try_start_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .local v3, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 625
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 626
    :cond_1a
    invoke-static {p2}, getSignatureFromContainerInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 628
    :cond_1e
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 629
    .local v1, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-eqz v3, :cond_70

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_70

    .line 630
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 638
    iput-object p2, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 639
    if-eq p3, v8, :cond_3c

    if-eq p3, v7, :cond_3c

    if-ne p3, v10, :cond_82

    .line 640
    :cond_3c
    sget-object v4, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v2, v0

    .line 644
    :cond_46
    :goto_46
    if-eq p3, v8, :cond_4c

    if-eq p3, v9, :cond_4c

    if-ne p3, v10, :cond_9a

    .line 645
    :cond_4c
    if-eqz v2, :cond_ab

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {v4}, isMyContainerID(I)Z

    move-result v4

    if-nez v4, :cond_64

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {v4}, isBBCContainerID(I)Z

    move-result v4

    if-nez v4, :cond_64

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    const/16 v7, 0x2be

    if-ne v4, v7, :cond_ab

    .line 649
    :cond_64
    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {p0, p1, v4}, isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 653
    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    monitor-exit v6

    .line 674
    :goto_6f
    return v4

    .line 633
    :cond_70
    const-string v4, "SEContainer"

    const-string v7, "Given Package Name has returned sigs NULL"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-string v4, "SEContainer"

    const-string/jumbo v7, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    monitor-exit v6

    move v4, v5

    goto :goto_6f

    .line 641
    :cond_82
    if-ne p3, v9, :cond_46

    .line 642
    sget-object v4, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v2, v0

    goto :goto_46

    .line 658
    :cond_8f
    const-string v4, "SEContainer"

    const-string/jumbo v7, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    monitor-exit v6

    move v4, v5

    goto :goto_6f

    .line 662
    :cond_9a
    if-ne p3, v7, :cond_ab

    .line 663
    if-eqz v2, :cond_ab

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    const/16 v7, 0x66

    if-ne v4, v7, :cond_ab

    .line 667
    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    monitor-exit v6

    goto :goto_6f

    .line 675
    .end local v1    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v3    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_a8
    move-exception v4

    monitor-exit v6
    :try_end_aa
    .catchall {:try_start_9 .. :try_end_aa} :catchall_a8

    throw v4

    .line 673
    .restart local v1    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v3    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_ab
    :try_start_ab
    const-string v4, "SEContainer"

    const-string/jumbo v7, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    monitor-exit v6
    :try_end_b4
    .catchall {:try_start_ab .. :try_end_b4} :catchall_a8

    move v4, v5

    goto :goto_6f
.end method

.method protected static getSEContainerIDsForSystem()Ljava/util/List;
    .registers 9
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
    .line 871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v0, "categorys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 873
    .local v5, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    sget-object v6, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_96

    .line 874
    sget-object v6, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 875
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 876
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-eqz v6, :cond_18

    .line 882
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 883
    .local v4, "itr":Ljava/util/Iterator;
    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 884
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 888
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v4    # "itr":Ljava/util/Iterator;
    :cond_5a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_68

    .line 889
    const-string v6, "SEContainer"

    const-string/jumbo v7, "getSEContainerIDsForSystem, categorys.size is 0"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 892
    .local v2, "i":I
    const-string v6, "SEContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSEContainerIDsForSystem, categorys: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 895
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_96
    return-object v0
.end method

.method protected static getSEContainerIDsFromContainerAllowPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I
    .registers 20
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "CONTAINER_TYPE"    # I
    .param p4, "appType"    # I

    .prologue
    .line 679
    const/4 v2, 0x0

    .line 680
    .local v2, "bbcFlag":Z
    const/4 v9, 0x0

    .line 684
    .local v9, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v4, "containerIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v13, "container"

    monitor-enter v13

    .line 686
    :try_start_a
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v10, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 688
    if-eqz v10, :cond_1b

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 689
    :cond_1b
    invoke-static/range {p2 .. p2}, getSignatureFromContainerInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 692
    :cond_1f
    new-instance v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v8}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 693
    .local v8, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-eqz v10, :cond_8b

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8b

    .line 694
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 702
    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 703
    invoke-static {}, isBBCAgent()Z

    move-result v12

    if-eqz v12, :cond_46

    .line 704
    invoke-static {}, getBBCFlag()Z

    move-result v12

    if-eqz v12, :cond_46

    .line 705
    const/4 v2, 0x1

    .line 709
    :cond_46
    if-eqz v2, :cond_98

    .line 710
    sget-object v12, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v9, v0

    .line 715
    :goto_52
    iget-object v5, v9, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    .line 716
    .local v5, "existContainerAllowCat":Ljava/lang/String;
    const/4 v11, 0x0

    .line 717
    .local v11, "srcCategories":[Ljava/lang/String;
    if-eqz v5, :cond_5d

    .line 718
    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 720
    :cond_5d
    if-eqz v11, :cond_df

    .line 721
    move-object v1, v11

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_62
    if-ge v6, v7, :cond_d9

    aget-object v3, v1, v6

    .line 725
    .local v3, "cat":Ljava/lang/String;
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_a3

    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_a3

    .line 726
    const/16 v12, 0x66

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a3

    .line 730
    const/16 v12, 0x66

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-static {v4}, arraylist_to_int_array(Ljava/util/ArrayList;)[I

    move-result-object v12

    monitor-exit v13

    .line 752
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "cat":Ljava/lang/String;
    .end local v5    # "existContainerAllowCat":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v11    # "srcCategories":[Ljava/lang/String;
    :goto_8a
    return-object v12

    .line 697
    :cond_8b
    const-string v12, "SEContainer"

    const-string v14, "Given Package Name has returned sigs NULL"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v12, 0x0

    monitor-exit v13

    goto :goto_8a

    .line 753
    .end local v8    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v10    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_95
    move-exception v12

    monitor-exit v13
    :try_end_97
    .catchall {:try_start_a .. :try_end_97} :catchall_95

    throw v12

    .line 712
    .restart local v8    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v10    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_98
    :try_start_98
    sget-object v12, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v9, v0

    goto :goto_52

    .line 734
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "cat":Ljava/lang/String;
    .restart local v5    # "existContainerAllowCat":Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v11    # "srcCategories":[Ljava/lang/String;
    :cond_a3
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_ca

    const/4 v12, 0x4

    move/from16 v0, p4

    if-ne v0, v12, :cond_ca

    .line 735
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, isMyContainerID(I)Z

    move-result v12

    if-eqz v12, :cond_ca

    .line 736
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-static {p0, v0, v12}, isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_cd

    .line 737
    const-string v12, "SELinuxMMAC"

    const-string v14, "Given Container ID not created by Caller - Returning Refused"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_ca
    :goto_ca
    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    .line 742
    :cond_cd
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ca

    .line 747
    .end local v3    # "cat":Ljava/lang/String;
    :cond_d9
    invoke-static {v4}, arraylist_to_int_array(Ljava/util/ArrayList;)[I

    move-result-object v12

    monitor-exit v13

    goto :goto_8a

    .line 750
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_df
    const-string v12, "SEContainer"

    const-string v14, "Exit getSEContainerIDsFromContainerAllowPackage in SELinuxMMAC"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v12, 0x0

    monitor-exit v13
    :try_end_e8
    .catchall {:try_start_98 .. :try_end_e8} :catchall_95

    goto :goto_8a
.end method

.method private static getSignatureFromContainerInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1969
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1970
    .local v2, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_8

    .line 1996
    :cond_7
    :goto_7
    return-object v2

    .line 1973
    :cond_8
    sget-object v3, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    .line 1974
    .local v0, "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1975
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1979
    .end local v0    # "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_2b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 1980
    sget-object v3, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    .line 1981
    .restart local v0    # "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1982
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1988
    .end local v0    # "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_54
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1989
    sget-object v3, ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    .line 1990
    .restart local v0    # "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 1991
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public static getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1941
    if-nez p0, :cond_d

    .line 1943
    const-string v7, "SELinuxMMAC"

    const-string/jumbo v8, "getSignatureFromPackage: packageName is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 1964
    :cond_c
    :goto_c
    return-object v5

    .line 1947
    :cond_d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 1948
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .line 1950
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v7, 0x40

    :try_start_14
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-interface {v3, p0, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1951
    if-eqz v2, :cond_35

    .line 1952
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1953
    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1954
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    array-length v7, v4

    if-ge v1, v7, :cond_c

    .line 1955
    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1954
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1959
    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_35
    const-string v7, "SELinuxMMAC"

    const-string/jumbo v8, "getSignatureFromPackage: pi is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3d} :catch_3f

    move-object v5, v6

    .line 1960
    goto :goto_c

    .line 1962
    :catch_3f
    move-exception v0

    .line 1963
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 1964
    goto :goto_c
.end method

.method public static getWhitelist(II)Ljava/util/HashSet;
    .registers 4
    .param p0, "userId"    # I
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    sget-object v0, WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method public static hasBBCContainers()Z
    .registers 1

    .prologue
    .line 1792
    sget-object v0, BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static hasGenericContainers()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1777
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v2, 0x12c

    if-ge v0, v2, :cond_10

    .line 1781
    sget-object v2, generic_containerIDTable:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_d

    .line 1788
    :goto_c
    return v1

    .line 1777
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1788
    :cond_10
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static hasSEContainers()Z
    .registers 6

    .prologue
    .line 1764
    const/4 v3, 0x0

    .line 1765
    .local v3, "retval":Z
    sget-object v4, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1766
    .local v2, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    sget-object v4, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    .line 1767
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1768
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const-string v5, "com.samsung.android.irm.service"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1769
    const/4 v3, 0x1

    goto :goto_13

    .line 1773
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_31
    return v3
.end method

.method private static hashset_to_int_array(Ljava/util/HashSet;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 834
    .local p0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_a

    .line 838
    :cond_8
    const/4 v0, 0x0

    .line 846
    :cond_9
    return-object v0

    .line 840
    :cond_a
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 841
    .local v0, "array":[I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 842
    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 843
    .local v1, "i":I
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 844
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_15
.end method

.method public static isBBCAgent()Z
    .registers 1

    .prologue
    .line 2000
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->isBBCAgent()Z

    move-result v0

    return v0
.end method

.method public static isBBCContainerID(I)Z
    .registers 3
    .param p0, "containerID"    # I

    .prologue
    .line 285
    const/16 v0, 0x1f5

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2bb

    if-ge p0, v0, :cond_a

    .line 286
    const/4 v0, 0x1

    .line 289
    :goto_9
    return v0

    .line 288
    :cond_a
    const-string v0, "SELinuxMMAC"

    const-string/jumbo v1, "isBBCContainerID, false is returned"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    .line 957
    const/4 v2, 0x0

    .line 958
    .local v2, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v3}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 959
    .local v3, "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iput-object p1, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 960
    iput-object p0, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 961
    const/4 v1, 0x0

    .line 962
    .local v1, "bbcFlag":Z
    const-string v5, "container"

    monitor-enter v5

    .line 963
    :try_start_e
    invoke-static {}, isBBCAgent()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 964
    invoke-static {}, getBBCFlag()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 965
    const/4 v1, 0x1

    .line 968
    :cond_1b
    if-eqz v1, :cond_38

    .line 969
    sget-object v4, BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    .line 973
    :goto_27
    if-nez v2, :cond_29

    .line 978
    :cond_29
    if-eqz v2, :cond_43

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 982
    const/4 v4, 0x1

    monitor-exit v5

    .line 988
    :goto_37
    return v4

    .line 971
    :cond_38
    sget-object v4, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    goto :goto_27

    .line 984
    :cond_43
    monitor-exit v5
    :try_end_44
    .catchall {:try_start_e .. :try_end_44} :catchall_4e

    .line 986
    const-string v4, "SEContainer"

    const-string/jumbo v5, "isContainerCreatedbyCaller returning false"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/4 v4, 0x0

    goto :goto_37

    .line 984
    :catchall_4e
    move-exception v4

    :try_start_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v4
.end method

.method public static isMyContainerID(I)Z
    .registers 3
    .param p0, "containerID"    # I

    .prologue
    .line 277
    const/16 v0, 0xc9

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1f5

    if-ge p0, v0, :cond_a

    .line 278
    const/4 v0, 0x1

    .line 281
    :goto_9
    return v0

    .line 280
    :cond_a
    const-string v0, "SELinuxMMAC"

    const-string/jumbo v1, "isMyContainerID, false is returned"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected static isSEContainerActivated(I)Z
    .registers 10
    .param p0, "containerID"    # I

    .prologue
    .line 926
    const/4 v0, 0x0

    .line 927
    .local v0, "bbcFlag":Z
    invoke-static {}, isBBCAgent()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 928
    invoke-static {}, getBBCFlag()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 929
    const/4 v0, 0x1

    .line 932
    :cond_e
    const/4 v1, 0x0

    .line 936
    .local v1, "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    const/4 v4, 0x0

    .line 937
    .local v4, "res":Z
    const-string v7, "container"

    monitor-enter v7

    .line 938
    if-eqz v0, :cond_3c

    .line 939
    :try_start_15
    new-instance v2, Ljava/util/ArrayList;

    sget-object v6, BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v1    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .local v2, "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    move-object v1, v2

    .line 943
    .end local v2    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .restart local v1    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    :goto_21
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4c

    .line 945
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 946
    const/4 v4, 0x1

    .line 949
    monitor-exit v7

    move v5, v4

    .line 953
    .end local v4    # "res":Z
    .local v5, "res":I
    :goto_3b
    return v5

    .line 941
    .end local v3    # "i":I
    .end local v5    # "res":I
    .restart local v4    # "res":Z
    :cond_3c
    new-instance v2, Ljava/util/ArrayList;

    sget-object v6, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v1    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .restart local v2    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    move-object v1, v2

    .end local v2    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .restart local v1    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    goto :goto_21

    .line 943
    .restart local v3    # "i":I
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 952
    :cond_4c
    monitor-exit v7

    move v5, v4

    .line 953
    .restart local v5    # "res":I
    goto :goto_3b

    .line 952
    .end local v3    # "i":I
    .end local v5    # "res":I
    :catchall_4f
    move-exception v6

    monitor-exit v7
    :try_end_51
    .catchall {:try_start_15 .. :try_end_51} :catchall_4f

    throw v6
.end method

.method private static isSystemApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "seInfo"    # Ljava/lang/String;

    .prologue
    .line 324
    const-string/jumbo v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "release"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private static parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1893
    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1894
    .local v0, "seinfoValue":Ljava/lang/String;
    invoke-static {v0}, validateValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1895
    const-string v1, "SELinuxMMAC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<seinfo> without valid value at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    const/4 v0, 0x0

    .line 1898
    :cond_2b
    return-object v0
.end method

.method private static readCert(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2330
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "cert"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2331
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 2332
    return-void
.end method

.method private static readDefaultOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 2271
    const-string/jumbo v3, "default"

    invoke-interface {p0, v5, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2272
    new-instance v0, Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-direct {v0}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    .line 2273
    .local v0, "pb":Lcom/android/server/pm/Policy$PolicyBuilder;
    invoke-virtual {v0}, Lcom/android/server/pm/Policy$PolicyBuilder;->setAsDefaultPolicy()Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 2275
    :cond_10
    :goto_10
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3c

    .line 2276
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v5, :cond_10

    .line 2280
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2281
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "seinfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2282
    const-string/jumbo v3, "value"

    invoke-interface {p0, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2283
    .local v1, "seinfo":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 2284
    invoke-static {p0}, readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_10

    .line 2286
    .end local v1    # "seinfo":Ljava/lang/String;
    :cond_38
    invoke-static {p0}, skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_10

    .line 2290
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3c
    invoke-virtual {v0}, Lcom/android/server/pm/Policy$PolicyBuilder;->build()Lcom/android/server/pm/Policy;

    move-result-object v3

    return-object v3
.end method

.method public static readInstallPolicy()Z
    .registers 18

    .prologue
    .line 2031
    const/4 v7, 0x0

    .line 2032
    .local v7, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/Policy;>;"
    const/4 v9, 0x0

    .line 2033
    .local v9, "policyFile":Ljava/io/FileReader;
    const/4 v11, 0x0

    .line 2034
    .local v11, "priorityPolicyFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 2035
    .local v4, "index":I
    const/4 v3, 0x0

    .line 2041
    .local v3, "i":I
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v4

    .line 2043
    :try_start_9
    new-instance v10, Ljava/io/FileReader;

    sget-object v14, INSTALL_POLICY_FILE:[Ljava/io/File;

    add-int/lit8 v15, v4, -0x1

    aget-object v14, v14, v15

    invoke-direct {v10, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_14} :catch_aa
    .catchall {:try_start_9 .. :try_end_14} :catchall_db

    .line 2044
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .local v10, "policyFile":Ljava/io/FileReader;
    :try_start_14
    sget-object v14, INSTALL_POLICY_FILE:[Ljava/io/File;

    add-int/lit8 v15, v4, -0x1

    aget-object v11, v14, v15
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1a} :catch_20b
    .catchall {:try_start_14 .. :try_end_1a} :catchall_207

    .line 2051
    if-eqz v10, :cond_1f

    .line 2052
    :try_start_1c
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_1f0

    .line 2058
    :cond_1f
    :goto_1f
    const/4 v14, 0x7

    new-array v5, v14, [Ljava/io/File;

    const/4 v14, 0x0

    aput-object v11, v5, v14

    const/4 v14, 0x1

    new-instance v15, Ljava/io/File;

    const-string v16, "/data/security/good/mac_permissions.xml"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v15, v5, v14

    const/4 v14, 0x2

    new-instance v15, Ljava/io/File;

    const-string v16, "/data/security/mycontainer/mac_permissions.xml"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v15, v5, v14

    const/4 v14, 0x3

    new-instance v15, Ljava/io/File;

    const-string v16, "/data/security/irm/mac_permissions.xml"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v15, v5, v14

    const/4 v14, 0x4

    new-instance v15, Ljava/io/File;

    const-string v16, "/data/security/bbccontainer/mac_permissions.xml"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v15, v5, v14

    const/4 v14, 0x5

    new-instance v15, Ljava/io/File;

    const-string v16, "/data/security/whitelist/mac_permissions.xml"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v15, v5, v14

    const/4 v14, 0x6

    const/4 v15, 0x0

    aput-object v15, v5, v14

    .line 2065
    .local v5, "macPermFiles":[Ljava/io/File;
    const/4 v1, 0x0

    .line 2066
    .local v1, "cnt":I
    const/4 v0, 0x0

    .local v0, "cert":Ljava/lang/String;
    move-object v9, v10

    .line 2067
    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    invoke-static {}, flushInstallPolicy()V

    .line 2068
    :goto_61
    aget-object v14, v5, v1

    if-eqz v14, :cond_1e8

    .line 2069
    const-string v14, "SELinuxMMAC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Read and parse file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v5, v1

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :try_start_83
    new-instance v10, Ljava/io/FileReader;

    aget-object v14, v5, v1

    invoke-direct {v10, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_8a} :catch_204
    .catch Ljava/io/FileNotFoundException; {:try_start_83 .. :try_end_8a} :catch_201
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8a} :catch_1ff
    .catchall {:try_start_83 .. :try_end_8a} :catchall_1fd

    .line 2072
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    :try_start_8a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 2073
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2074
    const-string/jumbo v14, "policy"

    invoke-static {v6, v14}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2076
    :cond_97
    :goto_97
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2077
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_9d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8a .. :try_end_9d} :catch_11a
    .catch Ljava/io/FileNotFoundException; {:try_start_8a .. :try_end_9d} :catch_155
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_9d} :catch_1a1
    .catchall {:try_start_8a .. :try_end_9d} :catchall_1bf

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e2

    .line 2124
    if-eqz v10, :cond_a6

    .line 2125
    :try_start_a3
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_1e4

    :cond_a6
    move-object v9, v10

    .line 2131
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :cond_a7
    :goto_a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 2045
    .end local v0    # "cert":Ljava/lang/String;
    .end local v1    # "cnt":I
    .end local v5    # "macPermFiles":[Ljava/io/File;
    :catch_aa
    move-exception v2

    .line 2046
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_ab
    :try_start_ab
    const-string v14, "SELinuxMMAC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t find install policy "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, INSTALL_POLICY_FILE:[Ljava/io/File;

    add-int/lit8 v17, v4, -0x1

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    const-string v14, "SELinuxMMAC"

    const-string v15, "MMAC install disabled."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_ab .. :try_end_d4} :catchall_db

    .line 2048
    const/4 v14, 0x0

    .line 2051
    if-eqz v9, :cond_da

    .line 2052
    :try_start_d7
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_1f3

    .line 2199
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_da
    :goto_da
    return v14

    .line 2050
    :catchall_db
    move-exception v14

    .line 2051
    :goto_dc
    if-eqz v9, :cond_e1

    .line 2052
    :try_start_de
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_1f6

    .line 2056
    :cond_e1
    :goto_e1
    throw v14

    .line 2080
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v0    # "cert":Ljava/lang/String;
    .restart local v1    # "cnt":I
    .restart local v5    # "macPermFiles":[Ljava/io/File;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    :cond_e2
    :try_start_e2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2081
    .local v13, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "signer"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c7

    .line 2082
    const/4 v14, 0x0

    const-string/jumbo v15, "signature"

    invoke-interface {v6, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2083
    if-nez v0, :cond_12d

    .line 2084
    const-string v14, "SELinuxMMAC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<signer> without signature at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_118
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e2 .. :try_end_118} :catch_11a
    .catch Ljava/io/FileNotFoundException; {:try_start_e2 .. :try_end_118} :catch_155
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_118} :catch_1a1
    .catchall {:try_start_e2 .. :try_end_118} :catchall_1bf

    goto/16 :goto_97

    .line 2116
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "tagName":Ljava/lang/String;
    :catch_11a
    move-exception v2

    move-object v9, v10

    .line 2117
    .end local v10    # "policyFile":Ljava/io/FileReader;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :goto_11c
    :try_start_11c
    const-string v14, "SELinuxMMAC"

    const-string v15, "Got execption parsing "

    invoke-static {v14, v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_123
    .catchall {:try_start_11c .. :try_end_123} :catchall_1fd

    .line 2124
    if-eqz v9, :cond_a7

    .line 2125
    :try_start_125
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_12a

    goto/16 :goto_a7

    .line 2127
    :catch_12a
    move-exception v14

    goto/16 :goto_a7

    .line 2090
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_12d
    :try_start_12d
    new-instance v12, Landroid/content/pm/Signature;

    invoke-direct {v12, v0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_132
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12d .. :try_end_132} :catch_17f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12d .. :try_end_132} :catch_11a
    .catch Ljava/io/FileNotFoundException; {:try_start_12d .. :try_end_132} :catch_155
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_132} :catch_1a1
    .catchall {:try_start_12d .. :try_end_132} :catchall_1bf

    .line 2096
    .local v12, "signature":Landroid/content/pm/Signature;
    if-nez v12, :cond_1b4

    .line 2097
    :try_start_134
    const-string v14, "SELinuxMMAC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<signer> with null signature at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_153
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_134 .. :try_end_153} :catch_11a
    .catch Ljava/io/FileNotFoundException; {:try_start_134 .. :try_end_153} :catch_155
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_153} :catch_1a1
    .catchall {:try_start_134 .. :try_end_153} :catchall_1bf

    goto/16 :goto_97

    .line 2118
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tagName":Ljava/lang/String;
    :catch_155
    move-exception v2

    move-object v9, v10

    .line 2119
    .end local v10    # "policyFile":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :goto_157
    :try_start_157
    const-string v14, "SELinuxMMAC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "File not found exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v5, v1

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_175
    .catchall {:try_start_157 .. :try_end_175} :catchall_1fd

    .line 2124
    if-eqz v9, :cond_a7

    .line 2125
    :try_start_177
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_17a
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_17a} :catch_17c

    goto/16 :goto_a7

    .line 2127
    :catch_17c
    move-exception v14

    goto/16 :goto_a7

    .line 2091
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v13    # "tagName":Ljava/lang/String;
    :catch_17f
    move-exception v2

    .line 2092
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_180
    const-string v14, "SELinuxMMAC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<signer> with bad signature at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2093
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_19f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_180 .. :try_end_19f} :catch_11a
    .catch Ljava/io/FileNotFoundException; {:try_start_180 .. :try_end_19f} :catch_155
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_19f} :catch_1a1
    .catchall {:try_start_180 .. :try_end_19f} :catchall_1bf

    goto/16 :goto_97

    .line 2120
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "tagName":Ljava/lang/String;
    :catch_1a1
    move-exception v2

    move-object v9, v10

    .line 2121
    .end local v10    # "policyFile":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/IOException;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :goto_1a3
    :try_start_1a3
    const-string v14, "SELinuxMMAC"

    const-string v15, "Got execption parsing "

    invoke-static {v14, v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1aa
    .catchall {:try_start_1a3 .. :try_end_1aa} :catchall_1fd

    .line 2124
    if-eqz v9, :cond_a7

    .line 2125
    :try_start_1ac
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1af} :catch_1b1

    goto/16 :goto_a7

    .line 2127
    :catch_1b1
    move-exception v14

    goto/16 :goto_a7

    .line 2101
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_1b4
    :try_start_1b4
    invoke-static {v6, v0}, readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/Policy;

    move-result-object v8

    .line 2102
    .local v8, "policy":Lcom/android/server/pm/Policy;
    sget-object v14, SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v14, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b4 .. :try_end_1bd} :catch_11a
    .catch Ljava/io/FileNotFoundException; {:try_start_1b4 .. :try_end_1bd} :catch_155
    .catch Ljava/io/IOException; {:try_start_1b4 .. :try_end_1bd} :catch_1a1
    .catchall {:try_start_1b4 .. :try_end_1bd} :catchall_1bf

    goto/16 :goto_97

    .line 2123
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "policy":Lcom/android/server/pm/Policy;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tagName":Ljava/lang/String;
    :catchall_1bf
    move-exception v14

    move-object v9, v10

    .line 2124
    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :goto_1c1
    if-eqz v9, :cond_1c6

    .line 2125
    :try_start_1c3
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1c6} :catch_1f9

    .line 2129
    :cond_1c6
    :goto_1c6
    throw v14

    .line 2103
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_1c7
    :try_start_1c7
    const-string/jumbo v14, "default"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1df

    .line 2104
    const/4 v14, 0x0

    invoke-static {v6, v14}, readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/Policy;

    move-result-object v8

    .line 2105
    .restart local v8    # "policy":Lcom/android/server/pm/Policy;
    if-eqz v8, :cond_97

    .line 2109
    sget-object v14, SIG_POLICY:Ljava/util/HashMap;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_97

    .line 2112
    .end local v8    # "policy":Lcom/android/server/pm/Policy;
    :cond_1df
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c7 .. :try_end_1e2} :catch_11a
    .catch Ljava/io/FileNotFoundException; {:try_start_1c7 .. :try_end_1e2} :catch_155
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1e2} :catch_1a1
    .catchall {:try_start_1c7 .. :try_end_1e2} :catchall_1bf

    goto/16 :goto_97

    .line 2127
    .end local v13    # "tagName":Ljava/lang/String;
    :catch_1e4
    move-exception v14

    move-object v9, v10

    .line 2130
    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_a7

    .line 2134
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1e8
    if-eqz v9, :cond_1ed

    .line 2135
    :try_start_1ea
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_1ed
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1ed} :catch_1fb

    .line 2199
    :cond_1ed
    :goto_1ed
    const/4 v14, 0x1

    goto/16 :goto_da

    .line 2054
    .end local v0    # "cert":Ljava/lang/String;
    .end local v1    # "cnt":I
    .end local v5    # "macPermFiles":[Ljava/io/File;
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    :catch_1f0
    move-exception v14

    goto/16 :goto_1f

    .end local v10    # "policyFile":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :catch_1f3
    move-exception v15

    goto/16 :goto_da

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1f6
    move-exception v15

    goto/16 :goto_e1

    .line 2127
    .restart local v0    # "cert":Ljava/lang/String;
    .restart local v1    # "cnt":I
    .restart local v5    # "macPermFiles":[Ljava/io/File;
    :catch_1f9
    move-exception v15

    goto :goto_1c6

    .line 2137
    :catch_1fb
    move-exception v14

    goto :goto_1ed

    .line 2123
    :catchall_1fd
    move-exception v14

    goto :goto_1c1

    .line 2120
    :catch_1ff
    move-exception v2

    goto :goto_1a3

    .line 2118
    :catch_201
    move-exception v2

    goto/16 :goto_157

    .line 2116
    :catch_204
    move-exception v2

    goto/16 :goto_11c

    .line 2050
    .end local v0    # "cert":Ljava/lang/String;
    .end local v1    # "cnt":I
    .end local v5    # "macPermFiles":[Ljava/io/File;
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    :catchall_207
    move-exception v14

    move-object v9, v10

    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_dc

    .line 2045
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    :catch_20b
    move-exception v2

    move-object v9, v10

    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_ab
.end method

.method private static readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V
    .registers 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "pb"    # Lcom/android/server/pm/Policy$PolicyBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 2309
    const-string/jumbo v3, "package"

    invoke-interface {p0, v6, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2310
    const-string/jumbo v3, "name"

    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2312
    .local v0, "pkgName":Ljava/lang/String;
    :cond_f
    :goto_f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3b

    .line 2313
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v6, :cond_f

    .line 2317
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2318
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "seinfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2319
    const-string/jumbo v3, "value"

    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2320
    .local v1, "seinfo":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 2321
    invoke-static {p0}, readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f

    .line 2323
    .end local v1    # "seinfo":Ljava/lang/String;
    :cond_37
    invoke-static {p0}, skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f

    .line 2326
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3b
    return-void
.end method

.method private static readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;
    .registers 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 1272
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1273
    .local v0, "outerDepth":I
    new-instance v2, Lcom/android/server/pm/Policy;

    invoke-direct {v2}, Lcom/android/server/pm/Policy;-><init>()V

    .line 1274
    .local v2, "policy":Lcom/android/server/pm/Policy;
    :cond_a
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_7d

    if-ne v5, v9, :cond_19

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_7d

    .line 1275
    :cond_19
    if-eq v5, v9, :cond_a

    const/4 v6, 0x4

    if-eq v5, v6, :cond_a

    .line 1278
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1279
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "seinfo"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1280
    invoke-static {p0}, parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1281
    .local v3, "seinfo":Ljava/lang/String;
    if-eqz v3, :cond_34

    .line 1282
    invoke-virtual {v2, v3}, Lcom/android/server/pm/Policy;->putSeinfo(Ljava/lang/String;)V

    .line 1284
    :cond_34
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a

    .line 1285
    .end local v3    # "seinfo":Ljava/lang/String;
    :cond_38
    const-string/jumbo v6, "package"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 1286
    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1287
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, validatePackageName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6f

    .line 1288
    const-string v6, "SELinuxMMAC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<package> without valid name at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a

    .line 1292
    :cond_6f
    invoke-static {p0}, readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1293
    .restart local v3    # "seinfo":Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 1294
    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/Policy;->putPkg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1297
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "seinfo":Ljava/lang/String;
    :cond_79
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a

    .line 1300
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_7d
    return-object v2
.end method

.method private static readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/Policy;
    .registers 69
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "certs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1304
    new-instance v49, Ljava/util/HashMap;

    invoke-direct/range {v49 .. v49}, Ljava/util/HashMap;-><init>()V

    .line 1306
    .local v49, "pkgPolicy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/Policy;>;"
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v45

    .line 1307
    .local v45, "outerDepth":I
    const/16 v56, 0x0

    .line 1308
    .local v56, "seinfo":Ljava/lang/String;
    const/16 v55, -0x1

    .line 1309
    .local v55, "seandroidCategory":I
    const/16 v17, -0x1

    .line 1310
    .local v17, "bbcseandroidCategory":I
    const/16 v54, 0x0

    .line 1311
    .local v54, "seandroidAllowCategory":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1312
    .local v16, "bbcseandroidAllowCategory":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1313
    .local v6, "allowCategoryValue":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1314
    .local v11, "bbcallowCategoryValue":Ljava/lang/String;
    const/16 v36, 0x0

    .line 1315
    .local v36, "isContainerApp":Z
    const/16 v23, 0x0

    .line 1316
    .local v23, "categoryValue":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1317
    .local v13, "bbccategoryValue":Ljava/lang/String;
    new-instance v50, Lcom/android/server/pm/Policy;

    invoke-direct/range {v50 .. v50}, Lcom/android/server/pm/Policy;-><init>()V

    .line 1318
    .local v50, "policy":Lcom/android/server/pm/Policy;
    const/4 v10, 0x0

    .line 1319
    .local v10, "bbcFlag":Z
    :cond_20
    :goto_20
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v61

    .local v61, "type":I
    const/16 v63, 0x1

    move/from16 v0, v61

    move/from16 v1, v63

    if-eq v0, v1, :cond_847

    const/16 v63, 0x3

    move/from16 v0, v61

    move/from16 v1, v63

    if-ne v0, v1, :cond_3e

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v63

    move/from16 v0, v63

    move/from16 v1, v45

    if-le v0, v1, :cond_847

    .line 1320
    :cond_3e
    const/16 v63, 0x3

    move/from16 v0, v61

    move/from16 v1, v63

    if-eq v0, v1, :cond_20

    const/16 v63, 0x4

    move/from16 v0, v61

    move/from16 v1, v63

    if-eq v0, v1, :cond_20

    .line 1323
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v60

    .line 1324
    .local v60, "tagName":Ljava/lang/String;
    const-string/jumbo v63, "seinfo"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_123

    .line 1325
    const/16 v63, 0x0

    const-string/jumbo v64, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1326
    .local v57, "seinfoValue":Ljava/lang/String;
    invoke-static/range {v57 .. v57}, validateValue(Ljava/lang/String;)Z

    move-result v63

    if-eqz v63, :cond_e7

    .line 1327
    move-object/from16 v56, v57

    .line 1335
    :goto_76
    const/16 v63, 0x0

    const-string v64, "category"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1336
    const/16 v63, 0x0

    const-string v64, "allowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1337
    const/16 v63, 0x0

    const-string v64, "bbccategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1338
    const/16 v63, 0x0

    const-string v64, "bbcallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1339
    if-eqz v23, :cond_10e

    .line 1341
    :try_start_b0
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/lang/NumberFormatException; {:try_start_b0 .. :try_end_b3} :catch_105

    move-result v55

    .line 1351
    :goto_b4
    if-eqz v13, :cond_11a

    .line 1353
    :try_start_b6
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b9
    .catch Ljava/lang/NumberFormatException; {:try_start_b6 .. :try_end_b9} :catch_111

    move-result v17

    .line 1363
    :goto_ba
    if-eqz v6, :cond_11d

    .line 1364
    move-object/from16 v54, v6

    .line 1378
    :goto_be
    if-eqz v11, :cond_120

    .line 1379
    move-object/from16 v16, v11

    .line 1393
    :goto_c2
    if-eqz v56, :cond_e2

    .line 1394
    move-object/from16 v0, v56

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    .line 1395
    move/from16 v0, v55

    move-object/from16 v1, v50

    iput v0, v1, Lcom/android/server/pm/Policy;->category:I

    .line 1396
    move/from16 v0, v17

    move-object/from16 v1, v50

    iput v0, v1, Lcom/android/server/pm/Policy;->bbccategory:I

    .line 1397
    move-object/from16 v0, v54

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    .line 1398
    move-object/from16 v0, v16

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/android/server/pm/Policy;->bbcallowCategory:Ljava/lang/String;

    .line 1717
    .end local v57    # "seinfoValue":Ljava/lang/String;
    :cond_e2
    :goto_e2
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_20

    .line 1332
    .restart local v57    # "seinfoValue":Ljava/lang/String;
    :cond_e7
    const-string v63, "SELinuxMMAC"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "<seinfo> without value at "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76

    .line 1342
    :catch_105
    move-exception v30

    .line 1343
    .local v30, "e":Ljava/lang/NumberFormatException;
    const-string v63, "SELinuxMMAC"

    const-string v64, " Category value is incorrect"

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 1346
    .end local v30    # "e":Ljava/lang/NumberFormatException;
    :cond_10e
    const/16 v55, 0x3ff

    goto :goto_b4

    .line 1354
    :catch_111
    move-exception v30

    .line 1355
    .restart local v30    # "e":Ljava/lang/NumberFormatException;
    const-string v63, "SELinuxMMAC"

    const-string v64, " bbccategoryValue value is incorrect"

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 1358
    .end local v30    # "e":Ljava/lang/NumberFormatException;
    :cond_11a
    const/16 v17, 0x3ff

    goto :goto_ba

    .line 1372
    :cond_11d
    const-string v54, "0,701-1023"

    goto :goto_be

    .line 1387
    :cond_120
    const-string v16, "0,701-1023"

    goto :goto_c2

    .line 1400
    .end local v57    # "seinfoValue":Ljava/lang/String;
    :cond_123
    const-string/jumbo v63, "package"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_177

    .line 1401
    const/16 v63, 0x0

    const-string/jumbo v64, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1402
    .local v47, "pkg":Ljava/lang/String;
    invoke-static/range {v47 .. v47}, validatePackageName(Ljava/lang/String;)Z

    move-result v63

    if-nez v63, :cond_166

    .line 1403
    const-string v63, "SELinuxMMAC"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "<package> without valid name at "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_20

    .line 1407
    :cond_166
    invoke-static/range {p0 .. p0}, readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v56

    .line 1408
    if-eqz v56, :cond_e2

    .line 1409
    move-object/from16 v0, v50

    move-object/from16 v1, v47

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Policy;->putPkg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e2

    .line 1411
    .end local v47    # "pkg":Ljava/lang/String;
    :cond_177
    const-string v63, "container"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_1ab

    .line 1412
    const/16 v63, 0x0

    const-string/jumbo v64, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1413
    .local v28, "containerflag":Ljava/lang/String;
    if-eqz v28, :cond_e2

    const-string/jumbo v63, "true"

    move-object/from16 v0, v63

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_e2

    .line 1414
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v50

    iput-boolean v0, v1, Lcom/android/server/pm/Policy;->isContainerApp:Z

    goto/16 :goto_e2

    .line 1416
    .end local v28    # "containerflag":Ljava/lang/String;
    :cond_1ab
    const-string/jumbo v63, "service"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_771

    .line 1417
    new-instance v27, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    invoke-direct/range {v27 .. v27}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>()V

    .line 1418
    .local v27, "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/16 v22, 0x0

    .line 1419
    .local v22, "category":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1420
    .local v12, "bbccategory":Ljava/lang/String;
    const/16 v35, 0x0

    .line 1421
    .local v35, "innerSeinfo":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1422
    .local v15, "bbcinnerSeinfo":Ljava/lang/String;
    const/16 v34, 0x0

    .line 1423
    .local v34, "innerAllowCategory":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1424
    .local v14, "bbcinnerAllowCategory":Ljava/lang/String;
    const/16 v25, 0x0

    .line 1425
    .local v25, "contAllowCat":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1426
    .local v5, "agentInfo":Ljava/lang/String;
    const/16 v63, 0x0

    const-string/jumbo v64, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1427
    .local v48, "pkgName":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, validatePackageName(Ljava/lang/String;)Z

    move-result v63

    if-nez v63, :cond_1f1

    .line 1428
    const-string v63, "android"

    move-object/from16 v0, v48

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_429

    .line 1429
    const-string v63, "SELinuxMMAC"

    const-string v64, "<package> is android, don\'t skip"

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_1f1
    const/16 v63, 0x0

    const-string v64, "category"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1437
    const/16 v63, 0x0

    const-string v64, "bbccategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1438
    const/16 v63, 0x0

    const-string/jumbo v64, "seinfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1439
    const/16 v63, 0x0

    const-string v64, "bbcseinfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1440
    const/16 v63, 0x0

    const-string v64, "allowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1441
    const/16 v63, 0x0

    const-string v64, "bbcallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1442
    const/16 v63, 0x0

    const-string v64, "containerallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1443
    const/16 v63, 0x0

    const-string v64, "agent"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1447
    if-nez v34, :cond_266

    .line 1451
    const-string v34, "0,701-1023"

    .line 1454
    :cond_266
    new-instance v46, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v46 .. v46}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1455
    .local v46, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    move-object/from16 v0, p1

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1456
    move-object/from16 v0, v48

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1457
    if-eqz v48, :cond_2ae

    if-eqz p1, :cond_2ae

    .line 1458
    const/16 v31, 0x0

    .line 1459
    .local v31, "existContAllowCat":Ljava/lang/String;
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-static {v0, v1}, getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1460
    if-eqz v31, :cond_452

    .line 1461
    if-eqz v25, :cond_44a

    .line 1462
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v63

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, ","

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 1463
    .local v44, "newValue":Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    .line 1475
    .end local v31    # "existContAllowCat":Ljava/lang/String;
    .end local v44    # "newValue":Ljava/lang/String;
    :cond_2ae
    :goto_2ae
    if-eqz v48, :cond_2b2

    if-nez v22, :cond_2b6

    :cond_2b2
    if-eqz v48, :cond_e2

    if-eqz v12, :cond_e2

    .line 1476
    :cond_2b6
    if-eqz v22, :cond_2c2

    .line 1478
    :try_start_2b8
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I
    :try_end_2c2
    .catch Ljava/lang/Exception; {:try_start_2b8 .. :try_end_2c2} :catch_466

    .line 1483
    :cond_2c2
    :goto_2c2
    if-eqz v12, :cond_2ce

    .line 1485
    :try_start_2c4
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I
    :try_end_2ce
    .catch Ljava/lang/Exception; {:try_start_2c4 .. :try_end_2ce} :catch_485

    .line 1490
    :cond_2ce
    :goto_2ce
    if-eqz v35, :cond_4a4

    .line 1491
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    .line 1492
    move-object/from16 v0, v35

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    .line 1501
    :cond_2dc
    :goto_2dc
    if-eqz v15, :cond_4bb

    .line 1502
    move-object/from16 v0, v27

    iput-object v14, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    .line 1503
    move-object/from16 v0, v27

    iput-object v15, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    .line 1512
    :cond_2e6
    :goto_2e6
    if-eqz v15, :cond_4d0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v63, v0

    const/16 v64, 0x1f4

    move/from16 v0, v63

    move/from16 v1, v64

    if-le v0, v1, :cond_4d0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v63, v0

    const/16 v64, 0x2bc

    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_4d0

    .line 1513
    const/4 v10, 0x1

    .line 1518
    :goto_305
    const/16 v63, 0x0

    const-string/jumbo v64, "issdcardsbaapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1519
    .local v38, "issdcardsbaapp":Ljava/lang/String;
    const/16 v63, 0x0

    const-string/jumbo v64, "isbluetoothsbaapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1520
    .local v37, "isbluetoothsbaapp":Ljava/lang/String;
    const/16 v63, 0x0

    const-string/jumbo v64, "sdcarduserid"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1521
    .local v52, "sdcarduserid":Ljava/lang/String;
    const/16 v63, 0x0

    const-string v64, "bluetoothuserid"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1522
    .local v19, "bluetoothuserid":Ljava/lang/String;
    const/16 v63, 0x0

    const-string/jumbo v64, "sdcarduseridBL"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1523
    .local v53, "sdcarduseridBL":Ljava/lang/String;
    const/16 v63, 0x0

    const-string v64, "bluetoothuseridBL"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1524
    .local v20, "bluetoothuseridBL":Ljava/lang/String;
    if-eqz v38, :cond_38b

    const-string/jumbo v63, "true"

    move-object/from16 v0, v63

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_38b

    .line 1525
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v63, v0

    or-int/lit8 v63, v63, 0x4

    move/from16 v0, v63

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    .line 1526
    sget-object v63, SBALISTS:Ljava/util/ArrayList;

    sget v64, SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashSet;

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1528
    :cond_38b
    if-eqz v37, :cond_3b9

    const-string/jumbo v63, "true"

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_3b9

    .line 1529
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v63, v0

    or-int/lit8 v63, v63, 0x8

    move/from16 v0, v63

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    .line 1530
    sget-object v63, SBALISTS:Ljava/util/ArrayList;

    sget v64, BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashSet;

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1532
    :cond_3b9
    if-eqz v52, :cond_4da

    .line 1533
    move-object/from16 v0, v52

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    .line 1534
    const-string v63, ","

    move-object/from16 v0, v52

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v62

    .line 1535
    .local v62, "users":[Ljava/lang/String;
    const/16 v59, 0x0

    .line 1536
    .local v59, "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v9, v62

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v40, v0

    .local v40, "len$":I
    const/16 v32, 0x0

    .local v32, "i$":I
    :goto_3d4
    move/from16 v0, v32

    move/from16 v1, v40

    if-ge v0, v1, :cond_4da

    aget-object v39, v9, v32

    .line 1537
    .local v39, "item":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 1538
    .local v33, "id":I
    sget-object v63, WHITELISTS:Ljava/util/ArrayList;

    sget v64, SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_4d3

    .line 1542
    sget-object v63, WHITELISTS:Ljava/util/ArrayList;

    sget v64, SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    .end local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v59, Ljava/util/HashSet;

    .line 1549
    .restart local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_408
    move-object/from16 v0, v59

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1550
    sget-object v63, WHITELISTS:Ljava/util/ArrayList;

    sget v64, SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    add-int/lit8 v32, v32, 0x1

    goto :goto_3d4

    .line 1431
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v19    # "bluetoothuserid":Ljava/lang/String;
    .end local v20    # "bluetoothuseridBL":Ljava/lang/String;
    .end local v32    # "i$":I
    .end local v33    # "id":I
    .end local v37    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v38    # "issdcardsbaapp":Ljava/lang/String;
    .end local v39    # "item":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v46    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v52    # "sdcarduserid":Ljava/lang/String;
    .end local v53    # "sdcarduseridBL":Ljava/lang/String;
    .end local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v62    # "users":[Ljava/lang/String;
    :cond_429
    const-string v63, "SELinuxMMAC"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "<package> without valid name at "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_20

    .line 1465
    .restart local v31    # "existContAllowCat":Ljava/lang/String;
    .restart local v46    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_44a
    move-object/from16 v0, v31

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_2ae

    .line 1468
    :cond_452
    if-eqz v25, :cond_45c

    .line 1469
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_2ae

    .line 1471
    :cond_45c
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_2ae

    .line 1479
    .end local v31    # "existContAllowCat":Ljava/lang/String;
    :catch_466
    move-exception v30

    .line 1480
    .local v30, "e":Ljava/lang/Exception;
    const-string v63, "SELinuxMMAC"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v64

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, " does not define correct category."

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c2

    .line 1486
    .end local v30    # "e":Ljava/lang/Exception;
    :catch_485
    move-exception v30

    .line 1487
    .restart local v30    # "e":Ljava/lang/Exception;
    const-string v63, "SELinuxMMAC"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v64

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, " does not define correct bbccategory."

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ce

    .line 1493
    .end local v30    # "e":Ljava/lang/Exception;
    :cond_4a4
    if-eqz v56, :cond_2dc

    .line 1494
    if-eqz v6, :cond_4b4

    .line 1495
    move-object/from16 v0, v27

    iput-object v6, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    .line 1499
    :goto_4ac
    move-object/from16 v0, v56

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    goto/16 :goto_2dc

    .line 1497
    :cond_4b4
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    goto :goto_4ac

    .line 1504
    :cond_4bb
    if-eqz v56, :cond_2e6

    .line 1505
    if-eqz v11, :cond_4cb

    .line 1506
    move-object/from16 v0, v27

    iput-object v11, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    .line 1510
    :goto_4c3
    move-object/from16 v0, v56

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    goto/16 :goto_2e6

    .line 1508
    :cond_4cb
    move-object/from16 v0, v27

    iput-object v14, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    goto :goto_4c3

    .line 1515
    :cond_4d0
    const/4 v10, 0x0

    goto/16 :goto_305

    .line 1547
    .restart local v9    # "arr$":[Ljava/lang/String;
    .restart local v19    # "bluetoothuserid":Ljava/lang/String;
    .restart local v20    # "bluetoothuseridBL":Ljava/lang/String;
    .restart local v32    # "i$":I
    .restart local v33    # "id":I
    .restart local v37    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v38    # "issdcardsbaapp":Ljava/lang/String;
    .restart local v39    # "item":Ljava/lang/String;
    .restart local v40    # "len$":I
    .restart local v52    # "sdcarduserid":Ljava/lang/String;
    .restart local v53    # "sdcarduseridBL":Ljava/lang/String;
    .restart local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v62    # "users":[Ljava/lang/String;
    :cond_4d3
    new-instance v59, Ljava/util/HashSet;

    .end local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v59 .. v59}, Ljava/util/HashSet;-><init>()V

    .restart local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_408

    .line 1553
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v32    # "i$":I
    .end local v33    # "id":I
    .end local v39    # "item":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v62    # "users":[Ljava/lang/String;
    :cond_4da
    if-eqz v19, :cond_550

    .line 1554
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    .line 1555
    const-string v63, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v62

    .line 1556
    .restart local v62    # "users":[Ljava/lang/String;
    const/16 v21, 0x0

    .line 1557
    .local v21, "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v9, v62

    .restart local v9    # "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v40, v0

    .restart local v40    # "len$":I
    const/16 v32, 0x0

    .restart local v32    # "i$":I
    :goto_4f5
    move/from16 v0, v32

    move/from16 v1, v40

    if-ge v0, v1, :cond_550

    aget-object v39, v9, v32

    .line 1558
    .restart local v39    # "item":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 1559
    .restart local v33    # "id":I
    sget-object v63, WHITELISTS:Ljava/util/ArrayList;

    sget v64, BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_54a

    .line 1563
    sget-object v63, WHITELISTS:Ljava/util/ArrayList;

    sget v64, BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v21, Ljava/util/HashSet;

    .line 1570
    .restart local v21    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_529
    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1571
    sget-object v63, WHITELISTS:Ljava/util/ArrayList;

    sget v64, BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    add-int/lit8 v32, v32, 0x1

    goto :goto_4f5

    .line 1568
    :cond_54a
    new-instance v21, Ljava/util/HashSet;

    .end local v21    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .restart local v21    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_529

    .line 1574
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v21    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v32    # "i$":I
    .end local v33    # "id":I
    .end local v39    # "item":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v62    # "users":[Ljava/lang/String;
    :cond_550
    if-eqz v53, :cond_5c6

    .line 1575
    move-object/from16 v0, v53

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 1576
    const-string v63, ","

    move-object/from16 v0, v53

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v62

    .line 1577
    .restart local v62    # "users":[Ljava/lang/String;
    const/16 v51, 0x0

    .line 1578
    .local v51, "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v9, v62

    .restart local v9    # "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v40, v0

    .restart local v40    # "len$":I
    const/16 v32, 0x0

    .restart local v32    # "i$":I
    :goto_56b
    move/from16 v0, v32

    move/from16 v1, v40

    if-ge v0, v1, :cond_5c6

    aget-object v39, v9, v32

    .line 1579
    .restart local v39    # "item":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 1580
    .restart local v33    # "id":I
    sget-object v63, BLACKLISTS:Ljava/util/ArrayList;

    sget v64, SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_5c0

    .line 1584
    sget-object v63, BLACKLISTS:Ljava/util/ArrayList;

    sget v64, SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    .end local v51    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v51, Ljava/util/HashSet;

    .line 1591
    .restart local v51    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_59f
    move-object/from16 v0, v51

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1592
    sget-object v63, BLACKLISTS:Ljava/util/ArrayList;

    sget v64, SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    add-int/lit8 v32, v32, 0x1

    goto :goto_56b

    .line 1589
    :cond_5c0
    new-instance v51, Ljava/util/HashSet;

    .end local v51    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v51 .. v51}, Ljava/util/HashSet;-><init>()V

    .restart local v51    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_59f

    .line 1595
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v32    # "i$":I
    .end local v33    # "id":I
    .end local v39    # "item":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v51    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v62    # "users":[Ljava/lang/String;
    :cond_5c6
    if-eqz v20, :cond_63c

    .line 1596
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    .line 1597
    const-string v63, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v62

    .line 1598
    .restart local v62    # "users":[Ljava/lang/String;
    const/16 v18, 0x0

    .line 1599
    .local v18, "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v9, v62

    .restart local v9    # "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v40, v0

    .restart local v40    # "len$":I
    const/16 v32, 0x0

    .restart local v32    # "i$":I
    :goto_5e1
    move/from16 v0, v32

    move/from16 v1, v40

    if-ge v0, v1, :cond_63c

    aget-object v39, v9, v32

    .line 1600
    .restart local v39    # "item":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 1601
    .restart local v33    # "id":I
    sget-object v63, BLACKLISTS:Ljava/util/ArrayList;

    sget v64, BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_636

    .line 1605
    sget-object v63, BLACKLISTS:Ljava/util/ArrayList;

    sget v64, BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v18, Ljava/util/HashSet;

    .line 1612
    .restart local v18    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_615
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1613
    sget-object v63, BLACKLISTS:Ljava/util/ArrayList;

    sget v64, BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    add-int/lit8 v32, v32, 0x1

    goto :goto_5e1

    .line 1610
    :cond_636
    new-instance v18, Ljava/util/HashSet;

    .end local v18    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .restart local v18    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_615

    .line 1617
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v18    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v32    # "i$":I
    .end local v33    # "id":I
    .end local v39    # "item":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v62    # "users":[Ljava/lang/String;
    :cond_63c
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v63, v0

    if-eqz v63, :cond_e2

    .line 1618
    if-nez v5, :cond_655

    const-string/jumbo v63, "generic_mdm"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_739

    .line 1622
    :cond_655
    new-instance v41, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v41 .. v41}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1623
    .local v41, "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/16 v24, 0x0

    .line 1624
    .local v24, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1625
    move-object/from16 v0, v48

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1631
    if-eqz v10, :cond_6c2

    sget-object v63, BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_6c2

    .line 1635
    sget-object v63, BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v24, Ljava/util/HashSet;

    .line 1647
    .restart local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_682
    if-eqz v10, :cond_6e3

    .line 1648
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v24

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1649
    sget-object v63, BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v63, v0

    const/16 v64, 0x1f5

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_20

    .line 1651
    sget-object v63, bbc_containerIDTable:[I

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v64, v0

    move/from16 v0, v64

    add-int/lit16 v0, v0, -0x1f5

    move/from16 v64, v0

    const/16 v65, 0x1

    aput v65, v63, v64

    goto/16 :goto_20

    .line 1636
    :cond_6c2
    if-nez v10, :cond_6dd

    sget-object v63, GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_6dd

    .line 1640
    sget-object v63, GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v24, Ljava/util/HashSet;

    .restart local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_682

    .line 1645
    :cond_6dd
    new-instance v24, Ljava/util/HashSet;

    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .restart local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_682

    .line 1654
    :cond_6e3
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v24

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1655
    sget-object v63, GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v63, v0

    const/16 v64, 0xc9

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_20

    .line 1657
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v63, v0

    const/16 v64, 0x2be

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_725

    .line 1658
    sget-object v63, irm_containerIDTable:[I

    const/16 v64, 0x0

    const/16 v65, 0x1

    aput v65, v63, v64

    goto/16 :goto_20

    .line 1660
    :cond_725
    sget-object v63, generic_containerIDTable:[I

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v64, v0

    move/from16 v0, v64

    add-int/lit16 v0, v0, -0xc9

    move/from16 v64, v0

    const/16 v65, 0x1

    aput v65, v63, v64

    goto/16 :goto_20

    .line 1666
    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v41    # "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_739
    if-eqz v15, :cond_764

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v63, v0

    const/16 v64, 0x1f4

    move/from16 v0, v63

    move/from16 v1, v64

    if-le v0, v1, :cond_764

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v63, v0

    const/16 v64, 0x2bc

    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_764

    .line 1667
    sget-object v63, BBC_CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v46

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e2

    .line 1669
    :cond_764
    sget-object v63, GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v46

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e2

    .line 1674
    .end local v5    # "agentInfo":Ljava/lang/String;
    .end local v12    # "bbccategory":Ljava/lang/String;
    .end local v14    # "bbcinnerAllowCategory":Ljava/lang/String;
    .end local v15    # "bbcinnerSeinfo":Ljava/lang/String;
    .end local v19    # "bluetoothuserid":Ljava/lang/String;
    .end local v20    # "bluetoothuseridBL":Ljava/lang/String;
    .end local v22    # "category":Ljava/lang/String;
    .end local v25    # "contAllowCat":Ljava/lang/String;
    .end local v27    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v34    # "innerAllowCategory":Ljava/lang/String;
    .end local v35    # "innerSeinfo":Ljava/lang/String;
    .end local v37    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v38    # "issdcardsbaapp":Ljava/lang/String;
    .end local v46    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v48    # "pkgName":Ljava/lang/String;
    .end local v52    # "sdcarduserid":Ljava/lang/String;
    .end local v53    # "sdcarduseridBL":Ljava/lang/String;
    :cond_771
    const-string v63, "containerallowpackage"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_e2

    .line 1676
    const-string/jumbo v63, "persist.security.ams.enforcing"

    const-string v64, "0"

    invoke-static/range {v63 .. v64}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1677
    .local v8, "ams_orig_val":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1678
    .local v7, "ams_orig_bit":I
    const/16 v63, 0x2

    move/from16 v0, v63

    if-ge v7, v0, :cond_79c

    .line 1679
    or-int/lit8 v7, v7, 0x2

    .line 1680
    const-string/jumbo v63, "persist.security.ams.enforcing"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    :cond_79c
    const/16 v63, 0x0

    const-string/jumbo v64, "srcpkgname"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 1683
    .local v58, "srcPkgName":Ljava/lang/String;
    const/16 v63, 0x0

    const-string/jumbo v64, "destpkgname"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1684
    .local v29, "destPkgName":Ljava/lang/String;
    if-nez v29, :cond_7be

    .line 1685
    const-string v29, "allknoxpackages"

    .line 1688
    :cond_7be
    new-instance v26, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v26 .. v26}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1689
    .local v26, "containerAllowSrcPackageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1690
    move-object/from16 v0, v58

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1692
    if-eqz v58, :cond_e2

    if-eqz p1, :cond_e2

    .line 1694
    sget-object v63, ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_823

    .line 1695
    sget-object v63, ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 1696
    .restart local v27    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    array-length v0, v0

    move/from16 v63, v0

    add-int/lit8 v43, v63, 0x1

    .line 1697
    .local v43, "newSize":I
    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1698
    .local v42, "newArray":[Ljava/lang/String;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    const/16 v65, 0x0

    add-int/lit8 v66, v43, -0x1

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v42

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1699
    add-int/lit8 v63, v43, -0x1

    aput-object v29, v42, v63

    .line 1700
    move-object/from16 v0, v42

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    goto/16 :goto_e2

    .line 1702
    .end local v27    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v42    # "newArray":[Ljava/lang/String;
    .end local v43    # "newSize":I
    :cond_823
    new-instance v27, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    invoke-direct/range {v27 .. v27}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>()V

    .line 1706
    .restart local v27    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1707
    .restart local v42    # "newArray":[Ljava/lang/String;
    const/16 v63, 0x0

    aput-object v29, v42, v63

    .line 1708
    move-object/from16 v0, v42

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    .line 1709
    sget-object v63, ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e2

    .line 1719
    .end local v7    # "ams_orig_bit":I
    .end local v8    # "ams_orig_val":Ljava/lang/String;
    .end local v26    # "containerAllowSrcPackageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v27    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v29    # "destPkgName":Ljava/lang/String;
    .end local v42    # "newArray":[Ljava/lang/String;
    .end local v58    # "srcPkgName":Ljava/lang/String;
    .end local v60    # "tagName":Ljava/lang/String;
    :cond_847
    return-object v50
.end method

.method private static readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2336
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "seinfo"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2337
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 2338
    return-void
.end method

.method private static readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 1877
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1878
    .local v0, "outerDepth":I
    const/4 v1, 0x0

    .line 1879
    .local v1, "seinfo":Ljava/lang/String;
    :cond_6
    :goto_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2f

    if-ne v3, v5, :cond_15

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_2f

    .line 1880
    :cond_15
    if-eq v3, v5, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 1883
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1884
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "seinfo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1885
    invoke-static {p0}, parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 1887
    :cond_2b
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 1889
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_2f
    return-object v1
.end method

.method private static readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;
    .registers 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 2220
    const-string/jumbo v5, "signer"

    invoke-interface {p0, v8, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2221
    new-instance v1, Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-direct {v1}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    .line 2225
    .local v1, "pb":Lcom/android/server/pm/Policy$PolicyBuilder;
    const-string/jumbo v5, "signature"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2226
    .local v0, "cert":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 2227
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 2230
    :cond_19
    :goto_19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_68

    .line 2231
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v8, :cond_19

    .line 2235
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2236
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "seinfo"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 2237
    const-string/jumbo v5, "value"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2238
    .local v2, "seinfo":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 2239
    invoke-static {p0}, readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_19

    .line 2240
    .end local v2    # "seinfo":Ljava/lang/String;
    :cond_41
    const-string/jumbo v5, "package"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 2241
    invoke-static {p0, v1}, readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V

    goto :goto_19

    .line 2242
    :cond_4e
    const-string v5, "cert"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 2243
    const-string/jumbo v5, "signature"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2244
    .local v3, "sig":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 2245
    invoke-static {p0}, readCert(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_19

    .line 2247
    .end local v3    # "sig":Ljava/lang/String;
    :cond_64
    invoke-static {p0}, skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_19

    .line 2251
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_68
    invoke-virtual {v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->build()Lcom/android/server/pm/Policy;

    move-result-object v5

    return-object v5
.end method

.method protected static removeBBCContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    const/4 v2, 0x0

    .line 1095
    const-string v3, "container"

    monitor-enter v3

    .line 1096
    :try_start_4
    invoke-static {p0, p1, p2}, isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1100
    sget-object v4, bbc_containerIDTable:[I

    add-int/lit16 v5, p2, -0x1f5

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1101
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1102
    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v1, 0x0

    .line 1103
    .local v1, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1104
    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1105
    sget-object v4, BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/HashSet;

    .line 1106
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1107
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_37

    .line 1111
    sget-object v4, BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    :goto_35
    monitor-exit v3

    .line 1126
    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_36
    return v2

    .line 1116
    .restart local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_37
    sget-object v4, BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 1127
    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_3d

    throw v2

    .line 1124
    :cond_40
    :try_start_40
    const-string v2, "SEContainer"

    const-string v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/16 v2, -0xc

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_3d

    goto :goto_36
.end method

.method protected static removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    .line 992
    const/4 v0, 0x0

    .line 993
    .local v0, "bbcFlag":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 994
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 995
    .local v2, "pid":I
    const/4 v1, 0x0

    .line 996
    .local v1, "callpkgName":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-static {}, isBBCAgent()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 998
    invoke-static {}, getBBCFlag()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 999
    const/4 v0, 0x1

    .line 1002
    :cond_1c
    if-eqz v0, :cond_23

    .line 1003
    invoke-static {p0, p1, p2}, removeBBCContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 1008
    :goto_22
    return v4

    .line 1005
    :cond_23
    const-string v4, "com.samsung.android.irm.service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1006
    invoke-static {p0, p1, p2}, removeIRMContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    goto :goto_22

    .line 1008
    :cond_30
    invoke-static {p0, p1, p2}, removeMyContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    goto :goto_22
.end method

.method protected static removeIRMContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    const/4 v2, 0x0

    .line 1056
    const-string v3, "container"

    monitor-enter v3

    .line 1057
    :try_start_4
    invoke-static {p0, p1, p2}, isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1061
    sget-object v4, irm_containerIDTable:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1062
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1063
    .local v1, "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .line 1064
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1065
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1066
    sget-object v4, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 1067
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1068
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_36

    .line 1072
    sget-object v4, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    :goto_34
    monitor-exit v3

    .line 1087
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_35
    return v2

    .line 1077
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v1    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_36
    sget-object v4, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 1088
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :catchall_3c
    move-exception v2

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_3c

    throw v2

    .line 1085
    :cond_3f
    :try_start_3f
    const-string v2, "SEContainer"

    const-string v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/16 v2, -0xc

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_3c

    goto :goto_35
.end method

.method protected static removeMyContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    const/4 v2, 0x0

    .line 1017
    const-string v3, "container"

    monitor-enter v3

    .line 1018
    :try_start_4
    invoke-static {p0, p1, p2}, isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1022
    sget-object v4, generic_containerIDTable:[I

    add-int/lit16 v5, p2, -0xc9

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1023
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1024
    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .line 1025
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1026
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1027
    sget-object v4, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 1028
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1029
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_37

    .line 1033
    sget-object v4, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    :goto_35
    monitor-exit v3

    .line 1048
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_36
    return v2

    .line 1038
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_37
    sget-object v4, GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 1049
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_3d

    throw v2

    .line 1046
    :cond_40
    :try_start_40
    const-string v2, "SEContainer"

    const-string v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/16 v2, -0xc

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_3d

    goto :goto_36
.end method

.method private static returnHash(Ljava/lang/String;)[B
    .registers 4
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2705
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 2706
    .local v0, "contents":[B
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v2

    return-object v2

    .line 2707
    .end local v0    # "contents":[B
    :catch_f
    move-exception v1

    .line 2708
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setBBCFlag(Z)I
    .registers 2
    .param p0, "value"    # Z

    .prologue
    .line 2004
    sput-boolean p0, bbc_flag:Z

    .line 2005
    const/4 v0, 0x0

    return v0
.end method

.method public static setRestoreconDone()V
    .registers 6

    .prologue
    .line 2649
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v1

    .line 2651
    .local v1, "index":I
    :try_start_4
    sget-object v3, INSTALL_POLICY_PATH:[Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-static {v3}, returnHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 2652
    .local v0, "currentHash":[B
    new-instance v3, Ljava/io/File;

    sget-object v4, SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, dumpHash(Ljava/io/File;[B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_19

    .line 2665
    .end local v0    # "currentHash":[B
    :goto_18
    return-void

    .line 2653
    :catch_19
    move-exception v2

    .line 2654
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error with saving hash to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public static setupResourceLists()V
    .registers 3

    .prologue
    .line 268
    const-string v1, "SELinuxMMAC"

    const-string/jumbo v2, "entered setup resource list in selinuxmmac"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_9
    sget v1, RESOURCE_NUM:I

    if-ge v0, v1, :cond_2e

    .line 270
    sget-object v1, WHITELISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 271
    sget-object v1, BLACKLISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 272
    sget-object v1, SBALISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 274
    :cond_2e
    return-void
.end method

.method public static shouldRestorecon()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 2613
    const/4 v0, 0x0

    .line 2616
    .local v0, "currentHash":[B
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v1

    .line 2618
    .local v1, "index":I
    :try_start_6
    sget-object v5, INSTALL_POLICY_PATH:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    invoke-static {v5}, returnHash(Ljava/lang/String;)[B
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_21

    move-result-object v0

    .line 2634
    const/4 v3, 0x0

    .line 2636
    .local v3, "storedHash":[B
    :try_start_11
    sget-object v5, SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-static {v5}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_2a

    move-result-object v3

    .line 2641
    :goto_17
    if-eqz v3, :cond_1f

    invoke-static {v3, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_20

    :cond_1f
    const/4 v4, 0x1

    .end local v3    # "storedHash":[B
    :cond_20
    :goto_20
    return v4

    .line 2619
    :catch_21
    move-exception v2

    .line 2620
    .local v2, "ioe":Ljava/io/IOException;
    const-string v5, "SELinuxMMAC"

    const-string v6, "Error with hashing seapp_contexts."

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 2637
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v3    # "storedHash":[B
    :catch_2a
    move-exception v2

    .line 2638
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v5, "SELinuxMMAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error opening "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Assuming first boot."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p0, "p"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2341
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    .line 2342
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 2344
    :cond_d
    const/4 v0, 0x1

    .line 2345
    .local v0, "depth":I
    :goto_e
    if-eqz v0, :cond_1e

    .line 2346
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    goto :goto_e

    .line 2351
    :pswitch_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2348
    :pswitch_1b
    add-int/lit8 v0, v0, -0x1

    .line 2349
    goto :goto_e

    .line 2355
    :cond_1e
    return-void

    .line 2346
    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method

.method private static useOverridePolicy()Z
    .registers 6

    .prologue
    .line 2714
    :try_start_0
    sget-object v3, DATA_VERSION_FILE:Ljava/lang/String;

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2715
    .local v2, "overrideVersion":Ljava/lang/String;
    const-string v3, "/selinux_version"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2716
    .local v0, "baseVersion":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2717
    const/4 v3, 0x1

    .line 2726
    .end local v0    # "baseVersion":Ljava/lang/String;
    :goto_13
    return v3

    .line 2719
    .restart local v0    # "baseVersion":Ljava/lang/String;
    :cond_14
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Override policy version \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' doesn\'t match "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "base version \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Skipping override policy files."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_42} :catch_4d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_42} :catch_44

    .line 2726
    .end local v0    # "baseVersion":Ljava/lang/String;
    :goto_42
    const/4 v3, 0x0

    goto :goto_13

    .line 2723
    :catch_44
    move-exception v1

    .line 2724
    .local v1, "ioe":Ljava/io/IOException;
    const-string v3, "SELinuxMMAC"

    const-string v4, "Skipping override policy files."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 2721
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_4d
    move-exception v3

    goto :goto_42
.end method

.method private static validatePackageName(Ljava/lang/String;)Z
    .registers 8
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1907
    if-nez p0, :cond_5

    move v3, v5

    .line 1930
    :cond_4
    :goto_4
    return v3

    .line 1909
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1910
    .local v0, "N":I
    const/4 v3, 0x0

    .line 1911
    .local v3, "hasSep":Z
    const/4 v2, 0x1

    .line 1912
    .local v2, "front":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v0, :cond_4

    .line 1913
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1914
    .local v1, "c":C
    const/16 v6, 0x61

    if-lt v1, v6, :cond_1a

    const/16 v6, 0x7a

    if-le v1, v6, :cond_22

    :cond_1a
    const/16 v6, 0x41

    if-lt v1, v6, :cond_26

    const/16 v6, 0x5a

    if-gt v1, v6, :cond_26

    .line 1915
    :cond_22
    const/4 v2, 0x0

    .line 1912
    :cond_23
    :goto_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1918
    :cond_26
    if-nez v2, :cond_34

    .line 1919
    const/16 v6, 0x30

    if-lt v1, v6, :cond_30

    const/16 v6, 0x39

    if-le v1, v6, :cond_23

    :cond_30
    const/16 v6, 0x5f

    if-eq v1, v6, :cond_23

    .line 1923
    :cond_34
    const/16 v6, 0x2e

    if-ne v1, v6, :cond_3b

    .line 1924
    const/4 v3, 0x1

    .line 1925
    const/4 v2, 0x1

    .line 1926
    goto :goto_23

    :cond_3b
    move v3, v5

    .line 1928
    goto :goto_4
.end method

.method private static validateValue(Ljava/lang/String;)Z
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 333
    if-nez p0, :cond_4

    .line 346
    :cond_3
    :goto_3
    return v3

    .line 336
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 337
    .local v0, "N":I
    if-eqz v0, :cond_3

    .line 340
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_28

    .line 341
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 342
    .local v1, "c":C
    const/16 v4, 0x61

    if-lt v1, v4, :cond_19

    const/16 v4, 0x7a

    if-le v1, v4, :cond_25

    :cond_19
    const/16 v4, 0x41

    if-lt v1, v4, :cond_21

    const/16 v4, 0x5a

    if-le v1, v4, :cond_25

    :cond_21
    const/16 v4, 0x5f

    if-ne v1, v4, :cond_3

    .line 340
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 346
    .end local v1    # "c":C
    :cond_28
    const/4 v3, 0x1

    goto :goto_3
.end method
