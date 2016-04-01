.class public Landroid/widget/RemoteViews$OnClickHandler;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 306
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 311
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_12
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_12} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_1e

    .line 323
    const/4 v1, 0x1

    .end local v0    # "context":Landroid/content/Context;
    :goto_13
    return v1

    .line 315
    :catch_14
    move-exception v6

    .line 316
    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "RemoteViews"

    const-string v2, "Cannot send pending intent: "

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    .line 317
    goto :goto_13

    .line 318
    .end local v6    # "e":Landroid/content/IntentSender$SendIntentException;
    :catch_1e
    move-exception v6

    .line 319
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "RemoteViews"

    const-string v2, "Cannot send pending intent due to unknown exception: "

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    .line 321
    goto :goto_13
.end method
