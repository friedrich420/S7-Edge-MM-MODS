.class Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver$1;
.super Landroid/database/ContentObserver;
.source "MultiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->observe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 341
    iput-object p1, p0, this$1:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 345
    if-eqz p2, :cond_10

    const-string/jumbo v0, "multi_window_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 355
    :goto_f
    return-void

    .line 348
    :cond_10
    iget-object v0, p0, this$1:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z
    invoke-static {v0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->access$100(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 349
    iget-object v0, p0, this$1:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z
    invoke-static {v0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->access$200(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 350
    iget-object v0, p0, this$1:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->access$202(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Z)Z

    .line 353
    :cond_2c
    iget-object v0, p0, this$1:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->updateSettings()V

    .line 354
    iget-object v0, p0, this$1:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    goto :goto_f
.end method
