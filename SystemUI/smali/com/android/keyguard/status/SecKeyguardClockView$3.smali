.class Lcom/android/keyguard/status/SecKeyguardClockView$3;
.super Landroid/os/AsyncTask;
.source "SecKeyguardClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/status/SecKeyguardClockView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardClockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardClockView;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 167
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/status/SecKeyguardClockView$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 170
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1000(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    # setter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mCurrentOrientation:I
    invoke-static {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$902(Lcom/android/keyguard/status/SecKeyguardClockView;I)I

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1200(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Lcom/android/keyguard/status/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v1

    # setter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mCurrentFontScale:F
    invoke-static {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1102(Lcom/android/keyguard/status/SecKeyguardClockView;F)F

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockView;->shouldEnableKeyguardScreenRotation()Z
    invoke-static {v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1300(Lcom/android/keyguard/status/SecKeyguardClockView;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/keyguard/status/SecKeyguardClockView;->mIsRotationEnabled:Z

    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 167
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/status/SecKeyguardClockView$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateClock(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$1400(Lcom/android/keyguard/status/SecKeyguardClockView;)V

    .line 182
    return-void
.end method
