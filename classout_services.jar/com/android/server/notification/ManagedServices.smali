.class public abstract Lcom/android/server/notification/ManagedServices;
.super Ljava/lang/Object;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ManagedServices$Config;,
        Lcom/android/server/notification/ManagedServices$UserProfiles;,
        Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;,
        Lcom/android/server/notification/ManagedServices$SettingsObserver;,
        Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;
    }
.end annotation


# static fields
.field private static final ENABLED_SERVICES_SEPARATOR:Ljava/lang/String; = ":"

.field private static final SAFE_DEBUG:Z


# instance fields
.field protected final DEBUG:Z

.field protected final TAG:Ljava/lang/String;

.field private final mConfig:Lcom/android/server/notification/ManagedServices$Config;

.field protected final mContext:Landroid/content/Context;

.field private mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledServicesPackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSeenProfileIds:[I

.field protected final mMutex:Ljava/lang/Object;

.field private final mRestoreReceiver:Landroid/content/BroadcastReceiver;

.field private mRestored:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicesBinding:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/server/notification/ManagedServices$SettingsObserver;

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "mutex"    # Ljava/lang/Object;
    .param p4, "userProfiles"    # Lcom/android/server/notification/ManagedServices$UserProfiles;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, TAG:Ljava/lang/String;

    .line 77
    iget-object v1, p0, TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, DEBUG:Z

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mServices:Ljava/util/ArrayList;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mServicesBinding:Ljava/util/ArrayList;

    .line 97
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    .line 100
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, mEnabledServicesPackageNames:Landroid/util/ArraySet;

    .line 110
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 111
    iput-object p3, p0, mMutex:Ljava/lang/Object;

    .line 112
    iput-object p4, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 113
    invoke-virtual {p0}, getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v1

    iput-object v1, p0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 114
    new-instance v1, Lcom/android/server/notification/ManagedServices$SettingsObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/notification/ManagedServices$SettingsObserver;-><init>(Lcom/android/server/notification/ManagedServices;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$1;)V

    iput-object v1, p0, mSettingsObserver:Lcom/android/server/notification/ManagedServices$SettingsObserver;

    .line 116
    new-instance v1, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;-><init>(Lcom/android/server/notification/ManagedServices;)V

    iput-object v1, p0, mRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.SETTING_RESTORED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, mRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$Config;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .prologue
    .line 75
    iget-object v0, p0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .prologue
    .line 75
    iget-object v0, p0, mServicesBinding:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 8
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;
    .param p1, "x1"    # Landroid/os/IInterface;
    .param p2, "x2"    # Landroid/content/ComponentName;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Landroid/content/ServiceConnection;
    .param p6, "x6"    # I

    .prologue
    .line 75
    invoke-direct/range {p0 .. p6}, newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .prologue
    .line 75
    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/ManagedServices;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .prologue
    .line 75
    invoke-direct {p0}, rebindServices()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .prologue
    .line 75
    iget-object v0, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;
    .param p1, "x1"    # Landroid/os/IInterface;
    .param p2, "x2"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .prologue
    .line 75
    iget-object v0, p0, mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    return-object v0
.end method

.method private checkNotNull(Landroid/os/IInterface;)V
    .registers 5
    .param p1, "service"    # Landroid/os/IInterface;

    .prologue
    .line 592
    if-nez p1, :cond_1f

    .line 593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_1f
    return-void
.end method

.method private disableNonexistentServices()V
    .registers 5

    .prologue
    .line 273
    iget-object v3, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v3}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v2

    .line 274
    .local v2, "userIds":[I
    array-length v0, v2

    .line 275
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_12

    .line 276
    aget v3, v2, v1

    invoke-direct {p0, v3}, disableNonexistentServices(I)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 278
    :cond_12
    return-void
.end method

.method private disableNonexistentServices(I)V
    .registers 26
    .param p1, "userId"    # I

    .prologue
    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 282
    .local v5, "cr":Landroid/content/ContentResolver;
    const/16 v19, 0x0

    .line 283
    .local v19, "restoredChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mRestored:Landroid/util/ArraySet;

    move-object/from16 v21, v0

    if-nez v21, :cond_6a

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, restoredSettingName(Lcom/android/server/notification/ManagedServices$Config;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 288
    .local v20, "restoredSetting":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1ab

    .line 289
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "restored: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_55
    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 291
    .local v18, "restored":[Ljava/lang/String;
    new-instance v21, Landroid/util/ArraySet;

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mRestored:Landroid/util/ArraySet;

    .line 296
    .end local v18    # "restored":[Ljava/lang/String;
    .end local v20    # "restoredSetting":Ljava/lang/String;
    :cond_6a
    :goto_6a
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 300
    .local v8, "flatIn":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_294

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_ab

    move-object/from16 v0, p0

    iget-object v0, v0, TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "flat before: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_ab
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 303
    .local v15, "pm":Landroid/content/pm/PackageManager;
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x84

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    .line 307
    .local v14, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_108

    move-object/from16 v0, p0

    iget-object v0, v0, TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " services: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_108
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 309
    .local v13, "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "count":I
    :goto_112
    if-ge v11, v4, :cond_1bc

    .line 310
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 311
    .local v17, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 313
    .local v12, "info":Landroid/content/pm/ServiceInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .local v3, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1b8

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Skipping "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, getCaption()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " service "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": it does not require the permission "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, mRestored:Landroid/util/ArraySet;

    move-object/from16 v21, v0

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v21

    or-int v19, v19, v21

    .line 309
    :goto_1a7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_112

    .line 293
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "count":I
    .end local v8    # "flatIn":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "info":Landroid/content/pm/ServiceInfo;
    .end local v13    # "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v14    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v20    # "restoredSetting":Ljava/lang/String;
    :cond_1ab
    new-instance v21, Landroid/util/ArraySet;

    invoke-direct/range {v21 .. v21}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mRestored:Landroid/util/ArraySet;

    goto/16 :goto_6a

    .line 322
    .end local v20    # "restoredSetting":Ljava/lang/String;
    .restart local v3    # "component":Landroid/content/ComponentName;
    .restart local v4    # "count":I
    .restart local v8    # "flatIn":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "info":Landroid/content/pm/ServiceInfo;
    .restart local v13    # "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v14    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1b8
    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a7

    .line 325
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v12    # "info":Landroid/content/pm/ServiceInfo;
    .end local v17    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1bc
    const-string v9, ""

    .line 326
    .local v9, "flatOut":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_21d

    .line 327
    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, "enabled":[Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    array-length v0, v6

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    .local v16, "remaining":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    :goto_1d9
    array-length v0, v6

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_206

    .line 330
    aget-object v21, v6, v11

    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 331
    .local v7, "enabledComponent":Landroid/content/ComponentName;
    invoke-interface {v13, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_203

    .line 332
    aget-object v21, v6, v11

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, mRestored:Landroid/util/ArraySet;

    move-object/from16 v21, v0

    aget-object v22, v6, v11

    invoke-virtual/range {v21 .. v22}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v21

    or-int v19, v19, v21

    .line 329
    :cond_203
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d9

    .line 336
    .end local v7    # "enabledComponent":Landroid/content/ComponentName;
    :cond_206
    move-object/from16 v0, p0

    iget-object v0, v0, mRestored:Landroid/util/ArraySet;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 337
    const-string v21, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    .line 339
    .end local v6    # "enabled":[Ljava/lang/String;
    .end local v16    # "remaining":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_21d
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_244

    move-object/from16 v0, p0

    iget-object v0, v0, TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "flat after: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_244
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_25d

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v5, v0, v9, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 345
    :cond_25d
    if-eqz v19, :cond_294

    .line 346
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_273

    move-object/from16 v0, p0

    iget-object v0, v0, TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "restored changed; rewriting"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_273
    const-string v21, ":"

    move-object/from16 v0, p0

    iget-object v0, v0, mRestored:Landroid/util/ArraySet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 349
    .local v10, "flatRestored":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, restoredSettingName(Lcom/android/server/notification/ManagedServices$Config;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v5, v0, v10, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 355
    .end local v4    # "count":I
    .end local v9    # "flatOut":Ljava/lang/String;
    .end local v10    # "flatRestored":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v13    # "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v14    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    :cond_294
    return-void
.end method

.method private getCaption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    return-object v0
.end method

.method private newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 15
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I
    .param p4, "isSystem"    # Z
    .param p5, "connection"    # Landroid/content/ServiceConnection;
    .param p6, "targetSdkVersion"    # I

    .prologue
    .line 150
    new-instance v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;-><init>(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)V

    return-object v0
.end method

.method private rebindServices()V
    .registers 25

    .prologue
    .line 362
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "rebindServices"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v19

    .line 364
    .local v19, "userIds":[I
    move-object/from16 v0, v19

    array-length v11, v0

    .line 366
    .local v11, "nUserIds":I
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 368
    .local v6, "flat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_27
    if-ge v7, v11, :cond_51

    .line 369
    aget v20, v19, v7

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    move-object/from16 v22, v0

    aget v23, v19, v7

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 375
    :cond_51
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v18, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 379
    .local v16, "toAdd":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Landroid/content/ComponentName;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mMutex:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 381
    :try_start_62
    move-object/from16 v0, p0

    iget-object v0, v0, mServices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_6c
    :goto_6c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_87

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 382
    .local v15, "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-boolean v0, v15, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    move/from16 v20, v0

    if-nez v20, :cond_6c

    .line 383
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 412
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v15    # "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_84
    move-exception v20

    monitor-exit v21
    :try_end_86
    .catchall {:try_start_62 .. :try_end_86} :catchall_84

    throw v20

    .line 387
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_87
    :try_start_87
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 388
    .local v12, "newEnabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 390
    .local v13, "newPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    :goto_92
    if-ge v7, v11, :cond_dd

    .line 391
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v3, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    aget v20, v19, v7

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    aget v20, v19, v7

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 396
    .local v17, "toDecode":Ljava/lang/String;
    if-eqz v17, :cond_da

    .line 397
    const-string v20, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, "components":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_b9
    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_da

    .line 399
    aget-object v20, v5, v10

    invoke-static/range {v20 .. v20}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 401
    .local v4, "component":Landroid/content/ComponentName;
    if-eqz v4, :cond_d7

    .line 402
    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_d7
    add-int/lit8 v10, v10, 0x1

    goto :goto_b9

    .line 390
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "components":[Ljava/lang/String;
    .end local v10    # "j":I
    :cond_da
    add-int/lit8 v7, v7, 0x1

    goto :goto_92

    .line 410
    .end local v3    # "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v17    # "toDecode":Ljava/lang/String;
    :cond_dd
    move-object/from16 v0, p0

    iput-object v12, v0, mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    .line 411
    move-object/from16 v0, p0

    iput-object v13, v0, mEnabledServicesPackageNames:Landroid/util/ArraySet;

    .line 412
    monitor-exit v21
    :try_end_e6
    .catchall {:try_start_87 .. :try_end_e6} :catchall_84

    .line 414
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_ea
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 415
    .local v9, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 416
    .restart local v4    # "component":Landroid/content/ComponentName;
    iget v14, v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 417
    .local v14, "oldUser":I
    move-object/from16 v0, p0

    iget-object v0, v0, TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "disabling "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-direct/range {p0 .. p0}, getCaption()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " for user "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget v0, v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v4, v1}, unregisterService(Landroid/content/ComponentName;I)V

    goto :goto_ea

    .line 422
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v9    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v14    # "oldUser":I
    :cond_13f
    const/4 v7, 0x0

    :goto_140
    if-ge v7, v11, :cond_1a3

    .line 423
    aget v20, v19, v7

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 424
    .restart local v3    # "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 425
    .local v2, "N":I
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_153
    if-ge v10, v2, :cond_1a0

    .line 426
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 427
    .restart local v4    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "enabling "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-direct/range {p0 .. p0}, getCaption()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " for user "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget v22, v19, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    aget v20, v19, v7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v4, v1}, registerService(Landroid/content/ComponentName;I)V

    .line 425
    add-int/lit8 v10, v10, 0x1

    goto :goto_153

    .line 422
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_1a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_140

    .line 433
    .end local v2    # "N":I
    .end local v3    # "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v10    # "j":I
    :cond_1a3
    move-object/from16 v0, p0

    iget-object v0, v0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mLastSeenProfileIds:[I

    .line 434
    return-void
.end method

.method private registerService(Landroid/content/ComponentName;I)V
    .registers 18
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    .prologue
    .line 440
    iget-boolean v10, p0, DEBUG:Z

    if-eqz v10, :cond_2b

    iget-object v10, p0, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "registerService: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " u="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_2b
    iget-object v11, p0, mMutex:Ljava/lang/Object;

    monitor-enter v11

    .line 443
    :try_start_2e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 444
    .local v8, "servicesBindingTag":Ljava/lang/String;
    iget-object v10, p0, mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 446
    sget-boolean v10, SAFE_DEBUG:Z

    if-eqz v10, :cond_70

    .line 447
    iget-object v10, p0, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "registerService : The service is binding - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_70
    monitor-exit v11

    .line 536
    :goto_71
    return-void

    .line 451
    :cond_72
    iget-object v10, p0, mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v10, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 454
    .local v1, "N":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_7f
    if-ltz v4, :cond_d6

    .line 455
    iget-object v10, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 456
    .local v5, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v10, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d3

    iget v10, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    move/from16 v0, p2

    if-ne v10, v0, :cond_d3

    .line 459
    iget-boolean v10, p0, DEBUG:Z

    if-eqz v10, :cond_c5

    iget-object v10, p0, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    disconnecting old "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_c5
    invoke-direct {p0, v4}, removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 462
    iget-object v10, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v10, :cond_d3

    .line 463
    iget-object v10, p0, mContext:Landroid/content/Context;

    iget-object v12, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v10, v12}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 454
    :cond_d3
    add-int/lit8 v4, v4, -0x1

    goto :goto_7f

    .line 468
    .end local v5    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_d6
    new-instance v6, Landroid/content/Intent;

    iget-object v10, p0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v10, v10, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v6, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 471
    const-string v10, "android.intent.extra.client_label"

    iget-object v12, p0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget v12, v12, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    invoke-virtual {v6, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    iget-object v10, p0, mContext:Landroid/content/Context;

    const/4 v12, 0x0

    new-instance v13, Landroid/content/Intent;

    iget-object v14, p0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v14, v14, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-static {v10, v12, v13, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 475
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    const-string v10, "android.intent.extra.client_intent"

    invoke-virtual {v6, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_103
    .catchall {:try_start_2e .. :try_end_103} :catchall_17a

    .line 477
    const/4 v2, 0x0

    .line 479
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_104
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_112
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_104 .. :try_end_112} :catch_1ac
    .catchall {:try_start_104 .. :try_end_112} :catchall_17a

    move-result-object v2

    .line 484
    :goto_113
    if-eqz v2, :cond_17d

    :try_start_115
    iget v9, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_117
    .catchall {:try_start_115 .. :try_end_117} :catchall_17a

    .line 488
    .local v9, "targetSdkVersion":I
    :goto_117
    :try_start_117
    iget-boolean v10, p0, DEBUG:Z

    if-eqz v10, :cond_133

    iget-object v10, p0, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_133
    iget-object v10, p0, mContext:Landroid/content/Context;

    new-instance v12, Lcom/android/server/notification/ManagedServices$1;

    move/from16 v0, p2

    invoke-direct {v12, p0, v8, v0, v9}, Lcom/android/server/notification/ManagedServices$1;-><init>(Lcom/android/server/notification/ManagedServices;Ljava/lang/String;II)V

    const v13, 0x4000001

    new-instance v14, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v6, v12, v13, v14}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v10

    if-nez v10, :cond_1a9

    .line 527
    iget-object v10, p0, mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 528
    iget-object v10, p0, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to bind "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_177
    .catch Ljava/lang/SecurityException; {:try_start_117 .. :try_end_177} :catch_17f
    .catchall {:try_start_117 .. :try_end_177} :catchall_17a

    .line 529
    :try_start_177
    monitor-exit v11

    goto/16 :goto_71

    .line 535
    .end local v1    # "N":I
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "i":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v8    # "servicesBindingTag":Ljava/lang/String;
    .end local v9    # "targetSdkVersion":I
    :catchall_17a
    move-exception v10

    monitor-exit v11
    :try_end_17c
    .catchall {:try_start_177 .. :try_end_17c} :catchall_17a

    throw v10

    .line 484
    .restart local v1    # "N":I
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "i":I
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v8    # "servicesBindingTag":Ljava/lang/String;
    :cond_17d
    const/4 v9, 0x1

    goto :goto_117

    .line 531
    .restart local v9    # "targetSdkVersion":I
    :catch_17f
    move-exception v3

    .line 532
    .local v3, "ex":Ljava/lang/SecurityException;
    :try_start_180
    iget-object v10, p0, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to bind "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    monitor-exit v11

    goto/16 :goto_71

    .line 535
    .end local v3    # "ex":Ljava/lang/SecurityException;
    :cond_1a9
    monitor-exit v11
    :try_end_1aa
    .catchall {:try_start_180 .. :try_end_1aa} :catchall_17a

    goto/16 :goto_71

    .line 481
    .end local v9    # "targetSdkVersion":I
    :catch_1ac
    move-exception v10

    goto/16 :goto_113
.end method

.method private registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 14
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    .prologue
    const/4 v8, 0x0

    .line 599
    iget-object v9, p0, mMutex:Ljava/lang/Object;

    monitor-enter v9

    .line 601
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x15

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    :try_start_c
    invoke-direct/range {v0 .. v6}, newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v7

    .line 603
    .local v7, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 604
    iget-object v0, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1f
    .catchall {:try_start_c .. :try_end_1d} :catchall_23

    .line 605
    :try_start_1d
    monitor-exit v9

    .line 610
    .end local v7    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :goto_1e
    return-object v7

    .line 606
    :catch_1f
    move-exception v0

    .line 609
    monitor-exit v9

    move-object v7, v8

    .line 610
    goto :goto_1e

    .line 609
    :catchall_23
    move-exception v0

    monitor-exit v9
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_23

    throw v0
.end method

.method private removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 11
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    .prologue
    .line 569
    iget-boolean v4, p0, DEBUG:Z

    if-eqz v4, :cond_27

    iget-object v4, p0, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeServiceImpl service="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " u="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_27
    const/4 v3, 0x0

    .line 571
    .local v3, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, p0, mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 572
    :try_start_2b
    iget-object v4, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 573
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_33
    if-ltz v1, :cond_72

    .line 574
    iget-object v4, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 575
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v4, v6, :cond_6f

    iget v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v4, p2, :cond_6f

    .line 577
    iget-boolean v4, p0, DEBUG:Z

    if-eqz v4, :cond_6b

    iget-object v4, p0, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing active service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_6b
    invoke-direct {p0, v1}, removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    .line 573
    :cond_6f
    add-int/lit8 v1, v1, -0x1

    goto :goto_33

    .line 581
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_72
    monitor-exit v5

    .line 582
    return-object v3

    .line 581
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_74
    move-exception v4

    monitor-exit v5
    :try_end_76
    .catchall {:try_start_2b .. :try_end_76} :catchall_74

    throw v4
.end method

.method private removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 586
    iget-object v1, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 587
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {p0, v0}, onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 588
    return-object v0
.end method

.method public static final restoredSettingName(Lcom/android/server/notification/ManagedServices$Config;)Ljava/lang/String;
    .registers 3
    .param p0, "config"    # Lcom/android/server/notification/ManagedServices$Config;

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":restored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unregisterService(Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    .prologue
    .line 542
    iget-object v5, p0, mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 543
    :try_start_3
    iget-object v4, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 544
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_61

    .line 545
    iget-object v4, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 546
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v4, p2, :cond_2f

    .line 548
    invoke-direct {p0, v2}, removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 549
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_5e

    if-eqz v4, :cond_2f

    .line 551
    :try_start_28
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v6, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_2f} :catch_32
    .catchall {:try_start_28 .. :try_end_2f} :catchall_5e

    .line 544
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 552
    :catch_32
    move-exception v1

    .line 555
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_33
    iget-object v4, p0, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be unbound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 560
    .end local v0    # "N":I
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_5e
    move-exception v4

    monitor-exit v5
    :try_end_60
    .catchall {:try_start_33 .. :try_end_60} :catchall_5e

    throw v4

    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_61
    :try_start_61
    monitor-exit v5
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_5e

    .line 561
    return-void
.end method

.method private unregisterServiceImpl(Landroid/os/IInterface;I)V
    .registers 6
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    .prologue
    .line 617
    invoke-direct {p0, p1, p2}, removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 618
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_11

    .line 619
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 621
    :cond_11
    return-void
.end method


# virtual methods
.method protected abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 9
    .param p1, "service"    # Landroid/os/IInterface;

    .prologue
    .line 243
    invoke-direct {p0, p1}, checkNotNull(Landroid/os/IInterface;)V

    .line 244
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 245
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 246
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_24

    .line 247
    iget-object v4, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 248
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v3, :cond_21

    return-object v2

    .line 246
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 250
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_24
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disallowed call from unknown "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    All "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") enabled for current profiles:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 162
    .local v1, "cmpt":Landroid/content/ComponentName;
    if-eqz p2, :cond_4b

    invoke-virtual {p2, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 163
    :cond_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37

    .line 166
    .end local v1    # "cmpt":Landroid/content/ComponentName;
    :cond_62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Live "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    iget-object v4, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_99
    :goto_99
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ed

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 168
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_af

    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 169
    :cond_af
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v4, :cond_ea

    const-string v4, " SYSTEM"

    :goto_de
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_99

    :cond_ea
    const-string v4, ""

    goto :goto_de

    .line 174
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_ed
    sget-boolean v4, SAFE_DEBUG:Z

    if-eqz v4, :cond_11a

    .line 175
    iget-object v4, p0, mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    .local v0, "binding":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Binding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f7

    .line 179
    .end local v0    # "binding":Ljava/lang/String;
    :cond_11a
    return-void
.end method

.method protected abstract getConfig()Lcom/android/server/notification/ManagedServices$Config;
.end method

.method public isComponentEnabledForPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, mSettingsObserver:Lcom/android/server/notification/ManagedServices$SettingsObserver;

    # invokes: Lcom/android/server/notification/ManagedServices$SettingsObserver;->observe()V
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices$SettingsObserver;->access$200(Lcom/android/server/notification/ManagedServices$SettingsObserver;)V

    .line 156
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;)V
    .registers 11
    .param p1, "queryReplace"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;

    .prologue
    .line 211
    iget-boolean v5, p0, DEBUG:Z

    if-eqz v5, :cond_36

    iget-object v6, p0, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPackagesChanged queryReplace="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " pkgList="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p2, :cond_4f

    const/4 v5, 0x0

    :goto_1f
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mEnabledServicesPackageNames="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_36
    const/4 v0, 0x0

    .line 215
    .local v0, "anyServicesInvolved":Z
    if-eqz p2, :cond_54

    array-length v5, p2

    if-lez v5, :cond_54

    .line 216
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3f
    if-ge v2, v3, :cond_54

    aget-object v4, v1, v2

    .line 217
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 218
    const/4 v0, 0x1

    .line 216
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 211
    .end local v0    # "anyServicesInvolved":Z
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_4f
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1f

    .line 223
    .restart local v0    # "anyServicesInvolved":Z
    :cond_54
    if-eqz v0, :cond_5e

    .line 225
    if-nez p1, :cond_5b

    .line 226
    invoke-direct {p0}, disableNonexistentServices()V

    .line 229
    :cond_5b
    invoke-direct {p0}, rebindServices()V

    .line 231
    :cond_5e
    return-void
.end method

.method protected abstract onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 2
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 145
    return-void
.end method

.method public onThemeChanged()V
    .registers 4

    .prologue
    .line 625
    iget-object v0, p0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onThemeChanged mServicesBinding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 627
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 5
    .param p1, "user"    # I

    .prologue
    .line 234
    iget-boolean v0, p0, DEBUG:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitched u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_1d
    iget-object v0, p0, mLastSeenProfileIds:[I

    iget-object v1, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 236
    iget-boolean v0, p0, DEBUG:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "Current profile IDs didn\'t change, skipping rebindServices()."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_36
    :goto_36
    return-void

    .line 239
    :cond_37
    invoke-direct {p0}, rebindServices()V

    goto :goto_36
.end method

.method public registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    .prologue
    .line 262
    invoke-direct {p0, p1}, checkNotNull(Landroid/os/IInterface;)V

    .line 263
    invoke-direct {p0, p1, p2, p3}, registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 264
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_c

    .line 265
    invoke-virtual {p0, v0}, onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 267
    :cond_c
    return-void
.end method

.method public settingRestored(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;
    .param p4, "userid"    # I

    .prologue
    .line 192
    iget-boolean v0, p0, DEBUG:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored managed service setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ovalue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nvalue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_30
    iget-object v0, p0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 195
    if-eqz p1, :cond_51

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, mRestored:Landroid/util/ArraySet;

    .line 197
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    invoke-static {v1}, restoredSettingName(Lcom/android/server/notification/ManagedServices$Config;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 201
    invoke-direct {p0, p4}, disableNonexistentServices(I)V

    .line 204
    :cond_51
    return-void
.end method

.method public unregisterService(Landroid/os/IInterface;I)V
    .registers 3
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    .prologue
    .line 255
    invoke-direct {p0, p1}, checkNotNull(Landroid/os/IInterface;)V

    .line 258
    invoke-direct {p0, p1, p2}, unregisterServiceImpl(Landroid/os/IInterface;I)V

    .line 259
    return-void
.end method
