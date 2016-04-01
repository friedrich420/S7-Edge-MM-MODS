.class public Lcom/android/server/ServiceKeeper;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ServiceKeeper.java"


# static fields
.field private static final AGENT_BRIDGE:I = 0x10

.field private static final AGENT_PROVIDER:I = 0x4

.field private static final AGENT_PROXY:I = 0x8

.field private static final AGENT_SYNCER:I = 0x2

.field private static final AUTHORIZE_POLICY_FILE:[Ljava/io/File;

.field private static CONTAINER_CALLER_IDENTIFIER:Ljava/lang/String; = null

.field private static final FILTERED_API:[Ljava/lang/String;

.field public static final GOOD_CONTAINER_VALUE:I = 0x1

.field public static final MYCONTAINER_CONTAINER_VALUE:I = 0x2

.field public static final NON_CONTAINER_TYPE:I

.field private static OPEN_METHODS_IDENTIFIER:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static isActive:Z

.field private static loadFilesLockObject:Ljava/lang/Object;

.field private static mSKLog:Lcom/android/server/SKLogger;

.field static openMethodCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static permissionsLocation:Ljava/lang/String;

.field private static serviceKeeper:Lcom/android/server/ServiceKeeper;

.field static serviceTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/ServiceObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 64
    sput-object v5, serviceKeeper:Lcom/android/server/ServiceKeeper;

    .line 65
    sput-object v5, serviceTable:Ljava/util/Hashtable;

    .line 67
    sput-object v5, openMethodCache:Ljava/util/HashSet;

    .line 68
    const-string v0, "ServiceKeeper"

    sput-object v0, TAG:Ljava/lang/String;

    .line 69
    const-string v0, "_open"

    sput-object v0, OPEN_METHODS_IDENTIFIER:Ljava/lang/String;

    .line 70
    const-string v0, "_container"

    sput-object v0, CONTAINER_CALLER_IDENTIFIER:Ljava/lang/String;

    .line 71
    sput-boolean v6, isActive:Z

    .line 72
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, mSKLog:Lcom/android/server/SKLogger;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "security/persona/permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, permissionsLocation:Ljava/lang/String;

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "security/authorize.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "security/spota/authorize.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v7

    const/4 v1, 0x2

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "etc/security/authorize.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    sput-object v0, AUTHORIZE_POLICY_FILE:[Ljava/io/File;

    .line 86
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "queryPhoneLookupEnterpriseForKnox"

    aput-object v1, v0, v6

    sput-object v0, FILTERED_API:[Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, loadFilesLockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 90
    return-void
.end method

.method public static authorizeLoadProcedure()Z
    .registers 3

    .prologue
    .line 162
    sget-object v1, loadFilesLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_3
    invoke-static {}, isTableActive()Z

    move-result v0

    if-nez v0, :cond_18

    .line 165
    sget-object v0, AUTHORIZE_POLICY_FILE:[Ljava/io/File;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, loadFromAuthorizeFile(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    .line 167
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_17

    .line 168
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private static checkForMethodAuthorization(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 20
    .param p0, "mcontext"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "sEInfo"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "agentType"    # I

    .prologue
    .line 471
    sget-object v9, serviceTable:Ljava/util/Hashtable;

    if-nez v9, :cond_50

    .line 472
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In checkForMethodAuthorization() : ServiceTable is Null: service =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " method = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " agentType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " sEInfo = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " packageName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v9, 0x0

    .line 564
    :goto_4f
    return v9

    .line 476
    :cond_50
    sget-object v9, serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v9, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5a

    .line 482
    const/4 v9, 0x0

    goto :goto_4f

    .line 484
    :cond_5a
    sget-object v9, serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v9, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ServiceObject;

    .line 485
    .local v8, "serviceObject":Lcom/android/server/ServiceObject;
    iget-boolean v9, v8, Lcom/android/server/ServiceObject;->isSterileService:Z

    if-eqz v9, :cond_68

    .line 491
    const/4 v9, 0x0

    goto :goto_4f

    .line 493
    :cond_68
    iget-object v4, v8, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    .line 494
    .local v4, "methodsTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/server/MethodPermissionPackage;>;"
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_74

    .line 500
    const/4 v9, 0x0

    goto :goto_4f

    .line 502
    :cond_74
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MethodPermissionPackage;

    .line 503
    .local v3, "methodPermissionPackage":Lcom/android/server/MethodPermissionPackage;
    iget-boolean v9, v3, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    if-eqz v9, :cond_82

    .line 509
    const/4 v9, 0x0

    goto :goto_4f

    .line 512
    :cond_82
    iget-object v9, v3, Lcom/android/server/MethodPermissionPackage;->seinfos:Ljava/util/HashSet;

    sget-object v10, OPEN_METHODS_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 517
    const/4 v9, 0x1

    goto :goto_4f

    .line 520
    :cond_8e
    iget-object v9, v3, Lcom/android/server/MethodPermissionPackage;->seinfos:Ljava/util/HashSet;

    sget-object v10, CONTAINER_CALLER_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a0

    .line 524
    invoke-static {p0, p1}, isContainerApp(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_a0

    .line 525
    const/4 v9, 0x1

    goto :goto_4f

    .line 529
    :cond_a0
    iget-object v9, v3, Lcom/android/server/MethodPermissionPackage;->seinfos:Ljava/util/HashSet;

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ac

    .line 539
    const/4 v9, 0x1

    goto :goto_4f

    .line 541
    :cond_ac
    and-int/lit8 v9, p6, 0x2

    if-nez v9, :cond_bc

    and-int/lit8 v9, p6, 0x10

    if-nez v9, :cond_bc

    and-int/lit8 v9, p6, 0x8

    if-nez v9, :cond_bc

    and-int/lit8 v9, p6, 0x4

    if-eqz v9, :cond_d9

    .line 542
    :cond_bc
    iget-object v9, v3, Lcom/android/server/MethodPermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_c2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 543
    .local v7, "permittedTypeString":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 544
    .local v6, "permittedType":I
    and-int v9, p6, v6

    if-eqz v9, :cond_c2

    .line 547
    const/4 v9, 0x1

    goto/16 :goto_4f

    .line 551
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "permittedType":I
    .end local v7    # "permittedTypeString":Ljava/lang/String;
    :cond_d9
    iget-object v9, v3, Lcom/android/server/MethodPermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 552
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageObject;>;"
    :cond_df
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_102

    .line 553
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageObject;

    .line 554
    .local v5, "packageObject":Lcom/android/server/PackageObject;
    iget-object v9, v5, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_df

    iget-object v9, v5, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_df

    .line 559
    const/4 v9, 0x1

    goto/16 :goto_4f

    .line 564
    .end local v5    # "packageObject":Lcom/android/server/PackageObject;
    :cond_102
    const/4 v9, 0x0

    goto/16 :goto_4f
.end method

.method private static checkForServiceAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13
    .param p0, "service"    # Ljava/lang/String;
    .param p1, "seInfo"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "agentType"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 568
    sget-object v8, serviceTable:Ljava/util/Hashtable;

    if-nez v8, :cond_7

    .line 618
    :cond_6
    :goto_6
    return v6

    .line 578
    :cond_7
    sget-object v8, serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v8, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 590
    sget-object v8, serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v8, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ServiceObject;

    .line 591
    .local v5, "serviceObject":Lcom/android/server/ServiceObject;
    iget-boolean v8, v5, Lcom/android/server/ServiceObject;->isSterileService:Z

    if-nez v8, :cond_6

    .line 596
    iget-object v8, v5, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v8, v8, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    move v6, v7

    .line 599
    goto :goto_6

    .line 601
    :cond_27
    and-int/lit8 v8, p3, 0x2

    if-nez v8, :cond_37

    and-int/lit8 v8, p3, 0x10

    if-nez v8, :cond_37

    and-int/lit8 v8, p3, 0x8

    if-nez v8, :cond_37

    and-int/lit8 v8, p3, 0x4

    if-eqz v8, :cond_55

    .line 602
    :cond_37
    iget-object v8, v5, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v8, v8, Lcom/android/server/PermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 603
    .local v4, "permittedTypeString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 604
    .local v3, "permittedType":I
    and-int v8, p3, v3

    if-eqz v8, :cond_3f

    move v6, v7

    .line 605
    goto :goto_6

    .line 608
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "permittedType":I
    .end local v4    # "permittedTypeString":Ljava/lang/String;
    :cond_55
    iget-object v8, v5, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v8, v8, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 609
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageObject;>;"
    :cond_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 610
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageObject;

    .line 611
    .local v2, "packageObject":Lcom/android/server/PackageObject;
    iget-object v8, v2, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5d

    iget-object v8, v2, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5d

    move v6, v7

    .line 614
    goto :goto_6
.end method

.method private static createAuthorizationTables(Lorg/w3c/dom/Element;)Z
    .registers 16
    .param p0, "policyElement"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 206
    const-string/jumbo v12, "service"

    invoke-interface {p0, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 207
    .local v8, "servicesList":Lorg/w3c/dom/NodeList;
    invoke-static {}, getServiceTable()Ljava/util/Hashtable;

    move-result-object v12

    sput-object v12, serviceTable:Ljava/util/Hashtable;

    .line 208
    invoke-static {}, getOpenMethodCache()Ljava/util/HashSet;

    move-result-object v12

    sput-object v12, openMethodCache:Ljava/util/HashSet;

    .line 210
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_159

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v0, v12, :cond_159

    .line 212
    const/4 v9, 0x0

    .line 213
    .local v9, "singleServiceElement":Lorg/w3c/dom/Element;
    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .end local v9    # "singleServiceElement":Lorg/w3c/dom/Element;
    check-cast v9, Lorg/w3c/dom/Element;

    .line 215
    .restart local v9    # "singleServiceElement":Lorg/w3c/dom/Element;
    new-instance v7, Lcom/android/server/ServiceObject;

    invoke-direct {v7}, Lcom/android/server/ServiceObject;-><init>()V

    .line 216
    .local v7, "serviceObject":Lcom/android/server/ServiceObject;
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const-string/jumbo v13, "name"

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 218
    .local v6, "serviceName":Ljava/lang/String;
    const-string/jumbo v12, "seinfo"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 220
    .local v1, "itemsWithinService":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_88

    .line 221
    iput-boolean v10, v7, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 222
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4d
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v2, v12, :cond_88

    .line 223
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    if-ne v12, v11, :cond_85

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12, v9}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_85

    .line 224
    iget-object v12, v7, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v12, v12, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    const-string/jumbo v14, "value"

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 227
    .end local v2    # "j":I
    :cond_88
    const-string/jumbo v12, "package"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 229
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_eb

    .line 230
    iput-boolean v10, v7, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 231
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_98
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v2, v12, :cond_eb

    .line 232
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    if-ne v12, v11, :cond_e8

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12, v9}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_e8

    .line 234
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const-string/jumbo v13, "name"

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const-string/jumbo v13, "seinfo"

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "packageSeinfo":Ljava/lang/String;
    new-instance v4, Lcom/android/server/PackageObject;

    invoke-direct {v4, v3, v5}, Lcom/android/server/PackageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .local v4, "packageObject":Lcom/android/server/PackageObject;
    iget-object v12, v7, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v12, v12, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageObject":Lcom/android/server/PackageObject;
    .end local v5    # "packageSeinfo":Ljava/lang/String;
    :cond_e8
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 241
    .end local v2    # "j":I
    :cond_eb
    const-string v12, "agentType"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 243
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_135

    .line 244
    iput-boolean v10, v7, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 245
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_fa
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v2, v12, :cond_135

    .line 246
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    if-ne v12, v11, :cond_132

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12, v9}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_132

    .line 247
    iget-object v12, v7, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v12, v12, Lcom/android/server/PermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    const-string/jumbo v14, "value"

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_132
    add-int/lit8 v2, v2, 0x1

    goto :goto_fa

    .line 250
    .end local v2    # "j":I
    :cond_135
    const-string/jumbo v12, "method"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 252
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_147

    .line 253
    iput-boolean v10, v7, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 254
    invoke-static {v1, v7, v6}, processMethodsUnderService(Lorg/w3c/dom/NodeList;Lcom/android/server/ServiceObject;Ljava/lang/String;)Z

    .line 257
    :cond_147
    sget-object v12, serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v12, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_150

    .line 266
    .end local v0    # "i":I
    .end local v1    # "itemsWithinService":Lorg/w3c/dom/NodeList;
    .end local v6    # "serviceName":Ljava/lang/String;
    .end local v7    # "serviceObject":Lcom/android/server/ServiceObject;
    .end local v9    # "singleServiceElement":Lorg/w3c/dom/Element;
    :goto_14f
    return v10

    .line 263
    .restart local v0    # "i":I
    .restart local v1    # "itemsWithinService":Lorg/w3c/dom/NodeList;
    .restart local v6    # "serviceName":Ljava/lang/String;
    .restart local v7    # "serviceObject":Lcom/android/server/ServiceObject;
    .restart local v9    # "singleServiceElement":Lorg/w3c/dom/Element;
    :cond_150
    sget-object v12, serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v12, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1c

    .end local v0    # "i":I
    .end local v1    # "itemsWithinService":Lorg/w3c/dom/NodeList;
    .end local v6    # "serviceName":Ljava/lang/String;
    .end local v7    # "serviceObject":Lcom/android/server/ServiceObject;
    .end local v9    # "singleServiceElement":Lorg/w3c/dom/Element;
    :cond_159
    move v10, v11

    .line 266
    goto :goto_14f
.end method

.method public static filterAPI(Ljava/lang/String;)Z
    .registers 3
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 454
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    sget-object v1, FILTERED_API:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 455
    sget-object v1, FILTERED_API:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 456
    const/4 v1, 0x1

    .line 459
    :goto_11
    return v1

    .line 454
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 459
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private static getAppinfo(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 633
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne p2, v4, :cond_8

    .line 635
    const/4 v0, 0x0

    .line 655
    :cond_7
    :goto_7
    return-object v0

    .line 637
    :cond_8
    const/4 v0, 0x0

    .line 639
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_9
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 640
    .local v3, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 641
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const/16 v4, 0x80

    invoke-interface {v2, p1, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 642
    if-nez v0, :cond_7

    .line 644
    invoke-static {p0, p2, p3}, getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 645
    const/16 v4, 0x80

    invoke-interface {v2, p1, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_26

    move-result-object v0

    .line 646
    if-nez v0, :cond_7

    goto :goto_7

    .line 651
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "userId":I
    :catch_26
    move-exception v1

    .line 652
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "Exception in getAppInfo"

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 653
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception Details:pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkgName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " appinfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private static getAuthorizeFilePath([Ljava/io/File;)Ljava/lang/String;
    .registers 12
    .param p0, "policyFiles"    # [Ljava/io/File;

    .prologue
    const/4 v10, 0x2

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "authorizeFile":Ljava/lang/String;
    const/4 v4, 0x0

    .line 121
    .local v4, "policyFile":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 122
    .local v2, "i":I
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v3

    .line 123
    .local v3, "index":I
    packed-switch v3, :pswitch_data_ae

    .line 158
    :cond_b
    :goto_b
    const/4 v6, 0x0

    :goto_c
    return-object v6

    .line 130
    :catch_d
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Authorize file not found in location "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p0, v2

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    add-int/lit8 v2, v2, 0x1

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_30
    if-nez v0, :cond_b

    if-eqz p0, :cond_b

    aget-object v6, p0, v2

    if-eqz v6, :cond_b

    .line 127
    :try_start_38
    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_d

    move-result-object v0

    move-object v6, v0

    .line 129
    goto :goto_c

    .line 141
    :pswitch_40
    add-int/lit8 v6, v3, -0x1

    :try_start_42
    aget-object v6, p0, v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v5, Ljava/io/FileReader;

    add-int/lit8 v6, v3, -0x1

    aget-object v6, p0, v6

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_51} :catch_63

    .line 144
    .end local v4    # "policyFile":Ljava/io/FileReader;
    .local v5, "policyFile":Ljava/io/FileReader;
    if-eqz v5, :cond_59

    .line 145
    :try_start_53
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_aa

    move-object v4, v5

    .end local v5    # "policyFile":Ljava/io/FileReader;
    .restart local v4    # "policyFile":Ljava/io/FileReader;
    move-object v6, v0

    .line 146
    goto :goto_c

    .end local v4    # "policyFile":Ljava/io/FileReader;
    .restart local v5    # "policyFile":Ljava/io/FileReader;
    :cond_59
    move-object v4, v5

    .line 152
    .end local v5    # "policyFile":Ljava/io/FileReader;
    .restart local v4    # "policyFile":Ljava/io/FileReader;
    :goto_5a
    const/4 v6, 0x2

    :try_start_5b
    aget-object v6, p0, v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_87

    move-result-object v0

    move-object v6, v0

    .line 153
    goto :goto_c

    .line 148
    :catch_63
    move-exception v1

    .line 149
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_64
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Authorize file not found in location "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, -0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_87
    move-exception v1

    .line 155
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Authorize file not found in location "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p0, v10

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "policyFile":Ljava/io/FileReader;
    .restart local v5    # "policyFile":Ljava/io/FileReader;
    :catch_aa
    move-exception v1

    move-object v4, v5

    .end local v5    # "policyFile":Ljava/io/FileReader;
    .restart local v4    # "policyFile":Ljava/io/FileReader;
    goto :goto_64

    .line 123
    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_30
        :pswitch_40
        :pswitch_40
        :pswitch_40
    .end packed-switch
.end method

.method public static declared-synchronized getOpenMethodCache()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const-class v1, Lcom/android/server/ServiceKeeper;

    monitor-enter v1

    :try_start_3
    sget-object v0, openMethodCache:Ljava/util/HashSet;

    if-nez v0, :cond_e

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, openMethodCache:Ljava/util/HashSet;

    .line 109
    :cond_e
    sget-object v0, openMethodCache:Ljava/util/HashSet;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPackageName(Landroid/content/Context;II)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 686
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne p1, v2, :cond_9

    .line 688
    const-string v1, "android"

    .line 702
    :goto_8
    return-object v1

    .line 691
    :cond_9
    const/4 v1, 0x0

    .line 697
    .local v1, "packageName":Ljava/lang/String;
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_13

    move-result-object v1

    goto :goto_8

    .line 698
    :catch_13
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Exception in getPackageName"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method private static getRelevantContainerType(Ljava/lang/String;)I
    .registers 2
    .param p0, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 622
    const-string/jumbo v0, "gsd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "good_trustonicpartner"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 623
    :cond_12
    const/4 v0, 0x1

    .line 628
    :goto_13
    return v0

    .line 624
    :cond_14
    const-string/jumbo v0, "mycontainer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 625
    const/4 v0, 0x2

    goto :goto_13

    .line 628
    :cond_1f
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static declared-synchronized getServiceKeeper()Lcom/android/server/ServiceKeeper;
    .registers 2

    .prologue
    .line 93
    const-class v1, Lcom/android/server/ServiceKeeper;

    monitor-enter v1

    :try_start_3
    sget-object v0, serviceKeeper:Lcom/android/server/ServiceKeeper;

    if-nez v0, :cond_e

    .line 94
    new-instance v0, Lcom/android/server/ServiceKeeper;

    invoke-direct {v0}, <init>()V

    sput-object v0, serviceKeeper:Lcom/android/server/ServiceKeeper;

    .line 95
    :cond_e
    sget-object v0, serviceKeeper:Lcom/android/server/ServiceKeeper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getServiceTable()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/ServiceObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const-class v1, Lcom/android/server/ServiceKeeper;

    monitor-enter v1

    :try_start_3
    sget-object v0, serviceTable:Ljava/util/Hashtable;

    if-nez v0, :cond_e

    .line 114
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, serviceTable:Ljava/util/Hashtable;

    .line 115
    :cond_e
    sget-object v0, serviceTable:Ljava/util/Hashtable;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getagenttype(Landroid/content/pm/ApplicationInfo;II)I
    .registers 5
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x1

    .line 673
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 682
    :cond_7
    :goto_7
    return v0

    .line 677
    :cond_8
    if-eqz p0, :cond_7

    .line 682
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->agentType:I

    goto :goto_7
.end method

.method private static getseinfo(Landroid/content/pm/ApplicationInfo;II)Ljava/lang/String;
    .registers 6
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 659
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 661
    const-string/jumbo v0, "system"

    .line 669
    :goto_9
    return-object v0

    .line 663
    :cond_a
    if-nez p0, :cond_18

    .line 664
    sget-object v0, mSKLog:Lcom/android/server/SKLogger;

    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "in getSEinfo: appinfo null"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const/4 v0, 0x0

    goto :goto_9

    .line 669
    :cond_18
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_9
.end method

.method public static isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I
    .registers 33
    .param p0, "mcontext"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "Service"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;

    .prologue
    .line 334
    if-eqz p4, :cond_4

    if-nez p3, :cond_f

    .line 335
    :cond_4
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, TAG:Ljava/lang/String;

    const-string v11, "In isAuthorized() : service is null or method is null"

    invoke-virtual {v4, v9, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v5, -0x1

    .line 450
    :goto_e
    return v5

    .line 339
    :cond_f
    :try_start_f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_1f

    .line 340
    const-string/jumbo v4, "system"

    invoke-static {v4}, getRelevantContainerType(Ljava/lang/String;)I

    move-result v5

    goto :goto_e

    .line 342
    :cond_1f
    sget-object v4, openMethodCache:Ljava/util/HashSet;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 344
    const-string v4, "_open"

    invoke-static {v4}, getRelevantContainerType(Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_47} :catch_49

    move-result v5

    goto :goto_e

    .line 346
    :catch_49
    move-exception v23

    .line 347
    .local v23, "e":Ljava/lang/Exception;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in getting from openCache"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v23

    invoke-virtual {v4, v9, v11, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    .end local v23    # "e":Ljava/lang/Exception;
    :cond_6a
    :try_start_6a
    invoke-static {}, Lcom/android/server/SEAMService;->isBootComplete()Z

    move-result v22

    .line 352
    .local v22, "bootCompleted":Z
    if-nez v22, :cond_9b

    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_73} :catch_7a

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_9b

    .line 354
    const/4 v5, 0x0

    goto :goto_e

    .line 356
    .end local v22    # "bootCompleted":Z
    :catch_7a
    move-exception v23

    .line 357
    .restart local v23    # "e":Ljava/lang/Exception;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in processing bootComplete check"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v23

    invoke-virtual {v4, v9, v11, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    .end local v23    # "e":Ljava/lang/Exception;
    :cond_9b
    const/16 v21, 0x0

    .line 360
    .local v21, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v6, 0x0

    .line 361
    .local v6, "seInfo":Ljava/lang/String;
    const/4 v7, 0x0

    .line 362
    .local v7, "pkgName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 363
    .local v8, "agentType":I
    const/4 v10, 0x0

    .line 364
    .local v10, "isSourceTrusted":Z
    const/16 v25, 0x0

    .line 365
    .local v25, "isNoAudit":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 386
    .local v26, "origId":J
    invoke-static/range {p0 .. p2}, getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v7

    .line 387
    if-nez v7, :cond_f4

    .line 388
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In isAuthorized() : Package Name returned null : Returning -1 : : Exiting : service =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " method = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "pid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v5, -0x1

    goto/16 :goto_e

    .line 395
    :cond_f4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v7, v1, v2}, getAppinfo(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v21

    .line 396
    move-object/from16 v0, v21

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, getseinfo(Landroid/content/pm/ApplicationInfo;II)Ljava/lang/String;

    move-result-object v6

    .line 397
    move-object/from16 v0, v21

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, getagenttype(Landroid/content/pm/ApplicationInfo;II)I

    move-result v8

    .line 398
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    if-nez v21, :cond_121

    :try_start_117
    const-string/jumbo v4, "system"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 401
    const/4 v10, 0x1

    .line 404
    :cond_121
    move-object/from16 v0, p3

    invoke-static {v0, v6, v7, v8}, checkForServiceAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1c6

    .line 405
    if-eqz v6, :cond_15e

    .line 406
    invoke-static {v6}, getRelevantContainerType(Ljava/lang/String;)I
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_12e} :catch_152

    move-result v5

    .line 411
    .local v5, "retContainerType":I
    :try_start_12f
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    move/from16 v9, p2

    move/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/SKLogger;->log(ILjava/lang/String;Ljava/lang/String;IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_13c
    .catch Ljava/lang/NullPointerException; {:try_start_12f .. :try_end_13c} :catch_13e
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_13c} :catch_152

    goto/16 :goto_e

    .line 412
    :catch_13e
    move-exception v23

    .line 413
    .local v23, "e":Ljava/lang/NullPointerException;
    :try_start_13f
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, TAG:Ljava/lang/String;

    const-string v11, "Could not log SKPolicy activity due to NULL pointer."

    move-object/from16 v0, v23

    invoke-virtual {v4, v9, v11, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v4

    sput-object v4, mSKLog:Lcom/android/server/SKLogger;
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_150} :catch_152

    goto/16 :goto_e

    .line 437
    .end local v5    # "retContainerType":I
    .end local v23    # "e":Ljava/lang/NullPointerException;
    :catch_152
    move-exception v24

    .line 438
    .local v24, "e1":Ljava/lang/Exception;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, TAG:Ljava/lang/String;

    const-string v11, "Exception in is Authorized"

    move-object/from16 v0, v24

    invoke-virtual {v4, v9, v11, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    .end local v24    # "e1":Ljava/lang/Exception;
    :cond_15e
    :try_start_15e
    sget-object v11, mSKLog:Lcom/android/server/SKLogger;

    const/4 v12, -0x1

    move-object v13, v6

    move-object v14, v7

    move v15, v8

    move/from16 v16, p2

    move/from16 v17, v10

    move/from16 v18, p1

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    invoke-virtual/range {v11 .. v20}, Lcom/android/server/SKLogger;->log(ILjava/lang/String;Ljava/lang/String;IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_171
    .catch Ljava/lang/NullPointerException; {:try_start_15e .. :try_end_171} :catch_201

    .line 446
    :goto_171
    invoke-static/range {p4 .. p4}, filterAPI(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c3

    .line 447
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In isAuthorized() : No match found : Returning -1 : : Exiting : service =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " method = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "pid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "pkgName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_1c3
    const/4 v5, -0x1

    goto/16 :goto_e

    :cond_1c6
    move-object/from16 v11, p0

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, p4

    move/from16 v17, v8

    .line 418
    :try_start_1d2
    invoke-static/range {v11 .. v17}, checkForMethodAuthorization(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_15e

    .line 419
    if-eqz v6, :cond_15e

    .line 420
    invoke-static {v6}, getRelevantContainerType(Ljava/lang/String;)I
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1dd} :catch_152

    move-result v5

    .line 429
    .restart local v5    # "retContainerType":I
    :try_start_1de
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    move/from16 v9, p2

    move/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/SKLogger;->log(ILjava/lang/String;Ljava/lang/String;IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_1eb
    .catch Ljava/lang/NullPointerException; {:try_start_1de .. :try_end_1eb} :catch_1ed
    .catch Ljava/lang/Exception; {:try_start_1de .. :try_end_1eb} :catch_152

    goto/16 :goto_e

    .line 430
    :catch_1ed
    move-exception v23

    .line 431
    .restart local v23    # "e":Ljava/lang/NullPointerException;
    :try_start_1ee
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, TAG:Ljava/lang/String;

    const-string v11, "Could not log SKPolicy activity due to NULL pointer."

    move-object/from16 v0, v23

    invoke-virtual {v4, v9, v11, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v4

    sput-object v4, mSKLog:Lcom/android/server/SKLogger;
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_1ee .. :try_end_1ff} :catch_152

    goto/16 :goto_e

    .line 442
    .end local v5    # "retContainerType":I
    .end local v23    # "e":Ljava/lang/NullPointerException;
    :catch_201
    move-exception v23

    .line 443
    .restart local v23    # "e":Ljava/lang/NullPointerException;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, TAG:Ljava/lang/String;

    const-string v11, "Could not log SKPolicy activity due to NULL pointer."

    move-object/from16 v0, v23

    invoke-virtual {v4, v9, v11, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 444
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v4

    sput-object v4, mSKLog:Lcom/android/server/SKLogger;

    goto/16 :goto_171
.end method

.method public static isContainerApp(Landroid/content/Context;I)Z
    .registers 9
    .param p0, "mcontext"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    .line 319
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 320
    .local v2, "userId":I
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    .line 321
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_36

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_17

    move-result v3

    if-eqz v3, :cond_36

    .line 322
    const/4 v3, 0x1

    .line 327
    .end local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    .end local v2    # "userId":I
    :goto_16
    return v3

    .line 324
    :catch_17
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in isContainerApp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_36
    const/4 v3, 0x0

    goto :goto_16
.end method

.method public static isTableActive()Z
    .registers 1

    .prologue
    .line 463
    sget-boolean v0, isActive:Z

    if-nez v0, :cond_6

    .line 465
    const/4 v0, 0x0

    .line 467
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static loadFromAuthorizeFile(Ljava/lang/String;)Z
    .registers 14
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 172
    if-eqz p0, :cond_f

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_10

    .line 202
    :cond_f
    :goto_f
    return v9

    .line 175
    :cond_10
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 178
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v8, "xmlFile":Ljava/io/File;
    :try_start_19
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 181
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 182
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Element;->normalize()V

    .line 184
    const-string/jumbo v11, "policy"

    invoke-interface {v2, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 185
    .local v7, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .line 186
    .local v6, "policyElement":Lorg/w3c/dom/Element;
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .end local v6    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v6, Lorg/w3c/dom/Element;

    .line 188
    .restart local v6    # "policyElement":Lorg/w3c/dom/Element;
    invoke-static {v6}, createAuthorizationTables(Lorg/w3c/dom/Element;)Z
    :try_end_3a
    .catch Lorg/xml/sax/SAXException; {:try_start_19 .. :try_end_3a} :catch_41
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_19 .. :try_end_3a} :catch_4c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3a} :catch_57

    move-result v11

    if-eqz v11, :cond_f

    .line 201
    sput-boolean v10, isActive:Z

    move v9, v10

    .line 202
    goto :goto_f

    .line 191
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "policyElement":Lorg/w3c/dom/Element;
    .end local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    :catch_41
    move-exception v3

    .line 192
    .local v3, "e1":Lorg/xml/sax/SAXException;
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    sget-object v11, TAG:Ljava/lang/String;

    const-string v12, "SAXException"

    invoke-virtual {v10, v11, v12, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 194
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    :catch_4c
    move-exception v4

    .line 195
    .local v4, "e2":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    sget-object v11, TAG:Ljava/lang/String;

    const-string v12, "ParserConfigurationException"

    invoke-virtual {v10, v11, v12, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 197
    .end local v4    # "e2":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_57
    move-exception v5

    .line 198
    .local v5, "e3":Ljava/io/IOException;
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    sget-object v11, TAG:Ljava/lang/String;

    const-string v12, "IOException"

    invoke-virtual {v10, v11, v12, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method private static processMethodsUnderService(Lorg/w3c/dom/NodeList;Lcom/android/server/ServiceObject;Ljava/lang/String;)Z
    .registers 16
    .param p0, "methodsWithinService"    # Lorg/w3c/dom/NodeList;
    .param p1, "serviceObject"    # Lcom/android/server/ServiceObject;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v0, v10, :cond_116

    .line 272
    const/4 v8, 0x0

    .line 273
    .local v8, "singleMethodElement":Lorg/w3c/dom/Element;
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .end local v8    # "singleMethodElement":Lorg/w3c/dom/Element;
    check-cast v8, Lorg/w3c/dom/Element;

    .line 275
    .restart local v8    # "singleMethodElement":Lorg/w3c/dom/Element;
    new-instance v7, Lcom/android/server/MethodPermissionPackage;

    invoke-direct {v7}, Lcom/android/server/MethodPermissionPackage;-><init>()V

    .line 276
    .local v7, "permissionPackage":Lcom/android/server/MethodPermissionPackage;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "name"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "methodName":Ljava/lang/String;
    const-string/jumbo v10, "seinfo"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 279
    .local v1, "itemsWithinMethod":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_8b

    .line 280
    iput-boolean v9, v7, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    .line 281
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_33
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v2, v10, :cond_8b

    .line 282
    iget-object v10, v7, Lcom/android/server/MethodPermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    const-string/jumbo v12, "value"

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_open"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_88

    .line 285
    sget-object v10, openMethodCache:Ljava/util/HashSet;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_88
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 289
    .end local v2    # "j":I
    :cond_8b
    const-string/jumbo v10, "package"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 290
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_d4

    .line 291
    iput-boolean v9, v7, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    .line 292
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_9b
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v2, v10, :cond_d4

    .line 293
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "name"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "seinfo"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, "packageSeinfo":Ljava/lang/String;
    new-instance v5, Lcom/android/server/PackageObject;

    invoke-direct {v5, v4, v6}, Lcom/android/server/PackageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .local v5, "packageObject":Lcom/android/server/PackageObject;
    iget-object v10, v7, Lcom/android/server/MethodPermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v10, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 299
    .end local v2    # "j":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "packageObject":Lcom/android/server/PackageObject;
    .end local v6    # "packageSeinfo":Ljava/lang/String;
    :cond_d4
    const-string v10, "agentType"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 300
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_104

    .line 301
    iput-boolean v9, v7, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    .line 302
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_e3
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v2, v10, :cond_104

    .line 303
    iget-object v10, v7, Lcom/android/server/MethodPermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    const-string/jumbo v12, "value"

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_e3

    .line 306
    .end local v2    # "j":I
    :cond_104
    iget-object v10, p1, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    invoke-virtual {v10, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_10d

    .line 314
    .end local v1    # "itemsWithinMethod":Lorg/w3c/dom/NodeList;
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v7    # "permissionPackage":Lcom/android/server/MethodPermissionPackage;
    .end local v8    # "singleMethodElement":Lorg/w3c/dom/Element;
    :goto_10c
    return v9

    .line 312
    .restart local v1    # "itemsWithinMethod":Lorg/w3c/dom/NodeList;
    .restart local v3    # "methodName":Ljava/lang/String;
    .restart local v7    # "permissionPackage":Lcom/android/server/MethodPermissionPackage;
    .restart local v8    # "singleMethodElement":Lorg/w3c/dom/Element;
    :cond_10d
    iget-object v10, p1, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    invoke-virtual {v10, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 314
    .end local v1    # "itemsWithinMethod":Lorg/w3c/dom/NodeList;
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v7    # "permissionPackage":Lcom/android/server/MethodPermissionPackage;
    .end local v8    # "singleMethodElement":Lorg/w3c/dom/Element;
    :cond_116
    const/4 v9, 0x1

    goto :goto_10c
.end method
