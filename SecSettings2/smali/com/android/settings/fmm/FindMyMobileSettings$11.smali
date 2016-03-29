.class Lcom/android/settings/fmm/FindMyMobileSettings$11;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/FindMyMobileSettings;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$11;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    iput-object p2, p0, Lcom/android/settings/fmm/FindMyMobileSettings$11;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 661
    iget-object v3, p0, Lcom/android/settings/fmm/FindMyMobileSettings$11;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    # invokes: Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/fmm/FindMyMobileSettings;->access$600(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "remote_control"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 662
    iget-object v3, p0, Lcom/android/settings/fmm/FindMyMobileSettings$11;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    # invokes: Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/fmm/FindMyMobileSettings;->access$700(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "remote_control"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 663
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.remotecontrol_off"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "FindMyMobileSettings"

    const-string v4, " onCheckedChanged[remotecontrol_off]"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v3, p0, Lcom/android/settings/fmm/FindMyMobileSettings$11;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 668
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fmm/FindMyMobileSettings$11;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    # getter for: Lcom/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings/fmm/FindMyMobileSettings;->access$100(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fmm/FindMyMobileSettings$11;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    # invokes: Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/settings/fmm/FindMyMobileSettings;->access$800(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "remote_control"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 671
    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$11;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 672
    sput-boolean v2, Lcom/android/settings/fmm/FindMyMobileSettings;->chkboxFlag:Z

    .line 674
    :cond_2
    return-void
.end method
