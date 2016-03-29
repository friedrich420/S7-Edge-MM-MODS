.class Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterSyncStateClickListener"
.end annotation


# instance fields
.field private mEnableAutoSync:Ljava/lang/Boolean;

.field private final mUserHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V
    .locals 1
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 857
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->mEnableAutoSync:Ljava/lang/Boolean;

    .line 858
    iput-object p2, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->mUserHandle:Landroid/os/UserHandle;

    .line 859
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;Ljava/lang/Boolean;)V
    .locals 1
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "enableAutoSync"    # Ljava/lang/Boolean;

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->mEnableAutoSync:Ljava/lang/Boolean;

    .line 862
    iput-object p2, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->mUserHandle:Landroid/os/UserHandle;

    .line 863
    iput-object p3, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->mEnableAutoSync:Ljava/lang/Boolean;

    .line 864
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 868
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 869
    const-string v0, "AccountSettings"

    const-string v2, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :goto_0
    return v1

    .line 871
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 872
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v2, v0, v3}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Lcom/android/settings/accounts/AccountSettings;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 876
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/settings/accounts/AccountSettings;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->mEnableAutoSync:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :cond_3
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v2, v0, v3}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Lcom/android/settings/accounts/AccountSettings;ZLandroid/os/UserHandle;)V

    goto :goto_0
.end method
