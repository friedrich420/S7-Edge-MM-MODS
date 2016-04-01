.class public Lcom/samsung/android/cocktailbar/CocktailBarManager;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$WakeUp;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$SysFs;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$States;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$WindowTypes;
    }
.end annotation


# static fields
.field public static final ACTION_COCKTAIL_BAR_COCKTAIL_UNINSTALLED:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_COCKTAIL_UNINSTALLED"

.field public static final ACTION_COCKTAIL_BAR_WAKE_UP_STATE:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_WAKE_UP_STATE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_COCKTAIL_DISABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

.field public static final ACTION_COCKTAIL_DROPED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DROPED"

.field public static final ACTION_COCKTAIL_ENABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

.field public static final ACTION_COCKTAIL_UPDATE:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

.field public static final ACTION_COCKTAIL_UPDATE_FEEDS:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE_FEEDS"

.field public static final ACTION_COCKTAIL_UPDATE_V2:Ljava/lang/String; = "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

.field public static final ACTION_COCKTAIL_VISIBILITY_CHANGED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x10000

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_CALLING:I = 0x10002

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_COMMAND:I = 0x10007

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_HEADSET:I = 0x10005

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_INCOMING_CALL:I = 0x10001

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_NOTIFICATION:I = 0x10004

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_SPEN:I = 0x10006
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_TICKER:I = 0x10003

.field public static final COCKTAIL_CATEGORY_GLOBAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_ALL:I = 0x9f

.field public static final COCKTAIL_DISPLAY_POLICY_GENERAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_INDEX_MODE:I = 0x10

.field public static final COCKTAIL_DISPLAY_POLICY_LOCKSCREEN:I = 0x2

.field public static final COCKTAIL_DISPLAY_POLICY_NOT_PROVISION:I = 0x80

.field public static final COCKTAIL_DISPLAY_POLICY_SCOVER:I = 0x4

.field public static final COCKTAIL_DISPLAY_POLICY_TABLE_MODE:I = 0x8

.field public static final COCKTAIL_VISIBILITY_HIDE:I = 0x2

.field public static final COCKTAIL_VISIBILITY_SHOW:I = 0x1

.field public static final EXTRA_COCKTAIL_BAR_WAKE_UP_STATE:Ljava/lang/String; = "cocktailbarWakeupState"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_COCKTAIL_ID:Ljava/lang/String; = "cocktailId"

.field public static final EXTRA_COCKTAIL_IDS:Ljava/lang/String; = "cocktailIds"

.field public static final EXTRA_COCKTAIL_PROVIDER:Ljava/lang/String; = "cocktailProvider"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_COCKTAIL_VISIBILITY:Ljava/lang/String; = "cocktailVisibility"

.field public static final EXTRA_DRAG_EVENT:Ljava/lang/String; = "com.samsung.android.intent.extra.DRAG_EVENT"

.field public static final INVALID_COCKTAIL_ID:I = 0x0

.field public static final META_DATA_COCKTAIL_PROVIDER:Ljava/lang/String; = "com.samsung.android.cocktail.provider"

.field private static final TAG:Ljava/lang/String; = "CocktailBarManager"

.field public static final TYPE_WAKEUP_GESTURE_PICKUP:I = 0x1

.field public static final TYPE_WAKEUP_GESTURE_RUB:I = 0x2


# instance fields
.field private final mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mCocktailBarSize:I

.field private final mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFeedsListnerDelegatesLock:Ljava/lang/Object;

.field private final mPackageName:Ljava/lang/String;

.field private mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

.field private mStateListnerDelegatesLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/ICocktailBarService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const/4 v0, -0x1

    iput v0, p0, mCocktailBarSize:I

    .line 450
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mStateListnerDelegatesLock:Ljava/lang/Object;

    .line 452
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mFeedsListnerDelegatesLock:Ljava/lang/Object;

    .line 454
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 456
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 475
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 476
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mPackageName:Ljava/lang/String;

    .line 477
    iput-object p2, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .line 478
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cocktailbar/CocktailBarManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .prologue
    .line 47
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 464
    const-string v0, "CocktailBarService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;
    .registers 3

    .prologue
    .line 505
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_10

    .line 506
    const-string v1, "CocktailBarService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 507
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    iput-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .line 509
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_10
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    return-object v1
.end method


# virtual methods
.method public activateCocktailBar()V
    .registers 4

    .prologue
    .line 1317
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1325
    :goto_6
    return-void

    .line 1321
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->activateCocktailBar()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1322
    :catch_d
    move-exception v0

    .line 1323
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "connection"    # Landroid/os/IBinder;

    .prologue
    .line 942
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 950
    :goto_6
    return-void

    .line 946
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 947
    :catch_d
    move-exception v0

    .line 948
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public closeCocktail(II)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "catetory"    # I

    .prologue
    .line 685
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 693
    :goto_6
    return-void

    .line 689
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->closeCocktail(Ljava/lang/String;II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 690
    :catch_f
    move-exception v0

    .line 691
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cocktailBarreboot()V
    .registers 4

    .prologue
    .line 1242
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1250
    :goto_6
    return-void

    .line 1246
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->cocktailBarreboot(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 1247
    :catch_f
    move-exception v0

    .line 1248
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cocktailBarshutdown()V
    .registers 4

    .prologue
    .line 1227
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1235
    :goto_6
    return-void

    .line 1231
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->cocktailBarshutdown(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 1232
    :catch_f
    move-exception v0

    .line 1233
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deactivateCocktailBar()V
    .registers 4

    .prologue
    .line 1332
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1340
    :goto_6
    return-void

    .line 1336
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->deactivateCocktailBar()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1337
    :catch_d
    move-exception v0

    .line 1338
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableCocktail(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 764
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 772
    :goto_6
    return-void

    .line 768
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 769
    :catch_f
    move-exception v0

    .line 770
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAllCocktailIds()[I
    .registers 4

    .prologue
    .line 779
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_8

    .line 780
    const/4 v1, 0x0

    .line 783
    :goto_7
    return-object v1

    :cond_8
    :try_start_8
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getAllCocktailIds()[I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v1

    goto :goto_7

    .line 784
    :catch_f
    move-exception v0

    .line 785
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktaiBarWakeUpState()Z
    .registers 4

    .prologue
    .line 1139
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1140
    const/4 v1, 0x0

    .line 1143
    :goto_7
    return v1

    :cond_8
    :try_start_8
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktaiBarWakeUpState()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    goto :goto_7

    .line 1144
    :catch_f
    move-exception v0

    .line 1145
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 5
    .param p1, "cocktailId"    # I

    .prologue
    .line 794
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_8

    .line 795
    const/4 v1, 0x0

    .line 798
    :goto_7
    return-object v1

    :cond_8
    :try_start_8
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v1

    goto :goto_7

    .line 799
    :catch_f
    move-exception v0

    .line 800
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailBarSize()I
    .registers 3

    .prologue
    .line 973
    iget v0, p0, mCocktailBarSize:I

    if-gez v0, :cond_13

    .line 974
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mCocktailBarSize:I

    .line 976
    :cond_13
    iget v0, p0, mCocktailBarSize:I

    return v0
.end method

.method public getCocktailBarVisibility()I
    .registers 4

    .prologue
    .line 1257
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1258
    const/4 v1, 0x2

    .line 1261
    :goto_7
    return v1

    :cond_8
    :try_start_8
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarVisibility()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    goto :goto_7

    .line 1262
    :catch_f
    move-exception v0

    .line 1263
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailBarWindowType()I
    .registers 4

    .prologue
    .line 1272
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1273
    const/4 v1, 0x0

    .line 1276
    :goto_7
    return v1

    :cond_8
    :try_start_8
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_7

    .line 1277
    :catch_11
    move-exception v0

    .line 1278
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailId(Landroid/content/ComponentName;)I
    .registers 5
    .param p1, "provider"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 494
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-eqz v1, :cond_8

    if-nez p1, :cond_a

    .line 495
    :cond_8
    const/4 v1, 0x0

    .line 498
    :goto_9
    return v1

    :cond_a
    :try_start_a
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailId(Ljava/lang/String;Landroid/content/ComponentName;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_13

    move-result v1

    goto :goto_9

    .line 499
    :catch_13
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .registers 6
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 517
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    if-eqz v2, :cond_9

    if-nez p1, :cond_f

    .line 518
    :cond_9
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 519
    .local v0, "cocktailIds":[I
    aput v3, v0, v3

    .line 523
    .end local v0    # "cocktailIds":[I
    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    iget-object v2, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_e

    .line 524
    :catch_18
    move-exception v1

    .line 525
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 485
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEnabledCocktailIds()[I
    .registers 4

    .prologue
    .line 749
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_8

    .line 750
    const/4 v1, 0x0

    .line 753
    :goto_7
    return-object v1

    :cond_8
    :try_start_8
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getEnabledCocktailIds()[I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v1

    goto :goto_7

    .line 754
    :catch_f
    move-exception v0

    .line 755
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowTransientBarCocktailBar()Z
    .registers 4

    .prologue
    .line 921
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_8

    .line 922
    const/4 v1, 0x0

    .line 925
    :goto_7
    return v1

    :cond_8
    :try_start_8
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isAllowTransientBarCocktailBar()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    goto :goto_7

    .line 926
    :catch_f
    move-exception v0

    .line 927
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBoundCocktailPackage(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageNamae"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 533
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-eqz v1, :cond_8

    if-nez p1, :cond_a

    .line 534
    :cond_8
    const/4 v1, 0x0

    .line 537
    :goto_9
    return v1

    :cond_a
    :try_start_a
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isBoundCocktailPackage(Ljava/lang/String;I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    goto :goto_9

    .line 538
    :catch_11
    move-exception v0

    .line 539
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isCocktailBarShifted()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1155
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabledCocktail(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 548
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-eqz v1, :cond_8

    if-nez p1, :cond_a

    .line 549
    :cond_8
    const/4 v1, 0x0

    .line 552
    :goto_9
    return v1

    :cond_a
    :try_start_a
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_13

    move-result v1

    goto :goto_9

    .line 553
    :catch_13
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isImmersiveMode()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1163
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_8

    .line 1174
    :cond_7
    :goto_7
    return v2

    .line 1167
    :cond_8
    :try_start_8
    iget-object v3, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getWindowType()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_13

    move-result v1

    .line 1168
    .local v1, "windowType":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 1169
    const/4 v2, 0x1

    goto :goto_7

    .line 1171
    .end local v1    # "windowType":I
    :catch_13
    move-exception v0

    .line 1172
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public notifyCocktailViewDataChanged(II)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 704
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 712
    :goto_6
    return-void

    .line 708
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 709
    :catch_f
    move-exception v0

    .line 710
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyCocktailVisibiltyChanged(II)V
    .registers 8
    .param p1, "cocktailId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 893
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 904
    :goto_6
    return-void

    .line 896
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 898
    .local v2, "identityToken":J
    :try_start_b
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailVisibiltyChanged(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_14
    .catchall {:try_start_b .. :try_end_10} :catchall_1d

    .line 902
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    .line 899
    :catch_14
    move-exception v0

    .line 900
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1d

    .line 902
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1d
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public notifyKeyguardState(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 871
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 879
    :goto_6
    return-void

    .line 875
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyKeyguardState(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 876
    :catch_d
    move-exception v0

    .line 877
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 638
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 646
    :goto_6
    return-void

    .line 642
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 643
    :catch_f
    move-exception v0

    .line 644
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public partiallyUpdateHelpView(ILandroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "helpViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 655
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 663
    :goto_6
    return-void

    .line 659
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 660
    :catch_f
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "client"    # Landroid/os/IBinder;
    .param p2, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1752
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1764
    :goto_6
    return-void

    .line 1755
    :cond_7
    if-eqz p2, :cond_b

    if-nez p1, :cond_14

    .line 1756
    :cond_b
    const-string v1, "CocktailBarManager"

    const-string/jumbo v2, "registerClient : name or client is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1760
    :cond_14
    :try_start_14
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_6

    .line 1761
    :catch_1a
    move-exception v0

    .line 1762
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6
.end method

.method public registerListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V
    .registers 11
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    .prologue
    .line 1424
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v6

    if-nez v6, :cond_7

    .line 1455
    :goto_6
    return-void

    .line 1427
    :cond_7
    if-nez p1, :cond_12

    .line 1428
    const-string v6, "CocktailBarManager"

    const-string/jumbo v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1431
    :cond_12
    iget-object v7, p0, mStateListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1432
    const/4 v3, 0x0

    .line 1433
    .local v3, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_16
    iget-object v6, p0, mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1434
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 1435
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .line 1436
    .local v5, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_5f

    move-result v6

    if-eqz v6, :cond_1c

    .line 1437
    move-object v3, v5

    move-object v4, v3

    .line 1441
    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .end local v5    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .local v4, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :goto_34
    if-nez v4, :cond_6f

    .line 1442
    :try_start_36
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    const/4 v6, 0x0

    invoke-direct {v3, p0, p1, v6}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;Landroid/os/Handler;)V
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_6c

    .line 1443
    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_3c
    iget-object v6, p0, mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    :goto_41
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_5f

    .line 1447
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v3, :cond_5d

    if-eqz v0, :cond_5d

    .line 1449
    :try_start_58
    iget-object v6, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6, v3, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5d} :catch_62
    .catchall {:try_start_58 .. :try_end_5d} :catchall_5f

    .line 1454
    :cond_5d
    :goto_5d
    :try_start_5d
    monitor-exit v7

    goto :goto_6

    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :catchall_5f
    move-exception v6

    :goto_60
    monitor-exit v7
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_5f

    throw v6

    .line 1450
    .restart local v0    # "cm":Landroid/content/ComponentName;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :catch_62
    move-exception v1

    .line 1451
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_63
    const-string v6, "CocktailBarManager"

    const-string/jumbo v8, "registerListener : RemoteException : "

    invoke-static {v6, v8, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_5f

    goto :goto_5d

    .line 1454
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :catchall_6c
    move-exception v6

    move-object v3, v4

    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    goto :goto_60

    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :cond_6f
    move-object v3, v4

    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    goto :goto_41

    :cond_71
    move-object v4, v3

    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    goto :goto_34
.end method

.method public registerOnFeedsUpdatedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;)V
    .registers 11
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    .prologue
    .line 1611
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v6

    if-nez v6, :cond_7

    .line 1642
    :goto_6
    return-void

    .line 1614
    :cond_7
    if-nez p1, :cond_12

    .line 1615
    const-string v6, "CocktailBarManager"

    const-string/jumbo v7, "registerOnFeedsUpdatedListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1618
    :cond_12
    iget-object v7, p0, mFeedsListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1619
    const/4 v3, 0x0

    .line 1620
    .local v3, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :try_start_16
    iget-object v6, p0, mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1621
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 1622
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;

    .line 1623
    .local v5, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_5f

    move-result v6

    if-eqz v6, :cond_1c

    .line 1624
    move-object v3, v5

    move-object v4, v3

    .line 1628
    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .end local v5    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .local v4, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :goto_34
    if-nez v4, :cond_6f

    .line 1629
    :try_start_36
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;

    const/4 v6, 0x0

    invoke-direct {v3, p0, p1, v6}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;Landroid/os/Handler;)V
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_6c

    .line 1630
    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :try_start_3c
    iget-object v6, p0, mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1632
    :goto_41
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_5f

    .line 1634
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v3, :cond_5d

    if-eqz v0, :cond_5d

    .line 1636
    :try_start_58
    iget-object v6, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6, v3, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerCocktailBarFeedsListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5d} :catch_62
    .catchall {:try_start_58 .. :try_end_5d} :catchall_5f

    .line 1641
    :cond_5d
    :goto_5d
    :try_start_5d
    monitor-exit v7

    goto :goto_6

    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :catchall_5f
    move-exception v6

    :goto_60
    monitor-exit v7
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_5f

    throw v6

    .line 1637
    .restart local v0    # "cm":Landroid/content/ComponentName;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :catch_62
    move-exception v1

    .line 1638
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_63
    const-string v6, "CocktailBarManager"

    const-string/jumbo v8, "registerOnFeedsUpdatedListener : RemoteException : "

    invoke-static {v6, v8, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_5f

    goto :goto_5d

    .line 1641
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :catchall_6c
    move-exception v6

    move-object v3, v4

    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    goto :goto_60

    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :cond_6f
    move-object v3, v4

    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    goto :goto_41

    :cond_71
    move-object v4, v3

    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    goto :goto_34
.end method

.method public removeCocktailUIService()V
    .registers 4

    .prologue
    .line 1212
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1220
    :goto_6
    return-void

    .line 1216
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->removeCocktailUIService()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1217
    :catch_d
    move-exception v0

    .line 1218
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToDisableCocktail(I)Z
    .registers 5
    .param p1, "cocktailId"    # I

    .prologue
    .line 824
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_8

    .line 825
    const/4 v1, 0x0

    .line 828
    :goto_7
    return v1

    :cond_8
    :try_start_8
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToDisableCocktail(I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    goto :goto_7

    .line 829
    :catch_f
    move-exception v0

    .line 830
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToDisableCocktailByCategory(I)Z
    .registers 5
    .param p1, "category"    # I

    .prologue
    .line 854
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_8

    .line 855
    const/4 v1, 0x0

    .line 858
    :goto_7
    return v1

    :cond_8
    :try_start_8
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToDisableCocktailByCategory(I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    goto :goto_7

    .line 859
    :catch_f
    move-exception v0

    .line 860
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToUpdateCocktail(I)Z
    .registers 5
    .param p1, "cocktailId"    # I

    .prologue
    .line 809
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_8

    .line 810
    const/4 v1, 0x0

    .line 813
    :goto_7
    return v1

    :cond_8
    :try_start_8
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktail(I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    goto :goto_7

    .line 814
    :catch_f
    move-exception v0

    .line 815
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToUpdateCocktailByCategory(I)Z
    .registers 5
    .param p1, "category"    # I

    .prologue
    .line 839
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_8

    .line 840
    const/4 v1, 0x0

    .line 843
    :goto_7
    return v1

    :cond_8
    :try_start_8
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktailByCategory(I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    goto :goto_7

    .line 844
    :catch_f
    move-exception v0

    .line 845
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendDragEvent(ILandroid/view/DragEvent;)V
    .registers 8
    .param p1, "cocktailId"    # I
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 907
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 918
    :goto_6
    return-void

    .line 910
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 912
    .local v2, "identityToken":J
    :try_start_b
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->sendDragEvent(ILandroid/view/DragEvent;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_14
    .catchall {:try_start_b .. :try_end_10} :catchall_1d

    .line 916
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    .line 913
    :catch_14
    move-exception v0

    .line 914
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1d

    .line 916
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1d
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extraData"    # Landroid/os/Bundle;

    .prologue
    .line 1197
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1205
    :goto_6
    return-void

    .line 1201
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1202
    :catch_d
    move-exception v0

    .line 1203
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCocktailBarStatus(ZZ)V
    .registers 6
    .param p1, "shift"    # Z
    .param p2, "transparent"    # Z

    .prologue
    .line 1377
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1385
    :goto_6
    return-void

    .line 1381
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarStatus(ZZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1382
    :catch_d
    move-exception v0

    .line 1383
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCocktailBarWakeUpState(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 1122
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1130
    :goto_6
    return-void

    .line 1126
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarWakeUpState(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1127
    :catch_d
    move-exception v0

    .line 1128
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDisableTickerView(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 882
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 890
    :goto_6
    return-void

    .line 886
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setDisableTickerView(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 887
    :catch_d
    move-exception v0

    .line 888
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setEnabledCocktailIds([I)V
    .registers 5
    .param p1, "cocktailIds"    # [I

    .prologue
    .line 734
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 742
    :goto_6
    return-void

    .line 738
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setEnabledCocktailIds([I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 739
    :catch_d
    move-exception v0

    .line 740
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showAndLockCocktailBar()V
    .registers 4

    .prologue
    .line 1287
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1295
    :goto_6
    return-void

    .line 1291
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->showAndLockCocktailBar()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1292
    :catch_d
    move-exception v0

    .line 1293
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showCocktail(I)V
    .registers 5
    .param p1, "cocktailId"    # I

    .prologue
    .line 670
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 678
    :goto_6
    return-void

    .line 674
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->showCocktail(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 675
    :catch_f
    move-exception v0

    .line 676
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public switchDefaultCocktail()V
    .registers 4

    .prologue
    .line 1182
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1190
    :goto_6
    return-void

    .line 1186
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->switchDefaultCocktail()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1187
    :catch_d
    move-exception v0

    .line 1188
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 962
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 970
    :goto_6
    return-void

    .line 966
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 967
    :catch_d
    move-exception v0

    .line 968
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unlockCocktailBar(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    .line 1302
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1310
    :goto_6
    return-void

    .line 1306
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unlockCocktailBar(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1307
    :catch_d
    move-exception v0

    .line 1308
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterClient(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "client"    # Landroid/os/IBinder;

    .prologue
    .line 1774
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1786
    :goto_6
    return-void

    .line 1777
    :cond_7
    if-nez p1, :cond_12

    .line 1778
    const-string v1, "CocktailBarManager"

    const-string/jumbo v2, "unregisterClient : client is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1782
    :cond_12
    :try_start_12
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterClient(Landroid/os/IBinder;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_6

    .line 1783
    :catch_18
    move-exception v0

    .line 1784
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6
.end method

.method public unregisterListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V
    .registers 9
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    .prologue
    .line 1464
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v4

    if-nez v4, :cond_7

    .line 1491
    :goto_6
    return-void

    .line 1467
    :cond_7
    if-nez p1, :cond_12

    .line 1468
    const-string v4, "CocktailBarManager"

    const-string/jumbo v5, "unregisterListener : listener is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1471
    :cond_12
    iget-object v5, p0, mStateListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1472
    const/4 v2, 0x0

    .line 1473
    .local v2, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_16
    iget-object v4, p0, mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1474
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .line 1475
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1476
    move-object v2, v3

    .line 1480
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :cond_33
    if-nez v2, :cond_42

    .line 1481
    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterListener : cannot find the listener"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    monitor-exit v5

    goto :goto_6

    .line 1490
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :catchall_3f
    move-exception v4

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_16 .. :try_end_41} :catchall_3f

    throw v4

    .line 1485
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :cond_42
    :try_start_42
    iget-object v4, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v4, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    .line 1486
    iget-object v4, p0, mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4c} :catch_4e
    .catchall {:try_start_42 .. :try_end_4c} :catchall_3f

    .line 1490
    :goto_4c
    :try_start_4c
    monitor-exit v5

    goto :goto_6

    .line 1487
    :catch_4e
    move-exception v0

    .line 1488
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterListener : RemoteException : "

    invoke-static {v4, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_3f

    goto :goto_4c
.end method

.method public unregisterOnFeedsUpdatedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;)V
    .registers 9
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    .prologue
    .line 1651
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v4

    if-nez v4, :cond_7

    .line 1678
    :goto_6
    return-void

    .line 1654
    :cond_7
    if-nez p1, :cond_12

    .line 1655
    const-string v4, "CocktailBarManager"

    const-string/jumbo v5, "unregisterOnFeedsUpdatedListener : listener is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1658
    :cond_12
    iget-object v5, p0, mFeedsListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1659
    const/4 v2, 0x0

    .line 1660
    .local v2, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :try_start_16
    iget-object v4, p0, mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1661
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;

    .line 1662
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1663
    move-object v2, v3

    .line 1667
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :cond_33
    if-nez v2, :cond_42

    .line 1668
    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterOnFeedsUpdatedListener : cannot find the listener"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    monitor-exit v5

    goto :goto_6

    .line 1677
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :catchall_3f
    move-exception v4

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_16 .. :try_end_41} :catchall_3f

    throw v4

    .line 1672
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :cond_42
    :try_start_42
    iget-object v4, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v4, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterCocktailBarFeedsListenerCallback(Landroid/os/IBinder;)V

    .line 1673
    iget-object v4, p0, mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4c} :catch_4e
    .catchall {:try_start_42 .. :try_end_4c} :catchall_3f

    .line 1677
    :goto_4c
    :try_start_4c
    monitor-exit v5

    goto :goto_6

    .line 1674
    :catch_4e
    move-exception v0

    .line 1675
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterOnFeedsUpdatedListener : RemoteException : "

    invoke-static {v4, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_3f

    goto :goto_4c
.end method

.method public updateCocktail(IIILandroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "contentInfo"    # Landroid/os/Bundle;

    .prologue
    .line 564
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_7

    .line 580
    :goto_6
    return-void

    .line 567
    :cond_7
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 569
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_11
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 576
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v3, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_39} :catch_3a

    goto :goto_6

    .line 577
    .end local v0    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_3a
    move-exception v2

    .line 578
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCocktail(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "helpView"    # Landroid/widget/RemoteViews;
    .param p6, "contentInfo"    # Landroid/os/Bundle;

    .prologue
    .line 588
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_7

    .line 605
    :goto_6
    return-void

    .line 591
    :cond_7
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 593
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_11
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p6}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 601
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v3, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_3d} :catch_3e

    goto :goto_6

    .line 602
    .end local v0    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_3e
    move-exception v2

    .line 603
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCocktail(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/content/ComponentName;)V
    .registers 13
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "helpView"    # Landroid/widget/RemoteViews;
    .param p6, "contentInfo"    # Landroid/os/Bundle;
    .param p7, "classInfo"    # Landroid/content/ComponentName;

    .prologue
    .line 613
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_7

    .line 631
    :goto_6
    return-void

    .line 616
    :cond_7
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 618
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_11
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p6}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p7}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setClassloader(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 627
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v3, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_41} :catch_42

    goto :goto_6

    .line 628
    .end local v0    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_42
    move-exception v2

    .line 629
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCocktailBarPosition(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 1392
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1400
    :goto_6
    return-void

    .line 1396
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarPosition(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1397
    :catch_d
    move-exception v0

    .line 1398
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCocktailBarStateFromSystem(I)V
    .registers 5
    .param p1, "windowType"    # I

    .prologue
    .line 1362
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1370
    :goto_6
    return-void

    .line 1366
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarStateFromSystem(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1367
    :catch_d
    move-exception v0

    .line 1368
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCocktailBarVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    .line 1347
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1355
    :goto_6
    return-void

    .line 1351
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarVisibility(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1352
    :catch_d
    move-exception v0

    .line 1353
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCocktailBarWindowType(I)V
    .registers 5
    .param p1, "windowType"    # I

    .prologue
    .line 1407
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1415
    :goto_6
    return-void

    .line 1411
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarWindowType(Ljava/lang/String;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_6

    .line 1412
    :catch_13
    move-exception v0

    .line 1413
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateFeeds(ILjava/util/List;)V
    .registers 6
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 715
    .local p2, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 727
    :goto_6
    return-void

    .line 718
    :cond_7
    if-nez p2, :cond_12

    .line 719
    const-string v1, "CocktailBarManager"

    const-string/jumbo v2, "updateFeeds : feedsInfoList is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 723
    :cond_12
    :try_start_12
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateFeeds(Ljava/lang/String;ILjava/util/List;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_6

    .line 724
    :catch_1a
    move-exception v0

    .line 725
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateLongpressGesture(Z)V
    .registers 5
    .param p1, "bEnable"    # Z

    .prologue
    .line 1035
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1043
    :goto_6
    return-void

    .line 1039
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateLongpressGesture(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1040
    :catch_d
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSysfsBarLength(I)V
    .registers 5
    .param p1, "barLength"    # I

    .prologue
    .line 1070
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1078
    :goto_6
    return-void

    .line 1074
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateSysfsBarLength(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1075
    :catch_d
    move-exception v0

    .line 1076
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSysfsDeadZone(I)V
    .registers 5
    .param p1, "deadzone"    # I

    .prologue
    .line 1052
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1060
    :goto_6
    return-void

    .line 1056
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateSysfsDeadZone(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1057
    :catch_d
    move-exception v0

    .line 1058
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSysfsGripDisable(Z)V
    .registers 5
    .param p1, "bDisable"    # Z

    .prologue
    .line 1087
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1095
    :goto_6
    return-void

    .line 1091
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateSysfsGripDisable(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1092
    :catch_d
    move-exception v0

    .line 1093
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateWakeupArea(I)V
    .registers 5
    .param p1, "area"    # I

    .prologue
    .line 1018
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1026
    :goto_6
    return-void

    .line 1022
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateWakeupArea(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1023
    :catch_d
    move-exception v0

    .line 1024
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateWakeupGesture(IZ)V
    .registers 6
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z

    .prologue
    .line 1001
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1009
    :goto_6
    return-void

    .line 1005
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateWakeupGesture(IZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1006
    :catch_d
    move-exception v0

    .line 1007
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public wakeupCocktailBar(ZII)V
    .registers 7
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 1105
    invoke-direct {p0}, getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1113
    :goto_6
    return-void

    .line 1109
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->wakeupCocktailBar(ZII)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 1110
    :catch_d
    move-exception v0

    .line 1111
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
