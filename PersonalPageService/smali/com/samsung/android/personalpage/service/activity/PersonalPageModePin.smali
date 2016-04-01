.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;
.super Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.source "PersonalPageModePin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$4;,
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;
    }
.end annotation


# static fields
.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final KEY_NUM_WRONG_ATTEMPTS:Ljava/lang/String; = "num_wrong_attempts_pin"

.field private static final PIN_INPUT_TEXT:Ljava/lang/String; = "pin_input_text"

.field public static final TAG:Ljava/lang/String; = "PersonalPageModePin"

.field private static final blockInputFilter:[Landroid/text/InputFilter;

.field private static final normalInputFilter:[Landroid/text/InputFilter;


# instance fields
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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$1;

    invoke-direct {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$1;-><init>()V

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->blockInputFilter:[Landroid/text/InputFilter;

    .line 78
    new-array v0, v2, [Landroid/text/InputFilter;

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->normalInputFilter:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;-><init>()V

    .line 64
    const-string v0, "pref_attempt_deadline_pin"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;
    .param p1, "x1"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;)V

    return-void
.end method

.method static synthetic access$300()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->normalInputFilter:[Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private getDeadline()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    .line 313
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 315
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "pref_attempt_deadline_pin"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 317
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 319
    const-string v3, "PersonalPageModePin"

    const-string v4, "Wrong PIN deadline is detected."

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mNumWrongConfirmAttempts:I

    if-nez v3, :cond_1

    .line 322
    const-string v3, "PersonalPageModePin"

    const-string v4, "Deadline PIN initialize"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-wide/16 v0, 0x0

    .line 329
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->setDeadline(J)V

    .line 331
    :cond_0
    return-wide v0

    .line 325
    :cond_1
    const-string v3, "PersonalPageModePin"

    const-string v4, "Assign new PIN deadline"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v0, v4, v6

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 260
    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;->LockedOut:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;)V

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 263
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 284
    return-void
.end method

.method private setDeadline(J)V
    .locals 3
    .param p1, "deadline"    # J

    .prologue
    .line 335
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_attempt_deadline_pin"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 339
    return-void
.end method

.method private updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;)V
    .locals 2
    .param p1, "stage"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;

    .prologue
    .line 287
    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$4;->$SwitchMap$com$samsung$android$personalpage$service$activity$PersonalPageModePin$Stage:[I

    invoke-virtual {p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_0
    return-void

    .line 289
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f050015

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 297
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 306
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->blockInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    iput-object p0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 96
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->setContentView(I)V

    .line 98
    if-eqz p1, :cond_0

    .line 99
    const-string v0, "num_wrong_attempts_pin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mNumWrongConfirmAttempts:I

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->isBackupKey:Z

    if-nez v0, :cond_1

    .line 104
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mSubtextView:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mSubtextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_1
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    .line 108
    iget v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mNumWrongConfirmAttempts:I

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f050015

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    :goto_0
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    .line 116
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 146
    return-void

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    const-string v0, "PersonalPageModePin"

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

    .line 165
    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 166
    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mContext:Landroid/content/Context;

    .line 167
    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onDestroy()V

    .line 168
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    const-string v1, "pin_input_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 152
    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 153
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 229
    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onResume()V

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->getDeadline()J

    move-result-wide v0

    .line 233
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 234
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->handleAttemptLockout(J)V

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    new-instance v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$2;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 256
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    const-string v0, "num_wrong_attempts_pin"

    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v0, "pin_input_text"

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 159
    const-string v0, "PersonalPageModePin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method protected verifyPinAndMountSecretBox()V
    .locals 8

    .prologue
    .line 171
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "entry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 194
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 176
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkPrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    const-string v3, "PersonalPageModePin"

    const-string v4, "Verify PIN success"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-boolean v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->isBackupKey:Z

    if-eqz v3, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->sendBroadcastForPrivateFinger()V

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->requestPrivateModeOn()V

    goto :goto_0

    .line 183
    :cond_2
    const-string v3, "PersonalPageModePin"

    const-string v4, "Verify PIN fail"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mNumWrongConfirmAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mNumWrongConfirmAttempts:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_3

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long v0, v4, v6

    .line 188
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->setDeadline(J)V

    .line 189
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->handleAttemptLockout(J)V

    goto :goto_0

    .line 191
    .end local v0    # "deadline":J
    :cond_3
    sget-object v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;->NeedToUnlockWrong:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;

    invoke-direct {p0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;)V

    goto :goto_0
.end method
