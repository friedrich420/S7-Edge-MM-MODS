.class Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$4;
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
    .line 97
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$4;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$4;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    # invokes: Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$400(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_samsung_screen_reader"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$4;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    # invokes: Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$500(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_samsung_screen_reader"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$4;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    # getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$600(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$4;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    # getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$600(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$4;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    # getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->access$600(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$4;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    const v2, 0x7f0e0a12

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    return-void
.end method
