.class Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessControlEnableChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 3

    .prologue
    .line 6485
    iput-object p1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    .line 6486
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6487
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .prologue
    .line 6490
    :try_start_0
    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_enabled"

    iget-object v4, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v1, 0x1

    .line 6493
    .local v1, "isAccessControlEnable":Z
    :goto_19
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Access Control changed to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6494
    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/InputMethodManagerService;->setAccessControlEnable(Z)V
    :try_end_4c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_4c} :catch_4f

    .line 6498
    .end local v1    # "isAccessControlEnable":Z
    :goto_4c
    return-void

    .line 6490
    :cond_4d
    const/4 v1, 0x0

    goto :goto_19

    .line 6495
    :catch_4f
    move-exception v0

    .line 6496
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "InputMethodManagerService"

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method
