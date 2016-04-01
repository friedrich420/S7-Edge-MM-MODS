.class public Lcom/samsung/android/cocktailbar/CocktailHost;
.super Ljava/lang/Object;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;,
        Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;,
        Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;
    }
.end annotation


# static fields
.field static final HANDLE_COCKTAIL_CLOSE_CONTEXTUAL:I = 0x5

.field static final HANDLE_COCKTAIL_PARTIALLY_UPDATE:I = 0x2

.field static final HANDLE_COCKTAIL_REMOVE:I = 0x3

.field static final HANDLE_COCKTAIL_SEND_EXTRA_DATA:I = 0xc

.field static final HANDLE_COCKTAIL_SHOW:I = 0x4

.field static final HANDLE_COCKTAIL_SWITCH_DEFAULT:I = 0xa

.field static final HANDLE_COCKTAIL_TICKER_DISABLE:I = 0x9

.field static final HANDLE_COCKTAIL_UPDATE:I = 0x1

.field static final HANDLE_COCKTAIL_UPDATE_EXTRA:I = 0x8

.field static final HANDLE_COCKTAIL_UPDATE_TOOL_LAUNCHER:I = 0x7

.field static final HANDLE_COCKTAIL_VIEW_DATA_CHANGED:I = 0x6

.field static final HANDLE_NOTIFY_CHANGE_VISIBLE_EDGE_SERVICE:I = 0x66

.field static final HANDLE_NOTIFY_KEYGUARD_STATE:I = 0x64

.field static final HANDLE_NOTIFY_WAKEUP_STATE:I = 0x65

.field static sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

.field static final sServiceLock:Ljava/lang/Object;


# instance fields
.field mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

.field private final mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

.field private mContextOpPackageName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sServiceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I
    .param p3, "callbackListener"    # Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;ILcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I
    .param p3, "callbackListener"    # Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mContextOpPackageName:Ljava/lang/String;

    .line 302
    iput-object p3, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    .line 303
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;

    invoke-direct {v0, p0, p4}, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;-><init>(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 304
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    .line 305
    invoke-direct {p0, p2}, bindService(I)V

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbackListener"    # Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbackListener"    # Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mContextOpPackageName:Ljava/lang/String;

    .line 291
    iput-object p2, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    .line 292
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;-><init>(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 293
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, v0}, bindService(I)V

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cocktailbar/CocktailHost;ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/widget/RemoteViews;I)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/widget/RemoteViews;
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, notifyWakeUpState(III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, setDisableTickerView(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, changeVisibleEdgeService(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, removeCocktail(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, showCocktail(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, closeContextualCocktail(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, viewDataChanged(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/cocktailbar/CocktailHost;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, updateToolLauncher(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, notifyKeyguardState(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/cocktailbar/CocktailHost;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, switchDefaultCocktail(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, sendExtraDataToCocktailBar(ILandroid/os/Bundle;)V

    return-void
.end method

.method private bindService(I)V
    .registers 7
    .param p1, "category"    # I

    .prologue
    .line 309
    sget-object v2, sServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 310
    :try_start_3
    sget-object v1, sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_13

    .line 311
    const-string v1, "CocktailBarService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 312
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    sput-object v1, sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1e

    .line 315
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_13
    :try_start_13
    sget-object v1, sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v4, p0, mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_21
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    .line 319
    :goto_1c
    :try_start_1c
    monitor-exit v2

    .line 320
    return-void

    .line 319
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v1

    .line 316
    :catch_21
    move-exception v1

    goto :goto_1c
.end method

.method private changeVisibleEdgeService(II)V
    .registers 5
    .param p1, "visible"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    .line 410
    iget-object v1, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    if-ne p1, v0, :cond_9

    :goto_5
    invoke-interface {v1, v0, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onChangeVisibleEdgeService(ZI)V

    .line 411
    return-void

    .line 410
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private closeContextualCocktail(III)V
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "category"    # I
    .param p3, "userId"    # I

    .prologue
    .line 378
    iget-object v0, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onCloseContextualCocktail(III)V

    .line 379
    return-void
.end method

.method private notifyKeyguardState(II)V
    .registers 5
    .param p1, "enable"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    .line 390
    iget-object v1, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    if-ne p1, v0, :cond_9

    :goto_5
    invoke-interface {v1, v0, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onNotifyKeyguardState(ZI)V

    .line 391
    return-void

    .line 390
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private notifyWakeUpState(III)V
    .registers 6
    .param p1, "bEnable"    # I
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    const/4 v0, 0x1

    .line 394
    iget-object v1, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    if-ne p1, v0, :cond_9

    :goto_5
    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onNotifyWakeUpModeState(ZII)V

    .line 395
    return-void

    .line 394
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "userId"    # I

    .prologue
    .line 366
    iget-object v0, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onPartiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V

    .line 367
    return-void
.end method

.method private removeCocktail(II)V
    .registers 4
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 370
    iget-object v0, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onRemoveCocktail(II)V

    .line 371
    return-void
.end method

.method private sendExtraDataToCocktailBar(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "extraData"    # Landroid/os/Bundle;

    .prologue
    .line 402
    iget-object v0, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSendExtraDataToCocktailBar(Landroid/os/Bundle;I)V

    .line 403
    return-void
.end method

.method private setDisableTickerView(II)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "userId"    # I

    .prologue
    .line 406
    iget-object v0, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSetDisableTickerView(II)V

    .line 407
    return-void
.end method

.method private showCocktail(II)V
    .registers 4
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 374
    iget-object v0, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onShowCocktail(II)V

    .line 375
    return-void
.end method

.method private switchDefaultCocktail(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 398
    iget-object v0, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSwitchDefaultCocktail(I)V

    .line 399
    return-void
.end method

.method private updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3, "userId"    # I

    .prologue
    .line 362
    iget-object v0, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onUpdateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 363
    return-void
.end method

.method private updateToolLauncher(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 386
    iget-object v0, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onUpdateToolLauncher(I)V

    .line 387
    return-void
.end method

.method private viewDataChanged(III)V
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 382
    iget-object v0, p0, mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onViewDataChanged(III)V

    .line 383
    return-void
.end method


# virtual methods
.method public startListening()V
    .registers 6

    .prologue
    .line 329
    :try_start_0
    sget-object v1, sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v3, p0, mContextOpPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 333
    return-void

    .line 330
    :catch_b
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startListening(I)V
    .registers 6
    .param p1, "category"    # I

    .prologue
    .line 342
    :try_start_0
    sget-object v1, sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v3, p0, mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 346
    return-void

    .line 343
    :catch_a
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopListening()V
    .registers 4

    .prologue
    .line 355
    :try_start_0
    sget-object v1, sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->stopListening(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 359
    return-void

    .line 356
    :catch_8
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
