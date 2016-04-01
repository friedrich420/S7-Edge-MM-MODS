.class public Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
.super Ljava/lang/Object;
.source "CocktailBarStatePolicyController.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

.field private mStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 22
    const-class v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, TAG:Ljava/lang/String;

    .line 24
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    sput-boolean v0, DEBUG:Z

    .line 26
    const/4 v0, 0x0

    sput-object v0, mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, mPackageName:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mStateListeners:Ljava/util/ArrayList;

    .line 43
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 44
    new-instance v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;

    invoke-direct {v0, p1, p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V

    iput-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    .line 48
    :goto_1a
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->initialize()V

    .line 49
    return-void

    .line 46
    :cond_20
    new-instance v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    invoke-direct {v0, p1, p0}, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V

    iput-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    goto :goto_1a
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .prologue
    .line 21
    iget-object v0, p0, mStateListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .prologue
    .line 21
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .prologue
    .line 21
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    monitor-enter v1

    :try_start_3
    sget-object v0, mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    if-nez v0, :cond_e

    .line 36
    new-instance v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .line 38
    :cond_e
    sget-object v0, mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getValidVisibility(I)I
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    .line 133
    iget-object v2, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getLockState()I

    move-result v0

    .line 134
    .local v0, "lockstate":I
    if-ne p1, v1, :cond_14

    .line 135
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_e

    .line 146
    .end local p1    # "visibility":I
    :cond_d
    :goto_d
    return p1

    .line 137
    .restart local p1    # "visibility":I
    :cond_e
    and-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_d

    .line 138
    const/4 p1, 0x2

    goto :goto_d

    .line 143
    :cond_14
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_d

    move p1, v1

    .line 144
    goto :goto_d
.end method


# virtual methods
.method public activateCocktailBar()V
    .registers 3

    .prologue
    .line 152
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_b

    .line 153
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "activateCocktailBar"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_b
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateActivate(Z)V

    .line 156
    return-void
.end method

.method public deactivateCocktailBar()V
    .registers 3

    .prologue
    .line 159
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_c

    .line 160
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deactivateCocktailBar"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_c
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateActivate(Z)V

    .line 163
    return-void
.end method

.method public dump()Ljava/lang/String;
    .registers 7

    .prologue
    .line 340
    const-string v2, "[CocktailBarStatePolicy] "

    .line 341
    .local v2, "result":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    iget-object v4, p0, mStateListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 344
    :try_start_2b
    iget-object v3, p0, mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 345
    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->dump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    goto :goto_31

    .line 348
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_66
    monitor-exit v4
    :try_end_67
    .catchall {:try_start_2b .. :try_end_67} :catchall_7f

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v4}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    return-object v2

    .line 348
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_7f
    move-exception v3

    :try_start_80
    monitor-exit v4
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v3
.end method

.method public getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWindowType()I
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getWindowType()I

    move-result v0

    return v0
.end method

.method public hideAndLockCocktailBar(ZI)V
    .registers 6
    .param p1, "enable"    # Z
    .param p2, "id"    # I

    .prologue
    .line 117
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_27

    .line 118
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideAndLockCocktailBar : enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_27
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->setLockState(IZI)V

    .line 121
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->refreshState()V

    .line 122
    return-void
.end method

.method public notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z
    .registers 7
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 222
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_73

    .line 223
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyCocktailBarState: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " backgroundType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showtimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " activate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changeFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_73
    iget-object v3, p0, mStateListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 233
    :try_start_76
    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    const/16 v4, 0x80

    if-ne v2, v4, :cond_a7

    .line 234
    iget-object v2, p0, mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_82
    :goto_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 235
    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    iget-object v2, p0, mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_a0

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 236
    :cond_a0
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_82

    .line 244
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :catchall_a4
    move-exception v2

    monitor-exit v3
    :try_end_a6
    .catchall {:try_start_76 .. :try_end_a6} :catchall_a4

    throw v2

    .line 240
    :cond_a7
    :try_start_a7
    iget-object v2, p0, mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_ad
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 241
    .restart local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_ad

    .line 244
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_bd
    monitor-exit v3
    :try_end_be
    .catchall {:try_start_a7 .. :try_end_be} :catchall_a4

    .line 245
    const/4 v2, 0x1

    return v2
.end method

.method public notifyCocktailBarStateExceptCallingPackage(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Ljava/lang/String;)Z
    .registers 8
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 250
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_37

    .line 251
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyCocktailBarStateExceptCallingPackage: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changeFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_37
    iget-object v3, p0, mStateListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 256
    :try_start_3a
    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    const/16 v4, 0x80

    if-ne v2, v4, :cond_67

    .line 257
    iget-object v2, p0, mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_46
    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 258
    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    if-eqz p2, :cond_60

    iget-object v2, v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 259
    :cond_60
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_46

    .line 267
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :catchall_64
    move-exception v2

    monitor-exit v3
    :try_end_66
    .catchall {:try_start_3a .. :try_end_66} :catchall_64

    throw v2

    .line 263
    :cond_67
    :try_start_67
    iget-object v2, p0, mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 264
    .restart local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_6d

    .line 267
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_67 .. :try_end_7e} :catchall_64

    .line 268
    const/4 v2, 0x1

    return v2
.end method

.method public notifyCocktailBarStateToBinder(Landroid/os/IBinder;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 273
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_43

    .line 274
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyCocktailBarStateToBinder: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " backgroundType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showtimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_43
    iget-object v3, p0, mStateListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 279
    :try_start_46
    iget-object v2, p0, mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 280
    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    iget-object v2, v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 281
    invoke-virtual {v1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 285
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_63
    monitor-exit v3

    .line 286
    const/4 v2, 0x1

    return v2

    .line 285
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_66
    move-exception v2

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_46 .. :try_end_68} :catchall_66

    throw v2
.end method

.method public registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 175
    iget-object v8, p0, mStateListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 176
    :try_start_3
    iget-object v1, p0, mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 177
    .local v0, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    if-eqz v0, :cond_9

    .line 178
    iget-object v1, v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 179
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerListenerCallback : already registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    monitor-exit v8

    .line 194
    :goto_28
    return-void

    .line 184
    .end local v0    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_29
    new-instance v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;-><init>(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_4b

    .line 187
    .restart local v0    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    const/4 v1, 0x0

    :try_start_3a
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_4e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4b

    .line 191
    :goto_3d
    :try_start_3d
    iget-object v1, p0, mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    iget-object v2, v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->notifyStateToBinder(Landroid/os/IBinder;)V

    .line 193
    monitor-exit v8

    goto :goto_28

    .end local v0    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_4b
    move-exception v1

    monitor-exit v8
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_4b

    throw v1

    .line 188
    .restart local v0    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :catch_4e
    move-exception v6

    .line 189
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_4f
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListenerCallback : exception in linkToDeath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_4f .. :try_end_68} :catchall_4b

    goto :goto_3d
.end method

.method public restrictCocktailBar(ZI)V
    .registers 6
    .param p1, "enable"    # Z
    .param p2, "id"    # I

    .prologue
    .line 125
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_27

    .line 126
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restrictCocktailBar : enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_27
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->setLockState(IZI)V

    .line 129
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->refreshState()V

    .line 130
    return-void
.end method

.method public showAndLockCocktailBar(ZI)V
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "visibility"    # I

    .prologue
    const/4 v3, 0x1

    .line 109
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_28

    .line 110
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAndLockCocktailBar : enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_28
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, v3, p1, v3}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->setLockState(IZI)V

    .line 113
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-direct {p0, p2}, getValidVisibility(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateVisibility(I)V

    .line 114
    return-void
.end method

.method public unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 197
    iget-object v4, p0, mStateListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, "listenerInfo":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :try_start_4
    iget-object v3, p0, mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 200
    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    if-eqz v1, :cond_a

    .line 201
    iget-object v3, v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 202
    move-object v2, v1

    goto :goto_a

    .line 206
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_22
    if-nez v2, :cond_2e

    .line 207
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerListenerCallback : cannot find the matched listener"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    monitor-exit v4

    .line 218
    :goto_2d
    return-void

    .line 210
    :cond_2e
    iget-object v3, p0, mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 211
    iget-object v3, p0, mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 213
    :cond_3b
    if-eqz v2, :cond_41

    .line 214
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 216
    :cond_41
    iget-object v3, p0, mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 217
    monitor-exit v4

    goto :goto_2d

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_48
    move-exception v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_48

    throw v3
.end method

.method public updateCocktailBarStatus(ZZ)V
    .registers 6
    .param p1, "shift"    # Z
    .param p2, "dimBackground"    # Z

    .prologue
    .line 102
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_27

    .line 103
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCocktailBarStatus: shift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dimBackground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_27
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateState(ZZ)V

    .line 106
    return-void
.end method

.method public updatePosition(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 66
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    .line 67
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePosition: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1d
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updatePosition(I)V

    .line 70
    return-void
.end method

.method public updateStateFromSystem(I)V
    .registers 5
    .param p1, "windowType"    # I

    .prologue
    .line 59
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    .line 60
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStateFromSystem: windowType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1d
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateStateFromSystem(I)V

    .line 63
    return-void
.end method

.method public updateVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    .line 52
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    .line 53
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVisibility: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1d
    iget-object v0, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateVisibility(I)V

    .line 56
    return-void
.end method

.method public updateWindowType(Ljava/lang/String;I)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "windowType"    # I

    .prologue
    .line 73
    iget-object v1, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v1

    iget v0, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 74
    .local v0, "currentWindowType":I
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_2f

    .line 75
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWindowType: currentWindowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " windowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_2f
    if-eqz p1, :cond_34

    .line 78
    packed-switch p2, :pswitch_data_80

    .line 99
    :cond_34
    :goto_34
    return-void

    .line 80
    :pswitch_35
    iget-object v1, p0, mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_41

    iget-object v1, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 81
    :cond_41
    iput-object p1, p0, mPackageName:Ljava/lang/String;

    .line 82
    iget-object v1, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v1, p2, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateCocktailBarWindowType(ILjava/lang/String;)V

    goto :goto_34

    .line 86
    :pswitch_49
    if-ne v0, p2, :cond_6b

    .line 87
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWindowType: current window type is requested window type("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 90
    :cond_6b
    iget-object v1, p0, mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_34

    iget-object v1, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 91
    iget-object v1, p0, mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v1, p2, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateCocktailBarWindowType(ILjava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, mPackageName:Ljava/lang/String;

    goto :goto_34

    .line 78
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_49
        :pswitch_35
    .end packed-switch
.end method
