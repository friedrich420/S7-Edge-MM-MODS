.class Lcom/android/settings/spen/DirectPenInputSettings$9;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/spen/DirectPenInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/DirectPenInputSettings;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 501
    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/spen/DirectPenInputSettings;->access$200(Lcom/android/settings/spen/DirectPenInputSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v0}, Lcom/android/settings/spen/DirectPenInputSettings;->turnOffTalkBack()Z

    .line 503
    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/spen/DirectPenInputSettings;->access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/spen/DirectPenInputSettings;->access$800(Lcom/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/spen/DirectPenInputSettings;->access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 507
    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v0}, Lcom/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.feature.overlaymagnifier"

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/spen/DirectPenInputSettings;->access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/spen/DirectPenInputSettings;->access$900(Lcom/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/spen/DirectPenInputSettings;->access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/spen/DirectPenInputSettings;->access$100(Lcom/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 511
    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # invokes: Lcom/android/settings/spen/DirectPenInputSettings;->setPreferenceEnabled()V
    invoke-static {v0}, Lcom/android/settings/spen/DirectPenInputSettings;->access$300(Lcom/android/settings/spen/DirectPenInputSettings;)V

    .line 512
    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # setter for: Lcom/android/settings/spen/DirectPenInputSettings;->isShowEnablePopup:Z
    invoke-static {v0, v2}, Lcom/android/settings/spen/DirectPenInputSettings;->access$602(Lcom/android/settings/spen/DirectPenInputSettings;Z)Z

    .line 513
    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->isTryButtonPressed:Z
    invoke-static {v0}, Lcom/android/settings/spen/DirectPenInputSettings;->access$700(Lcom/android/settings/spen/DirectPenInputSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings$9;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # invokes: Lcom/android/settings/spen/DirectPenInputSettings;->startTryIt()V
    invoke-static {v0}, Lcom/android/settings/spen/DirectPenInputSettings;->access$1000(Lcom/android/settings/spen/DirectPenInputSettings;)V

    .line 516
    :cond_1
    return-void
.end method
