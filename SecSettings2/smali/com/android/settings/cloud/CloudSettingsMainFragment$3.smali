.class Lcom/android/settings/cloud/CloudSettingsMainFragment$3;
.super Ljava/lang/Object;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cloud/CloudSettingsMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    # getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z
    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$400(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1184
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v0, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const v3, 0x7f0e1281

    invoke-virtual {v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v0, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v0, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v0, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1193
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1191
    :cond_2
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    # invokes: Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudAuthentication()V
    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$900(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    goto :goto_0
.end method
