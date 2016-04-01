.class public Lcom/android/server/cocktailbar/CocktailBarManagerService;
.super Lcom/android/server/SystemService;
.source "CocktailBarManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CocktailBarManagerService"


# instance fields
.field private final mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 17
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .prologue
    .line 26
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1f

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 28
    const-string v0, "CocktailBarManagerService"

    const-string v1, "PHASE_THIRD_PARTY_APPS_CAN_START"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p0}, isSafeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->systemRunning(Z)V

    .line 35
    :cond_1e
    :goto_1e
    return-void

    .line 30
    :cond_1f
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1e

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 32
    const-string v0, "CocktailBarManagerService"

    const-string v1, "PHASE_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p0}, isSafeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->systemRunning(Z)V

    goto :goto_1e
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 21
    const-string v0, "CocktailBarService"

    iget-object v1, p0, mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 22
    return-void
.end method
