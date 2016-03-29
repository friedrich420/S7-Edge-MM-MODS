.class final Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$3;
.super Landroid/database/ContentObserver;
.source "MultiWindowAppListInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    .prologue
    .line 263
    :try_start_0
    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$200()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "multi_window_enabled"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 264
    .local v0, "MultiWindowEnabled":I
    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$200()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tap_to_icon"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 265
    .local v3, "iconTraySetting":I
    if-nez v0, :cond_1

    .line 266
    const-string v5, "Recents_MultiWindowAppListInfo"

    const-string v6, "MultiWindow setting off"

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.systemui.recents.CLOSE_RECENTS_MULTIWINDOW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "closeIntent":Landroid/content/Intent;
    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$300()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 270
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->release()V

    .line 271
    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$200()Landroid/content/ContentResolver;

    move-result-object v5

    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$400()Landroid/database/ContentObserver;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 272
    const/4 v5, 0x0

    # setter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$202(Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 274
    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$300()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 275
    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$300()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    .end local v0    # "MultiWindowEnabled":I
    .end local v1    # "closeIntent":Landroid/content/Intent;
    .end local v3    # "iconTraySetting":I
    :cond_0
    :goto_0
    return-void

    .line 276
    .restart local v0    # "MultiWindowEnabled":I
    .restart local v3    # "iconTraySetting":I
    :cond_1
    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIconTraySetting:I
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$500()I

    move-result v5

    if-eq v5, v3, :cond_0

    .line 277
    # setter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mIconTraySetting:I
    invoke-static {v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$502(I)I

    .line 278
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getInstance()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v4

    .line 279
    .local v4, "info":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    if-eqz v4, :cond_0

    .line 280
    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->refreshAllIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v0    # "MultiWindowEnabled":I
    .end local v3    # "iconTraySetting":I
    .end local v4    # "info":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
