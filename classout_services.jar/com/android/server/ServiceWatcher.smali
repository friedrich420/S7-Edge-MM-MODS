.class public Lcom/android/server/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final D:Z = false

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsMultiuser:Z

.field private mLock:Ljava/lang/Object;

.field private final mNewServiceWork:Ljava/lang/Runnable;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPackageName:Ljava/lang/String;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSignatureSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNamesResId"    # I
    .param p7, "newServiceWork"    # Ljava/lang/Runnable;
    .param p8, "handler"    # Landroid/os/Handler;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, mLock:Ljava/lang/Object;

    .line 73
    const/high16 v5, -0x80000000

    iput v5, p0, mVersion:I

    .line 78
    const/4 v5, 0x0

    iput-boolean v5, p0, mIsMultiuser:Z

    .line 283
    new-instance v5, Lcom/android/server/ServiceWatcher$2;

    invoke-direct {v5, p0}, Lcom/android/server/ServiceWatcher$2;-><init>(Lcom/android/server/ServiceWatcher;)V

    iput-object v5, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 102
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, mTag:Ljava/lang/String;

    .line 104
    iput-object p3, p0, mAction:Ljava/lang/String;

    .line 105
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, mPm:Landroid/content/pm/PackageManager;

    .line 106
    iput-object p7, p0, mNewServiceWork:Ljava/lang/Runnable;

    .line 107
    iput-object p8, p0, mHandler:Landroid/os/Handler;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 111
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 112
    .local v0, "enableOverlay":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "initialPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_50

    .line 115
    invoke-virtual {v3, p6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_46

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    :cond_46
    const/4 v5, 0x0

    iput-object v5, p0, mServicePackageName:Ljava/lang/String;

    .line 127
    .end local v2    # "pkgs":[Ljava/lang/String;
    :goto_49
    invoke-static {p1, v1}, getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, mSignatureSets:Ljava/util/List;

    .line 128
    return-void

    .line 122
    :cond_50
    invoke-virtual {v3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "servicePackageName":Ljava/lang/String;
    if-eqz v4, :cond_59

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_59
    iput-object v4, p0, mServicePackageName:Ljava/lang/String;

    goto :goto_49
.end method

.method static synthetic access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;

    .prologue
    .line 48
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;

    .prologue
    .line 48
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ServiceWatcher;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;

    .prologue
    .line 48
    invoke-direct {p0}, unbindLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, bindBestPackageLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bindBestPackageLocked(Ljava/lang/String;)Z
    .registers 19
    .param p1, "justCheckThisPackage"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, mAction:Ljava/lang/String;

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v6, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_10

    .line 166
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, mPm:Landroid/content/pm/PackageManager;

    const/16 v15, 0x80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 170
    .local v11, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v3, -0x80000000

    .line 171
    .local v3, "bestVersion":I
    const/4 v2, 0x0

    .line 172
    .local v2, "bestPackage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 173
    .local v1, "bestIsMultiuser":Z
    if-eqz v11, :cond_ff

    .line 174
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_ff

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 175
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 178
    .local v9, "packageName":Ljava/lang/String;
    const-string/jumbo v14, "ro.csc.sales_code"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 179
    .local v12, "vendor":Ljava/lang/String;
    const-string v14, "com.sec.location.nsflp2"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_89

    .line 180
    const-string v14, "CHN"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6f

    const-string v14, "CHC"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6f

    const-string v14, "CHU"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6f

    const-string v14, "CTC"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6f

    const-string v14, "CHM"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_28

    .line 181
    :cond_6f
    move-object/from16 v0, p0

    iget-object v14, v0, mTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bindBestPackageLocked : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_89
    :try_start_89
    move-object/from16 v0, p0

    iget-object v14, v0, mPm:Landroid/content/pm/PackageManager;

    const/16 v15, 0x40

    invoke-virtual {v14, v9, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 192
    .local v8, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v14, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, isSignatureMatch([Landroid/content/pm/Signature;)Z

    move-result v14

    if-nez v14, :cond_d3

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, mTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " resolves service "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, mAction:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", but has wrong signature, ignoring"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_89 .. :try_end_c7} :catch_c9

    goto/16 :goto_28

    .line 197
    .end local v8    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_c9
    move-exception v4

    .line 198
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v14, v0, mTag:Ljava/lang/String;

    invoke-static {v14, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 203
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_d3
    const/high16 v13, -0x80000000

    .line 204
    .local v13, "version":I
    const/4 v7, 0x0

    .line 205
    .local v7, "isMultiuser":Z
    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v14, :cond_f4

    .line 206
    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v15, "serviceVersion"

    const/high16 v16, -0x80000000

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 208
    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v15, "serviceIsMultiuser"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 211
    :cond_f4
    move-object/from16 v0, p0

    iget v14, v0, mVersion:I

    if-le v13, v14, :cond_28

    .line 212
    move v3, v13

    .line 213
    move-object v2, v9

    .line 214
    move v1, v7

    goto/16 :goto_28

    .line 228
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "isMultiuser":Z
    .end local v8    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "vendor":Ljava/lang/String;
    .end local v13    # "version":I
    :cond_ff
    if-eqz v2, :cond_108

    .line 229
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v1}, bindToPackageLocked(Ljava/lang/String;IZ)V

    .line 230
    const/4 v14, 0x1

    .line 232
    :goto_107
    return v14

    :cond_108
    const/4 v14, 0x0

    goto :goto_107
.end method

.method private bindToPackageLocked(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "isMultiuser"    # Z

    .prologue
    .line 248
    invoke-direct {p0}, unbindLocked()V

    .line 249
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iput-object p1, p0, mPackageName:Ljava/lang/String;

    .line 252
    iput p2, p0, mVersion:I

    .line 253
    iput-boolean p3, p0, mIsMultiuser:Z

    .line 256
    iget-object v2, p0, mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    iget-boolean v1, p0, mIsMultiuser:Z

    if-eqz v1, :cond_22

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    :goto_1e
    invoke-virtual {v2, v0, p0, v3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 258
    return-void

    .line 256
    :cond_22
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    goto :goto_1e
.end method

.method public static getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "initialPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 83
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v5, "sigSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_e
    if-ge v1, v7, :cond_4a

    .line 85
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    .local v2, "pkg":Ljava/lang/String;
    :try_start_16
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 88
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    const/16 v8, 0x40

    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 89
    .local v6, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_2d} :catch_30

    .line 84
    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v6    # "sigs":[Landroid/content/pm/Signature;
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 91
    :catch_30
    move-exception v0

    .line 92
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ServiceWatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 95
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_4a
    return-object v5
.end method

.method private isSignatureMatch([Landroid/content/pm/Signature;)Z
    .registers 3
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 280
    iget-object v0, p0, mSignatureSets:Ljava/util/List;

    invoke-static {p1, v0}, isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z
    .registers 10
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "sigSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v6, 0x0

    .line 262
    if-nez p0, :cond_4

    .line 276
    :cond_3
    :goto_3
    return v6

    .line 265
    :cond_4
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 266
    .local v2, "inputSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_c
    if-ge v1, v3, :cond_16

    aget-object v5, v0, v1

    .line 267
    .local v5, "s":Landroid/content/pm/Signature;
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 271
    .end local v5    # "s":Landroid/content/pm/Signature;
    :cond_16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 272
    .local v4, "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 273
    const/4 v6, 0x1

    goto :goto_3
.end method

.method private unbindLocked()V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    .line 238
    .local v0, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, mPackageName:Ljava/lang/String;

    .line 239
    const/high16 v1, -0x80000000

    iput v1, p0, mVersion:I

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsMultiuser:Z

    .line 241
    if-eqz v0, :cond_13

    .line 243
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 245
    :cond_13
    return-void
.end method


# virtual methods
.method public getBestPackageName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 368
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_3
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 370
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getBestVersion()I
    .registers 3

    .prologue
    .line 374
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_3
    iget v0, p0, mVersion:I

    monitor-exit v1

    return v0

    .line 376
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 380
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_3
    iget-object v0, p0, mBinder:Landroid/os/IBinder;

    monitor-exit v1

    return-object v0

    .line 382
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 341
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 342
    :try_start_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 345
    iput-object p2, p0, mBinder:Landroid/os/IBinder;

    .line 346
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_20

    iget-object v1, p0, mNewServiceWork:Ljava/lang/Runnable;

    if-eqz v1, :cond_20

    .line 347
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mNewServiceWork:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    :cond_20
    :goto_20
    monitor-exit v2

    .line 353
    return-void

    .line 350
    :cond_22
    iget-object v1, p0, mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected onServiceConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 352
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_3c
    move-exception v1

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 357
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 358
    :try_start_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 362
    const/4 v1, 0x0

    iput-object v1, p0, mBinder:Landroid/os/IBinder;

    .line 364
    :cond_12
    monitor-exit v2

    .line 365
    return-void

    .line 364
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public start()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 131
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_5
    iget-object v0, p0, mServicePackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, bindBestPackageLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    monitor-exit v1

    .line 153
    :goto_f
    return v0

    .line 133
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_38

    .line 136
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/ServiceWatcher$1;

    invoke-direct {v1, p0}, Lcom/android/server/ServiceWatcher$1;-><init>(Lcom/android/server/ServiceWatcher;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, mServicePackageName:Ljava/lang/String;

    if-nez v0, :cond_36

    .line 150
    iget-object v0, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4, v2, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    :cond_36
    move v0, v6

    .line 153
    goto :goto_f

    .line 133
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public switchUser()V
    .registers 3

    .prologue
    .line 386
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    :try_start_3
    iget-boolean v0, p0, mIsMultiuser:Z

    if-nez v0, :cond_f

    .line 388
    invoke-direct {p0}, unbindLocked()V

    .line 389
    iget-object v0, p0, mServicePackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, bindBestPackageLocked(Ljava/lang/String;)Z

    .line 391
    :cond_f
    monitor-exit v1

    .line 392
    return-void

    .line 391
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method
