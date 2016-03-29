.class Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment$1;
.super Ljava/lang/Object;
.source "PackageSettingActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;

.field final synthetic val$positiveBtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment$1;->this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;

    iput-object p2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment$1;->val$positiveBtn:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 541
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "limit":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment$1;->val$positiveBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment$1;->val$positiveBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 536
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 531
    return-void
.end method
