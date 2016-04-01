.class abstract Lcom/android/server/pm/PackageSettingBase;
.super Lcom/android/server/pm/SettingBase;
.source "PackageSettingBase.java"


# static fields
.field private static final DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

.field static final DEX_STATS_FAILED:I = -0x1

.field static final DEX_STATS_NOT_RUNNING_LOWMEM:I = 0x3

.field static final DEX_STATS_SUCCESS_FULL:I = 0x2

.field static final DEX_STATS_SUCCESS_SMALL:I = 0x1

.field static final DEX_STATS_UNKNOWN:I = 0x0

.field static final PKG_INSTALL_COMPLETE:I = 0x1

.field static final PKG_INSTALL_INCOMPLETE:I


# instance fields
.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field cpuAbiOverrideString:Ljava/lang/String;

.field dexMode:I

.field dexTimeStamp:J

.field firstInstallTime:J

.field frozen:Z

.field installPermissionsFixed:Z

.field installStatus:I

.field installerPackageName:Ljava/lang/String;

.field keySetData:Lcom/android/server/pm/PackageKeySetData;

.field lastUpdateTime:J

.field legacyNativeLibraryPathString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field nativeLibraryDir:Ljava/lang/String;

.field nativeLibraryRootDir:Ljava/lang/String;

.field nativeLibraryRootRequiresIsa:Z

.field origPackage:Lcom/android/server/pm/PackageSettingBase;

.field primaryCpuAbiString:Ljava/lang/String;

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field secondaryCpuAbiString:Ljava/lang/String;

.field secondaryNativeLibraryDir:Ljava/lang/String;

.field signatures:Lcom/android/server/pm/PackageSignatures;

.field timeStamp:J

.field uidError:Z

.field private final userState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/PackageUserState;",
            ">;"
        }
    .end annotation
.end field

.field verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

.field versionCode:I

.field volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 121
    new-instance v0, Landroid/content/pm/PackageUserState;

    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    sput-object v0, DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;)V
    .registers 7
    .param p1, "base"    # Lcom/android/server/pm/PackageSettingBase;

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 104
    iput v2, p0, dexMode:I

    .line 115
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v1, p0, signatures:Lcom/android/server/pm/PackageSignatures;

    .line 119
    new-instance v1, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v1}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v1, p0, keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 125
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, userState:Landroid/util/SparseArray;

    .line 127
    const/4 v1, 0x1

    iput v1, p0, installStatus:I

    .line 134
    iput-boolean v2, p0, frozen:Z

    .line 170
    iget-object v1, p1, name:Ljava/lang/String;

    iput-object v1, p0, name:Ljava/lang/String;

    .line 171
    iget-object v1, p1, realName:Ljava/lang/String;

    iput-object v1, p0, realName:Ljava/lang/String;

    .line 172
    iget-object v1, p1, codePath:Ljava/io/File;

    iput-object v1, p0, codePath:Ljava/io/File;

    .line 173
    iget-object v1, p1, codePathString:Ljava/lang/String;

    iput-object v1, p0, codePathString:Ljava/lang/String;

    .line 174
    iget-object v1, p1, resourcePath:Ljava/io/File;

    iput-object v1, p0, resourcePath:Ljava/io/File;

    .line 175
    iget-object v1, p1, resourcePathString:Ljava/lang/String;

    iput-object v1, p0, resourcePathString:Ljava/lang/String;

    .line 176
    iget-object v1, p1, legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v1, p0, legacyNativeLibraryPathString:Ljava/lang/String;

    .line 177
    iget-object v1, p1, primaryCpuAbiString:Ljava/lang/String;

    iput-object v1, p0, primaryCpuAbiString:Ljava/lang/String;

    .line 178
    iget-object v1, p1, secondaryCpuAbiString:Ljava/lang/String;

    iput-object v1, p0, secondaryCpuAbiString:Ljava/lang/String;

    .line 179
    iget-object v1, p1, cpuAbiOverrideString:Ljava/lang/String;

    iput-object v1, p0, cpuAbiOverrideString:Ljava/lang/String;

    .line 181
    iget-object v1, p1, nativeLibraryRootDir:Ljava/lang/String;

    iput-object v1, p0, nativeLibraryRootDir:Ljava/lang/String;

    .line 182
    iget-object v1, p1, nativeLibraryDir:Ljava/lang/String;

    iput-object v1, p0, nativeLibraryDir:Ljava/lang/String;

    .line 183
    iget-object v1, p1, secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v1, p0, secondaryNativeLibraryDir:Ljava/lang/String;

    .line 184
    iget-boolean v1, p1, nativeLibraryRootRequiresIsa:Z

    iput-boolean v1, p0, nativeLibraryRootRequiresIsa:Z

    .line 186
    iget-wide v2, p1, timeStamp:J

    iput-wide v2, p0, timeStamp:J

    .line 187
    iget-wide v2, p1, firstInstallTime:J

    iput-wide v2, p0, firstInstallTime:J

    .line 188
    iget-wide v2, p1, lastUpdateTime:J

    iput-wide v2, p0, lastUpdateTime:J

    .line 189
    iget v1, p1, versionCode:I

    iput v1, p0, versionCode:I

    .line 191
    iget-boolean v1, p1, uidError:Z

    iput-boolean v1, p0, uidError:Z

    .line 193
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    iget-object v2, p1, signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v1, p0, signatures:Lcom/android/server/pm/PackageSignatures;

    .line 195
    iget-boolean v1, p1, installPermissionsFixed:Z

    iput-boolean v1, p0, installPermissionsFixed:Z

    .line 196
    iget-object v1, p0, userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7f
    iget-object v1, p1, userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_a2

    .line 198
    iget-object v2, p0, userState:Landroid/util/SparseArray;

    iget-object v1, p1, userState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Landroid/content/pm/PackageUserState;

    iget-object v1, p1, userState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageUserState;

    invoke-direct {v4, v1}, Landroid/content/pm/PackageUserState;-><init>(Landroid/content/pm/PackageUserState;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 201
    :cond_a2
    iget v1, p1, installStatus:I

    iput v1, p0, installStatus:I

    .line 203
    iget-object v1, p1, origPackage:Lcom/android/server/pm/PackageSettingBase;

    iput-object v1, p0, origPackage:Lcom/android/server/pm/PackageSettingBase;

    .line 205
    iget-object v1, p1, installerPackageName:Ljava/lang/String;

    iput-object v1, p0, installerPackageName:Ljava/lang/String;

    .line 206
    iget-object v1, p1, volumeUuid:Ljava/lang/String;

    iput-object v1, p0, volumeUuid:Ljava/lang/String;

    .line 208
    new-instance v1, Lcom/android/server/pm/PackageKeySetData;

    iget-object v2, p1, keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageKeySetData;-><init>(Lcom/android/server/pm/PackageKeySetData;)V

    iput-object v1, p0, keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 209
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V
    .registers 30
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "nativeLibraryRootDir"    # Ljava/lang/String;
    .param p10, "nativeLibraryDir"    # Ljava/lang/String;
    .param p11, "secondaryNativeLibraryDir"    # Ljava/lang/String;
    .param p12, "nativeLibraryRootRequiresIsa"    # Z
    .param p13, "pVersionCode"    # I
    .param p14, "pkgFlags"    # I
    .param p15, "pkgPrivateFlags"    # I

    .prologue
    .line 152
    move/from16 v0, p14

    move/from16 v1, p15

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 104
    const/4 v2, 0x0

    iput v2, p0, dexMode:I

    .line 115
    new-instance v2, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v2}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v2, p0, signatures:Lcom/android/server/pm/PackageSignatures;

    .line 119
    new-instance v2, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v2}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v2, p0, keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 125
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, userState:Landroid/util/SparseArray;

    .line 127
    const/4 v2, 0x1

    iput v2, p0, installStatus:I

    .line 134
    const/4 v2, 0x0

    iput-boolean v2, p0, frozen:Z

    .line 153
    iput-object p1, p0, name:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p2

    iput-object v0, p0, realName:Ljava/lang/String;

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    .line 155
    invoke-virtual/range {v2 .. v13}, init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 161
    return-void
.end method

.method private modifyUserState(I)Landroid/content/pm/PackageUserState;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 289
    iget-object v1, p0, userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 290
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-nez v0, :cond_14

    .line 291
    new-instance v0, Landroid/content/pm/PackageUserState;

    .end local v0    # "state":Landroid/content/pm/PackageUserState;
    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    .line 292
    .restart local v0    # "state":Landroid/content/pm/PackageUserState;
    iget-object v1, p0, userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    :cond_14
    return-object v0
.end method


# virtual methods
.method addDisabledComponent(Ljava/lang/String;I)V
    .registers 5
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 443
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .registers 5
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 447
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 448
    return-void
.end method

.method clearDomainVerificationStatusForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 519
    invoke-direct {p0, p1}, modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 521
    return-void
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .registers 6
    .param p1, "base"    # Lcom/android/server/pm/PackageSettingBase;

    .prologue
    .line 268
    iget-object v1, p0, mPermissionsState:Lcom/android/server/pm/PermissionsState;

    iget-object v2, p1, mPermissionsState:Lcom/android/server/pm/PermissionsState;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    .line 269
    iget-object v1, p1, primaryCpuAbiString:Ljava/lang/String;

    iput-object v1, p0, primaryCpuAbiString:Ljava/lang/String;

    .line 270
    iget-object v1, p1, secondaryCpuAbiString:Ljava/lang/String;

    iput-object v1, p0, secondaryCpuAbiString:Ljava/lang/String;

    .line 271
    iget-object v1, p1, cpuAbiOverrideString:Ljava/lang/String;

    iput-object v1, p0, cpuAbiOverrideString:Ljava/lang/String;

    .line 272
    iget-wide v2, p1, timeStamp:J

    iput-wide v2, p0, timeStamp:J

    .line 273
    iget-wide v2, p1, firstInstallTime:J

    iput-wide v2, p0, firstInstallTime:J

    .line 274
    iget-wide v2, p1, lastUpdateTime:J

    iput-wide v2, p0, lastUpdateTime:J

    .line 275
    iget-object v1, p1, signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v1, p0, signatures:Lcom/android/server/pm/PackageSignatures;

    .line 276
    iget-boolean v1, p1, installPermissionsFixed:Z

    iput-boolean v1, p0, installPermissionsFixed:Z

    .line 277
    iget-object v1, p0, userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    iget-object v1, p1, userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 279
    iget-object v1, p0, userState:Landroid/util/SparseArray;

    iget-object v2, p1, userState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p1, userState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 281
    :cond_49
    iget v1, p1, installStatus:I

    iput v1, p0, installStatus:I

    .line 282
    iget-object v1, p1, keySetData:Lcom/android/server/pm/PackageKeySetData;

    iput-object v1, p0, keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 283
    iget-object v1, p1, verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    iput-object v1, p0, verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 284
    iget-object v1, p1, installerPackageName:Ljava/lang/String;

    iput-object v1, p0, installerPackageName:Ljava/lang/String;

    .line 285
    iget-object v1, p1, volumeUuid:Ljava/lang/String;

    iput-object v1, p0, volumeUuid:Ljava/lang/String;

    .line 286
    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 459
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2, v0}, modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 460
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_10

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 462
    .local v0, "changed":Z
    :cond_10
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 463
    return v0
.end method

.method enableComponentLPw(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 451
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v0, v2}, modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 452
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_10

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 454
    .local v0, "changed":Z
    :cond_10
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 455
    return v0
.end method

.method getBlockUninstall(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 379
    invoke-virtual {p0, p1}, readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    return v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .registers 5
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 476
    invoke-virtual {p0, p2}, readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 477
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_12

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 478
    const/4 v1, 0x1

    .line 483
    :goto_11
    return v1

    .line 479
    :cond_12
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_20

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 481
    const/4 v1, 0x2

    goto :goto_11

    .line 483
    :cond_20
    const/4 v1, 0x0

    goto :goto_11
.end method

.method getDisabledComponents(I)Landroid/util/ArraySet;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0, p1}, readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method getDomainVerificationStatusForUser(I)J
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 504
    invoke-virtual {p0, p1}, readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    .line 505
    .local v2, "state":Landroid/content/pm/PackageUserState;
    iget v3, v2, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    int-to-long v0, v3

    .line 506
    .local v0, "result":J
    iget v3, v2, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    int-to-long v4, v3

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    .line 507
    return-wide v0
.end method

.method getEnabled(I)I
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 312
    invoke-virtual {p0, p1}, readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->enabled:I

    return v0
.end method

.method getEnabledComponents(I)Landroid/util/ArraySet;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0, p1}, readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method getHidden(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 371
    invoke-virtual {p0, p1}, readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    return v0
.end method

.method public getInstallStatus()I
    .registers 2

    .prologue
    .line 257
    iget v0, p0, installStatus:I

    return v0
.end method

.method getInstalled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 324
    invoke-virtual {p0, p1}, readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->installed:Z

    return v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    return-object v0
.end method

.method getLastDisabledAppCaller(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 316
    invoke-virtual {p0, p1}, readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    return-object v0
.end method

.method getNotLaunched(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 363
    invoke-virtual {p0, p1}, readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    return v0
.end method

.method getStopped(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 355
    invoke-virtual {p0, p1}, readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    return v0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 13
    .param p1, "codePath"    # Ljava/io/File;
    .param p2, "resourcePath"    # Ljava/io/File;
    .param p3, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p4, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p5, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p6, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p7, "nativeLibraryRootDir"    # Ljava/lang/String;
    .param p8, "nativeLibraryDir"    # Ljava/lang/String;
    .param p9, "secondaryNativeLibraryDir"    # Ljava/lang/String;
    .param p10, "nativeLibraryRootRequiresIsa"    # Z
    .param p11, "pVersionCode"    # I

    .prologue
    .line 218
    iput-object p1, p0, codePath:Ljava/io/File;

    .line 219
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, codePathString:Ljava/lang/String;

    .line 220
    iput-object p2, p0, resourcePath:Ljava/io/File;

    .line 221
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, resourcePathString:Ljava/lang/String;

    .line 222
    iput-object p3, p0, legacyNativeLibraryPathString:Ljava/lang/String;

    .line 223
    iput-object p4, p0, primaryCpuAbiString:Ljava/lang/String;

    .line 224
    iput-object p5, p0, secondaryCpuAbiString:Ljava/lang/String;

    .line 225
    iput-object p6, p0, cpuAbiOverrideString:Ljava/lang/String;

    .line 226
    iput p11, p0, versionCode:I

    .line 228
    iput-object p7, p0, nativeLibraryRootDir:Ljava/lang/String;

    .line 229
    iput-object p8, p0, nativeLibraryDir:Ljava/lang/String;

    .line 230
    iput-object p9, p0, secondaryNativeLibraryDir:Ljava/lang/String;

    .line 231
    iput-boolean p10, p0, nativeLibraryRootRequiresIsa:Z

    .line 234
    return-void
.end method

.method isAnyInstalled([I)Z
    .registers 7
    .param p1, "users"    # [I

    .prologue
    .line 328
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_14

    aget v3, v0, v1

    .line 329
    .local v3, "user":I
    invoke-virtual {p0, v3}, readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_11

    .line 330
    const/4 v4, 0x1

    .line 333
    .end local v3    # "user":I
    :goto_10
    return v4

    .line 328
    .restart local v3    # "user":I
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 333
    .end local v3    # "user":I
    :cond_14
    const/4 v4, 0x0

    goto :goto_10
.end method

.method modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;
    .registers 7
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .param p3, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 432
    invoke-direct {p0, p1}, modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 433
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-eqz p2, :cond_12

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v1, :cond_12

    .line 434
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 436
    :cond_12
    if-eqz p3, :cond_1f

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v1, :cond_1f

    .line 437
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 439
    :cond_1f
    return-object v0
.end method

.method queryInstalledUsers([IZ)[I
    .registers 10
    .param p1, "users"    # [I
    .param p2, "installed"    # Z

    .prologue
    .line 337
    const/4 v3, 0x0

    .line 338
    .local v3, "num":I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_13

    aget v5, v0, v1

    .line 339
    .local v5, "user":I
    invoke-virtual {p0, v5}, getInstalled(I)Z

    move-result v6

    if-ne v6, p2, :cond_10

    .line 340
    add-int/lit8 v3, v3, 0x1

    .line 338
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 343
    .end local v5    # "user":I
    :cond_13
    new-array v4, v3, [I

    .line 344
    .local v4, "res":[I
    const/4 v3, 0x0

    .line 345
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v2, :cond_2a

    aget v5, v0, v1

    .line 346
    .restart local v5    # "user":I
    invoke-virtual {p0, v5}, getInstalled(I)Z

    move-result v6

    if-ne v6, p2, :cond_27

    .line 347
    aput v5, v4, v3

    .line 348
    add-int/lit8 v3, v3, 0x1

    .line 345
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 351
    .end local v5    # "user":I
    :cond_2a
    return-object v4
.end method

.method public readUserState(I)Landroid/content/pm/PackageUserState;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 298
    iget-object v1, p0, userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 299
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-eqz v0, :cond_b

    .line 302
    .end local v0    # "state":Landroid/content/pm/PackageUserState;
    :goto_a
    return-object v0

    .restart local v0    # "state":Landroid/content/pm/PackageUserState;
    :cond_b
    sget-object v0, DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    goto :goto_a
.end method

.method removeUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 488
    iget-object v0, p0, userState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 489
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 467
    invoke-virtual {p0, p2, v3, v3}, modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 468
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v3, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v3, :cond_1c

    iget-object v3, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 470
    .local v0, "changed":Z
    :goto_10
    iget-object v3, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v3, :cond_1a

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    :cond_1a
    or-int/2addr v0, v2

    .line 472
    return v0

    .end local v0    # "changed":Z
    :cond_1c
    move v0, v2

    .line 468
    goto :goto_10
.end method

.method setBlockUninstall(ZI)V
    .registers 4
    .param p1, "blockUninstall"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 383
    invoke-direct {p0, p2}, modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    .line 384
    return-void
.end method

.method setDisabledComponents(Landroid/util/ArraySet;I)V
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 419
    return-void
.end method

.method setDisabledComponentsCopy(Landroid/util/ArraySet;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    if-eqz p1, :cond_e

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    :goto_b
    iput-object v0, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 429
    return-void

    .line 427
    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method setDomainVerificationStatusForUser(III)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "generation"    # I
    .param p3, "userId"    # I

    .prologue
    .line 511
    invoke-direct {p0, p3}, modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 512
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 513
    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    .line 514
    iput p2, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 516
    :cond_b
    return-void
.end method

.method setEnabled(IILjava/lang/String;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-direct {p0, p2}, modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 307
    .local v0, "st":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 308
    iput-object p3, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 309
    return-void
.end method

.method setEnabledComponents(Landroid/util/ArraySet;I)V
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 415
    return-void
.end method

.method setEnabledComponentsCopy(Landroid/util/ArraySet;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    if-eqz p1, :cond_e

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    :goto_b
    iput-object v0, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 424
    return-void

    .line 422
    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method setHidden(ZI)V
    .registers 4
    .param p1, "hidden"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 375
    invoke-direct {p0, p2}, modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 376
    return-void
.end method

.method public setInstallStatus(I)V
    .registers 2
    .param p1, "newStatus"    # I

    .prologue
    .line 253
    iput p1, p0, installStatus:I

    .line 254
    return-void
.end method

.method setInstalled(ZI)V
    .registers 4
    .param p1, "inst"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 320
    invoke-direct {p0, p2}, modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 321
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, installerPackageName:Ljava/lang/String;

    .line 238
    return-void
.end method

.method setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/content/pm/IntentFilterVerificationInfo;

    .prologue
    .line 496
    iput-object p1, p0, verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 497
    return-void
.end method

.method setNotLaunched(ZI)V
    .registers 4
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 367
    invoke-direct {p0, p2}, modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 368
    return-void
.end method

.method setStopped(ZI)V
    .registers 4
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 359
    invoke-direct {p0, p2}, modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 360
    return-void
.end method

.method public setTimeStamp(J)V
    .registers 4
    .param p1, "newStamp"    # J

    .prologue
    .line 261
    iput-wide p1, p0, timeStamp:J

    .line 262
    return-void
.end method

.method setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "enabled"    # I
    .param p3, "installed"    # Z
    .param p4, "stopped"    # Z
    .param p5, "notLaunched"    # Z
    .param p6, "hidden"    # Z
    .param p7, "lastDisableAppCaller"    # Ljava/lang/String;
    .param p10, "blockUninstall"    # Z
    .param p11, "domainVerifState"    # I
    .param p12, "linkGeneration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZZZ",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;ZII)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p8, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p9, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 392
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iput p2, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 393
    iput-boolean p3, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 394
    iput-boolean p4, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 395
    iput-boolean p5, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 396
    iput-boolean p6, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 397
    iput-object p7, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 398
    iput-object p8, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 399
    iput-object p9, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 400
    iput-boolean p10, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    .line 401
    iput p11, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 402
    iput p12, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 403
    return-void
.end method

.method public setVolumeUuid(Ljava/lang/String;)V
    .registers 2
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, volumeUuid:Ljava/lang/String;

    .line 246
    return-void
.end method
