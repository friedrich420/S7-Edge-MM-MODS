.class Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;
.super Ljava/lang/Object;
.source "CocktailBarFeedsManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedsListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

.field final token:Landroid/os/IBinder;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .registers 6
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .prologue
    .line 105
    iput-object p1, p0, this$0:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, token:Landroid/os/IBinder;

    .line 107
    iput-object p3, p0, component:Landroid/content/ComponentName;

    .line 108
    iput p4, p0, pid:I

    .line 109
    iput p5, p0, uid:I

    .line 110
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 114
    # getter for: Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->access$000()Ljava/lang/String;

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

    .line 115
    iget-object v0, p0, this$0:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    # getter for: Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->access$100(Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 116
    :try_start_23
    iget-object v0, p0, this$0:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    # getter for: Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->access$100(Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_34

    .line 118
    iget-object v0, p0, token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 119
    return-void

    .line 117
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public dump()Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CocktailBarFeedsListener: component:("

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

    .line 140
    .local v0, "dumpResult":Ljava/lang/String;
    return-object v0
.end method

.method public onFeedsUpdated(ILjava/util/List;)V
    .registers 7
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
    .line 122
    .local p2, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    iget-object v2, p0, token:Landroid/os/IBinder;

    if-nez v2, :cond_f

    .line 123
    # getter for: Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onFeedsUpdated : token is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_e
    :goto_e
    return-void

    .line 127
    :cond_f
    :try_start_f
    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/ICocktailBarFeedsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarFeedsCallback;

    move-result-object v0

    .line 129
    .local v0, "callback":Lcom/samsung/android/cocktailbar/ICocktailBarFeedsCallback;
    if-eqz v0, :cond_e

    .line 130
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarFeedsCallback;->onFeedsUpdated(ILjava/util/List;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1b

    goto :goto_e

    .line 132
    .end local v0    # "callback":Lcom/samsung/android/cocktailbar/ICocktailBarFeedsCallback;
    :catch_1b
    move-exception v1

    .line 133
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onCocktailBarStateChanged : RemoteException : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method
