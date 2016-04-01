.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MumXmlDataParser"
.end annotation


# static fields
.field private static final APPLICATION:Ljava/lang/String; = "application"

.field private static final APPLICATIONONLY:Ljava/lang/String; = "applicationonly"

.field private static final ATTR_ALLOW:Ljava/lang/String; = "allow"

.field private static final ATTR_DISALLOW:Ljava/lang/String; = "disallow"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_REENABLE:Ljava/lang/String; = "reenable"

.field private static final ATTR_REMOVE:Ljava/lang/String; = "remove"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final BADGEPOLICY:Ljava/lang/String; = "BadgePolicy"

.field private static final CLONE_APPLICATION:Ljava/lang/String; = "cloneapplication"

.field private static final CLONE_DISABLE_PKG:Ljava/lang/String; = "clonedisablePkg"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final DISABLE_PKG:Ljava/lang/String; = "disablePkg"

.field private static final DISALLOW:Ljava/lang/String; = "disallow"

.field private static final FORBIDDEN_STRING:Ljava/lang/String; = "forbiddenString"

.field private static final FOTA_DISABLE_PKG:Ljava/lang/String; = "fotadisablePkg"

.field private static final GROUPPKG:Ljava/lang/String; = "groupPkg"

.field private static final GROUPPREFIX:Ljava/lang/String; = "group_"

.field private static final KNOXCORE:Ljava/lang/String; = "knoxCore"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final PERSONA:Ljava/lang/String; = "persona"

.field private static final POLICY:Ljava/lang/String; = "policy"

.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final PROTECTED_PKG:Ljava/lang/String; = "protectedPkg"

.field private static final PROVIDER_TAG:Ljava/lang/String; = "provider"

.field private static final REPLACE:Ljava/lang/String; = "replace"

.field private static final ROW:Ljava/lang/String; = "row"

.field private static final TABLE:Ljava/lang/String; = "table"

.field private static final TAG:Ljava/lang/String; = "MumXmlDataParser"


# instance fields
.field private final DEBUG:Z

.field fotaCloneAppDisableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppInstallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppReenableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppRemoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mTypeListLocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v1, 0x0

    .line 5388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5344
    const/4 v0, 0x0

    iput-boolean v0, p0, DEBUG:Z

    .line 5380
    iput-object v1, p0, fotaCloneAppInstallList:Ljava/util/List;

    .line 5381
    iput-object v1, p0, fotaCloneAppDisableList:Ljava/util/List;

    .line 5382
    iput-object v1, p0, fotaCloneAppRemoveList:Ljava/util/List;

    .line 5383
    iput-object v1, p0, fotaCloneAppReenableList:Ljava/util/List;

    .line 5386
    iput-object v1, p0, mTypeListLocal:Ljava/util/List;

    .line 5389
    iput-object p1, p0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 5390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTypeListLocal:Ljava/util/List;

    .line 5391
    return-void
.end method

.method private containsProductName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 5426
    if-eqz p2, :cond_5

    if-nez p1, :cond_6

    .line 5435
    :cond_5
    :goto_5
    return v5

    .line 5429
    :cond_6
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5430
    .local v4, "target":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_17
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 5431
    .local v3, "oper":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 5432
    const/4 v5, 0x1

    goto :goto_5

    .line 5430
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method


# virtual methods
.method public getFotaCloneDisableApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5396
    iget-object v0, p0, fotaCloneAppDisableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneInstallApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5402
    iget-object v0, p0, fotaCloneAppInstallList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneReenableApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5414
    iget-object v0, p0, fotaCloneAppReenableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneRemoveApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5408
    iget-object v0, p0, fotaCloneAppRemoveList:Ljava/util/List;

    return-object v0
.end method

.method public getTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5418
    iget-object v0, p0, mTypeListLocal:Ljava/util/List;

    return-object v0
.end method

.method public isDefaultLWCModel()Z
    .registers 5

    .prologue
    .line 5439
    const/4 v1, 0x0

    .line 5441
    .local v1, "result":Z
    :try_start_1
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v2

    .line 5442
    .local v2, "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    sget-object v3, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_14

    move-result v3

    if-ltz v3, :cond_12

    const/4 v0, 0x1

    .line 5443
    .local v0, "isKnoxVersionPostZero":Z
    :goto_e
    if-eqz v0, :cond_11

    .line 5444
    const/4 v1, 0x1

    .line 5449
    .end local v0    # "isKnoxVersionPostZero":Z
    .end local v2    # "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    :cond_11
    :goto_11
    return v1

    .line 5442
    .restart local v2    # "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    :cond_12
    const/4 v0, 0x0

    goto :goto_e

    .line 5447
    .end local v2    # "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    :catch_14
    move-exception v3

    goto :goto_11
.end method

.method public mergeKnoxConfigurationTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6283
    .local p1, "origTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    .local p2, "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    const/4 v4, 0x0

    .line 6284
    .local v4, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 6286
    .local v1, "customName":Ljava/lang/String;
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_24

    .line 6287
    :cond_a
    const-string v6, "MumXmlDataParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mergeKnoxConfigurationTypes: customTypeList == null or empty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6314
    :cond_23
    return-object p1

    .line 6291
    :cond_24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 6292
    .local v5, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_38
    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 6293
    .local v0, "custRow":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    .line 6294
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 6295
    if-eqz v4, :cond_38

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 6298
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_75

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_75

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_75

    .line 6300
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6303
    :cond_75
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_96

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_96

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_96

    .line 6305
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6308
    :cond_96
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_38

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_38

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_38

    .line 6310
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_38
.end method

.method public readFromCustomXml()Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6146
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 6149
    .local v11, "rowsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 6150
    .local v4, "event":I
    const/4 v10, 0x0

    .line 6151
    .local v10, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/4 v13, 0x0

    .local v13, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 6152
    .local v6, "nameAttribute":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 6154
    .local v7, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v14, "ro.product.name"

    const-string v15, "NONE"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6155
    .local v8, "productName":Ljava/lang/String;
    :goto_1d
    const/4 v14, 0x1

    if-eq v4, v14, :cond_8f

    .line 6156
    packed-switch v4, :pswitch_data_1e4

    .line 6273
    :cond_23
    :goto_23
    move-object/from16 v0, p0

    iget-object v14, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_1d

    .line 6158
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v14, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 6159
    .local v12, "tag":Ljava/lang/String;
    const-string/jumbo v14, "row"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_43

    .line 6162
    new-instance v10, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .end local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct {v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_23

    .line 6164
    :cond_43
    const-string v14, "column"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_bc

    .line 6165
    move-object/from16 v0, p0

    iget-object v14, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "value"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6166
    move-object/from16 v0, p0

    iget-object v14, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6169
    const-string v14, "Name"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_90

    if-eqz v10, :cond_90

    .line 6171
    invoke-virtual {v10, v13}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_70} :catch_71

    goto :goto_23

    .line 6275
    .end local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "event":I
    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "nameAttribute":Ljava/lang/String;
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "productName":Ljava/lang/String;
    .end local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :catch_71
    move-exception v3

    .line 6276
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "readFromCustomXml EX:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6279
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8f
    return-object v11

    .line 6173
    .restart local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "event":I
    .restart local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "nameAttribute":Ljava/lang/String;
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "productName":Ljava/lang/String;
    .restart local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :cond_90
    :try_start_90
    const-string v14, "AppInstallList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9e

    .line 6175
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_23

    .line 6177
    :cond_9e
    const-string v14, "ProtectedPkgList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_ad

    .line 6179
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_23

    .line 6181
    :cond_ad
    const-string v14, "GoogleAppsPkgList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 6183
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_23

    .line 6187
    :cond_bc
    const-string v14, "application"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_ef

    .line 6188
    if-eqz v1, :cond_23

    .line 6189
    move-object/from16 v0, p0

    iget-object v14, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6193
    const-string v14, "DCM"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->readOMCSalesCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e8

    const-string v14, "com.android.contacts"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e8

    .line 6194
    const-string v13, "com.samsung.contacts"

    .line 6196
    :cond_e8
    if-eqz v13, :cond_23

    .line 6197
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 6200
    :cond_ef
    const-string/jumbo v14, "protectedPkg"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10d

    .line 6202
    if-eqz v9, :cond_23

    .line 6203
    move-object/from16 v0, p0

    iget-object v14, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6206
    if-eqz v13, :cond_23

    .line 6207
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 6210
    :cond_10d
    const-string/jumbo v14, "disablePkg"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12b

    .line 6212
    if-eqz v5, :cond_23

    .line 6213
    move-object/from16 v0, p0

    iget-object v14, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6216
    if-eqz v13, :cond_23

    .line 6217
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 6220
    :cond_12b
    const-string/jumbo v14, "knoxCore"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13b

    .line 6222
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_23

    .line 6224
    :cond_13b
    const-string/jumbo v14, "package"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 6226
    if-eqz v7, :cond_23

    .line 6227
    move-object/from16 v0, p0

    iget-object v14, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6230
    if-eqz v13, :cond_23

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_23

    .line 6231
    move-object/from16 v0, p0

    iget-object v14, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "allow"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6232
    .local v2, "content":Ljava/lang/String;
    if-eqz v2, :cond_16f

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 6233
    :cond_16f
    move-object/from16 v0, p0

    iget-object v14, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "disallow"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6234
    if-eqz v2, :cond_185

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_23

    .line 6235
    :cond_185
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 6244
    .end local v2    # "content":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    :pswitch_18a
    move-object/from16 v0, p0

    iget-object v14, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 6245
    .restart local v12    # "tag":Ljava/lang/String;
    const-string/jumbo v14, "row"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1c9

    if-eqz v10, :cond_1c9

    .line 6247
    if-eqz v1, :cond_1a8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1a8

    .line 6248
    invoke-virtual {v10, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    .line 6250
    :cond_1a8
    if-eqz v9, :cond_1b3

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1b3

    .line 6251
    invoke-virtual {v10, v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    .line 6253
    :cond_1b3
    if-eqz v5, :cond_1be

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1be

    .line 6254
    invoke-virtual {v10, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    .line 6256
    :cond_1be
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    .line 6257
    const/4 v1, 0x0

    .line 6258
    const/4 v9, 0x0

    .line 6259
    const/4 v5, 0x0

    .line 6260
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 6262
    :cond_1c9
    const-string/jumbo v14, "knoxCore"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 6264
    if-eqz v7, :cond_1e1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1e1

    .line 6265
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2700()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_1e1} :catch_71

    .line 6267
    :cond_1e1
    const/4 v7, 0x0

    goto/16 :goto_23

    .line 6156
    :pswitch_data_1e4
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_18a
    .end packed-switch
.end method

.method public readFromXml()V
    .registers 44

    .prologue
    .line 5455
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    .line 5456
    .local v13, "event":I
    const/16 v35, 0x0

    .line 5457
    .local v35, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/16 v19, 0x0

    .line 5458
    .local v19, "intVal":I
    const/4 v10, 0x0

    .line 5459
    .local v10, "booleanVal":Z
    const/16 v21, 0x0

    .line 5460
    .local v21, "isRCPDataSettings":Z
    const/16 v39, 0x0

    .local v39, "value":Ljava/lang/String;
    const/16 v24, 0x0

    .line 5461
    .local v24, "nameAttribute":Ljava/lang/String;
    const/16 v28, 0x0

    .line 5462
    .local v28, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .local v14, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 5463
    .local v7, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .local v23, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v32, 0x0

    .local v32, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 5464
    .local v4, "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 5465
    .local v5, "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v27, 0x0

    .line 5466
    .local v27, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v29, 0x0

    .line 5467
    .local v29, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 5468
    .local v9, "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v40, "ro.product.name"

    const-string v41, "NONE"

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 5469
    .local v30, "productName":Ljava/lang/String;
    :goto_2f
    const/16 v40, 0x1

    move/from16 v0, v40

    if-eq v13, v0, :cond_13b

    .line 5470
    packed-switch v13, :pswitch_data_e70

    .line 6138
    :cond_38
    :goto_38
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    goto :goto_2f

    .line 5472
    :pswitch_43
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v36

    .line 5473
    .local v36, "tag":Ljava/lang/String;
    const-string/jumbo v40, "row"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_dc

    .line 5476
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "type"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5477
    sget-object v40, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7f

    .line 5478
    new-instance v35, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_38

    .line 5479
    :cond_7f
    sget-object v40, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_95

    .line 5480
    new-instance v35, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_38

    .line 5481
    :cond_95
    sget-object v40, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_ab

    .line 5482
    new-instance v35, Lcom/sec/enterprise/knox/container/BBCConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/BBCConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_38

    .line 5483
    :cond_ab
    sget-object v40, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_c2

    .line 5484
    new-instance v35, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto/16 :goto_38

    .line 5486
    :cond_c2
    invoke-virtual/range {p0 .. p0}, isDefaultLWCModel()Z

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_d5

    .line 5487
    new-instance v35, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto/16 :goto_38

    .line 5490
    :cond_d5
    new-instance v35, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto/16 :goto_38

    .line 5493
    :cond_dc
    const-string v40, "column"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_788

    .line 5494
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5495
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 5498
    const-string v40, "Name"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_13c

    if-eqz v35, :cond_13c

    .line 5500
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11b} :catch_11d

    goto/16 :goto_38

    .line 6140
    .end local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "booleanVal":Z
    .end local v13    # "event":I
    .end local v14    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "intVal":I
    .end local v21    # "isRCPDataSettings":Z
    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "nameAttribute":Ljava/lang/String;
    .end local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v29    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "productName":Ljava/lang/String;
    .end local v32    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v36    # "tag":Ljava/lang/String;
    .end local v39    # "value":Ljava/lang/String;
    :catch_11d
    move-exception v12

    .line 6141
    .local v12, "e":Ljava/lang/Exception;
    const-string v40, "MumXmlDataParser"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "readFromXml EX:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6143
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_13b
    return-void

    .line 5502
    .restart local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "booleanVal":Z
    .restart local v13    # "event":I
    .restart local v14    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "intVal":I
    .restart local v21    # "isRCPDataSettings":Z
    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "nameAttribute":Ljava/lang/String;
    .restart local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v29    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "productName":Ljava/lang/String;
    .restart local v32    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v36    # "tag":Ljava/lang/String;
    .restart local v39    # "value":Ljava/lang/String;
    :cond_13c
    :try_start_13c
    const-string v40, "UID"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_159

    .line 5504
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5505
    if-ltz v19, :cond_38

    if-eqz v35, :cond_38

    .line 5506
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    goto/16 :goto_38

    .line 5508
    :cond_159
    const-string v40, "UserID"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_17c

    .line 5510
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5511
    const/16 v40, -0x1

    move/from16 v0, v19

    move/from16 v1, v40

    if-lt v0, v1, :cond_38

    if-eqz v35, :cond_38

    .line 5512
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setUserId(I)V

    goto/16 :goto_38

    .line 5514
    :cond_17c
    const-string v40, "PersonaIDs"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_18f

    .line 5516
    new-instance v28, Ljava/util/ArrayList;

    .end local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .restart local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto/16 :goto_38

    .line 5518
    :cond_18f
    const-string v40, "Version"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1a6

    .line 5519
    if-eqz v35, :cond_38

    .line 5520
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 5521
    :cond_1a6
    const-string v40, "MaximumTimeToLock"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1c3

    .line 5523
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5524
    if-lez v19, :cond_38

    if-eqz v35, :cond_38

    .line 5525
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumTimeToLock(I)V

    goto/16 :goto_38

    .line 5527
    :cond_1c3
    const-string v40, "KeyguardDisabledFeatures"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1e0

    .line 5528
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5529
    if-ltz v19, :cond_38

    if-eqz v35, :cond_38

    .line 5530
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setKeyguardDisabledFeatures(I)V

    goto/16 :goto_38

    .line 5532
    :cond_1e0
    const-string v40, "DefaultContainerLayout"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1fd

    .line 5533
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5535
    if-lez v19, :cond_38

    if-eqz v35, :cond_38

    .line 5536
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setContainerLayout(I)V

    goto/16 :goto_38

    .line 5538
    :cond_1fd
    const-string v40, "LayoutSwitchingAllowed"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_216

    .line 5539
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5541
    if-eqz v35, :cond_38

    .line 5542
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    goto/16 :goto_38

    .line 5544
    :cond_216
    const-string v40, "DefaultConfigType"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_22f

    .line 5545
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5547
    if-eqz v35, :cond_38

    .line 5548
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setDefaultConfigType(Z)V

    goto/16 :goto_38

    .line 5551
    :cond_22f
    const-string v40, "PasswordMinimumLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_24c

    .line 5553
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5554
    if-lez v19, :cond_38

    if-eqz v35, :cond_38

    .line 5555
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLength(I)V

    goto/16 :goto_38

    .line 5557
    :cond_24c
    const-string v40, "PasswordMinimumNonLetters"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_269

    .line 5559
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5560
    if-lez v19, :cond_38

    if-eqz v35, :cond_38

    .line 5561
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumNonLetters(I)V

    goto/16 :goto_38

    .line 5563
    :cond_269
    const-string v40, "PasswordMinimumLetters"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_286

    .line 5565
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5566
    if-lez v19, :cond_38

    if-eqz v35, :cond_38

    .line 5567
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLetters(I)V

    goto/16 :goto_38

    .line 5569
    :cond_286
    const-string v40, "PasswordMinimumNumeric"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2a3

    .line 5571
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5572
    if-lez v19, :cond_38

    if-eqz v35, :cond_38

    .line 5573
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumNumeric(I)V

    goto/16 :goto_38

    .line 5575
    :cond_2a3
    const-string v40, "PasswordMinimumUpperCase"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2c0

    .line 5577
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5578
    if-lez v19, :cond_38

    if-eqz v35, :cond_38

    .line 5579
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumUpperCase(I)V

    goto/16 :goto_38

    .line 5581
    :cond_2c0
    const-string v40, "PasswordMinimumLowerCase"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2dd

    .line 5583
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5584
    if-lez v19, :cond_38

    if-eqz v35, :cond_38

    .line 5585
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLowerCase(I)V

    goto/16 :goto_38

    .line 5587
    :cond_2dd
    const-string v40, "PasswordMinimumSymbols"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2fa

    .line 5589
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5590
    if-lez v19, :cond_38

    if-eqz v35, :cond_38

    .line 5591
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumSymbols(I)V

    goto/16 :goto_38

    .line 5593
    :cond_2fa
    const-string v40, "PasswordQuality"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_317

    .line 5595
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5596
    if-ltz v19, :cond_38

    if-eqz v35, :cond_38

    .line 5597
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordQuality(I)V

    goto/16 :goto_38

    .line 5599
    :cond_317
    const-string v40, "MaximumFailedPasswordsForWipe"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_334

    .line 5601
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5602
    if-lez v19, :cond_38

    if-eqz v35, :cond_38

    .line 5603
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumFailedPasswordsForWipe(I)V

    goto/16 :goto_38

    .line 5605
    :cond_334
    const-string v40, "MaximumCharacterOccurences"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_351

    .line 5607
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5608
    if-lez v19, :cond_38

    if-eqz v35, :cond_38

    .line 5609
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumCharacterOccurences(I)V

    goto/16 :goto_38

    .line 5611
    :cond_351
    const-string v40, "MaximumCharacterSequenceLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_36e

    .line 5613
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5614
    if-lez v19, :cond_38

    if-eqz v35, :cond_38

    .line 5615
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumCharacterSequenceLength(I)V

    goto/16 :goto_38

    .line 5617
    :cond_36e
    const-string v40, "MaximumNumericSequenceLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_38b

    .line 5619
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5620
    if-lez v19, :cond_38

    if-eqz v35, :cond_38

    .line 5621
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumNumericSequenceLength(I)V

    goto/16 :goto_38

    .line 5623
    :cond_38b
    const-string v40, "SimplePasswordEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3a4

    if-eqz v35, :cond_3a4

    .line 5625
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5626
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setSimplePasswordEnabled(Z)V

    goto/16 :goto_38

    .line 5628
    :cond_3a4
    const-string v40, "MultifactorAuthEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3bd

    if-eqz v35, :cond_3bd

    .line 5630
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5631
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->enforceMultifactorAuthentication(Z)V

    goto/16 :goto_38

    .line 5633
    :cond_3bd
    const-string v40, "UserManaged"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3d6

    if-eqz v35, :cond_3d6

    .line 5635
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5636
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setManagedType(Z)V

    goto/16 :goto_38

    .line 5638
    :cond_3d6
    const-string v40, "ForbiddenStrings"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3e9

    .line 5640
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .restart local v14    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_38

    .line 5642
    :cond_3e9
    const-string v40, "AppInstallList"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_401

    .line 5644
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5646
    .restart local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_38

    .line 5649
    :cond_401
    const-string v40, "ProtectedPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_414

    .line 5651
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .restart local v32    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_38

    .line 5653
    :cond_414
    const-string v40, "GoogleAppsPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_427

    .line 5655
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .restart local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_38

    .line 5657
    :cond_427
    const-string v40, "FOTADisableAppsPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_43f

    .line 5659
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5660
    .restart local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_38

    .line 5662
    :cond_43f
    const-string v40, "AppInstallListForFotaClone"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_463

    .line 5665
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, fotaCloneAppInstallList:Ljava/util/List;

    .line 5666
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, fotaCloneAppRemoveList:Ljava/util/List;

    goto/16 :goto_38

    .line 5668
    :cond_463
    const-string v40, "AppDisableListForFotaClone"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_487

    .line 5671
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, fotaCloneAppDisableList:Ljava/util/List;

    .line 5672
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, fotaCloneAppReenableList:Ljava/util/List;

    goto/16 :goto_38

    .line 5674
    :cond_487
    const-string v40, "PatternRestriction"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4a8

    if-eqz v35, :cond_4a8

    .line 5676
    if-eqz v39, :cond_49d

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_49f

    .line 5677
    :cond_49d
    const/16 v39, 0x0

    .line 5679
    :cond_49f
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setRequiredPasswordPattern(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 5681
    :cond_4a8
    const-string v40, "CustomBadgeIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4c9

    if-eqz v35, :cond_4c9

    .line 5683
    if-eqz v39, :cond_4be

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_4c0

    .line 5684
    :cond_4be
    const/16 v39, 0x0

    .line 5686
    :cond_4c0
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 5688
    :cond_4c9
    const-string v40, "CustomHomeScreenWallpaper"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4ea

    if-eqz v35, :cond_4ea

    .line 5690
    if-eqz v39, :cond_4df

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_4e1

    .line 5691
    :cond_4df
    const/16 v39, 0x0

    .line 5693
    :cond_4e1
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 5695
    :cond_4ea
    const-string v40, "CustomLockScreenWallpaper"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_50b

    if-eqz v35, :cond_50b

    .line 5697
    if-eqz v39, :cond_500

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_502

    .line 5698
    :cond_500
    const/16 v39, 0x0

    .line 5700
    :cond_502
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 5702
    :cond_50b
    const-string v40, "CustomStatusLabel"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_52c

    if-eqz v35, :cond_52c

    .line 5704
    if-eqz v39, :cond_521

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_523

    .line 5705
    :cond_521
    const/16 v39, 0x0

    .line 5707
    :cond_523
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusLabel(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 5709
    :cond_52c
    const-string v40, "CustomStatusIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_54d

    if-eqz v35, :cond_54d

    .line 5711
    if-eqz v39, :cond_542

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_544

    .line 5712
    :cond_542
    const/16 v39, 0x0

    .line 5714
    :cond_544
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 5716
    :cond_54d
    const-string v40, "FolderHeaderTitle"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_57c

    if-eqz v35, :cond_57c

    .line 5718
    if-eqz v39, :cond_563

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_565

    .line 5719
    :cond_563
    const/16 v39, 0x0

    .line 5721
    :cond_565
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_38

    .line 5722
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderHeaderTitle(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 5724
    :cond_57c
    const-string v40, "FolderHeaderIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5ab

    if-eqz v35, :cond_5ab

    .line 5726
    if-eqz v39, :cond_592

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_594

    .line 5727
    :cond_592
    const/16 v39, 0x0

    .line 5729
    :cond_594
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_38

    .line 5730
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 5732
    :cond_5ab
    const-string v40, "FolderDisabledChangeLayout"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5da

    if-eqz v35, :cond_5da

    .line 5734
    if-eqz v39, :cond_5c1

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_5c3

    .line 5735
    :cond_5c1
    const/16 v39, 0x0

    .line 5737
    :cond_5c3
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_38

    .line 5738
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderDisabledChangeLayout(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 5740
    :cond_5da
    const-string v40, "RCPDataSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5f1

    .line 5742
    const/16 v21, 0x1

    .line 5743
    if-nez v23, :cond_38

    .line 5744
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_38

    .line 5747
    :cond_5f1
    const-string v40, "RCPAllowChangeDataSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_608

    .line 5749
    const/16 v21, 0x0

    .line 5750
    if-nez v23, :cond_38

    .line 5751
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_38

    .line 5754
    :cond_608
    const-string v40, "RCPNotifSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_61d

    .line 5756
    if-nez v23, :cond_38

    .line 5757
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_38

    .line 5760
    :cond_61d
    const-string v40, "AllowMultiwindowMode"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_636

    if-eqz v35, :cond_636

    .line 5762
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5763
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowMultiwindowMode(Z)V

    goto/16 :goto_38

    .line 5765
    :cond_636
    const-string v40, "AllowTaskManager"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_64f

    if-eqz v35, :cond_64f

    .line 5767
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5768
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowTaskManager(Z)V

    goto/16 :goto_38

    .line 5770
    :cond_64f
    const-string v40, "AllowSettingsChanges"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_676

    if-eqz v35, :cond_676

    .line 5772
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5773
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_38

    .line 5774
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowSettingsChanges(Z)V

    goto/16 :goto_38

    .line 5776
    :cond_676
    const-string v40, "AllowStatusBarExpansion"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_69d

    if-eqz v35, :cond_69d

    .line 5778
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5779
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_38

    .line 5780
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowStatusBarExpansion(Z)V

    goto/16 :goto_38

    .line 5782
    :cond_69d
    const-string v40, "AllowHomeKey"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6c4

    if-eqz v35, :cond_6c4

    .line 5784
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5785
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_38

    .line 5786
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowHomeKey(Z)V

    goto/16 :goto_38

    .line 5788
    :cond_6c4
    const-string v40, "AllowClearAllNotification"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6eb

    if-eqz v35, :cond_6eb

    .line 5790
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5791
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_38

    .line 5792
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowClearAllNotification(Z)V

    goto/16 :goto_38

    .line 5794
    :cond_6eb
    const-string v40, "HideSystemBar"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_712

    if-eqz v35, :cond_712

    .line 5796
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5797
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_38

    .line 5798
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->setHideSystemBar(Z)V

    goto/16 :goto_38

    .line 5800
    :cond_712
    const-string v40, "WipeRecentTasks"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_739

    if-eqz v35, :cond_739

    .line 5802
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5803
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_38

    .line 5804
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->setWipeRecentTasks(Z)V

    goto/16 :goto_38

    .line 5806
    :cond_739
    const-string v40, "BiometricAuthEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_76f

    if-eqz v35, :cond_76f

    .line 5807
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "type"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5808
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5809
    if-eqz v10, :cond_38

    if-lez v19, :cond_38

    .line 5810
    const/16 v40, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setBiometricAuthenticationEnabled(IZ)V

    goto/16 :goto_38

    .line 5812
    :cond_76f
    const-string v40, "USBDebuggingAllowed"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_38

    if-eqz v35, :cond_38

    .line 5814
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5815
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowUSBDebugging(Z)V

    goto/16 :goto_38

    .line 5818
    :cond_788
    const-string/jumbo v40, "persona"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7b9

    .line 5820
    if-eqz v28, :cond_38

    .line 5821
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "id"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5823
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5824
    if-lez v19, :cond_38

    .line 5825
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 5828
    :cond_7b9
    const-string/jumbo v40, "forbiddenString"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7e0

    .line 5830
    if-eqz v14, :cond_38

    .line 5831
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5833
    if-eqz v39, :cond_38

    .line 5834
    move-object/from16 v0, v39

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 5836
    :cond_7e0
    const-string v40, "cloneapplication"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_847

    .line 5838
    move-object/from16 v0, p0

    iget-object v0, v0, fotaCloneAppInstallList:Ljava/util/List;

    move-object/from16 v40, v0

    if-eqz v40, :cond_38

    .line 5839
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5842
    if-eqz v39, :cond_38

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_38

    .line 5843
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "remove"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 5844
    .local v34, "remove":Ljava/lang/String;
    if-eqz v34, :cond_838

    const-string/jumbo v40, "true"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_838

    .line 5846
    move-object/from16 v0, p0

    iget-object v0, v0, fotaCloneAppRemoveList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 5851
    :cond_838
    move-object/from16 v0, p0

    iget-object v0, v0, fotaCloneAppInstallList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 5857
    .end local v34    # "remove":Ljava/lang/String;
    :cond_847
    const-string v40, "clonedisablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_8ae

    .line 5859
    move-object/from16 v0, p0

    iget-object v0, v0, fotaCloneAppDisableList:Ljava/util/List;

    move-object/from16 v40, v0

    if-eqz v40, :cond_38

    .line 5860
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5862
    if-eqz v39, :cond_38

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_38

    .line 5863
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "reenable"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 5864
    .local v33, "re_enable_attr":Ljava/lang/String;
    if-eqz v33, :cond_89f

    const-string/jumbo v40, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_89f

    .line 5866
    move-object/from16 v0, p0

    iget-object v0, v0, fotaCloneAppReenableList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 5869
    :cond_89f
    move-object/from16 v0, p0

    iget-object v0, v0, fotaCloneAppDisableList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 5873
    .end local v33    # "re_enable_attr":Ljava/lang/String;
    :cond_8ae
    const-string v40, "application"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_966

    .line 5874
    if-eqz v6, :cond_38

    .line 5875
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5878
    const-string v40, "DCM"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->readOMCSalesCode()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_8e5

    const-string v40, "com.android.contacts"

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_8e5

    .line 5879
    const-string v39, "com.samsung.contacts"

    .line 5881
    :cond_8e5
    if-eqz v39, :cond_38

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_38

    .line 5883
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "remove"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 5884
    .restart local v34    # "remove":Ljava/lang/String;
    if-eqz v34, :cond_912

    const-string/jumbo v40, "true"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_912

    .line 5885
    move-object/from16 v0, v39

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 5887
    :cond_912
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, "allow"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5888
    .local v11, "content":Ljava/lang/String;
    if-eqz v11, :cond_92c

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_94e

    .line 5889
    :cond_92c
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "disallow"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5890
    if-eqz v11, :cond_947

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_38

    .line 5891
    :cond_947
    move-object/from16 v0, v39

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 5893
    :cond_94e
    const-string/jumbo v40, "systemAppOnly"

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_38

    .line 5894
    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isSystemApp(Ljava/lang/String;)Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2500(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_38

    .line 5895
    move-object/from16 v0, v39

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 5902
    .end local v11    # "content":Ljava/lang/String;
    .end local v34    # "remove":Ljava/lang/String;
    :cond_966
    const-string/jumbo v40, "replace"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_9ca

    .line 5903
    if-eqz v6, :cond_38

    .line 5905
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5907
    const-string v40, " "

    const-string v41, ""

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    const-string v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 5908
    .local v37, "target":[Ljava/lang/String;
    move-object/from16 v8, v37

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_999
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_38

    aget-object v25, v8, v17

    .line 5909
    .local v25, "oper":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_9c7

    .line 5910
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5912
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v40

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v6, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5908
    :cond_9c7
    add-int/lit8 v17, v17, 0x1

    goto :goto_999

    .line 5916
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v22    # "len$":I
    .end local v25    # "oper":Ljava/lang/String;
    .end local v37    # "target":[Ljava/lang/String;
    :cond_9ca
    const-string/jumbo v40, "groupPkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_a18

    .line 5917
    if-eqz v6, :cond_38

    .line 5918
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5920
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_9ec
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_38

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 5921
    .local v18, "installPkg":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_9ec

    .line 5922
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 5927
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "installPkg":Ljava/lang/String;
    :cond_a18
    const-string/jumbo v40, "provider"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_a4c

    .line 5929
    if-eqz v23, :cond_38

    .line 5930
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5932
    if-eqz v39, :cond_a45

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_a45

    .line 5933
    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5934
    :cond_a45
    new-instance v27, Ljava/util/ArrayList;

    .end local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .restart local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_38

    .line 5937
    :cond_a4c
    const-string/jumbo v40, "package"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_ad7

    .line 5939
    if-eqz v29, :cond_ab0

    .line 5940
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5942
    if-eqz v39, :cond_38

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_38

    .line 5943
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, "allow"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5944
    .restart local v11    # "content":Ljava/lang/String;
    if-eqz v11, :cond_a8c

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_38

    .line 5945
    :cond_a8c
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "disallow"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5946
    if-eqz v11, :cond_aa7

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_38

    .line 5947
    :cond_aa7
    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 5951
    .end local v11    # "content":Ljava/lang/String;
    :cond_ab0
    if-eqz v23, :cond_38

    .line 5952
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5954
    if-eqz v39, :cond_ad0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_ad0

    .line 5955
    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5956
    :cond_ad0
    new-instance v27, Ljava/util/ArrayList;

    .end local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .restart local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_38

    .line 5958
    :cond_ad7
    const-string/jumbo v40, "policy"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_b35

    .line 5959
    if-nez v9, :cond_aeb

    .line 5960
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5962
    .restart local v9    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_aeb
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5963
    if-eqz v39, :cond_38

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_38

    .line 5964
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5966
    .restart local v11    # "content":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "/"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 5968
    .end local v11    # "content":Ljava/lang/String;
    :cond_b35
    const-string/jumbo v40, "property"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_b86

    .line 5969
    if-eqz v27, :cond_38

    .line 5970
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 5972
    .local v31, "property":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5974
    if-eqz v31, :cond_38

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_38

    if-eqz v39, :cond_38

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_38

    .line 5976
    new-instance v40, Landroid/util/Pair;

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 5980
    .end local v31    # "property":Ljava/lang/String;
    :cond_b86
    const-string/jumbo v40, "protectedPkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_baf

    .line 5982
    if-eqz v32, :cond_38

    .line 5983
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5985
    if-eqz v39, :cond_38

    .line 5986
    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 5989
    :cond_baf
    const-string/jumbo v40, "disablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_c27

    .line 5991
    if-eqz v15, :cond_38

    .line 5992
    const/16 v20, 0x1

    .line 5995
    .local v20, "isDisabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5996
    if-eqz v39, :cond_bfd

    .line 5997
    const-string v40, " "

    const-string v41, ""

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    const-string v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 5998
    .restart local v37    # "target":[Ljava/lang/String;
    move-object/from16 v8, v37

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_be6
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_bfd

    aget-object v25, v8, v17

    .line 5999
    .restart local v25    # "oper":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_bfa

    .line 6000
    const/16 v20, 0x0

    .line 5998
    :cond_bfa
    add-int/lit8 v17, v17, 0x1

    goto :goto_be6

    .line 6004
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v22    # "len$":I
    .end local v25    # "oper":Ljava/lang/String;
    .end local v37    # "target":[Ljava/lang/String;
    :cond_bfd
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6006
    const-string v40, "com.android.chrome"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_c1c

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isNoteVzwProject()Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2600()Z

    move-result v40

    if-eqz v40, :cond_c1c

    .line 6007
    const/16 v20, 0x1

    .line 6008
    :cond_c1c
    if-eqz v39, :cond_38

    if-eqz v20, :cond_38

    .line 6009
    move-object/from16 v0, v39

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 6011
    .end local v20    # "isDisabled":Z
    :cond_c27
    const-string/jumbo v40, "fotadisablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_c79

    .line 6012
    if-eqz v4, :cond_38

    .line 6013
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6017
    if-eqz v39, :cond_38

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_38

    .line 6019
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "reenable"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 6021
    .restart local v33    # "re_enable_attr":Ljava/lang/String;
    if-eqz v33, :cond_c72

    const-string/jumbo v40, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_c72

    .line 6022
    move-object/from16 v0, v39

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 6024
    :cond_c72
    move-object/from16 v0, v39

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 6029
    .end local v33    # "re_enable_attr":Ljava/lang/String;
    :cond_c79
    const-string/jumbo v40, "knoxCore"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_38

    .line 6031
    new-instance v29, Ljava/util/ArrayList;

    .end local v29    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .restart local v29    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_38

    .line 6037
    .end local v36    # "tag":Ljava/lang/String;
    :pswitch_c8d
    move-object/from16 v0, p0

    iget-object v0, v0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v36

    .line 6038
    .restart local v36    # "tag":Ljava/lang/String;
    const-string/jumbo v40, "row"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_d59

    if-eqz v35, :cond_d59

    .line 6039
    if-eqz v6, :cond_ccd

    .line 6040
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_caa
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v16

    move/from16 v1, v40

    if-ge v0, v1, :cond_ccd

    .line 6041
    move/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    const-string/jumbo v41, "group_"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_cca

    .line 6043
    move/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6040
    :cond_cca
    add-int/lit8 v16, v16, 0x1

    goto :goto_caa

    .line 6047
    .end local v16    # "i":I
    :cond_ccd
    if-eqz v28, :cond_cdc

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_cdc

    .line 6048
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPersonaList(Ljava/util/List;)V

    .line 6050
    :cond_cdc
    if-eqz v14, :cond_ce9

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_ce9

    .line 6051
    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setForbiddenStrings(Ljava/util/List;)V

    .line 6053
    :cond_ce9
    if-eqz v6, :cond_cf6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_cf6

    .line 6054
    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    .line 6057
    :cond_cf6
    if-eqz v7, :cond_d03

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_d03

    .line 6058
    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppRemoveList(Ljava/util/List;)V

    .line 6061
    :cond_d03
    if-eqz v32, :cond_d12

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_d12

    .line 6062
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    .line 6063
    :cond_d12
    if-eqz v15, :cond_d1f

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_d1f

    .line 6064
    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    .line 6066
    :cond_d1f
    if-eqz v4, :cond_d2c

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_d2c

    .line 6067
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setFOTADisableList(Ljava/util/List;)V

    .line 6071
    :cond_d2c
    if-eqz v5, :cond_d39

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_d39

    .line 6072
    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setFOTAReenableList(Ljava/util/List;)V

    .line 6077
    :cond_d39
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    .line 6078
    const/16 v28, 0x0

    .line 6079
    const/4 v14, 0x0

    .line 6080
    const/4 v6, 0x0

    .line 6082
    const/4 v7, 0x0

    .line 6084
    const/16 v32, 0x0

    .line 6085
    const/4 v15, 0x0

    .line 6086
    const/4 v4, 0x0

    .line 6087
    const/4 v5, 0x0

    .line 6088
    const/16 v23, 0x0

    .line 6089
    const/16 v27, 0x0

    .line 6090
    move-object/from16 v0, p0

    iget-object v0, v0, mTypeListLocal:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 6092
    :cond_d59
    const-string/jumbo v40, "provider"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_dc9

    .line 6094
    if-eqz v23, :cond_38

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_38

    if-eqz v27, :cond_38

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_38

    .line 6096
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_d7a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_dc2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/Pair;

    .line 6097
    .local v26, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v21, :cond_da4

    .line 6098
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7a

    .line 6100
    :cond_da4
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 6101
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_d7a

    .line 6104
    .end local v26    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_dc2
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    .line 6105
    const/16 v27, 0x0

    goto/16 :goto_38

    .line 6108
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_dc9
    const-string/jumbo v40, "package"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_e19

    .line 6110
    if-eqz v23, :cond_38

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_38

    if-eqz v27, :cond_38

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_38

    .line 6112
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_dea
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_e12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/Pair;

    .line 6113
    .restart local v26    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dea

    .line 6115
    .end local v26    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e12
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    .line 6116
    const/16 v27, 0x0

    goto/16 :goto_38

    .line 6119
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_e19
    const-string/jumbo v40, "knoxCore"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_e5d

    .line 6121
    if-eqz v29, :cond_e31

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_e31

    .line 6122
    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static/range {v29 .. v29}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2702(Ljava/util/List;)Ljava/util/List;

    .line 6124
    :cond_e31
    const/16 v29, 0x0

    .line 6126
    move-object/from16 v0, p0

    iget-object v0, v0, mTypeListLocal:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_e3d
    :goto_e3d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_38

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 6127
    .local v38, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    move-object/from16 v0, v38

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/BBCConfigurationType;

    move/from16 v40, v0

    if-nez v40, :cond_e3d

    .line 6128
    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v40

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2700()Ljava/util/List;

    move-result-object v41

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_e3d

    .line 6131
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v38    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_e5d
    const-string v40, "BadgePolicy"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_38

    .line 6132
    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;
    invoke-static {v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2802(Ljava/util/List;)Ljava/util/List;
    :try_end_e6c
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_e6c} :catch_11d

    .line 6133
    const/4 v9, 0x0

    goto/16 :goto_38

    .line 5470
    nop

    :pswitch_data_e70
    .packed-switch 0x2
        :pswitch_43
        :pswitch_c8d
    .end packed-switch
.end method

.method public setTypeList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5422
    .local p1, "type":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iput-object p1, p0, mTypeListLocal:Ljava/util/List;

    .line 5423
    return-void
.end method

.method public writeToXml()V
    .registers 40

    .prologue
    .line 6318
    new-instance v10, Ljava/io/File;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2900()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "enterprisedata.xml"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6319
    .local v10, "file":Ljava/io/File;
    const/16 v31, 0x0

    .line 6321
    .local v31, "stream":Ljava/io/FileOutputStream;
    :try_start_21
    new-instance v32, Ljava/io/FileOutputStream;

    const/16 v36, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-direct {v0, v10, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2c} :catch_1812

    .line 6322
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .local v32, "stream":Ljava/io/FileOutputStream;
    :try_start_2c
    new-instance v20, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 6323
    .local v20, "out":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v15, 0x0

    .line 6324
    .local v15, "intVal":I
    const/16 v30, 0x0

    .line 6325
    .local v30, "strVal":Ljava/lang/String;
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6326
    .local v6, "booleanVal":Ljava/lang/Boolean;
    const-string/jumbo v36, "utf-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 6327
    const/16 v36, 0x0

    const/16 v37, 0x1

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6328
    const-string v36, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6330
    const/16 v36, 0x0

    const-string/jumbo v37, "table"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6331
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MUMContainerType"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6332
    move-object/from16 v0, p0

    iget-object v0, v0, mTypeListLocal:Ljava/util/List;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_16a8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 6333
    .local v35, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6334
    const/16 v36, 0x0

    const-string/jumbo v37, "row"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6335
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_1f8

    .line 6336
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    sget-object v38, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6345
    :goto_cb
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v15

    .line 6346
    if-ltz v15, :cond_11a

    .line 6347
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6348
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6349
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "UID"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6350
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6351
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6353
    :cond_11a
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getUserId()I

    move-result v15

    .line 6354
    const/16 v36, -0x1

    move/from16 v0, v36

    if-lt v15, v0, :cond_16d

    .line 6355
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6356
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6357
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "UserID"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6358
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6359
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6361
    :cond_16d
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v24

    .line 6362
    .local v24, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v24, :cond_266

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_266

    .line 6363
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6364
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6365
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PersonaIDs"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6366
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1a5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_250

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 6367
    .local v23, "personaId":Ljava/lang/Integer;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6368
    const/16 v36, 0x0

    const-string/jumbo v37, "persona"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6369
    const/16 v36, 0x0

    const-string/jumbo v37, "id"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6370
    const/16 v36, 0x0

    const-string/jumbo v37, "persona"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1ee
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_1ee} :catch_1ef

    goto :goto_1a5

    .line 6929
    .end local v6    # "booleanVal":Ljava/lang/Boolean;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "intVal":I
    .end local v20    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v23    # "personaId":Ljava/lang/Integer;
    .end local v24    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v30    # "strVal":Ljava/lang/String;
    .end local v35    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_1ef
    move-exception v9

    move-object/from16 v31, v32

    .line 6931
    .end local v32    # "stream":Ljava/io/FileOutputStream;
    .local v9, "e":Ljava/io/IOException;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    :goto_1f2
    if-eqz v31, :cond_1f7

    .line 6932
    :try_start_1f4
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f7
    .catch Ljava/io/IOException; {:try_start_1f4 .. :try_end_1f7} :catch_180f

    .line 6938
    .end local v9    # "e":Ljava/io/IOException;
    :cond_1f7
    :goto_1f7
    return-void

    .line 6337
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "booleanVal":Ljava/lang/Boolean;
    .restart local v15    # "intVal":I
    .restart local v20    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v30    # "strVal":Ljava/lang/String;
    .restart local v32    # "stream":Ljava/io/FileOutputStream;
    .restart local v35    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1f8
    :try_start_1f8
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_218

    .line 6338
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    sget-object v38, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_cb

    .line 6339
    :cond_218
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/BBCConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_238

    .line 6340
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    sget-object v38, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_cb

    .line 6342
    :cond_238
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    sget-object v38, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_cb

    .line 6372
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v24    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_250
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6373
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6375
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_266
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v30

    .line 6376
    if-eqz v30, :cond_2b1

    .line 6377
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6378
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6379
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "Name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6380
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6381
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6385
    :cond_2b1
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isDefaultConfigType()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6386
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6387
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6388
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "DefaultConfigType"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6389
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6390
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6392
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getContainerLayout()I

    move-result v15

    .line 6393
    if-ltz v15, :cond_355

    .line 6394
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6395
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6396
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "DefaultContainerLayout"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6397
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6398
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6401
    :cond_355
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isLayoutSwitchingAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6402
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6403
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6404
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "LayoutSwitchingAllowed"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6405
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6406
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6409
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v30

    .line 6410
    if-eqz v30, :cond_3f5

    .line 6411
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6412
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6413
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "Version"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6414
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6415
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6417
    :cond_3f5
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v15

    .line 6418
    if-eqz v15, :cond_444

    .line 6419
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6420
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6421
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumTimeToLock"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6422
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6423
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6426
    :cond_444
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v15

    .line 6427
    if-eqz v15, :cond_493

    .line 6428
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6429
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6430
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumLength"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6431
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6432
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6434
    :cond_493
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v15

    .line 6435
    if-eqz v15, :cond_4e2

    .line 6436
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6437
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6438
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumNonLetters"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6439
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6440
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6442
    :cond_4e2
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v15

    .line 6443
    if-eqz v15, :cond_531

    .line 6444
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6445
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6446
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumLetters"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6447
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6448
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6450
    :cond_531
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNumeric()I

    move-result v15

    .line 6451
    if-eqz v15, :cond_580

    .line 6452
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6453
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6454
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumNumeric"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6455
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6456
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6458
    :cond_580
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v15

    .line 6459
    if-eqz v15, :cond_5cf

    .line 6460
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6461
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6462
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumUpperCase"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6463
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6464
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6466
    :cond_5cf
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v15

    .line 6467
    if-eqz v15, :cond_61e

    .line 6468
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6469
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6470
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumLowerCase"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6471
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6472
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6474
    :cond_61e
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v15

    .line 6475
    if-eqz v15, :cond_66d

    .line 6476
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6477
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6478
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumSymbols"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6479
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6480
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6482
    :cond_66d
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v15

    .line 6483
    if-eqz v15, :cond_6bc

    .line 6484
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6485
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6486
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordQuality"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6487
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6488
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6490
    :cond_6bc
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v15

    .line 6491
    if-eqz v15, :cond_70b

    .line 6492
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6493
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6494
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumFailedPasswordsForWipe"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6495
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6496
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6498
    :cond_70b
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v15

    .line 6499
    if-eqz v15, :cond_75a

    .line 6500
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6501
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6502
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumCharacterOccurences"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6503
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6504
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6506
    :cond_75a
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v15

    .line 6507
    if-eqz v15, :cond_7a9

    .line 6508
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6509
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6510
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumCharacterSequenceLength"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6511
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6512
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6514
    :cond_7a9
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v15

    .line 6515
    if-eqz v15, :cond_7f8

    .line 6516
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6517
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6518
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumNumericSequenceLength"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6519
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6520
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6522
    :cond_7f8
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getKeyguardDisabledFeatures()I

    move-result v15

    .line 6523
    if-ltz v15, :cond_847

    .line 6524
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6525
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6526
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "KeyguardDisabledFeatures"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6527
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6528
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6530
    :cond_847
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6531
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-nez v36, :cond_8a2

    .line 6532
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6533
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6534
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "SimplePasswordEnabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6535
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6536
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6538
    :cond_8a2
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6539
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_8fd

    .line 6540
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6541
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6542
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MultifactorAuthEnabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6543
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6544
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6546
    :cond_8fd
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getManagedType()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6547
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_958

    .line 6548
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6549
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6550
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "UserManaged"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6551
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6552
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6554
    :cond_958
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6555
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledType()I

    move-result v15

    .line 6556
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_9cd

    if-lez v15, :cond_9cd

    .line 6557
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6558
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6559
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "BiometricAuthEnabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6560
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6561
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6562
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6564
    :cond_9cd
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v11

    .line 6565
    .local v11, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_a5d

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_a5d

    .line 6566
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6567
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6568
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "ForbiddenStrings"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6569
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_a05
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_a47

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 6570
    .local v33, "string":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6571
    const/16 v36, 0x0

    const-string/jumbo v37, "forbiddenString"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6572
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6573
    const/16 v36, 0x0

    const-string/jumbo v37, "forbiddenString"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a05

    .line 6575
    .end local v33    # "string":Ljava/lang/String;
    :cond_a47
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6576
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6578
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_a5d
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v30

    .line 6579
    if-eqz v30, :cond_aa8

    .line 6580
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6581
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6582
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PatternRestriction"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6583
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6584
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6586
    :cond_aa8
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v30

    .line 6587
    if-eqz v30, :cond_af3

    .line 6588
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6589
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6590
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomBadgeIcon"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6591
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6592
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6594
    :cond_af3
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v30

    .line 6595
    if-eqz v30, :cond_b3e

    .line 6596
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6597
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6598
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomHomeScreenWallpaper"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6599
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6600
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6602
    :cond_b3e
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v30

    .line 6603
    if-eqz v30, :cond_b89

    .line 6604
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6605
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6606
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomLockScreenWallpaper"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6607
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6608
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6610
    :cond_b89
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v30

    .line 6611
    if-eqz v30, :cond_bd4

    .line 6612
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6613
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6614
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomStatusLabel"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6615
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6616
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6618
    :cond_bd4
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v30

    .line 6619
    if-eqz v30, :cond_c1f

    .line 6620
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6621
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6622
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomStatusIcon"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6623
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6624
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6626
    :cond_c1f
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6627
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_c80

    .line 6628
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6629
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6630
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowMultiwindowMode"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6631
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6632
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6634
    :cond_c80
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6635
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_ce1

    .line 6636
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6637
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6638
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowTaskManager"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6639
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6640
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6643
    :cond_ce1
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUSBDebuggingAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6644
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_d3c

    .line 6645
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6646
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6647
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "USBDebuggingAllowed"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6648
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6649
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6651
    :cond_d3c
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_f72

    .line 6652
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v17, v0

    .line 6653
    .local v17, "kiosktype":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isSettingChangesAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6654
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_da5

    .line 6655
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6656
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6657
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowSettingsChanges"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6658
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6659
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6661
    :cond_da5
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isStatusBarExpansionAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6662
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_e06

    .line 6663
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6664
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6665
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowStatusBarExpansion"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6666
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6667
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6669
    :cond_e06
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHomeKeyAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6670
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_e61

    .line 6671
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6672
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6673
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowHomeKey"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6674
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6675
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6677
    :cond_e61
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isClearAllNotificationAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6678
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_ebc

    .line 6679
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6680
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6681
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowClearAllNotification"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6682
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6683
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6686
    :cond_ebc
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHideSystemBarEnabled()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6687
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_f17

    .line 6688
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6689
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6690
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "HideSystemBar"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6691
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6692
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6694
    :cond_f17
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isWipeRecentTasksEnabled()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6695
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_f72

    .line 6696
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6697
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6698
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "WipeRecentTasks"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6699
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6700
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6703
    .end local v17    # "kiosktype":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    :cond_f72
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_1061

    .line 6704
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v19, v0

    .line 6705
    .local v19, "lwctype":Lcom/sec/enterprise/knox/container/LightweightConfigurationType;
    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderTitle()Ljava/lang/String;

    move-result-object v30

    .line 6706
    if-eqz v30, :cond_fcb

    .line 6707
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6708
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6709
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "FolderHeaderTitle"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6710
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6711
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6713
    :cond_fcb
    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v30

    .line 6714
    if-eqz v30, :cond_1016

    .line 6715
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6716
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6717
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "FolderHeaderIcon"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6718
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6719
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6722
    :cond_1016
    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderDisabledChangeLayout()Ljava/lang/String;

    move-result-object v30

    .line 6723
    if-eqz v30, :cond_1061

    .line 6724
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6725
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6726
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "FolderDisabledChangeLayout"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6727
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6728
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6731
    .end local v19    # "lwctype":Lcom/sec/enterprise/knox/container/LightweightConfigurationType;
    :cond_1061
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v18

    .line 6732
    .local v18, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_114e

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_114e

    .line 6733
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6734
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6735
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AppInstallList"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6736
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_1099
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_10d7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6737
    .local v4, "application":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6738
    const/16 v36, 0x0

    const-string v37, "application"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6739
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6740
    const/16 v36, 0x0

    const-string v37, "application"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1099

    .line 6743
    .end local v4    # "application":Ljava/lang/String;
    :cond_10d7
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v28

    .line 6744
    .local v28, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v28, :cond_1138

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_1138

    .line 6745
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_10e7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1138

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6746
    .restart local v4    # "application":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6747
    const/16 v36, 0x0

    const-string v37, "application"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6748
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6749
    const/16 v36, 0x0

    const-string/jumbo v37, "remove"

    const-string/jumbo v38, "true"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6750
    const/16 v36, 0x0

    const-string v37, "application"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_10e7

    .line 6754
    .end local v4    # "application":Ljava/lang/String;
    :cond_1138
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6755
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6757
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v28    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_114e
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v18

    .line 6758
    if-eqz v18, :cond_11de

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_11de

    .line 6759
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6760
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6761
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "ProtectedPkgList"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6762
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_1186
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_11c8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 6763
    .local v25, "protectedPkg":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6764
    const/16 v36, 0x0

    const-string/jumbo v37, "protectedPkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6765
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6766
    const/16 v36, 0x0

    const-string/jumbo v37, "protectedPkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1186

    .line 6768
    .end local v25    # "protectedPkg":Ljava/lang/String;
    :cond_11c8
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6769
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6772
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_11de
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v18

    .line 6773
    if-eqz v18, :cond_126c

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_126c

    .line 6774
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6775
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6776
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "GoogleAppsPkgList"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6777
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_1216
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1256

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 6778
    .local v8, "disablePkg":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6779
    const/16 v36, 0x0

    const-string/jumbo v37, "disablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6780
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6781
    const/16 v36, 0x0

    const-string/jumbo v37, "disablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1216

    .line 6783
    .end local v8    # "disablePkg":Ljava/lang/String;
    :cond_1256
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6784
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6787
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_126c
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v18

    .line 6788
    if-eqz v18, :cond_135f

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_135f

    .line 6789
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6790
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6791
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "FOTADisableAppsPkgList"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6792
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_12a4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_12e4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 6793
    .restart local v8    # "disablePkg":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6794
    const/16 v36, 0x0

    const-string/jumbo v37, "fotadisablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6795
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6796
    const/16 v36, 0x0

    const-string/jumbo v37, "fotadisablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12a4

    .line 6799
    .end local v8    # "disablePkg":Ljava/lang/String;
    :cond_12e4
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v26

    .line 6800
    .local v26, "reenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v26, :cond_1349

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_1349

    .line 6801
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_12f4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1349

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 6802
    .local v27, "reenablePkg":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6803
    const/16 v36, 0x0

    const-string/jumbo v37, "fotadisablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6804
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6805
    const/16 v36, 0x0

    const-string/jumbo v37, "reenable"

    const-string/jumbo v38, "true"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6806
    const/16 v36, 0x0

    const-string/jumbo v37, "fotadisablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12f4

    .line 6810
    .end local v27    # "reenablePkg":Ljava/lang/String;
    :cond_1349
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6811
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6815
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v26    # "reenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_135f
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v29

    .line 6816
    .local v29, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz v29, :cond_146f

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_146f

    .line 6817
    const/16 v22, 0x0

    .line 6818
    .local v22, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6819
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6820
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "RCPDataSettings"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6821
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_139d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1459

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 6822
    .local v16, "key":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v22, Ljava/util/List;

    .line 6823
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6824
    const/16 v36, 0x0

    const-string/jumbo v37, "provider"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6825
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6826
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_13de
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1440

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .line 6827
    .local v21, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v36, "\n\t\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6828
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6829
    const/16 v37, 0x0

    const-string/jumbo v38, "name"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6830
    const/16 v37, 0x0

    const-string/jumbo v38, "value"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6831
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_13de

    .line 6833
    .end local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1440
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6834
    const/16 v36, 0x0

    const-string/jumbo v37, "provider"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_139d

    .line 6836
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/String;
    :cond_1459
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6837
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6839
    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_146f
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v29

    .line 6840
    if-eqz v29, :cond_157f

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_157f

    .line 6841
    const/16 v22, 0x0

    .line 6842
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6843
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6844
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "RCPAllowChangeDataSettings"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6845
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_14ad
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1569

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 6846
    .restart local v16    # "key":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v22, Ljava/util/List;

    .line 6847
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6848
    const/16 v36, 0x0

    const-string/jumbo v37, "provider"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6849
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6850
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_14ee
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1550

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .line 6851
    .restart local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v36, "\n\t\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6852
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6853
    const/16 v37, 0x0

    const-string/jumbo v38, "name"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6854
    const/16 v37, 0x0

    const-string/jumbo v38, "value"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6855
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_14ee

    .line 6857
    .end local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1550
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6858
    const/16 v36, 0x0

    const-string/jumbo v37, "provider"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_14ad

    .line 6860
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/String;
    :cond_1569
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6861
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6863
    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_157f
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v29

    .line 6864
    if-eqz v29, :cond_168f

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_168f

    .line 6865
    const/16 v22, 0x0

    .line 6866
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6867
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6868
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "RCPNotifSettings"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6869
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_15bd
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1679

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 6870
    .restart local v16    # "key":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v22, Ljava/util/List;

    .line 6871
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6872
    const/16 v36, 0x0

    const-string/jumbo v37, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6873
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6874
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_15fe
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1660

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .line 6875
    .restart local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v36, "\n\t\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6876
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6877
    const/16 v37, 0x0

    const-string/jumbo v38, "name"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6878
    const/16 v37, 0x0

    const-string/jumbo v38, "value"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6879
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_15fe

    .line 6881
    .end local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1660
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6882
    const/16 v36, 0x0

    const-string/jumbo v37, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_15bd

    .line 6884
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/String;
    :cond_1679
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6885
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6888
    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_168f
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6889
    const/16 v36, 0x0

    const-string/jumbo v37, "row"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_8a

    .line 6891
    .end local v11    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v29    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v35    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_16a8
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2700()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_1728

    .line 6892
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6893
    const/16 v36, 0x0

    const-string/jumbo v37, "knoxCore"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6894
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2700()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_16d1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1711

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 6895
    .local v7, "corePkg":Ljava/lang/String;
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6896
    const/16 v36, 0x0

    const-string/jumbo v37, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6897
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6898
    const/16 v36, 0x0

    const-string/jumbo v37, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_16d1

    .line 6900
    .end local v7    # "corePkg":Ljava/lang/String;
    :cond_1711
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6901
    const/16 v36, 0x0

    const-string/jumbo v37, "knoxCore"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6904
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_1728
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2800()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_17c8

    .line 6905
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6906
    const/16 v36, 0x0

    const-string v37, "BadgePolicy"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6907
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2800()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_1750
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_17b2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6908
    .local v5, "badgePolicylist":Ljava/lang/String;
    const-string v36, "/"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 6909
    .local v34, "temp":[Ljava/lang/String;
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6910
    const/16 v36, 0x0

    const-string/jumbo v37, "policy"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6911
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const/16 v38, 0x0

    aget-object v38, v34, v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6912
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    const/16 v38, 0x1

    aget-object v38, v34, v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6913
    const/16 v36, 0x0

    const-string/jumbo v37, "policy"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1750

    .line 6915
    .end local v5    # "badgePolicylist":Ljava/lang/String;
    .end local v34    # "temp":[Ljava/lang/String;
    :cond_17b2
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6916
    const/16 v36, 0x0

    const-string v37, "BadgePolicy"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6918
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_17c8
    const-string v36, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6919
    const/16 v36, 0x0

    const-string/jumbo v37, "table"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6921
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 6922
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->flush()V
    :try_end_17e5
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_17e5} :catch_1ef

    .line 6924
    :try_start_17e5
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/io/FileDescriptor;->sync()V
    :try_end_17ec
    .catch Ljava/io/IOException; {:try_start_17e5 .. :try_end_17ec} :catch_17f3

    .line 6928
    :goto_17ec
    :try_start_17ec
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v31, v32

    .line 6937
    .end local v32    # "stream":Ljava/io/FileOutputStream;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_1f7

    .line 6925
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v32    # "stream":Ljava/io/FileOutputStream;
    :catch_17f3
    move-exception v9

    .line 6926
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v36, "MumXmlDataParser"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Error in Write to XML sync FD "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_180e
    .catch Ljava/io/IOException; {:try_start_17ec .. :try_end_180e} :catch_1ef

    goto :goto_17ec

    .line 6934
    .end local v6    # "booleanVal":Ljava/lang/Boolean;
    .end local v15    # "intVal":I
    .end local v20    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v30    # "strVal":Ljava/lang/String;
    .end local v32    # "stream":Ljava/io/FileOutputStream;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    :catch_180f
    move-exception v36

    goto/16 :goto_1f7

    .line 6929
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1812
    move-exception v9

    goto/16 :goto_1f2
.end method
