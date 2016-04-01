.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;
.super Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.source "PersonalPageModePatternBackupPin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$4;,
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;
    }
.end annotation


# static fields
.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final KEY_NUM_WRONG_ATTEMPTS:Ljava/lang/String; = "num_wrong_attempts_pin"

.field public static final TAG:Ljava/lang/String; = "PersonalPageModePatternBackupPin"

.field private static final blockInputFilter:[Landroid/text/InputFilter;

.field private static final normalInputFilter:[Landroid/text/InputFilter;


# instance fields
.field private final BACKPIN_INPUT_TEXT:Ljava/lang/String;

.field private final PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEtPassword:Landroid/widget/EditText;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderWrongText:Ljava/lang/CharSequence;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNumWrongConfirmAttempts:I

.field private mPasswordText:Landroid/widget/TextView;

.field private mSubtextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 70
    new-array v0, v3, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$1;

    invoke-direct {v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$1;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->blockInputFilter:[Landroid/text/InputFilter;

    .line 81
    new-array v0, v3, [Landroid/text/InputFilter;

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->normalInputFilter:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;-><init>()V

    .line 50
    const-string v0, "backpin_input_text"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->BACKPIN_INPUT_TEXT:Ljava/lang/String;

    .line 51
    const-string v0, "pref_attempt_deadline"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;
    .param p1, "x1"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;)V

    return-void
.end method

.method static synthetic access$300()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->normalInputFilter:[Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private getDeadline()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    .line 333
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 335
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "pref_attempt_deadline"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 337
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 339
    const-string v3, "PersonalPageModePatternBackupPin"

    const-string v4, "Wrong PIN deadline is detected."

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mNumWrongConfirmAttempts:I

    if-nez v3, :cond_1

    .line 342
    const-string v3, "PersonalPageModePatternBackupPin"

    const-string v4, "Deadline PIN initialize"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-wide/16 v0, 0x0

    .line 349
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->setDeadline(J)V

    .line 351
    :cond_0
    return-wide v0

    .line 345
    :cond_1
    const-string v3, "PersonalPageModePatternBackupPin"

    const-string v4, "Assign new PIN deadline"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v0, v4, v6

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 273
    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->LockedOut:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;)V

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 277
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 304
    return-void
.end method

.method private setDeadline(J)V
    .locals 3
    .param p1, "deadline"    # J

    .prologue
    .line 355
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 357
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_attempt_deadline"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 359
    return-void
.end method

.method private updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;)V
    .locals 2
    .param p1, "stage"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    .prologue
    .line 307
    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$4;->$SwitchMap$com$samsung$android$personalpage$service$activity$PersonalPageModePatternBackupPin$Stage:[I

    invoke-virtual {p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 330
    :goto_0
    return-void

    .line 309
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f050015

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 326
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->blockInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceStates"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    iput-object p0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 99
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->setContentView(I)V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    const-string v1, "num_wrong_attempts_pin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mNumWrongConfirmAttempts:I

    .line 106
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->isBackupKey:Z

    if-nez v1, :cond_1

    .line 107
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mSubtextView:Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mSubtextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :cond_1
    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 113
    const v1, 0x7f07000c

    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    .line 115
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 116
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 167
    const-string v0, "PersonalPageModePatternBackupPin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 170
    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mContext:Landroid/content/Context;

    .line 171
    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onDestroy()V

    .line 172
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    const-string v1, "backpin_input_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 154
    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 244
    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onResume()V

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getDeadline()J

    move-result-wide v0

    .line 247
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 248
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->handleAttemptLockout(J)V

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    new-instance v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$2;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 270
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    const-string v0, "num_wrong_attempts_pin"

    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string v0, "backpin_input_text"

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 161
    const-string v0, "PersonalPageModePatternBackupPin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method protected verifyBackupPinAndMountSecretBox()V
    .locals 8

    .prologue
    .line 175
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "entry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 208
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 182
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->checkPrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    const-string v4, "PersonalPageModePatternBackupPin"

    const-string v5, "Verify Backup PIN success"

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-boolean v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->isBackupKey:Z

    if-eqz v4, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->sendBroadcastForPrivateFinger()V

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->requestPrivateModeOn()V

    .line 188
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 189
    .local v3, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_attempt_deadline"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 192
    .end local v3    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    const-string v4, "PersonalPageModePatternBackupPin"

    const-string v5, "Verify Backup PIN fail"

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mNumWrongConfirmAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mNumWrongConfirmAttempts:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_3

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long v0, v4, v6

    .line 197
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->setDeadline(J)V

    .line 198
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->handleAttemptLockout(J)V

    goto :goto_0

    .line 200
    .end local v0    # "deadline":J
    :cond_3
    sget-object v4, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->NeedToUnlockWrong:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    invoke-direct {p0, v4}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;)V

    goto :goto_0
.end method
