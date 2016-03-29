.class Lcom/android/settings/fingerprint/RegisterFingerprint$11;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$11;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1239
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "Close_Error_In_Runnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$11;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$11;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1241
    :cond_0
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "Close_Error_Entered_In_Runnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$11;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeFingerMark()V

    .line 1245
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$11;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$702(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 1246
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$11;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->animID:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1247
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$11;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->animID:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1249
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$11;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0xcb

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$11;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 1251
    const-wide/16 v2, 0x82

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$11;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0xcc

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$11;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 1258
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$11;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0xce

    const/4 v3, 0x0

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 1261
    :cond_2
    return-void

    .line 1252
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "mRegisterErrorRunnable : Interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
