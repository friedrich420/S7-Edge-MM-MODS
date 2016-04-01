.class public Lcom/android/server/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TextServicesManagerService$TextServicesSettings;,
        Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;,
        Lcom/android/server/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;,
        Lcom/android/server/TextServicesManagerService$TextServicesMonitor;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static SAMSUNGKEYPAD_PACKAGE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

.field private final mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

.field private final mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const-class v0, Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 87
    const-string v0, "com.sec.android.inputmethod"

    sput-object v0, SAMSUNGKEYPAD_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    .line 81
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, mSpellCheckerMap:Ljava/util/HashMap;

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mSpellCheckerList:Ljava/util/ArrayList;

    .line 84
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 96
    const/4 v3, 0x0

    iput-boolean v3, p0, mSystemReady:Z

    .line 97
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;-><init>(Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    const/4 v2, 0x0

    .line 106
    .local v2, "userId":I
    :try_start_38
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/TextServicesManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/TextServicesManagerService$1;-><init>(Lcom/android/server/TextServicesManagerService;)V

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 130
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_4e} :catch_6a

    .line 134
    :goto_4e
    new-instance v3, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    invoke-direct {v3, p0, v5}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$1;)V

    iput-object v3, p0, mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    .line 135
    iget-object v3, p0, mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 136
    new-instance v3, Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;-><init>(Landroid/content/ContentResolver;I)V

    iput-object v3, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    .line 139
    invoke-direct {p0, v2}, switchUserLocked(I)V

    .line 140
    return-void

    .line 131
    :catch_6a
    move-exception v1

    .line 132
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e
.end method

.method static synthetic access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .prologue
    .line 74
    iget-object v0, p0, mSpellCheckerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TextServicesManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, switchUserLocked(I)V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 74
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .prologue
    .line 74
    iget-object v0, p0, mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .prologue
    .line 74
    iget-object v0, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .prologue
    .line 74
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/TextServicesManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .prologue
    .line 74
    iget-object v0, p0, mSpellCheckerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V
    .registers 4
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/HashMap;
    .param p3, "x3"    # Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    .prologue
    .line 74
    invoke-static {p0, p1, p2, p3}, buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 74
    sget-object v0, SAMSUNGKEYPAD_PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, findAvailSpellCheckerLocked(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    return-void
.end method

.method private bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 368
    if-eqz p1, :cond_4

    if-nez p2, :cond_28

    .line 369
    :cond_4
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v0, 0x0

    .line 372
    :goto_27
    return v0

    :cond_28
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    goto :goto_27
.end method

.method private static buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;",
            "Lcom/android/server/TextServicesManagerService$TextServicesSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 252
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 254
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.service.textservice.SpellCheckerService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x80

    invoke-virtual {p3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v11

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 257
    .local v7, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 258
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v0, :cond_cd

    .line 259
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 260
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 261
    .local v8, "si":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .local v1, "compName":Landroid/content/ComponentName;
    const-string v9, "android.permission.BIND_TEXT_SERVICE"

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_64

    .line 263
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping text service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": it does not require the permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "android.permission.BIND_TEXT_SERVICE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 270
    :cond_64
    :try_start_64
    new-instance v6, Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {v6, p0, v5}, Landroid/view/textservice/SpellCheckerInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 271
    .local v6, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v9

    if-gtz v9, :cond_a8

    .line 272
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping text service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": it does not contain subtypes."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_8d} :catch_8e
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_8d} :catch_b3

    goto :goto_61

    .line 278
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catch_8e
    move-exception v2

    .line 279
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load the spell checker "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    .line 276
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_a8
    :try_start_a8
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a8 .. :try_end_b2} :catch_8e
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b2} :catch_b3

    goto :goto_61

    .line 280
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catch_b3
    move-exception v2

    .line 281
    .local v2, "e":Ljava/io/IOException;
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load the spell checker "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    .line 287
    .end local v1    # "compName":Landroid/content/ComponentName;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "si":Landroid/content/pm/ServiceInfo;
    :cond_cd
    return-void
.end method

.method private calledFromValidUser()Z
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 294
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 295
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 313
    .local v5, "userId":I
    iget-object v8, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v8}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v8

    const/16 v9, 0x64

    if-lt v8, v9, :cond_16

    if-eqz v5, :cond_30

    :cond_16
    iget-object v8, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v8}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v8

    invoke-direct {p0, v8}, isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_32

    invoke-direct {p0, v5}, isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_32

    iget-object v8, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v8}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v8

    if-eq v5, v8, :cond_32

    :cond_30
    move v6, v7

    .line 355
    :cond_31
    :goto_31
    return v6

    .line 320
    :cond_32
    const/16 v8, 0x3e8

    if-eq v4, v8, :cond_31

    iget-object v8, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v8}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v8

    if-eq v5, v8, :cond_31

    .line 328
    iget-object v8, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v8, v5}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isCurrentProfile(I)Z

    move-result v0

    .line 332
    .local v0, "isCurrentProfile":Z
    iget-object v8, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v8, v5}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isCurrentProfile(I)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 333
    invoke-direct {p0}, getCurrentSpellCheckerWithoutVerification()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 334
    .local v3, "spellCheckerInfo":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v3, :cond_61

    .line 335
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 336
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_63

    move v1, v6

    .line 342
    .local v1, "isSystemSpellChecker":Z
    :goto_5f
    if-nez v1, :cond_31

    .end local v1    # "isSystemSpellChecker":Z
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v3    # "spellCheckerInfo":Landroid/view/textservice/SpellCheckerInfo;
    :cond_61
    move v6, v7

    .line 355
    goto :goto_31

    .restart local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v3    # "spellCheckerInfo":Landroid/view/textservice/SpellCheckerInfo;
    :cond_63
    move v1, v7

    .line 336
    goto :goto_5f
.end method

.method private findAvailSpellCheckerLocked(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 19
    .param p1, "prefPackage"    # Ljava/lang/String;

    .prologue
    .line 384
    move-object/from16 v0, p0

    iget-object v15, v0, mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 385
    .local v7, "spellCheckersCount":I
    if-nez v7, :cond_14

    .line 386
    sget-object v15, TAG:Ljava/lang/String;

    const-string/jumbo v16, "no available spell checker services found"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v6, 0x0

    .line 435
    :cond_13
    :goto_13
    return-object v6

    .line 389
    :cond_14
    if-eqz p1, :cond_32

    .line 390
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v7, :cond_32

    .line 391
    move-object/from16 v0, p0

    iget-object v15, v0, mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textservice/SpellCheckerInfo;

    .line 392
    .local v6, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 404
    .end local v1    # "i":I
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_32
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v14, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 405
    .local v14, "systemLocal":Ljava/util/Locale;
    invoke-static {v14}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;

    move-result-object v13

    .line 411
    .local v13, "suitableLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 412
    .local v4, "localeCount":I
    const/4 v5, 0x0

    .local v5, "localeIndex":I
    :goto_49
    if-ge v5, v4, :cond_82

    .line 413
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 414
    .local v3, "locale":Ljava/util/Locale;
    const/4 v8, 0x0

    .local v8, "spellCheckersIndex":I
    :goto_52
    if-ge v8, v7, :cond_7f

    .line 416
    move-object/from16 v0, p0

    iget-object v15, v0, mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/SpellCheckerInfo;

    .line 417
    .local v2, "info":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v10

    .line 418
    .local v10, "subtypeCount":I
    const/4 v11, 0x0

    .local v11, "subtypeIndex":I
    :goto_63
    if-ge v11, v10, :cond_7c

    .line 419
    invoke-virtual {v2, v11}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v9

    .line 420
    .local v9, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v12

    .line 422
    .local v12, "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v3, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_79

    move-object v6, v2

    .line 426
    goto :goto_13

    .line 418
    :cond_79
    add-int/lit8 v11, v11, 0x1

    goto :goto_63

    .line 415
    .end local v9    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v12    # "subtypeLocale":Ljava/util/Locale;
    :cond_7c
    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    .line 412
    .end local v2    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v10    # "subtypeCount":I
    .end local v11    # "subtypeIndex":I
    :cond_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 432
    .end local v3    # "locale":Ljava/util/Locale;
    .end local v8    # "spellCheckersIndex":I
    :cond_82
    const/4 v15, 0x1

    if-le v7, v15, :cond_8d

    .line 433
    sget-object v15, TAG:Ljava/lang/String;

    const-string/jumbo v16, "more than one spell checker service found, picking first"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_8d
    move-object/from16 v0, p0

    iget-object v15, v0, mSpellCheckerList:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/textservice/SpellCheckerInfo;

    move-object v6, v15

    goto/16 :goto_13
.end method

.method private getCurrentSpellCheckerWithoutVerification()Landroid/view/textservice/SpellCheckerInfo;
    .registers 4

    .prologue
    .line 450
    iget-object v2, p0, mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 451
    :try_start_3
    iget-object v1, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getSelectedSpellChecker()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "curSpellCheckerId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 456
    const/4 v1, 0x0

    monitor-exit v2

    .line 458
    :goto_11
    return-object v1

    :cond_12
    iget-object v1, p0, mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;

    monitor-exit v2

    goto :goto_11

    .line 459
    .end local v0    # "curSpellCheckerId":Ljava/lang/String;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private static getStackTrace()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1156
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_5
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_b} :catch_b

    .line 1157
    :catch_b
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 1160
    .local v1, "frames":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_11
    array-length v4, v1

    if-ge v2, v4, :cond_33

    .line 1161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1164
    :cond_33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private isKnoxId(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 359
    const/16 v0, 0x64

    if-lt p1, v0, :cond_a

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_a

    .line 361
    const/4 v0, 0x1

    .line 363
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isSpellCheckerEnabledLocked()Z
    .registers 5

    .prologue
    .line 797
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 799
    .local v0, "ident":J
    :try_start_4
    iget-object v3, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isSpellCheckerEnabled()Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result v2

    .line 805
    .local v2, "retval":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v2    # "retval":Z
    :catchall_e
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setCurrentSpellCheckerLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "sciId"    # Ljava/lang/String;

    .prologue
    .line 749
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 762
    :cond_e
    :goto_e
    return-void

    .line 750
    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 751
    .local v0, "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 755
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 757
    .local v2, "ident":J
    :try_start_24
    iget-object v1, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putSelectedSpellChecker(Ljava/lang/String;)V

    .line 758
    const/4 v1, 0x0

    invoke-direct {p0, v1}, setCurrentSpellCheckerSubtypeLocked(I)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_31

    .line 760
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    :catchall_31
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private setCurrentSpellCheckerSubtypeLocked(I)V
    .registers 8
    .param p1, "hashCode"    # I

    .prologue
    .line 768
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 769
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    const/4 v4, 0x0

    .line 770
    .local v4, "tempHashCode":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v5

    if-ge v0, v5, :cond_1a

    .line 771
    invoke-virtual {v1, v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v5

    if-ne v5, p1, :cond_27

    .line 772
    move v4, p1

    .line 776
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 778
    .local v2, "ident":J
    :try_start_1e
    iget-object v5, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putSelectedSpellCheckerSubtype(I)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_2a

    .line 780
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 782
    return-void

    .line 770
    .end local v2    # "ident":J
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 780
    .restart local v2    # "ident":J
    :catchall_2a
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private setSpellCheckerEnabledLocked(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 790
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->setSpellCheckerEnabled(Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 792
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 794
    return-void

    .line 792
    :catchall_d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    .registers 18
    .param p1, "info"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p5, "uid"    # I
    .param p6, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 638
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 639
    .local v9, "sciId":Ljava/lang/String;
    new-instance v3, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-object/from16 v0, p6

    invoke-direct {v3, p0, v9, p2, v0}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 641
    .local v3, "connection":Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.service.textservice.SpellCheckerService"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .local v10, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 646
    const v2, 0x2000001

    invoke-direct {p0, v10, v3, v2}, bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 648
    sget-object v2, TAG:Ljava/lang/String;

    const-string v4, "Failed to get a spell checker service."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :goto_29
    return-void

    .line 651
    :cond_2a
    new-instance v1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-object v2, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V

    .line 653
    .local v1, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    iget-object v2, p0, mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29
.end method

.method private switchUserLocked(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 165
    iget-object v1, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->setCurrentUserId(I)V

    .line 166
    invoke-virtual {p0}, updateCurrentProfileIds()V

    .line 167
    invoke-direct {p0}, unbindServiceLocked()V

    .line 168
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mSpellCheckerList:Ljava/util/ArrayList;

    iget-object v3, p0, mSpellCheckerMap:Ljava/util/HashMap;

    iget-object v4, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-static {v1, v2, v3, v4}, buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    .line 169
    invoke-virtual {p0, v5}, getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 170
    .local v0, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v0, :cond_2a

    .line 171
    invoke-direct {p0, v5}, findAvailSpellCheckerLocked(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_2a

    .line 176
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    .line 179
    :cond_2a
    return-void
.end method

.method private unbindServiceLocked()V
    .registers 4

    .prologue
    .line 377
    iget-object v2, p0, mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 378
    .local v1, "scbg":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    goto :goto_a

    .line 380
    .end local v1    # "scbg":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    :cond_1a
    iget-object v2, p0, mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 381
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 811
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_33

    .line 814
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump TextServicesManagerService from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    :goto_32
    return-void

    .line 820
    :cond_33
    iget-object v11, p0, mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 821
    :try_start_36
    const-string v10, "Current Text Services Manager state:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    const-string v10, "  Spell Checker Map:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    iget-object v10, p0, mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_da

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 824
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/textservice/SpellCheckerInfo;

    .line 826
    .local v7, "info":Landroid/view/textservice/SpellCheckerInfo;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "id="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "comp="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v1

    .line 830
    .local v1, "NS":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9b
    if-ge v5, v1, :cond_4a

    .line 831
    invoke-virtual {v7, v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v9

    .line 832
    .local v9, "st":Landroid/view/textservice/SpellCheckerSubtype;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "Subtype #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "locale="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "extraValue="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    add-int/lit8 v5, v5, 0x1

    goto :goto_9b

    .line 838
    .end local v1    # "NS":I
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    .end local v5    # "i":I
    .end local v7    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v9    # "st":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_da
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    const-string v10, "  Spell Checker Bind Groups:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    iget-object v10, p0, mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_ee
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1cd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 842
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 843
    .local v4, "grp":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "mInternalConnection="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$1100(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 847
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "mSpellChecker="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 848
    iget-object v10, v4, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 849
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "mBound="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v10, v4, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Z)V

    .line 850
    const-string v10, " mConnected="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v10, v4, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Z)V

    .line 851
    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$1200(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 852
    .local v0, "NL":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_160
    if-ge v5, v0, :cond_ee

    .line 853
    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$1200(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    .line 854
    .local v8, "listener":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "Listener #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "mTsListener="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 856
    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 857
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "mScListener="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 858
    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 859
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "mGroup="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 860
    # getter for: Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-static {v8}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->access$1300(Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 861
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "mScLocale="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 862
    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 863
    const-string v10, " mUid="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mUid:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 852
    add-int/lit8 v5, v5, 0x1

    goto :goto_160

    .line 866
    .end local v0    # "NL":I
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v4    # "grp":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v5    # "i":I
    .end local v8    # "listener":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_1cd
    monitor-exit v11

    goto/16 :goto_32

    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_1d0
    move-exception v10

    monitor-exit v11
    :try_end_1d2
    .catchall {:try_start_36 .. :try_end_1d2} :catchall_1d0

    throw v10
.end method

.method public finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 9
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .prologue
    .line 673
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_7

    .line 692
    :goto_6
    return-void

    .line 679
    :cond_7
    iget-object v6, p0, mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 680
    :try_start_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v3, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    iget-object v5, p0, mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 683
    .local v0, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v0, :cond_19

    .line 685
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 691
    .end local v0    # "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    :catchall_2b
    move-exception v5

    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2b

    throw v5

    .line 687
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    :cond_2e
    :try_start_2e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 688
    .local v4, "removeSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    if-ge v1, v4, :cond_41

    .line 689
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v5, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 688
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 691
    :cond_41
    monitor-exit v6
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_2b

    goto :goto_6
.end method

.method public getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 3
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 443
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 444
    const/4 v0, 0x0

    .line 446
    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0}, getCurrentSpellCheckerWithoutVerification()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    goto :goto_7
.end method

.method public getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
    .registers 18
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "allowImplicitlySelectedSubtype"    # Z

    .prologue
    .line 468
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v12

    if-nez v12, :cond_8

    .line 469
    const/4 v8, 0x0

    .line 547
    :goto_7
    return-object v8

    .line 471
    :cond_8
    const/4 v11, 0x0

    .line 472
    .local v11, "subtypeHashCodeStr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 473
    .local v7, "sci":Landroid/view/textservice/SpellCheckerInfo;
    const/4 v10, 0x0

    .line 474
    .local v10, "subTypeCount":I
    iget-object v13, p0, mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v13

    .line 475
    :try_start_e
    iget-object v12, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v12}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getSelectedSpellCheckerSubtype()Ljava/lang/String;

    move-result-object v11

    .line 479
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v7

    .line 480
    if-eqz v7, :cond_1f

    .line 481
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v10

    .line 483
    :cond_1f
    monitor-exit v13

    .line 484
    if-eqz v7, :cond_24

    if-nez v10, :cond_29

    .line 488
    :cond_24
    const/4 v8, 0x0

    goto :goto_7

    .line 483
    :catchall_26
    move-exception v12

    monitor-exit v13
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_26

    throw v12

    .line 491
    :cond_29
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3d

    .line 492
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 496
    .local v3, "hashCode":I
    :goto_37
    if-nez v3, :cond_3f

    if-nez p2, :cond_3f

    .line 497
    const/4 v8, 0x0

    goto :goto_7

    .line 494
    .end local v3    # "hashCode":I
    :cond_3d
    const/4 v3, 0x0

    .restart local v3    # "hashCode":I
    goto :goto_37

    .line 499
    :cond_3f
    const/4 v1, 0x0

    .line 500
    .local v1, "candidateLocale":Ljava/lang/String;
    if-nez v3, :cond_72

    .line 502
    iget-object v12, p0, mContext:Landroid/content/Context;

    const-string/jumbo v13, "input_method"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 504
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_60

    .line 505
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 507
    .local v2, "currentInputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v2, :cond_60

    .line 508
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    .line 509
    .local v6, "localeString":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_60

    .line 511
    move-object v1, v6

    .line 515
    .end local v2    # "currentInputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "localeString":Ljava/lang/String;
    :cond_60
    if-nez v1, :cond_72

    .line 517
    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget-object v12, v12, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    .end local v5    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_72
    iget-object v13, p0, mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v13

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "candidate":Landroid/view/textservice/SpellCheckerSubtype;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_77
    if-ge v4, v10, :cond_b2

    .line 523
    :try_start_79
    invoke-virtual {v7, v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v8

    .line 524
    .local v8, "scs":Landroid/view/textservice/SpellCheckerSubtype;
    if-nez v3, :cond_a9

    .line 525
    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v9

    .line 526
    .local v9, "scsLocale":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8f

    .line 527
    monitor-exit v13

    goto/16 :goto_7

    .line 548
    .end local v8    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v9    # "scsLocale":Ljava/lang/String;
    :catchall_8c
    move-exception v12

    monitor-exit v13
    :try_end_8e
    .catchall {:try_start_79 .. :try_end_8e} :catchall_8c

    throw v12

    .line 528
    .restart local v8    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    .restart local v9    # "scsLocale":Ljava/lang/String;
    :cond_8f
    if-nez v0, :cond_a6

    .line 529
    :try_start_91
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v14, 0x2

    if-lt v12, v14, :cond_a6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v14, 0x2

    if-lt v12, v14, :cond_a6

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a6

    .line 532
    move-object v0, v8

    .line 522
    .end local v9    # "scsLocale":Ljava/lang/String;
    :cond_a6
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 535
    :cond_a9
    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v12

    if-ne v12, v3, :cond_a6

    .line 541
    monitor-exit v13

    goto/16 :goto_7

    .line 547
    .end local v8    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_b2
    monitor-exit v13
    :try_end_b3
    .catchall {:try_start_91 .. :try_end_b3} :catchall_8c

    move-object v8, v0

    goto/16 :goto_7
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    .prologue
    .line 659
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 660
    const/4 v0, 0x0

    .line 668
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, mSpellCheckerList:Ljava/util/ArrayList;

    iget-object v1, p0, mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/textservice/SpellCheckerInfo;

    goto :goto_7
.end method

.method public getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .registers 27
    .param p1, "sciId"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 555
    invoke-direct/range {p0 .. p0}, calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_7

    .line 619
    :cond_6
    :goto_6
    return-void

    .line 558
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, mSystemReady:Z

    if-eqz v2, :cond_6

    .line 561
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    if-eqz p3, :cond_17

    if-nez p4, :cond_20

    .line 562
    :cond_17
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "getSpellCheckerService: Invalid input."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 565
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, mSpellCheckerMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 566
    :try_start_27
    move-object/from16 v0, p0

    iget-object v2, v0, mSpellCheckerMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 567
    monitor-exit v20

    goto :goto_6

    .line 618
    :catchall_35
    move-exception v2

    monitor-exit v20
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_35

    throw v2

    .line 569
    :cond_38
    :try_start_38
    move-object/from16 v0, p0

    iget-object v2, v0, mSpellCheckerMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/textservice/SpellCheckerInfo;

    .line 570
    .local v8, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 571
    .local v6, "uid":I
    move-object/from16 v0, p0

    iget-object v2, v0, mSpellCheckerBindGroups:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, mSpellCheckerBindGroups:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 573
    .local v14, "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v14, :cond_92

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, mSpellCheckerBindGroups:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->addListener(Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    move-result-object v18

    .line 577
    .local v18, "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    if-nez v18, :cond_7e

    .line 581
    monitor-exit v20

    goto :goto_6

    .line 583
    :cond_7e
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    if-nez v2, :cond_aa

    const/4 v2, 0x1

    :goto_83
    iget-boolean v3, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    and-int/2addr v2, v3

    if-eqz v2, :cond_ac

    .line 584
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "The state of the spell checker bind group is illegal."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    .line 611
    .end local v14    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v18    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_92
    :goto_92
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_95
    .catchall {:try_start_38 .. :try_end_95} :catchall_35

    move-result-wide v16

    .local v16, "ident":J
    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move v12, v6

    move-object/from16 v13, p5

    .line 613
    :try_start_a1
    invoke-direct/range {v7 .. v13}, startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_ed

    .line 616
    :try_start_a4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 618
    monitor-exit v20

    goto/16 :goto_6

    .line 583
    .end local v16    # "ident":J
    .restart local v14    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .restart local v18    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_aa
    const/4 v2, 0x0

    goto :goto_83

    .line 586
    :cond_ac
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;
    :try_end_ae
    .catchall {:try_start_a4 .. :try_end_ae} :catchall_35

    if-eqz v2, :cond_92

    .line 592
    :try_start_b0
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-object/from16 v0, p5

    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)Lcom/android/internal/textservice/ISpellCheckerSession;

    move-result-object v19

    .line 595
    .local v19, "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    if-eqz v19, :cond_cc

    .line 596
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_c9} :catch_d0
    .catchall {:try_start_b0 .. :try_end_c9} :catchall_35

    .line 597
    :try_start_c9
    monitor-exit v20
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_35

    goto/16 :goto_6

    .line 602
    :cond_cc
    :try_start_cc
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_cf} :catch_d0
    .catchall {:try_start_cc .. :try_end_cf} :catchall_35

    goto :goto_92

    .line 604
    .end local v19    # "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    :catch_d0
    move-exception v15

    .line 605
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_d1
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getting spell checker session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    goto :goto_92

    .line 616
    .end local v14    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v18    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v16    # "ident":J
    :catchall_ed
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_f2
    .catchall {:try_start_d1 .. :try_end_f2} :catchall_35
.end method

.method public isSpellCheckerEnabled()Z
    .registers 3

    .prologue
    .line 624
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 625
    const/4 v0, 0x0

    .line 628
    :goto_7
    return v0

    .line 627
    :cond_8
    iget-object v1, p0, mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 628
    :try_start_b
    invoke-direct {p0}, isSpellCheckerEnabledLocked()Z

    move-result v0

    monitor-exit v1

    goto :goto_7

    .line 629
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v0
.end method

.method public setCurrentSpellChecker(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "sciId"    # Ljava/lang/String;

    .prologue
    .line 696
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 709
    :goto_6
    return-void

    .line 699
    :cond_7
    iget-object v1, p0, mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 700
    :try_start_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    .line 703
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v0

    .line 707
    :cond_1f
    :try_start_1f
    invoke-direct {p0, p2}, setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    .line 708
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    goto :goto_6
.end method

.method public setCurrentSpellCheckerSubtype(Ljava/lang/String;I)V
    .registers 6
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    .line 713
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 726
    :goto_6
    return-void

    .line 716
    :cond_7
    iget-object v1, p0, mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 717
    :try_start_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    .line 720
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v0

    .line 724
    :cond_1f
    :try_start_1f
    invoke-direct {p0, p2}, setCurrentSpellCheckerSubtypeLocked(I)V

    .line 725
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    goto :goto_6
.end method

.method public setSpellCheckerEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 730
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 743
    :goto_6
    return-void

    .line 733
    :cond_7
    iget-object v1, p0, mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 734
    :try_start_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    .line 737
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v0

    .line 741
    :cond_1f
    :try_start_1f
    invoke-direct {p0, p1}, setSpellCheckerEnabledLocked(Z)V

    .line 742
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    goto :goto_6
.end method

.method public switchUserLockedForKnox(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 146
    .local v0, "identity":J
    iget-object v3, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->setCurrentUserId(I)V

    .line 147
    invoke-virtual {p0}, updateCurrentProfileIds()V

    .line 148
    invoke-direct {p0}, unbindServiceLocked()V

    .line 149
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mSpellCheckerList:Ljava/util/ArrayList;

    iget-object v5, p0, mSpellCheckerMap:Ljava/util/HashMap;

    iget-object v6, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-static {v3, v4, v5, v6}, buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    .line 150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    invoke-virtual {p0, v7}, getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    .line 152
    .local v2, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v2, :cond_31

    .line 153
    invoke-direct {p0, v7}, findAvailSpellCheckerLocked(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    .line 154
    if-eqz v2, :cond_31

    .line 158
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    .line 161
    :cond_31
    return-void
.end method

.method public systemRunning()V
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, mSystemReady:Z

    if-nez v0, :cond_7

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, mSystemReady:Z

    .line 93
    :cond_7
    return-void
.end method

.method updateCurrentProfileIds()V
    .registers 6

    .prologue
    .line 182
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iget-object v4, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v4}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 184
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [I

    .line 185
    .local v0, "currentProfileIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v3, v0

    if-ge v1, v3, :cond_27

    .line 186
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v0, v1

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 188
    :cond_27
    iget-object v3, p0, mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v3, v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->setCurrentProfileIds([I)V

    .line 189
    return-void
.end method
