.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CocktailHostInfo"
.end annotation


# instance fields
.field final callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

.field final category:I

.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

.field final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V
    .registers 7
    .param p2, "callbackHost"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p3, "category"    # I

    .prologue
    .line 2091
    iput-object p1, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2092
    iput-object p2, p0, callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    .line 2093
    invoke-interface {p2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, token:Landroid/os/IBinder;

    .line 2094
    iput p3, p0, category:I

    .line 2096
    :try_start_f
    iget-object v1, p0, token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    .line 2100
    :goto_15
    return-void

    .line 2097
    :catch_16
    move-exception v0

    .line 2098
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CocktailHostInfo : linkToDeath error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 2104
    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$1100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binderDied : binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    iget-object v1, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$1200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 2106
    iget-object v1, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktails()V

    .line 2107
    iget-object v1, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    invoke-static {v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$1202(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 2108
    iget-object v1, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$500(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 2109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2110
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2111
    iget-object v1, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$500(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2114
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_50
    iget-object v1, p0, token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2115
    return-void
.end method
