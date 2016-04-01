.class public Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;
.super Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.source "OverlayCocktailBarStatePolicy.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 13
    const-class v1, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, TAG:Ljava/lang/String;

    .line 15
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V

    .line 19
    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->dump()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public getBackgroundType()I
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public handleChangeVisibility(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 103
    return-void
.end method

.method public handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 89
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_c

    .line 90
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleNotifyCurrentStateToBinder"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_c
    iget-object v1, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 93
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 94
    const/16 v1, 0x4d

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 98
    iget-object v1, p0, mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, p1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarStateToBinder(Landroid/os/IBinder;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 99
    return-void
.end method

.method public handleNotifyState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 85
    return-void
.end method

.method public handleRefreshState()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method public handleUpdateActivate(Z)V
    .registers 4
    .param p1, "activate"    # Z

    .prologue
    .line 61
    iget-object v1, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eq v1, p1, :cond_1c

    .line 62
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v1, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .line 63
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iput-boolean p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 64
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 65
    iget-object v1, p0, mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 67
    .end local v0    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_1c
    return-void
.end method

.method public handleUpdateCocktailBarWindowType(ILjava/lang/String;)V
    .registers 5
    .param p1, "windowType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v1, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .line 72
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iput p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 73
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 74
    iget-object v1, p0, mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarStateExceptCallingPackage(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Ljava/lang/String;)Z

    .line 75
    return-void
.end method

.method public handleUpdatePosition(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 42
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_2b

    .line 43
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdatePosition: mPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_2b
    iget-object v1, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    if-eq v1, p1, :cond_47

    .line 46
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v1, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .line 47
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iput p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 48
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 49
    iget-object v1, p0, mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 51
    .end local v0    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_47
    return-void
.end method

.method public handleUpdateState(ZZ)V
    .registers 3
    .param p1, "shift"    # Z
    .param p2, "dimBackground"    # Z

    .prologue
    .line 56
    return-void
.end method

.method public handleUpdateStateFromSystem(IZ)V
    .registers 3
    .param p1, "windowType"    # I
    .param p2, "delayed"    # Z

    .prologue
    .line 37
    return-void
.end method

.method public handleUpdateVisibility(I)V
    .registers 6
    .param p1, "visibility"    # I

    .prologue
    .line 23
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_2b

    .line 24
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateVisibility: mVisibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_2b
    iget-object v1, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-eq v1, p1, :cond_45

    .line 27
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .line 28
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 29
    iget-object v1, p0, mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 30
    iget-object v1, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput p1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 32
    .end local v0    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_45
    return-void
.end method
