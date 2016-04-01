.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;
.super Landroid/os/CountDownTimer;
.source "PersonalPageModePatternBackupPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 279
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    # setter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->access$102(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;I)I

    .line 294
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->NeedToUnlock:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    # invokes: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;)V
    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->access$200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;)V

    .line 296
    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->normalInputFilter:[Landroid/text/InputFilter;
    invoke-static {}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->access$300()[Landroid/text/InputFilter;

    move-result-object v0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    .line 297
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->access$400(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)Landroid/widget/EditText;

    move-result-object v0

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->normalInputFilter:[Landroid/text/InputFilter;
    invoke-static {}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->access$300()[Landroid/text/InputFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 302
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v4, 0x1

    .line 282
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 283
    .local v0, "secondsCountdown":I
    if-ne v0, v4, :cond_0

    .line 284
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    const v3, 0x7f05000e

    invoke-virtual {v2, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    const v3, 0x7f05000d

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
