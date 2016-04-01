.class Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
.super Ljava/lang/Object;
.source "CocktailBarStatePolicyController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CocktailBarStateListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

.field final token:Landroid/os/IBinder;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .registers 6
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .prologue
    .line 298
    iput-object p1, p0, this$0:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p2, p0, token:Landroid/os/IBinder;

    .line 300
    iput-object p3, p0, component:Landroid/content/ComponentName;

    .line 301
    iput p4, p0, pid:I

    .line 302
    iput p5, p0, uid:I

    .line 303
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 307
    # getter for: Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, this$0:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    # getter for: Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->access$100(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 309
    :try_start_23
    iget-object v0, p0, this$0:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    # getter for: Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->access$200(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, this$0:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    # getter for: Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->access$200(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 310
    iget-object v0, p0, this$0:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->access$202(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    iget-object v0, p0, this$0:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    # getter for: Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;
    invoke-static {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->access$300(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateCocktailBarWindowType(ILjava/lang/String;)V

    .line 313
    :cond_4e
    iget-object v0, p0, this$0:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    # getter for: Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->access$100(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 314
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_23 .. :try_end_58} :catchall_5f

    .line 315
    iget-object v0, p0, token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 316
    return-void

    .line 314
    :catchall_5f
    move-exception v0

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method public dump()Ljava/lang/String;
    .registers 4

    .prologue
    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CocktailBarStateListener: component:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") pid:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") uid:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "dumpResult":Ljava/lang/String;
    return-object v0
.end method

.method public onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .registers 6
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 319
    iget-object v2, p0, token:Landroid/os/IBinder;

    if-nez v2, :cond_f

    .line 320
    # getter for: Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onCocktailBarStateChanged : token is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_e
    :goto_e
    return-void

    .line 324
    :cond_f
    :try_start_f
    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback;

    move-result-object v0

    .line 325
    .local v0, "callback":Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback;
    if-eqz v0, :cond_e

    .line 326
    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1b

    goto :goto_e

    .line 328
    .end local v0    # "callback":Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback;
    :catch_1b
    move-exception v1

    .line 329
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onCocktailBarStateChanged : RemoteException : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method
