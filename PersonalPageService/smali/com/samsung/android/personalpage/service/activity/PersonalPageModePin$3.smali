.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;
.super Landroid/os/CountDownTimer;
.source "PersonalPageModePin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 265
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->access$102(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;I)I

    .line 280
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;->NeedToUnlock:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;

    # invokes: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;)V
    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->access$200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->access$400(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;)Landroid/widget/EditText;

    move-result-object v0

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->normalInputFilter:[Landroid/text/InputFilter;
    invoke-static {}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->access$300()[Landroid/text/InputFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 282
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v4, 0x1

    .line 268
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 269
    .local v0, "secondsCountdown":I
    if-ne v0, v4, :cond_0

    .line 270
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    const v3, 0x7f05000e

    invoke-virtual {v2, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    const v3, 0x7f05000d

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
