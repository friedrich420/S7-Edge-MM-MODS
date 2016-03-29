.class public Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
.super Lcom/android/settings/InstrumentedFragment;
.source "KnoxChooseLockFingerprintPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KnoxChooseLockFingerprintPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxChooseLockFingerprintPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;
    }
.end annotation


# static fields
.field private static mKnoxChooseLockFingerprintPasswordFragment:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;


# instance fields
.field public MaxLengthFilter:Landroid/text/InputFilter;

.field private cacCardLocked:Z

.field private cacRegistrationComplete:Z

.field private cacRegistrationError:Z

.field private cacRegistrationResult:Ljava/lang/String;

.field clickedEmergencyCall:Z

.field private hasPwdPatternRestriction:Z

.field private isEncrypt:Z

.field private isRecovery:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCacChosen:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mChallenge:J

.field private mCheckSimplePassword:Z

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mCurrentPassword:Ljava/lang/String;

.field mDialog:Landroid/app/ProgressDialog;

.field private mDone:Z

.field private mFirstPin:Ljava/lang/String;

.field protected mH:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHasChallenge:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mOldPassword:Ljava/lang/String;

.field private mOrientation:I

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPwdChangeEnforceStatus:I

.field private mPwdChangeTimeout:I

.field private mRequestedQuality:I

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTelMgr:Landroid/telephony/TelephonyManager;

.field private mTitleText:Landroid/widget/TextView;

.field private mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

.field title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 433
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 298
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    .line 299
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMaxLength:I

    .line 300
    iput v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLetters:I

    .line 301
    iput v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinUpperCase:I

    .line 302
    iput v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLowerCase:I

    .line 303
    iput v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinSymbols:I

    .line 304
    iput v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinNumeric:I

    .line 305
    iput v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinNonLetter:I

    .line 306
    iput-boolean v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->isRecovery:Z

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mOldPassword:Ljava/lang/String;

    .line 310
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    .line 312
    sget-object v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    .line 313
    iput-boolean v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mDone:Z

    .line 328
    iput-boolean v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacRegistrationError:Z

    .line 329
    iput-boolean v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacRegistrationComplete:Z

    .line 330
    iput-boolean v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacCardLocked:Z

    .line 332
    iput-boolean v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCacChosen:Z

    .line 334
    iput v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mOrientation:I

    .line 340
    iput v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    .line 341
    iput v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeTimeout:I

    .line 342
    iput-boolean v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->clickedEmergencyCall:Z

    .line 343
    iput-boolean v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->hasPwdPatternRestriction:Z

    .line 348
    iput-boolean v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->isEncrypt:Z

    .line 351
    new-instance v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$1;-><init>(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 362
    new-instance v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$2;-><init>(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mH:Landroid/os/Handler;

    .line 394
    iput-boolean v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCheckSimplePassword:Z

    .line 396
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->title:Ljava/lang/CharSequence;

    .line 686
    new-instance v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$3;-><init>(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    .line 434
    sput-object p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mKnoxChooseLockFingerprintPasswordFragment:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    .line 435
    return-void
.end method

.method static synthetic access$000()Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mKnoxChooseLockFingerprintPasswordFragment:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Lcom/android/internal/widget/TextViewInputDisabler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->finishConfirmStage(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    .prologue
    .line 287
    iget v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mOrientation:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    .param p1, "x1"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mOrientation:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getDeviceOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Landroid/inputmethodservice/KeyboardView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacRegistrationComplete:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacRegistrationError:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacRegistrationResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacCardLocked:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->showSoftInput()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    .prologue
    .line 287
    iget v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMaxLength:I

    return v0
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1059
    const/4 v2, 0x0

    .line 1061
    .local v2, "nLoop":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 1062
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1064
    .local v0, "beforeChar":C
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1065
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    .line 1066
    add-int/lit8 v2, v2, 0x1

    .line 1071
    :goto_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 1072
    const-string v4, "KnoxChooseLockFingerprintPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "has internal loop password : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    .end local v0    # "beforeChar":C
    .end local v1    # "i":I
    :goto_2
    return v3

    .line 1068
    .restart local v0    # "beforeChar":C
    .restart local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1076
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1064
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "beforeChar":C
    .end local v1    # "i":I
    :cond_2
    move v3, v4

    .line 1080
    goto :goto_2
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1031
    const-string v5, "0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 1033
    .local v1, "maxLoop":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 1034
    const-string v5, "0123456789"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1035
    .local v2, "pattern":Ljava/lang/String;
    const-string v5, "9876543210"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1037
    .local v3, "reversePattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1038
    :cond_0
    const-string v5, "KnoxChooseLockFingerprintPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :goto_1
    return v4

    .line 1033
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "reversePattern":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1043
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :cond_2
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 1045
    const/4 v0, 0x0

    :goto_2
    if-gt v0, v1, :cond_5

    .line 1046
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1047
    .restart local v2    # "pattern":Ljava/lang/String;
    const-string v5, "zyxwvutsrqponmlkjihgfedcba"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1049
    .restart local v3    # "reversePattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1050
    :cond_3
    const-string v5, "KnoxChooseLockFingerprintPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1045
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1055
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private disableStatusBar()V
    .locals 2

    .prologue
    .line 1679
    monitor-enter p0

    .line 1680
    :try_start_0
    iget v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mStatusBarDisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1683
    :cond_0
    monitor-exit p0

    .line 1684
    return-void

    .line 1683
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private executeCacRegistration(Ljava/lang/String;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1295
    new-instance v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$5;-><init>(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1391
    return-void
.end method

.method private finishConfirmStage(Z)V
    .locals 6
    .param p1, "wasSecureBefore"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1394
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 1395
    iput-boolean v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mDone:Z

    .line 1396
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_2

    .line 1397
    if-nez p1, :cond_0

    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mForPrivateModeBackupKey:Z
    invoke-static {}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$600()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1398
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1399
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1401
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 1409
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "fingerprint"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1410
    .local v1, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1411
    const-string v3, "FingerprintEntry"

    const-string v4, "Password set Fingerprint double check"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fingerprint_entry_double_check"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1421
    .end local v1    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_1
    :goto_1
    return-void

    .line 1402
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1403
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1418
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/KnoxChooseLockFingerprintPassword;

    # invokes: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToKnoxKeyguard(I)V
    invoke-static {v3, v5}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$2700(Lcom/android/settings/KnoxChooseLockFingerprintPassword;I)V

    goto :goto_1
.end method

.method private getDeviceOrientation()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1265
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 1266
    .local v1, "orientation":I
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1267
    .local v2, "rotation":I
    const/4 v0, -0x1

    .line 1271
    .local v0, "actual_orientation":I
    if-ne v1, v5, :cond_2

    if-eqz v2, :cond_0

    if-ne v2, v4, :cond_2

    .line 1274
    :cond_0
    const/4 v0, 0x0

    .line 1292
    :cond_1
    :goto_0
    return v0

    .line 1275
    :cond_2
    if-ne v1, v4, :cond_4

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_4

    .line 1278
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1279
    :cond_4
    if-ne v1, v5, :cond_6

    if-eq v2, v5, :cond_5

    if-ne v2, v6, :cond_6

    .line 1282
    :cond_5
    const/16 v0, 0x8

    goto :goto_0

    .line 1284
    :cond_6
    if-ne v1, v4, :cond_1

    if-eq v2, v5, :cond_7

    if-ne v2, v6, :cond_1

    .line 1287
    :cond_7
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private reenableStatusBar()V
    .locals 2

    .prologue
    .line 1687
    monitor-enter p0

    .line 1688
    :try_start_0
    iget v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mStatusBarDisableCount:I

    if-lez v0, :cond_0

    .line 1689
    iget v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mStatusBarDisableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1693
    :cond_0
    monitor-exit p0

    .line 1694
    return-void

    .line 1693
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private scheduleNextPwdChange(II)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 1549
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const v6, 0xea60

    mul-int/2addr v6, p2

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 1550
    .local v2, "when":J
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1551
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v4, v5, v0, v6, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1553
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1554
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v6, "setPwdChangeRequested"

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1556
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 1560
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1561
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1562
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1563
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1564
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1565
    return-void
.end method

.method private showSoftInput()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "bRetVal":Z
    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$400()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 377
    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$400()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    .line 378
    if-eqz v0, :cond_1

    .line 379
    const-string v1, "KnoxChooseLockFingerprintPassword"

    const-string v2, "[PPCLP] showSoftInput returned true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const-string v1, "KnoxChooseLockFingerprintPassword"

    const-string v2, "[PPCLP] showSoftInput returned false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mH:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startVerifyPassword(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "wasSecureBefore"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1232
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 1233
    invoke-virtual {p0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->setNextEnabled(Z)V

    .line 1234
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-wide v2, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mChallenge:J

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    new-instance v5, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$4;

    invoke-direct {v5, p0, p2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$4;-><init>(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;Z)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 1261
    return-void
.end method

.method private updateHeaderText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1698
    iget-boolean v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    if-nez v0, :cond_0

    .line 1699
    const v0, 0x7f0e02a8

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1708
    :goto_0
    return-object v0

    .line 1701
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 1702
    iget-boolean v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->isEncrypt:Z

    if-eqz v0, :cond_1

    .line 1703
    const v0, 0x7f0e02a7

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1705
    :cond_1
    const v0, 0x7f0e02a5

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1708
    :cond_2
    const v0, 0x7f0e02a6

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateUi()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1582
    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1583
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 1586
    .local v2, "length":I
    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lt v7, v6, :cond_4

    .line 1587
    iget v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeTimeout:I

    if-gtz v7, :cond_0

    iget v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    if-eq v7, v6, :cond_1

    :cond_0
    iget v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_5

    :cond_1
    move v0, v6

    .line 1591
    .local v0, "enforceWithoutCancel":Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-ne v7, v8, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->isRecovery:Z

    if-eqz v7, :cond_6

    .line 1592
    :cond_3
    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1593
    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 1601
    .end local v0    # "enforceWithoutCancel":Z
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-ne v7, v8, :cond_c

    .line 1603
    iget-boolean v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacCardLocked:Z

    if-nez v7, :cond_7

    .line 1604
    const-string v7, "KnoxChooseLockFingerprintPassword"

    const-string v8, "CAC registration not locked: "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-boolean v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->hasPwdPatternRestriction:Z

    if-eqz v7, :cond_7

    .line 1608
    const-string v5, "KnoxChooseLockFingerprintPassword"

    const-string v7, "CAC registration not locked enable next: "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1610
    iget-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 1611
    iget-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    iget v6, v6, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 1658
    :goto_2
    return-void

    :cond_5
    move v0, v5

    .line 1587
    goto :goto_0

    .line 1595
    .restart local v0    # "enforceWithoutCancel":Z
    :cond_6
    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1596
    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_1

    .line 1615
    .end local v0    # "enforceWithoutCancel":Z
    :cond_7
    iget v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v2, v7, :cond_a

    iget-boolean v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCacChosen:Z

    if-nez v7, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-ge v7, v9, :cond_a

    .line 1616
    iget-boolean v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_9

    const v7, 0x7f0e02a5

    :goto_3
    new-array v6, v6, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1618
    .local v3, "msg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1619
    invoke-virtual {p0, v5}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->setNextEnabled(Z)V

    .line 1657
    .end local v3    # "msg":Ljava/lang/String;
    :cond_8
    :goto_4
    iget-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->buttonText:I

    invoke-virtual {p0, v5}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->setNextText(I)V

    goto :goto_2

    .line 1616
    :cond_9
    const v7, 0x7f0e02a8

    goto :goto_3

    .line 1621
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1622
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 1623
    iget-object v6, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1624
    invoke-virtual {p0, v5}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->setNextEnabled(Z)V

    goto :goto_4

    .line 1627
    :cond_b
    iget-boolean v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacCardLocked:Z

    if-nez v5, :cond_8

    .line 1628
    iget-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x7f0e02a9

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1629
    invoke-virtual {p0, v6}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->setNextEnabled(Z)V

    goto :goto_4

    .line 1636
    .end local v1    # "error":Ljava/lang/String;
    :cond_c
    iget-boolean v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCacChosen:Z

    if-eqz v7, :cond_e

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-ge v7, v9, :cond_e

    .line 1638
    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-ne v7, v8, :cond_d

    iget-boolean v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacRegistrationError:Z

    if-ne v7, v6, :cond_d

    .line 1639
    const-string v7, "KnoxChooseLockFingerprintPassword"

    const-string v8, "CAC registration error back to Select: "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacRegistrationResult:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1645
    :goto_5
    iput-boolean v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacRegistrationError:Z

    .line 1655
    :goto_6
    if-lez v2, :cond_12

    :goto_7
    invoke-virtual {p0, v6}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->setNextEnabled(Z)V

    goto :goto_4

    .line 1642
    :cond_d
    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    iget v8, v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->cacNumeric:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 1647
    :cond_e
    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-eq v7, v8, :cond_f

    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-ne v7, v8, :cond_11

    .line 1648
    :cond_f
    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->alphaHint:I

    :goto_8
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :cond_10
    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->numericHint:I

    goto :goto_8

    .line 1650
    :cond_11
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateHeaderText()Ljava/lang/String;

    move-result-object v3

    .line 1651
    .restart local v3    # "msg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .end local v3    # "msg":Ljava/lang/String;
    :cond_12
    move v6, v5

    .line 1655
    goto :goto_7
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 33
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 821
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCacChosen:Z

    move/from16 v29, v0

    if-nez v29, :cond_b

    .line 822
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->hasPwdPatternRestriction:Z

    move/from16 v29, v0

    if-eqz v29, :cond_7

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v29, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;I)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 826
    const v29, 0x7f0e1160

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1026
    :goto_0
    return-object v29

    .line 828
    :cond_0
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v29, 0x0

    aput-object p1, v23, v29

    .line 829
    .local v23, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenNumericSequence"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 830
    .local v14, "hasForbiddenNumericSequence":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumNumericSequenceLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 831
    .local v10, "getMaximumNumericSequenceLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenCharacterSequence"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 832
    .local v12, "hasForbiddenCharacterSequence":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumCharacterSequenceLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 833
    .local v9, "getMaximumCharacterSequenceLength":I
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v29, 0x0

    aput-object p1, v25, v29

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mOldPassword:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v25, v29

    .line 834
    .local v25, "selectionArgsStrDist":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenStringDistance"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 835
    .local v15, "hasForbiddenStringDistance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMinimumCharacterChangeLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 836
    .local v11, "getMinimumCharacterChangeLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenData"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 837
    .local v13, "hasForbiddenData":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasMaxRepeatedCharacters"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 838
    .local v16, "hasMaxRepeatedCharacters":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumCharacterOccurences"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 839
    .local v8, "getMaximumCharacterOccurences":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v31, "isPasswordPatternMatched"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 841
    .local v18, "isPasswordPatternMatched":I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_1

    .line 842
    const v29, 0x7f0e116e

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    add-int/lit8 v32, v10, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 844
    :cond_1
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v12, v0, :cond_2

    .line 845
    const v29, 0x7f0e116d

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    add-int/lit8 v32, v9, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 847
    :cond_2
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v15, v0, :cond_3

    .line 848
    const v29, 0x7f0e1170

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 850
    :cond_3
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v13, v0, :cond_4

    .line 851
    const v29, 0x7f0e116f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 853
    :cond_4
    const/16 v29, 0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 854
    const v29, 0x7f0e1171

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 856
    :cond_5
    if-nez v18, :cond_6

    .line 857
    const v29, 0x7f0e1172

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 859
    :cond_6
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 864
    .end local v8    # "getMaximumCharacterOccurences":I
    .end local v9    # "getMaximumCharacterSequenceLength":I
    .end local v10    # "getMaximumNumericSequenceLength":I
    .end local v11    # "getMinimumCharacterChangeLength":I
    .end local v12    # "hasForbiddenCharacterSequence":I
    .end local v13    # "hasForbiddenData":I
    .end local v14    # "hasForbiddenNumericSequence":I
    .end local v15    # "hasForbiddenStringDistance":I
    .end local v16    # "hasMaxRepeatedCharacters":I
    .end local v18    # "isPasswordPatternMatched":I
    .end local v23    # "selectionArgs":[Ljava/lang/String;
    .end local v25    # "selectionArgsStrDist":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCheckSimplePassword:Z

    move/from16 v29, v0

    if-eqz v29, :cond_b

    .line 865
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 866
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    const v29, 0x7f0e1162

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_8
    const v29, 0x7f0e1164

    goto :goto_1

    .line 871
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 872
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_a

    const v29, 0x7f0e1161

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_a
    const v29, 0x7f0e1163

    goto :goto_2

    .line 879
    :cond_b
    const/16 v19, 0x0

    .line 880
    .local v19, "letters":I
    const/16 v22, 0x0

    .line 881
    .local v22, "numbers":I
    const/16 v20, 0x0

    .line 882
    .local v20, "lowercase":I
    const/16 v27, 0x0

    .line 883
    .local v27, "symbols":I
    const/16 v28, 0x0

    .line 884
    .local v28, "uppercase":I
    const/16 v21, 0x0

    .line 885
    .local v21, "nonletter":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v17

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 886
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 888
    .local v6, "c":C
    const/16 v29, 0x20

    move/from16 v0, v29

    if-lt v6, v0, :cond_c

    const/16 v29, 0x7f

    move/from16 v0, v29

    if-le v6, v0, :cond_d

    .line 889
    :cond_c
    const v29, 0x7f0e02af

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 891
    :cond_d
    const/16 v29, 0x30

    move/from16 v0, v29

    if-lt v6, v0, :cond_e

    const/16 v29, 0x39

    move/from16 v0, v29

    if-gt v6, v0, :cond_e

    .line 892
    add-int/lit8 v22, v22, 0x1

    .line 893
    add-int/lit8 v21, v21, 0x1

    .line 885
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 894
    :cond_e
    const/16 v29, 0x41

    move/from16 v0, v29

    if-lt v6, v0, :cond_f

    const/16 v29, 0x5a

    move/from16 v0, v29

    if-gt v6, v0, :cond_f

    .line 895
    add-int/lit8 v19, v19, 0x1

    .line 896
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 897
    :cond_f
    const/16 v29, 0x61

    move/from16 v0, v29

    if-lt v6, v0, :cond_10

    const/16 v29, 0x7a

    move/from16 v0, v29

    if-gt v6, v0, :cond_10

    .line 898
    add-int/lit8 v19, v19, 0x1

    .line 899
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 901
    :cond_10
    add-int/lit8 v27, v27, 0x1

    .line 902
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 905
    .end local v6    # "c":C
    :cond_11
    const/high16 v29, 0x20000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_12

    const/high16 v29, 0x30000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_15

    .line 907
    :cond_12
    if-gtz v19, :cond_13

    if-lez v27, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    move/from16 v29, v0

    if-gtz v29, :cond_14

    .line 910
    const v29, 0x7f0e02ad

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 913
    :cond_14
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v26

    .line 914
    .local v26, "sequence":I
    const/high16 v29, 0x30000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_24

    const/16 v29, 0x3

    move/from16 v0, v26

    move/from16 v1, v29

    if-le v0, v1, :cond_24

    .line 916
    const v29, 0x7f0e02b4

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 918
    .end local v26    # "sequence":I
    :cond_15
    const/high16 v29, 0x60000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    .line 919
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLetters:I

    move/from16 v29, v0

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_16

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f130002

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLetters:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLetters:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 923
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v29, v0

    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_17

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f130005

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 927
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v29, v0

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_18

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f130003

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 931
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_19

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f130004

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 935
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_1a

    .line 936
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f130006

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 939
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v29, v0

    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_24

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f130007

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 944
    :cond_1b
    const/high16 v29, 0x70000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1e

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v29

    const/16 v30, 0x64

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_1e

    .line 949
    if-gtz v19, :cond_1c

    if-lez v27, :cond_1d

    .line 950
    :cond_1c
    const v29, 0x7f0e1165

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 953
    :cond_1d
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 955
    :cond_1e
    const/high16 v29, 0x40000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1f

    const/4 v4, 0x1

    .line 957
    .local v4, "alphabetic":Z
    :goto_5
    const/high16 v29, 0x50000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_20

    const/4 v5, 0x1

    .line 959
    .local v5, "alphanumeric":Z
    :goto_6
    if-nez p1, :cond_21

    .line 960
    const v29, 0x7f0e027b

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 955
    .end local v4    # "alphabetic":Z
    .end local v5    # "alphanumeric":Z
    :cond_1f
    const/4 v4, 0x0

    goto :goto_5

    .line 957
    .restart local v4    # "alphabetic":Z
    :cond_20
    const/4 v5, 0x0

    goto :goto_6

    .line 962
    .restart local v5    # "alphanumeric":Z
    :cond_21
    if-nez v4, :cond_22

    if-eqz v5, :cond_23

    :cond_22
    if-nez v19, :cond_23

    .line 963
    const v29, 0x7f0e02b0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 965
    :cond_23
    if-eqz v5, :cond_24

    if-nez v22, :cond_24

    .line 966
    const v29, 0x7f0e02b1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 970
    .end local v4    # "alphabetic":Z
    .end local v5    # "alphanumeric":Z
    :cond_24
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_25

    .line 971
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateHeaderText()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 973
    :cond_25
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMaxLength:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_27

    .line 974
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_26

    const v29, 0x7f0e02ab

    :goto_7
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMaxLength:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_26
    const v29, 0x7f0e02ac

    goto :goto_7

    .line 979
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v29, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;I)Z

    move-result v29

    if-eqz v29, :cond_29

    .line 980
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_28

    const v29, 0x7f0e02b3

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_28
    const v29, 0x7f0e02ae

    goto :goto_8

    .line 985
    :cond_29
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v29, 0x0

    const-string v30, "true"

    aput-object v30, v24, v29

    .line 986
    .local v24, "selectionArgsForbStr":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getForbiddenStrings"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 988
    .local v7, "getForbiddenStrings":I
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v29, 0x0

    aput-object p1, v23, v29

    .line 989
    .restart local v23    # "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenNumericSequence"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 990
    .restart local v14    # "hasForbiddenNumericSequence":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumNumericSequenceLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 991
    .restart local v10    # "getMaximumNumericSequenceLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenCharacterSequence"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 992
    .restart local v12    # "hasForbiddenCharacterSequence":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumCharacterSequenceLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 993
    .restart local v9    # "getMaximumCharacterSequenceLength":I
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v29, 0x0

    aput-object p1, v25, v29

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mOldPassword:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v25, v29

    .line 994
    .restart local v25    # "selectionArgsStrDist":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenStringDistance"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 995
    .restart local v15    # "hasForbiddenStringDistance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMinimumCharacterChangeLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 996
    .restart local v11    # "getMinimumCharacterChangeLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenData"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 997
    .restart local v13    # "hasForbiddenData":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasMaxRepeatedCharacters"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 998
    .restart local v16    # "hasMaxRepeatedCharacters":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumCharacterOccurences"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 999
    .restart local v8    # "getMaximumCharacterOccurences":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v31, "isPasswordPatternMatched"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 1001
    .restart local v18    # "isPasswordPatternMatched":I
    if-nez v10, :cond_2a

    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v7, v0, :cond_2a

    if-nez v8, :cond_2a

    if-nez v9, :cond_2a

    if-eqz v11, :cond_30

    .line 1006
    :cond_2a
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_2b

    .line 1007
    const v29, 0x7f0e116e

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    add-int/lit8 v32, v10, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1009
    :cond_2b
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v12, v0, :cond_2c

    .line 1010
    const v29, 0x7f0e116d

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    add-int/lit8 v32, v9, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1012
    :cond_2c
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v15, v0, :cond_2d

    .line 1013
    const v29, 0x7f0e1170

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1015
    :cond_2d
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v13, v0, :cond_2e

    .line 1016
    const v29, 0x7f0e116f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1018
    :cond_2e
    const/16 v29, 0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_2f

    .line 1019
    const v29, 0x7f0e1171

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1021
    :cond_2f
    if-nez v18, :cond_30

    .line 1022
    const v29, 0x7f0e1172

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1026
    :cond_30
    const/16 v29, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1662
    iget-boolean v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacRegistrationError:Z

    if-nez v0, :cond_1

    .line 1663
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 1664
    sget-object v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    .line 1666
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateUi()V

    .line 1668
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1672
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 703
    const/16 v0, 0x1c

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 799
    invoke-static {p1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleNext()V
    .locals 20

    .prologue
    .line 1085
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mDone:Z

    if-eqz v2, :cond_1

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1088
    .local v14, "pin":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1091
    const/4 v9, 0x0

    .line 1092
    .local v9, "errorMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    sget-object v3, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-ne v2, v3, :cond_3

    .line 1093
    const-string v2, "KnoxChooseLockFingerprintPassword"

    const-string v3, "Stage Introduction: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacRegistrationComplete:Z

    .line 1095
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1096
    if-nez v9, :cond_2

    .line 1097
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    sget-object v2, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateStage(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 1226
    :cond_2
    :goto_1
    if-eqz v9, :cond_0

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;)V

    goto :goto_0

    .line 1102
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    sget-object v3, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-ne v2, v3, :cond_14

    .line 1103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1104
    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mFromPersonalPage:Z
    invoke-static {}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$500()Z

    move-result v2

    if-nez v2, :cond_4

    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mForPrivateModeBackupKey:Z
    invoke-static {}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$600()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1105
    :cond_4
    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mPersonalPage_isPin:Z
    invoke-static {}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1106
    const-string v2, "KnoxChooseLockFingerprintPassword"

    const-string v3, "Save PIN for Personalpage"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v14, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->savePrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)V

    .line 1108
    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mForPrivateModeBackupKey:Z
    invoke-static {}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$600()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setPrivateModeFingerPrintLockscreen(ZI)V

    .line 1110
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    const/4 v4, 0x7

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1122
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1123
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 1113
    :cond_6
    const-string v2, "KnoxChooseLockFingerprintPassword"

    const-string v3, "Save Password for Personalpage"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v14, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->savePrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)V

    .line 1115
    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mForPrivateModeBackupKey:Z
    invoke-static {}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$600()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setPrivateModeFingerPrintLockscreen(ZI)V

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 1128
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCacChosen:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_9

    .line 1130
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacRegistrationError:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1131
    const-string v2, "KnoxChooseLockFingerprintPassword"

    const-string v3, "Stage confirm cac pin failed: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    sget-object v2, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateStage(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;)V

    goto/16 :goto_0

    .line 1136
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->cacRegistrationComplete:Z

    if-nez v2, :cond_9

    .line 1137
    const-string v2, "KnoxChooseLockFingerprintPassword"

    const-string v3, "Stage confirm cac pin to be executed: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->executeCacRegistration(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1144
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.biometric_weak_fallback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 1146
    .local v11, "isFallback":Z
    const/4 v12, 0x0

    .line 1148
    .local v12, "isSignature":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v19

    .line 1149
    .local v19, "wasSecureBefore":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_require_password"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 1151
    .local v15, "required":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v15}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 1152
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->isRecovery:Z

    if-eqz v2, :cond_a

    .line 1157
    :cond_a
    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxFinger:Z
    invoke-static {}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1158
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_b

    .line 1159
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PersonaManager;

    .line 1160
    .local v13, "mPm":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/os/PersonaManager;->setIsFingerAsSupplement(IZ)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "knox_finger_print_plus"

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1164
    .end local v13    # "mPm":Landroid/os/PersonaManager;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v14, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1173
    :goto_3
    if-nez v11, :cond_c

    .line 1174
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 1175
    .local v18, "warningClearIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1182
    .end local v18    # "warningClearIntent":Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1183
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "is_smpw_key"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1190
    :goto_4
    new-instance v10, Landroid/content/Intent;

    const-string v2, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1191
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v2, v3, v10, v4, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v16

    .line 1193
    .local v16, "sender":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v4, "setPwdChangeRequested"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/KnoxChooseLockFingerprintPassword;

    const/4 v3, 0x1

    # invokes: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToMDMFW(I)V
    invoke-static {v2, v3}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$1400(Lcom/android/settings/KnoxChooseLockFingerprintPassword;I)V

    .line 1199
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHasChallenge:Z

    if-eqz v2, :cond_10

    .line 1200
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->startVerifyPassword(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1167
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v16    # "sender":Landroid/app/PendingIntent;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v14, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_3

    .line 1185
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "is_smpw_key"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 1203
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v16    # "sender":Landroid/app/PendingIntent;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 1206
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screen-lock enabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_11

    const-string v7, "password"

    :goto_5
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1210
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->finishConfirmStage(Z)V

    goto/16 :goto_1

    .line 1206
    :cond_11
    const-string v7, "pin"

    goto :goto_5

    .line 1213
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "isFallback":Z
    .end local v12    # "isSignature":Z
    .end local v15    # "required":Z
    .end local v16    # "sender":Landroid/app/PendingIntent;
    .end local v19    # "wasSecureBefore":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    .line 1214
    .local v17, "tmp":Ljava/lang/CharSequence;
    if-eqz v17, :cond_13

    move-object/from16 v2, v17

    .line 1215
    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1217
    :cond_13
    sget-object v2, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateStage(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;)V

    goto/16 :goto_1

    .line 1221
    .end local v17    # "tmp":Ljava/lang/CharSequence;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCacChosen:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    sget-object v3, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-ne v2, v3, :cond_2

    .line 1222
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->executeCacRegistration(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 784
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 785
    packed-switch p1, :pswitch_data_0

    .line 796
    :goto_0
    return-void

    .line 787
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 789
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 791
    :cond_0
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    goto :goto_0

    .line 785
    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 1432
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 1545
    :cond_0
    :goto_0
    return-void

    .line 1434
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->handleNext()V

    goto :goto_0

    .line 1438
    :sswitch_1
    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v10, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v8, v10, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1441
    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lt v8, v2, :cond_7

    .line 1442
    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeTimeout:I

    if-gtz v8, :cond_1

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    if-eq v8, v2, :cond_2

    :cond_1
    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lt v8, v11, :cond_5

    .line 1446
    .local v2, "enforceWithoutCancel":Z
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    sget-object v10, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-ne v8, v10, :cond_6

    .line 1448
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v10, 0x64

    if-lt v8, v10, :cond_4

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeTimeout:I

    if-lez v8, :cond_3

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    if-ne v8, v11, :cond_4

    .line 1451
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword;

    # invokes: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToKnoxKeyguard(I)V
    invoke-static {v8, v9}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$2700(Lcom/android/settings/KnoxChooseLockFingerprintPassword;I)V

    .line 1452
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword;

    # invokes: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToMDMFW(I)V
    invoke-static {v8, v9}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$1400(Lcom/android/settings/KnoxChooseLockFingerprintPassword;I)V

    .line 1453
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setResult(I)V

    .line 1454
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 1456
    :cond_4
    if-nez v2, :cond_0

    .line 1458
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    iget v10, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeTimeout:I

    invoke-direct {p0, v8, v10}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->scheduleNextPwdChange(II)V

    .line 1461
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword;

    # invokes: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToKnoxKeyguard(I)V
    invoke-static {v8, v9}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$2700(Lcom/android/settings/KnoxChooseLockFingerprintPassword;I)V

    .line 1462
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword;

    # invokes: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToMDMFW(I)V
    invoke-static {v8, v9}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$1400(Lcom/android/settings/KnoxChooseLockFingerprintPassword;I)V

    .line 1465
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setResult(I)V

    .line 1466
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .end local v2    # "enforceWithoutCancel":Z
    :cond_5
    move v2, v9

    .line 1442
    goto :goto_1

    .line 1469
    .restart local v2    # "enforceWithoutCancel":Z
    :cond_6
    sget-object v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateStage(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;)V

    .line 1470
    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1479
    .end local v2    # "enforceWithoutCancel":Z
    :cond_7
    sget-boolean v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->isChangePwdRequired:Z

    if-eqz v8, :cond_a

    .line 1480
    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    sget-object v10, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-ne v8, v10, :cond_8

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    if-ne v8, v2, :cond_8

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeTimeout:I

    if-lez v8, :cond_8

    .line 1483
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    iget v10, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeTimeout:I

    invoke-direct {p0, v8, v10}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->scheduleNextPwdChange(II)V

    .line 1484
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setResult(I)V

    .line 1485
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1487
    :cond_8
    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    sget-object v9, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-eq v8, v9, :cond_9

    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    sget-object v9, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-ne v8, v9, :cond_0

    .line 1488
    :cond_9
    sget-object v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateStage(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;)V

    .line 1489
    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1497
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword;

    # invokes: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToMDMFW(I)V
    invoke-static {v8, v9}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$1400(Lcom/android/settings/KnoxChooseLockFingerprintPassword;I)V

    .line 1500
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/settings/KnoxChooseLockFingerprintPassword;

    # invokes: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToKnoxKeyguard(I)V
    invoke-static {v8, v9}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$2700(Lcom/android/settings/KnoxChooseLockFingerprintPassword;I)V

    .line 1502
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1509
    :sswitch_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 1513
    iput-boolean v2, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->clickedEmergencyCall:Z

    .line 1514
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1515
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 1517
    .local v4, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_b

    .line 1518
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1520
    .local v3, "i":Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1521
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1522
    .local v7, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1524
    .local v6, "pkgName":Ljava/lang/String;
    const-string v8, "com.android.phone"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1526
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1534
    .end local v3    # "i":Ljava/util/Iterator;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_b
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1535
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10800000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1538
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1539
    :catch_0
    move-exception v1

    .line 1540
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1432
    :sswitch_data_0
    .sparse-switch
        0x7f0d00fb -> :sswitch_1
        0x7f0d00fc -> :sswitch_0
        0x7f0d0104 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x10

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x4

    const/4 v6, 0x0

    .line 439
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 440
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 442
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "from_personal"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mFromPersonalPage:Z
    invoke-static {v5}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$502(Z)Z

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/android/settings/KnoxChooseLockFingerprintPassword;

    if-nez v5, :cond_0

    .line 445
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Fragment contained in wrong activity"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 448
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 449
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v8, "com.samsung.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->isChangePwdRequired:Z

    .line 452
    :cond_1
    iput-boolean v6, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCheckSimplePassword:Z

    .line 453
    const-string v5, "KnoxChooseLockFingerprintPassword"

    const-string v8, "mCheckSimplePassword = false"

    invoke-static {v5, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/admin/DevicePolicyManager;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 456
    iput-boolean v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCheckSimplePassword:Z

    .line 457
    const-string v5, "KnoxChooseLockFingerprintPassword"

    const-string v8, "mCheckSimplePassword = true"

    invoke-static {v5, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_2
    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mFromPersonalPage:Z
    invoke-static {}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$500()Z

    move-result v5

    if-nez v5, :cond_3

    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mForPrivateModeBackupKey:Z
    invoke-static {}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$600()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 461
    :cond_3
    const-string v5, "lockscreen.password_type"

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    .line 490
    :goto_0
    const-string v5, "isRecovery"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->isRecovery:Z

    .line 493
    const-string v5, "lockscreen.password_old"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mOldPassword:Ljava/lang/String;

    .line 494
    const/4 v0, 0x4

    .line 496
    .local v0, "MIN_PWD_LENGTH":I
    iget v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    if-lt v5, v10, :cond_c

    iget v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMaxLength:I

    if-ge v5, v8, :cond_c

    .line 504
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "alarm"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "power"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPowerManager:Landroid/os/PowerManager;

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "phone"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "statusbar"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "input_method"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 511
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "true"

    aput-object v5, v4, v6

    .line 512
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v9, "getRequiredPwdPatternRestrictions"

    invoke-static {v5, v8, v9, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 515
    .local v1, "getRequiredPwdPatternRestrictions":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_5

    .line 516
    iput-boolean v7, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->hasPwdPatternRestriction:Z

    .line 518
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v9, "isChangeRequested"

    invoke-static {v5, v8, v9, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 520
    .local v3, "isChangeRequested":I
    iput v3, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    .line 522
    iget v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lez v5, :cond_6

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/settings/KnoxChooseLockFingerprintPassword;

    # invokes: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->allowHomeAndBack(Z)V
    invoke-static {v5, v6}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$700(Lcom/android/settings/KnoxChooseLockFingerprintPassword;Z)V

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 525
    iget-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v5

    const/high16 v8, 0x20000

    if-lt v5, v8, :cond_6

    .line 526
    iget-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    .line 529
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v9, "getPasswordChangeTimeout"

    invoke-static {v5, v8, v9, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeTimeout:I

    .line 533
    iget v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v5, v10, :cond_7

    .line 534
    iput v10, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    .line 537
    :cond_7
    iget v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMaxLength:I

    if-le v5, v12, :cond_8

    .line 538
    iput v12, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMaxLength:I

    .line 541
    :cond_8
    new-instance v5, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 544
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v8, 0x64

    if-ge v5, v8, :cond_a

    .line 546
    const-string v5, "choose_cac_pin"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v8, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v5

    const/high16 v8, 0x70000

    if-ne v5, v8, :cond_e

    :cond_9
    move v5, v7

    :goto_2
    iput-boolean v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCacChosen:Z

    .line 552
    :cond_a
    return-void

    .line 463
    .end local v0    # "MIN_PWD_LENGTH":I
    .end local v1    # "getRequiredPwdPatternRestrictions":I
    .end local v3    # "isChangeRequested":I
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_b
    const-string v5, "lockscreen.password_type"

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    .line 466
    const-string v5, "lockscreen.password_min"

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    .line 470
    const-string v5, "lockscreen.password_max"

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMaxLength:I

    .line 471
    const-string v5, "lockscreen.password_min_letters"

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLetters:I

    .line 474
    const-string v5, "lockscreen.password_min_uppercase"

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinUpperCase:I

    .line 477
    const-string v5, "lockscreen.password_min_lowercase"

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLowerCase:I

    .line 480
    const-string v5, "lockscreen.password_min_numeric"

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinNumeric:I

    .line 483
    const-string v5, "lockscreen.password_min_symbols"

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinSymbols:I

    .line 486
    const-string v5, "lockscreen.password_min_nonletter"

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinNonLetter:I

    goto/16 :goto_0

    .line 498
    .restart local v0    # "MIN_PWD_LENGTH":I
    :cond_c
    iget v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v5, v10, :cond_d

    .line 499
    iput v10, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_1

    .line 500
    :cond_d
    iget v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    iget v8, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMaxLength:I

    if-le v5, v8, :cond_4

    .line 501
    iget v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMaxLength:I

    iput v5, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_1

    .restart local v1    # "getRequiredPwdPatternRestrictions":I
    .restart local v3    # "isChangeRequested":I
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_e
    move v5, v6

    .line 546
    goto/16 :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 557
    const v0, 0x7f040116

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1569
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 1572
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->handleNext()V

    .line 1573
    const/4 v0, 0x1

    .line 1575
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 760
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 761
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 763
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 766
    :cond_0
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 767
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 769
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->reenableStatusBar()V

    .line 771
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 708
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 712
    iget-boolean v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCacChosen:Z

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceConnectedWithCACCard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 714
    iget v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 716
    const-string v0, "KnoxChooseLockFingerprintPassword"

    const-string v1, "user postponed password setting. Will return after password time expired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 720
    :cond_0
    const-string v0, "KnoxChooseLockFingerprintPassword"

    const-string v1, "device is not paired with CAC card. Starting pairing activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :goto_0
    return-void

    .line 732
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->clickedEmergencyCall:Z

    .line 734
    iget v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->isRecovery:Z

    if-eqz v0, :cond_3

    .line 735
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->disableStatusBar()V

    .line 739
    :cond_3
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateStage(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;)V

    .line 740
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 742
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 744
    sget-boolean v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_4

    .line 746
    iget v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    const/high16 v1, 0x70000

    if-ne v0, v1, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_5

    .line 748
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e1173

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 754
    :cond_4
    :goto_1
    const-string v0, "KnoxChooseLockFingerprintPassword"

    const-string v1, "[PPCLP] onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mH:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 750
    :cond_5
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e115f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 775
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 776
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v0, "current_password"

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1675
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 562
    invoke-super/range {p0 .. p2}, Lcom/android/settings/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 564
    const v12, 0x7f0d00fb

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 565
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    sget-boolean v12, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->isChangePwdRequired:Z

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->isRecovery:Z

    if-eqz v12, :cond_1

    .line 568
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setClickable(Z)V

    .line 569
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 573
    :cond_1
    const v12, 0x7f0d00fc

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 574
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    new-instance v12, Landroid/app/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    .line 577
    const/high16 v12, 0x40000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    if-eq v12, v13, :cond_3

    const/high16 v12, 0x50000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    if-eq v12, v13, :cond_3

    const/high16 v12, 0x60000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    if-eq v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->hasPwdPatternRestriction:Z

    if-eqz v12, :cond_2

    const/high16 v12, 0x70000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lez v12, :cond_a

    const/high16 v12, 0x70000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mRequestedQuality:I

    if-eq v12, v13, :cond_a

    :cond_3
    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    .line 584
    const v12, 0x7f0d00fd

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 585
    const v12, 0x7f0d00f9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 586
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v13, 0x2000000

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 589
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    .line 591
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 592
    .local v3, "PasswordEntrylp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, 0x0

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 593
    const/4 v12, 0x1

    const/high16 v13, 0x42540000    # 53.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 594
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 595
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    .end local v3    # "PasswordEntrylp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMaxLength:I

    if-lez v12, :cond_5

    .line 599
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordMaxLength:I

    .line 600
    .local v2, "MaxLength":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/text/InputFilter;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v15, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 603
    .end local v2    # "MaxLength":I
    :cond_5
    new-instance v12, Lcom/android/internal/widget/TextViewInputDisabler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v12, v13}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 606
    .local v4, "activity":Landroid/app/Activity;
    new-instance v12, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v12, v4, v13, v14}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 608
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v13, v12}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 612
    const v12, 0x7f0d00f8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 615
    # getter for: Lcom/android/settings/KnoxChooseLockFingerprintPassword;->mForFingerprint:Z
    invoke-static {}, Lcom/android/settings/KnoxChooseLockFingerprintPassword;->access$800()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_6

    .line 616
    const v12, 0x7f0d0103

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 617
    .local v7, "helpText":Landroid/widget/TextView;
    if-eqz v7, :cond_6

    .line 618
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_c

    const v12, 0x7f0e1239

    :goto_2
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(I)V

    .line 621
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    .end local v7    # "helpText":Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getInputType()I

    move-result v6

    .line 626
    .local v6, "currentType":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    if-eqz v13, :cond_d

    .end local v6    # "currentType":I
    :goto_3
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 631
    .local v9, "intent":Landroid/content/Intent;
    const-string v12, "confirm_credentials"

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 633
    .local v5, "confirmCredentials":Z
    const-string v12, "password"

    invoke-virtual {v9, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 634
    const-string v12, "has_challenge"

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHasChallenge:Z

    .line 636
    const-string v12, "challenge"

    const-wide/16 v14, 0x0

    invoke-virtual {v9, v12, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mChallenge:J

    .line 637
    const-string v12, "KnoxChooseLockFingerprintPassword"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "challenge : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mChallenge:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    if-nez p2, :cond_e

    .line 639
    sget-object v12, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateStage(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;)V

    .line 640
    if-eqz v5, :cond_7

    .line 641
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v13, 0x3a

    const v14, 0x7f0e025a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    .line 657
    :cond_7
    :goto_4
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mDone:Z

    .line 658
    instance-of v12, v4, Lcom/android/settings/SettingsActivity;

    if-eqz v12, :cond_8

    move-object v10, v4

    .line 659
    check-cast v10, Lcom/android/settings/SettingsActivity;

    .line 663
    .local v10, "sa":Lcom/android/settings/SettingsActivity;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCacChosen:Z

    if-eqz v12, :cond_10

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    const/16 v13, 0x64

    if-ge v12, v13, :cond_10

    .line 665
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v13, 0x7f0e117e    # 1.888412E38f

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 666
    const v8, 0x7f0e117e    # 1.888412E38f

    .line 673
    .local v8, "id":I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_12

    const v8, 0x7f0e0270

    .line 675
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->title:Ljava/lang/CharSequence;

    .line 676
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->title:Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 678
    .end local v8    # "id":I
    .end local v10    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_8
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 679
    const v12, 0x7f0d0017

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mTitleText:Landroid/widget/TextView;

    .line 680
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mTitleText:Landroid/widget/TextView;

    if-eqz v12, :cond_9

    .line 681
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mTitleText:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mTitleText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->title:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    :cond_9
    return-void

    .line 577
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v5    # "confirmCredentials":Z
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 608
    .restart local v4    # "activity":Landroid/app/Activity;
    :cond_b
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 618
    .restart local v7    # "helpText":Landroid/widget/TextView;
    :cond_c
    const v12, 0x7f0e1238

    goto/16 :goto_2

    .line 626
    .end local v7    # "helpText":Landroid/widget/TextView;
    .restart local v6    # "currentType":I
    :cond_d
    const/16 v6, 0x12

    goto/16 :goto_3

    .line 646
    .end local v6    # "currentType":I
    .restart local v5    # "confirmCredentials":Z
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_e
    const-string v12, "first_pin"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 647
    const-string v12, "ui_stage"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 648
    .local v11, "state":Ljava/lang/String;
    if-eqz v11, :cond_f

    .line 649
    invoke-static {v11}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    .line 650
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateStage(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;)V

    .line 653
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    if-nez v12, :cond_7

    .line 654
    const-string v12, "current_password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    goto/16 :goto_4

    .line 668
    .end local v11    # "state":Ljava/lang/String;
    .restart local v10    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_11

    const v8, 0x7f0e0270

    .restart local v8    # "id":I
    :goto_7
    goto/16 :goto_5

    .end local v8    # "id":I
    :cond_11
    const v8, 0x7f0e07b0

    goto :goto_7

    .line 673
    .restart local v8    # "id":I
    :cond_12
    const v8, 0x7f0e07b0

    goto/16 :goto_6
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1425
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 1429
    return-void
.end method

.method protected updateStage(Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    .line 804
    .local v0, "previousStage":Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mUiStage:Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    .line 805
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateUi()V

    .line 809
    if-eq v0, p1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 812
    :cond_0
    return-void
.end method
