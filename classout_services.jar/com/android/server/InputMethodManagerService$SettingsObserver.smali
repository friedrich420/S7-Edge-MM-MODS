.class Lcom/android/server/InputMethodManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field mLastEnabled:Ljava/lang/String;

.field mRegistered:Z

.field mUserId:I

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 772
    iput-object p1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    .line 773
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 766
    const/4 v0, 0x0

    iput-boolean v0, p0, mRegistered:Z

    .line 767
    const-string v0, ""

    iput-object v0, p0, mLastEnabled:Ljava/lang/String;

    .line 774
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 812
    const-string/jumbo v3, "show_ime_with_hard_keyboard"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 814
    .local v2, "showImeUri":Landroid/net/Uri;
    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v3, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 815
    :try_start_c
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 816
    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    .line 826
    :goto_17
    monitor-exit v4

    .line 827
    return-void

    .line 818
    :cond_19
    const/4 v0, 0x0

    .line 819
    .local v0, "enabledChanged":Z
    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, "newEnabled":Ljava/lang/String;
    iget-object v3, p0, mLastEnabled:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 821
    iput-object v1, p0, mLastEnabled:Ljava/lang/String;

    .line 822
    const/4 v0, 0x1

    .line 824
    :cond_2d
    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    goto :goto_17

    .line 826
    .end local v0    # "enabledChanged":Z
    .end local v1    # "newEnabled":Ljava/lang/String;
    :catchall_33
    move-exception v3

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_33

    throw v3
.end method

.method public registerContentObserverLocked(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 777
    iget-boolean v1, p0, mRegistered:Z

    if-eqz v1, :cond_b

    iget v1, p0, mUserId:I

    if-ne v1, p1, :cond_b

    .line 809
    :goto_a
    return-void

    .line 780
    :cond_b
    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 781
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, mRegistered:Z

    if-eqz v1, :cond_24

    .line 782
    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 783
    iput-boolean v4, p0, mRegistered:Z

    .line 785
    :cond_24
    iget v1, p0, mUserId:I

    if-eq v1, p1, :cond_2e

    .line 786
    const-string v1, ""

    iput-object v1, p0, mLastEnabled:Ljava/lang/String;

    .line 787
    iput p1, p0, mUserId:I

    .line 791
    :cond_2e
    const-string/jumbo v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 793
    const-string/jumbo v1, "enabled_input_methods"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 795
    const-string/jumbo v1, "selected_input_method_subtype"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 798
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 802
    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$000(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 804
    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_keyboard_block"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$100(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 808
    const/4 v1, 0x1

    iput-boolean v1, p0, mRegistered:Z

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mLastEnabled:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
