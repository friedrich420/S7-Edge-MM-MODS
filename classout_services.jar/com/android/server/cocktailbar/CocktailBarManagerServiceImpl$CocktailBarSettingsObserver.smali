.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;
.super Landroid/database/ContentObserver;
.source "CocktailBarManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CocktailBarSettingsObserver"
.end annotation


# instance fields
.field mLastEnabled:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/Handler;)V
    .registers 7
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2067
    iput-object p1, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 2068
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2065
    const-string v1, ""

    iput-object v1, p0, mLastEnabled:Ljava/lang/String;

    .line 2069
    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$500(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2070
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "cocktail_bar_enabled_cocktails"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I
    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$900(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)I

    move-result v3

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2073
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 2077
    iget-object v0, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget-object v1, p0, mLastEnabled:Ljava/lang/String;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktailBarSetting(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$1000(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mLastEnabled:Ljava/lang/String;

    .line 2078
    return-void
.end method

.method public unregisterContentObserver()V
    .registers 3

    .prologue
    .line 2081
    iget-object v1, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$500(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2082
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2083
    return-void
.end method
