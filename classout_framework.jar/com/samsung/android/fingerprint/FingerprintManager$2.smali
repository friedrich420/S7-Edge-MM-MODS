.class Lcom/samsung/android/fingerprint/FingerprintManager$2;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V
    .registers 2

    .prologue
    .line 691
    iput-object p1, p0, this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 695
    const-string v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 700
    const-string v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "onActivityDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$100()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1d

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$100()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 702
    iget-object v0, p0, this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    # invokes: Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V
    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$200(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    .line 704
    :cond_1d
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 708
    const-string v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "onActivityPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$100()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_24

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$100()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 710
    iget-object v0, p0, this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAppActivityState(ILandroid/os/Bundle;)V

    .line 711
    iget-object v0, p0, this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    # invokes: Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V
    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$200(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    .line 713
    :cond_24
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 717
    const-string v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "onActivityResumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 722
    const-string v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "onActivitySaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 727
    const-string v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "onActivityStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 732
    const-string v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "onActivityStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$100()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_24

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$100()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 734
    iget-object v0, p0, this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAppActivityState(ILandroid/os/Bundle;)V

    .line 735
    iget-object v0, p0, this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    # invokes: Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V
    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$200(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    .line 737
    :cond_24
    return-void
.end method
