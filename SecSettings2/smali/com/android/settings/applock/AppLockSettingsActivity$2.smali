.class Lcom/android/settings/applock/AppLockSettingsActivity$2;
.super Ljava/lang/Object;
.source "AppLockSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applock/AppLockSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applock/AppLockSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/applock/AppLockSettingsActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$2;->this$0:Lcom/android/settings/applock/AppLockSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$2;->this$0:Lcom/android/settings/applock/AppLockSettingsActivity;

    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$2;->this$0:Lcom/android/settings/applock/AppLockSettingsActivity;

    # getter for: Lcom/android/settings/applock/AppLockSettingsActivity;->mMasterSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/applock/AppLockSettingsActivity;->access$200(Lcom/android/settings/applock/AppLockSettingsActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/applock/AppLockSettingsActivity;->setMasterSwitchView(Ljava/lang/Boolean;)V

    .line 95
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
