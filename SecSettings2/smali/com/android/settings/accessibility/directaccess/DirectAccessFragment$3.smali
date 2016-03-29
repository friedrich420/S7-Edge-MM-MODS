.class Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$3;
.super Landroid/database/ContentObserver;
.source "DirectAccessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$3;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$3;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    # invokes: Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$200(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$3;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    # getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$300(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$3;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    # getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$300(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const v1, 0x7f0e0a14

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$3;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    # getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$300(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$3;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    # getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$300(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
