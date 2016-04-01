.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;
.super Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.source "PersonalPageModePassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$4;,
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;
    }
.end annotation


# static fields
.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final KEY_NUM_WRONG_ATTEMPTS:Ljava/lang/String; = "num_wrong_attempts_passwd"

.field private static final PASSWORD_INPUT_TEXT:Ljava/lang/String; = "password_input_text"

.field public static final TAG:Ljava/lang/String; = "PersonalPageModePassword"

.field private static final blockInputFilter:[Landroid/text/InputFilter;

.field private static final normalInputFilter:[Landroid/text/InputFilter;


# instance fields
.field private final PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

.field private isBackupPwd:Z

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEtPassword:Landroid/widget/EditText;

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

    new-instance v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$1;

    invoke-direct {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$1;-><init>()V

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->blockInputFilter:[Landroid/text/InputFilter;

    .line 78
    new-array v0, v2, [Landroid/text/InputFilter;

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->normalInputFilter:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;-><init>()V

    .line 65
    const-string v0, "pref_attempt_deadline_passwd"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->isBackupPwd:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mPasswordText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;
    .param p1, "x1"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;)V

    return-void
.end method

.method static synthetic access$300()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->normalInputFilter:[Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private getDeadline()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    .line 296
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 298
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "pref_attempt_deadline_passwd"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 300
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 302
    const-string v3, "PersonalPageModePassword"

    const-string v4, "Wrong PASSWORD deadline is detected."

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mNumWrongConfirmAttempts:I

    if-nez v3, :cond_1

    .line 305
    const-string v3, "PersonalPageModePassword"

    const-string v4, "Deadline PASSWORD initialize"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-wide/16 v0, 0x0

    .line 312
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->setDeadline(J)V

    .line 314
    :cond_0
    return-wide v0

    .line 308
    :cond_1
    const-string v3, "PersonalPageModePassword"

    const-string v4, "Assign new PASSWORD deadline"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v0, v4, v6

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 254
    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;->LockedOut:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;)V

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 257
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$3;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 276
    return-void
.end method

.method private setDeadline(J)V
    .locals 3
    .param p1, "deadline"    # J

    .prologue
    .line 318
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 320
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_attempt_deadline_passwd"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    return-void
.end method

.method private updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;)V
    .locals 2
    .param p1, "stage"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;

    .prologue
    .line 279
    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$4;->$SwitchMap$com$samsung$android$personalpage$service$activity$PersonalPageModePassword$Stage:[I

    invoke-virtual {p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 289
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->blockInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 279
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
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    iput-object p0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 98
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->setContentView(I)V

    .line 100
    if-eqz p1, :cond_0

    .line 101
    const-string v0, "num_wrong_attempts_passwd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mNumWrongConfirmAttempts:I

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->isBackupKey:Z

    if-nez v0, :cond_1

    .line 105
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mSubtextView:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mSubtextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FINGERPRINTPWD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->isBackupPwd:Z

    .line 111
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mPasswordText:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    .line 116
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 122
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    const-string v0, "PersonalPageModePassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 142
    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mContext:Landroid/content/Context;

    .line 143
    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onDestroy()V

    .line 144
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    const-string v1, "password_input_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 128
    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 224
    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onResume()V

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->getDeadline()J

    move-result-wide v0

    .line 228
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 229
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->handleAttemptLockout(J)V

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    new-instance v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$2;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 250
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    const-string v0, "num_wrong_attempts_passwd"

    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string v0, "password_input_text"

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method protected verifyPassword()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x7530

    const/4 v7, 0x5

    .line 147
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "entry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 191
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 151
    iget-boolean v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->isBackupPwd:Z

    if-eqz v3, :cond_4

    .line 152
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkFingerprintPassword(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    const-string v3, "PersonalPageModePassword"

    const-string v4, "Verify password success"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-boolean v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->isBackupKey:Z

    if-eqz v3, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->sendBroadcastForPrivateFinger()V

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->requestPrivateModeOn()V

    goto :goto_0

    .line 159
    :cond_2
    const-string v3, "PersonalPageModePassword"

    const-string v4, "Verify password fail"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mNumWrongConfirmAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mNumWrongConfirmAttempts:I

    if-lt v3, v7, :cond_3

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v0, v4, v8

    .line 164
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->setDeadline(J)V

    .line 165
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->handleAttemptLockout(J)V

    goto :goto_0

    .line 167
    .end local v0    # "deadline":J
    :cond_3
    sget-object v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;->NeedToUnlockWrong:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;

    invoke-direct {p0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;)V

    goto :goto_0

    .line 171
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkPrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 172
    const-string v3, "PersonalPageModePassword"

    const-string v4, "Verify password success"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-boolean v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->isBackupKey:Z

    if-eqz v3, :cond_5

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->sendBroadcastForPrivateFinger()V

    .line 176
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->requestPrivateModeOn()V

    goto :goto_0

    .line 178
    :cond_6
    const-string v3, "PersonalPageModePassword"

    const-string v4, "Verify password fail"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mNumWrongConfirmAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->mNumWrongConfirmAttempts:I

    if-lt v3, v7, :cond_7

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v0, v4, v8

    .line 183
    .restart local v0    # "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->setDeadline(J)V

    .line 184
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->handleAttemptLockout(J)V

    goto/16 :goto_0

    .line 186
    .end local v0    # "deadline":J
    :cond_7
    sget-object v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;->NeedToUnlockWrong:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;

    invoke-direct {p0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$Stage;)V

    goto/16 :goto_0
.end method
