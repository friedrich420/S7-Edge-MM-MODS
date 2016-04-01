.class public Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;
.super Ljava/lang/Object;
.source "AbsCocktailLoadablePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnCocktailClickHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v7, 0x0

    .line 42
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_16
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_16} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_24

    .line 59
    const/4 v1, 0x1

    .end local v0    # "context":Landroid/content/Context;
    :goto_17
    return v1

    .line 52
    :catch_18
    move-exception v6

    .line 53
    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    # getter for: Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot send pending intent: "

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    .line 54
    goto :goto_17

    .line 55
    .end local v6    # "e":Landroid/content/IntentSender$SendIntentException;
    :catch_24
    move-exception v6

    .line 56
    .local v6, "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot send pending intent due to unknown exception: "

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    .line 57
    goto :goto_17
.end method
