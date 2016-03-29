.class Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment$1;
.super Landroid/database/ContentObserver;
.source "AppLockSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment$1;->this$0:Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 286
    # getter for: Lcom/android/settings/applock/AppLockSettingsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/applock/AppLockSettingsActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChange() LockType"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment$1;->this$0:Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;

    invoke-virtual {v0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->updateLockTypeView()V

    .line 288
    return-void
.end method
