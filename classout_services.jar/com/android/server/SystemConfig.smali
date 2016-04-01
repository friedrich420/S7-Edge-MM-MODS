.class public Lcom/android/server/SystemConfig;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemConfig$PermissionEntry;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SystemConfig"

.field static sInstance:Lcom/android/server/SystemConfig;


# instance fields
.field final mAllowInPowerSave:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mFixedImeApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalGids:[I

.field final mLinkedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedLibraries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUnavailableFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mSystemPermissions:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mSharedLibraries:Landroid/util/ArrayMap;

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mAvailableFeatures:Landroid/util/ArrayMap;

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mUnavailableFeatures:Landroid/util/ArraySet;

    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mPermissions:Landroid/util/ArrayMap;

    .line 94
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    .line 98
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mAllowInPowerSave:Landroid/util/ArraySet;

    .line 101
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mFixedImeApps:Landroid/util/ArraySet;

    .line 105
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mLinkedApps:Landroid/util/ArraySet;

    .line 154
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "etc"

    aput-object v2, v1, v3

    const-string/jumbo v2, "sysconfig"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, readPermissions(Ljava/io/File;Z)V

    .line 157
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "etc"

    aput-object v2, v1, v3

    const-string/jumbo v2, "permissions"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, readPermissions(Ljava/io/File;Z)V

    .line 160
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "etc"

    aput-object v2, v1, v3

    const-string/jumbo v2, "sysconfig"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, readPermissions(Ljava/io/File;Z)V

    .line 162
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "etc"

    aput-object v2, v1, v3

    const-string/jumbo v2, "permissions"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, readPermissions(Ljava/io/File;Z)V

    .line 164
    return-void
.end method

.method private IsChinaModelSupportingAfw()Z
    .registers 3

    .prologue
    .line 224
    invoke-direct {p0}, readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "sales_code":Ljava/lang/String;
    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 226
    :cond_14
    const/4 v1, 0x1

    .line 228
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static getInstance()Lcom/android/server/SystemConfig;
    .registers 2

    .prologue
    .line 108
    const-class v1, Lcom/android/server/SystemConfig;

    monitor-enter v1

    .line 109
    :try_start_3
    sget-object v0, sInstance:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_e

    .line 110
    new-instance v0, Lcom/android/server/SystemConfig;

    invoke-direct {v0}, <init>()V

    sput-object v0, sInstance:Lcom/android/server/SystemConfig;

    .line 112
    :cond_e
    sget-object v0, sInstance:Lcom/android/server/SystemConfig;

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private readPermissionsFromXml(Ljava/io/File;Z)V
    .registers 36
    .param p1, "permFile"    # Ljava/io/File;
    .param p2, "onlyFeatures"    # Z

    .prologue
    .line 233
    const/16 v21, 0x0

    .line 235
    .local v21, "permReader":Ljava/io/FileReader;
    :try_start_2
    new-instance v22, Ljava/io/FileReader;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_b} :catch_f2

    .line 241
    .end local v21    # "permReader":Ljava/io/FileReader;
    .local v22, "permReader":Ljava/io/FileReader;
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v16

    .line 244
    .local v16, "lowRam":Z
    const-string/jumbo v30, "ro.product.device"

    const-string v31, "Unknown"

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    .line 246
    .local v25, "productName":Ljava/lang/String;
    const-string v4, ""

    .line 248
    .local v4, "countryCode":Ljava/lang/String;
    :try_start_22
    const-string/jumbo v30, "persist.omc.country_code"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_40

    .line 250
    const-string/jumbo v30, "ro.csc.country_code"

    const-string v31, "Unknown"

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 253
    :cond_40
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_47} :catch_110

    .line 258
    :goto_47
    const-string v30, "china"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 259
    .local v11, "isChinaModel":Z
    const-string/jumbo v30, "matisse"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_69

    const-string/jumbo v30, "millet"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_11a

    :cond_69
    const/4 v13, 0x1

    .line 261
    .local v13, "isMilletMatiseModel":Z
    :goto_6a
    const-string/jumbo v30, "degas"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 265
    .local v12, "isDegasModel":Z
    :try_start_75
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    .line 266
    .local v19, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 270
    :cond_80
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .local v26, "type":I
    const/16 v30, 0x2

    move/from16 v0, v26

    move/from16 v1, v30

    if-eq v0, v1, :cond_94

    const/16 v30, 0x1

    move/from16 v0, v26

    move/from16 v1, v30

    if-ne v0, v1, :cond_80

    .line 274
    :cond_94
    const/16 v30, 0x2

    move/from16 v0, v26

    move/from16 v1, v30

    if-eq v0, v1, :cond_11d

    .line 275
    new-instance v30, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v31, "No start tag found"

    invoke-direct/range {v30 .. v31}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v30
    :try_end_a4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_75 .. :try_end_a4} :catch_a4
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_a4} :catch_167
    .catchall {:try_start_75 .. :try_end_a4} :catchall_1f4

    .line 461
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "type":I
    :catch_a4
    move-exception v5

    .line 462
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_a5
    const-string v30, "SystemConfig"

    const-string v31, "Got exception parsing permissions."

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b0
    .catchall {:try_start_a5 .. :try_end_b0} :catchall_1f4

    .line 466
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 469
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_b3
    move-object/from16 v0, p0

    iget-object v0, v0, mUnavailableFeatures:Landroid/util/ArraySet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_bd
    :goto_bd
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_6fe

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 470
    .local v7, "fname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mAvailableFeatures:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_bd

    .line 471
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Removed unavailable feature "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 236
    .end local v4    # "countryCode":Ljava/lang/String;
    .end local v7    # "fname":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "isChinaModel":Z
    .end local v12    # "isDegasModel":Z
    .end local v13    # "isMilletMatiseModel":Z
    .end local v16    # "lowRam":Z
    .end local v22    # "permReader":Ljava/io/FileReader;
    .end local v25    # "productName":Ljava/lang/String;
    .restart local v21    # "permReader":Ljava/io/FileReader;
    :catch_f2
    move-exception v5

    .line 237
    .local v5, "e":Ljava/io/FileNotFoundException;
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Couldn\'t find or open permissions file "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_10f
    return-void

    .line 254
    .end local v21    # "permReader":Ljava/io/FileReader;
    .restart local v4    # "countryCode":Ljava/lang/String;
    .restart local v16    # "lowRam":Z
    .restart local v22    # "permReader":Ljava/io/FileReader;
    .restart local v25    # "productName":Ljava/lang/String;
    :catch_110
    move-exception v5

    .line 255
    .local v5, "e":Ljava/lang/Exception;
    const-string v30, "SystemConfig"

    const-string v31, " Reading country code failed"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47

    .line 259
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v11    # "isChinaModel":Z
    :cond_11a
    const/4 v13, 0x0

    goto/16 :goto_6a

    .line 278
    .restart local v12    # "isDegasModel":Z
    .restart local v13    # "isMilletMatiseModel":Z
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "type":I
    :cond_11d
    :try_start_11d
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "permissions"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1b5

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v30

    const-string v31, "config"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1b5

    .line 279
    new-instance v30, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unexpected start tag in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ": found "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", expected \'permissions\' or \'config\'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v30
    :try_end_167
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11d .. :try_end_167} :catch_a4
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_167} :catch_167
    .catchall {:try_start_11d .. :try_end_167} :catchall_1f4

    .line 463
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "type":I
    :catch_167
    move-exception v5

    .line 464
    .local v5, "e":Ljava/io/IOException;
    :try_start_168
    const-string v30, "SystemConfig"

    const-string v31, "Got exception parsing permissions."

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_173
    .catchall {:try_start_168 .. :try_end_173} :catchall_1f4

    .line 466
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_b3

    .line 289
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "type":I
    :cond_178
    :try_start_178
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 290
    .local v17, "name":Ljava/lang/String;
    const-string/jumbo v30, "group"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1f9

    if-nez p2, :cond_1f9

    .line 291
    const/16 v30, 0x0

    const-string/jumbo v31, "gid"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 292
    .local v9, "gidStr":Ljava/lang/String;
    if-eqz v9, :cond_1c9

    .line 293
    invoke-static {v9}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v8

    .line 294
    .local v8, "gid":I
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalGids:[I

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, mGlobalGids:[I

    .line 300
    .end local v8    # "gid":I
    :goto_1b2
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 284
    .end local v9    # "gidStr":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    :cond_1b5
    :goto_1b5
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 285
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_178 .. :try_end_1bb} :catch_a4
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_1bb} :catch_167
    .catchall {:try_start_178 .. :try_end_1bb} :catchall_1f4

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_178

    .line 466
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_b3

    .line 296
    .restart local v9    # "gidStr":Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    :cond_1c9
    :try_start_1c9
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<group> without gid in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " at "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c9 .. :try_end_1f3} :catch_a4
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1f3} :catch_167
    .catchall {:try_start_1c9 .. :try_end_1f3} :catchall_1f4

    goto :goto_1b2

    .line 466
    .end local v9    # "gidStr":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "type":I
    :catchall_1f4
    move-exception v30

    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v30

    .line 302
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "type":I
    :cond_1f9
    :try_start_1f9
    const-string/jumbo v30, "permission"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_257

    if-nez p2, :cond_257

    .line 303
    const/16 v30, 0x0

    const-string/jumbo v31, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 304
    .local v20, "perm":Ljava/lang/String;
    if-nez v20, :cond_248

    .line 305
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<permission> without name in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " at "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b5

    .line 310
    :cond_248
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    .line 311
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto/16 :goto_1b5

    .line 313
    .end local v20    # "perm":Ljava/lang/String;
    :cond_257
    const-string v30, "assign-permission"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_35e

    if-nez p2, :cond_35e

    .line 314
    const/16 v30, 0x0

    const-string/jumbo v31, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 315
    .restart local v20    # "perm":Ljava/lang/String;
    if-nez v20, :cond_2a5

    .line 316
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<assign-permission> without name in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " at "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b5

    .line 321
    :cond_2a5
    const/16 v30, 0x0

    const-string/jumbo v31, "uid"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 322
    .local v28, "uidStr":Ljava/lang/String;
    if-nez v28, :cond_2e5

    .line 323
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<assign-permission> without uid in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " at "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b5

    .line 328
    :cond_2e5
    invoke-static/range {v28 .. v28}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v27

    .line 329
    .local v27, "uid":I
    if-gez v27, :cond_328

    .line 330
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<assign-permission> with unknown uid \""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "  in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " at "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b5

    .line 336
    :cond_328
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/ArraySet;

    .line 338
    .local v23, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v23, :cond_352

    .line 339
    new-instance v23, Landroid/util/ArraySet;

    .end local v23    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Landroid/util/ArraySet;-><init>()V

    .line 340
    .restart local v23    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    :cond_352
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b5

    .line 345
    .end local v20    # "perm":Ljava/lang/String;
    .end local v23    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v27    # "uid":I
    .end local v28    # "uidStr":Ljava/lang/String;
    :cond_35e
    const-string/jumbo v30, "library"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3f5

    if-nez p2, :cond_3f5

    .line 346
    const/16 v30, 0x0

    const-string/jumbo v31, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 347
    .local v15, "lname":Ljava/lang/String;
    const/16 v30, 0x0

    const-string/jumbo v31, "file"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 348
    .local v14, "lfile":Ljava/lang/String;
    if-nez v15, :cond_3bc

    .line 349
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<library> without name in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " at "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_3b7
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b5

    .line 351
    :cond_3bc
    if-nez v14, :cond_3e9

    .line 352
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<library> without file in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " at "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b7

    .line 356
    :cond_3e9
    move-object/from16 v0, p0

    iget-object v0, v0, mSharedLibraries:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v15, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b7

    .line 361
    .end local v14    # "lfile":Ljava/lang/String;
    .end local v15    # "lname":Ljava/lang/String;
    :cond_3f5
    const-string/jumbo v30, "feature"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_531

    .line 362
    const/16 v30, 0x0

    const-string/jumbo v31, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 364
    .restart local v7    # "fname":Ljava/lang/String;
    if-nez v16, :cond_445

    .line 365
    const/4 v3, 0x1

    .line 370
    .local v3, "allowed":Z
    :goto_414
    if-nez v7, :cond_465

    .line 371
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<feature> without name in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " at "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_440
    :goto_440
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b5

    .line 367
    .end local v3    # "allowed":Z
    :cond_445
    const/16 v30, 0x0

    const-string/jumbo v31, "notLowRam"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 368
    .local v18, "notLowRam":Ljava/lang/String;
    const-string/jumbo v30, "true"

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_463

    const/4 v3, 0x1

    .restart local v3    # "allowed":Z
    :goto_462
    goto :goto_414

    .end local v3    # "allowed":Z
    :cond_463
    const/4 v3, 0x0

    goto :goto_462

    .line 373
    .end local v18    # "notLowRam":Ljava/lang/String;
    .restart local v3    # "allowed":Z
    :cond_465
    invoke-virtual/range {p0 .. p0}, isLowRamDevice()Z

    move-result v30

    if-eqz v30, :cond_490

    const-string v30, "android.software.managed_users"

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_490

    .line 374
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Feature not supported on low memory device "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_440

    .line 375
    :cond_490
    if-eqz v3, :cond_440

    .line 378
    const-string v30, "android.software.managed_users"

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4f0

    invoke-virtual/range {p0 .. p0}, getAfwAllowed()Ljava/lang/String;

    move-result-object v30

    const-string v31, "DO"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4c0

    invoke-virtual/range {p0 .. p0}, getAfwAllowed()Ljava/lang/String;

    move-result-object v30

    const-string v31, "NONE"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4c0

    if-nez v12, :cond_4c0

    if-nez v13, :cond_4c0

    if-eqz v11, :cond_4f0

    invoke-direct/range {p0 .. p0}, IsChinaModelSupportingAfw()Z

    move-result v30

    if-nez v30, :cond_4f0

    .line 381
    :cond_4c0
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Feature "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ",is not supported in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " model"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b5

    .line 385
    :cond_4f0
    new-instance v6, Landroid/content/pm/FeatureInfo;

    invoke-direct {v6}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 386
    .local v6, "fi":Landroid/content/pm/FeatureInfo;
    iput-object v7, v6, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;
    :try_end_4f7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f9 .. :try_end_4f7} :catch_a4
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_4f7} :catch_167
    .catchall {:try_start_1f9 .. :try_end_4f7} :catchall_1f4

    .line 388
    const/16 v30, 0x0

    :try_start_4f9
    const-string/jumbo v31, "level"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 389
    .local v29, "versionCode":Ljava/lang/String;
    if-eqz v29, :cond_51d

    .line 390
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    iput v0, v6, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_510
    .catch Ljava/lang/NumberFormatException; {:try_start_4f9 .. :try_end_510} :catch_524
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f9 .. :try_end_510} :catch_a4
    .catch Ljava/io/IOException; {:try_start_4f9 .. :try_end_510} :catch_167
    .catchall {:try_start_4f9 .. :try_end_510} :catchall_1f4

    .line 397
    .end local v29    # "versionCode":Ljava/lang/String;
    :goto_510
    :try_start_510
    move-object/from16 v0, p0

    iget-object v0, v0, mAvailableFeatures:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_510 .. :try_end_51b} :catch_a4
    .catch Ljava/io/IOException; {:try_start_510 .. :try_end_51b} :catch_167
    .catchall {:try_start_510 .. :try_end_51b} :catchall_1f4

    goto/16 :goto_440

    .line 392
    .restart local v29    # "versionCode":Ljava/lang/String;
    :cond_51d
    const/16 v30, 0x1

    :try_start_51f
    move/from16 v0, v30

    iput v0, v6, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_523
    .catch Ljava/lang/NumberFormatException; {:try_start_51f .. :try_end_523} :catch_524
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51f .. :try_end_523} :catch_a4
    .catch Ljava/io/IOException; {:try_start_51f .. :try_end_523} :catch_167
    .catchall {:try_start_51f .. :try_end_523} :catchall_1f4

    goto :goto_510

    .line 394
    .end local v29    # "versionCode":Ljava/lang/String;
    :catch_524
    move-exception v5

    .line 395
    .local v5, "e":Ljava/lang/NumberFormatException;
    :try_start_525
    const-string v30, "SystemConfig"

    const-string v31, "Got execption parsing error."

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_510

    .line 402
    .end local v3    # "allowed":Z
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "fi":Landroid/content/pm/FeatureInfo;
    .end local v7    # "fname":Ljava/lang/String;
    :cond_531
    const-string/jumbo v30, "unavailable-feature"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_58a

    .line 403
    const/16 v30, 0x0

    const-string/jumbo v31, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 404
    .restart local v7    # "fname":Ljava/lang/String;
    if-nez v7, :cond_57e

    .line 405
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<unavailable-feature> without name in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " at "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_579
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b5

    .line 408
    :cond_57e
    move-object/from16 v0, p0

    iget-object v0, v0, mUnavailableFeatures:Landroid/util/ArraySet;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_579

    .line 413
    .end local v7    # "fname":Ljava/lang/String;
    :cond_58a
    const-string v30, "allow-in-power-save-except-idle"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5e6

    if-nez p2, :cond_5e6

    .line 414
    const/16 v30, 0x0

    const-string/jumbo v31, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 415
    .local v24, "pkgname":Ljava/lang/String;
    if-nez v24, :cond_5d8

    .line 416
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<allow-in-power-save-except-idle> without package in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " at "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_5d3
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b5

    .line 419
    :cond_5d8
    move-object/from16 v0, p0

    iget-object v0, v0, mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5d3

    .line 424
    .end local v24    # "pkgname":Ljava/lang/String;
    :cond_5e6
    const-string v30, "allow-in-power-save"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_642

    if-nez p2, :cond_642

    .line 425
    const/16 v30, 0x0

    const-string/jumbo v31, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 426
    .restart local v24    # "pkgname":Ljava/lang/String;
    if-nez v24, :cond_634

    .line 427
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<allow-in-power-save> without package in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " at "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_62f
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b5

    .line 430
    :cond_634
    move-object/from16 v0, p0

    iget-object v0, v0, mAllowInPowerSave:Landroid/util/ArraySet;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_62f

    .line 435
    .end local v24    # "pkgname":Ljava/lang/String;
    :cond_642
    const-string/jumbo v30, "fixed-ime-app"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_69f

    if-nez p2, :cond_69f

    .line 436
    const/16 v30, 0x0

    const-string/jumbo v31, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 437
    .restart local v24    # "pkgname":Ljava/lang/String;
    if-nez v24, :cond_691

    .line 438
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<fixed-ime-app> without package in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " at "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_68c
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b5

    .line 441
    :cond_691
    move-object/from16 v0, p0

    iget-object v0, v0, mFixedImeApps:Landroid/util/ArraySet;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_68c

    .line 446
    .end local v24    # "pkgname":Ljava/lang/String;
    :cond_69f
    const-string v30, "app-link"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6f9

    .line 447
    const/16 v30, 0x0

    const-string/jumbo v31, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 448
    .restart local v24    # "pkgname":Ljava/lang/String;
    if-nez v24, :cond_6eb

    .line 449
    const-string v30, "SystemConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<app-link> without package in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " at "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_6e6
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b5

    .line 452
    :cond_6eb
    move-object/from16 v0, p0

    iget-object v0, v0, mLinkedApps:Landroid/util/ArraySet;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6e6

    .line 457
    .end local v24    # "pkgname":Ljava/lang/String;
    :cond_6f9
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6fc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_525 .. :try_end_6fc} :catch_a4
    .catch Ljava/io/IOException; {:try_start_525 .. :try_end_6fc} :catch_167
    .catchall {:try_start_525 .. :try_end_6fc} :catchall_1f4

    goto/16 :goto_1b5

    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "type":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_6fe
    move-object/from16 v21, v22

    .line 474
    .end local v22    # "permReader":Ljava/io/FileReader;
    .restart local v21    # "permReader":Ljava/io/FileReader;
    goto/16 :goto_10f
.end method

.method private readSalesCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 208
    const-string v1, ""

    .line 210
    .local v1, "sales_code":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v2, "persist.omc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 212
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 214
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_24

    move-result-object v1

    .line 220
    :cond_23
    :goto_23
    return-object v1

    .line 217
    :catch_24
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemConfig"

    const-string v3, " Reading sales code failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method


# virtual methods
.method getAfwAllowed()Ljava/lang/String;
    .registers 3

    .prologue
    .line 516
    const-string/jumbo v0, "ro.config.afw"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllowInPowerSave()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, mAllowInPowerSave:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getAvailableFeatures()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, mAvailableFeatures:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getFixedImeApps()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, mFixedImeApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getGlobalGids()[I
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, mGlobalGids:[I

    return-object v0
.end method

.method public getLinkedApps()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, mLinkedApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPermissions()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, mPermissions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getSharedLibraries()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, mSharedLibraries:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getSystemPermissions()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, mSystemPermissions:Landroid/util/SparseArray;

    return-object v0
.end method

.method isLowRamDevice()Z
    .registers 4

    .prologue
    .line 512
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.config.low_ram"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    .line 478
    iget-object v7, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 479
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Duplicate permission definition for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 482
    :cond_22
    const-string/jumbo v7, "perUser"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    .line 483
    .local v3, "perUser":Z
    new-instance v4, Lcom/android/server/SystemConfig$PermissionEntry;

    invoke-direct {v4, p2, v3}, Lcom/android/server/SystemConfig$PermissionEntry;-><init>(Ljava/lang/String;Z)V

    .line 484
    .local v4, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v7, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 489
    .local v2, "outerDepth":I
    :cond_38
    :goto_38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_90

    if-ne v6, v10, :cond_47

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_90

    .line 491
    :cond_47
    if-eq v6, v10, :cond_38

    const/4 v7, 0x4

    if-eq v6, v7, :cond_38

    .line 496
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 497
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "group"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 498
    const/4 v7, 0x0

    const-string/jumbo v8, "gid"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "gidStr":Ljava/lang/String;
    if-eqz v1, :cond_73

    .line 500
    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    .line 501
    .local v0, "gid":I
    iget-object v7, v4, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    invoke-static {v7, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    .line 507
    .end local v0    # "gid":I
    .end local v1    # "gidStr":Ljava/lang/String;
    :cond_6f
    :goto_6f
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_38

    .line 503
    .restart local v1    # "gidStr":Ljava/lang/String;
    :cond_73
    const-string v7, "SystemConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<group> without gid at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 509
    .end local v1    # "gidStr":Ljava/lang/String;
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_90
    return-void
.end method

.method readPermissions(Ljava/io/File;Z)V
    .registers 11
    .param p1, "libraryDir"    # Ljava/io/File;
    .param p2, "onlyFeatures"    # Z

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 169
    :cond_c
    if-nez p2, :cond_2c

    .line 170
    const-string v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2c
    :goto_2c
    return-void

    .line 174
    :cond_2d
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_52

    .line 175
    const-string v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 180
    :cond_52
    const/4 v4, 0x0

    .line 181
    .local v4, "platformFile":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_59
    if-ge v2, v3, :cond_cc

    aget-object v1, v0, v2

    .line 183
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "etc/permissions/platform.xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 184
    move-object v4, v1

    .line 181
    :goto_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 188
    :cond_6e
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a3

    .line 189
    const-string v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 192
    :cond_a3
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_c8

    .line 193
    const-string v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permissions library file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 197
    :cond_c8
    invoke-direct {p0, v1, p2}, readPermissionsFromXml(Ljava/io/File;Z)V

    goto :goto_6b

    .line 201
    .end local v1    # "f":Ljava/io/File;
    :cond_cc
    if-eqz v4, :cond_2c

    .line 202
    invoke-direct {p0, v4, p2}, readPermissionsFromXml(Ljava/io/File;Z)V

    goto/16 :goto_2c
.end method
