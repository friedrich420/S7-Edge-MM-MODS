.class Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;
.super Ljava/lang/Object;
.source "KnoxChooseLockTwoFactor.java"

# interfaces
.implements Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;->this$0:Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 5
    .param p1, "evt"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 158
    move-object v1, p1

    .line 159
    .local v1, "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :try_start_0
    iget v2, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v2, :pswitch_data_0

    .line 183
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 165
    :pswitch_1
    iget v2, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;->this$0:Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mConfimationStarted:Z
    invoke-static {v2, v3}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$002(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;Z)Z

    .line 167
    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;->this$0:Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    # getter for: Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$100(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;->this$0:Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-virtual {v3}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0273

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 168
    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;->this$0:Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    # invokes: Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->launchLockType()V
    invoke-static {v2}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$200(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxChooseLockTwoFactor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFingerprintEvent: Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget v2, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;->this$0:Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mConfimationStarted:Z
    invoke-static {v2, v3}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$002(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;Z)Z

    .line 171
    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;->this$0:Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    # getter for: Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v2}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$300(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 172
    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;->this$0:Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    # getter for: Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v2}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$300(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    .line 174
    :cond_2
    iget v2, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;->this$0:Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    # invokes: Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showSensorErrorDialog()V
    invoke-static {v2}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$400(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
