.class public Lcom/android/settings/SimPersoLockSettings;
.super Landroid/app/Activity;
.source "SimPersoLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SimPersoLockSettings$3;,
        Lcom/android/settings/SimPersoLockSettings$TouchInput;,
        Lcom/android/settings/SimPersoLockSettings$LockState;
    }
.end annotation


# static fields
.field private static mEnableCancelBackConcept:Z

.field private static mNum_Retry:I


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBackSpaceButton:Landroid/view/View;

.field private mCancelButton:Landroid/widget/TextView;

.field private mCurrentInputLockNumber:Ljava/lang/String;

.field private mEnteredDigits:I

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

.field private mNewPasswd:Ljava/lang/String;

.field private mOkButton:Landroid/widget/TextView;

.field private mOldPasswd:Ljava/lang/String;

.field private mPasswordText:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field private mRes:Landroid/content/res/Resources;

.field private mToState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    sput v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    .line 98
    sput-boolean v0, Lcom/android/settings/SimPersoLockSettings;->mEnableCancelBackConcept:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 101
    new-instance v0, Lcom/android/settings/SimPersoLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPersoLockSettings$1;-><init>(Lcom/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/android/settings/SimPersoLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPersoLockSettings$2;-><init>(Lcom/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 515
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SimPersoLockSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimPersoLockSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings;->simLockChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SimPersoLockSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimPersoLockSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings;->simLockPasswdChanged(Z)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/SimPersoLockSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimPersoLockSettings;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings;->reportDigit(I)V

    return-void
.end method

.method private deleteDigit()V
    .locals 3

    .prologue
    .line 503
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 504
    .local v0, "digits":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 505
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 506
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 507
    iget v2, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    .line 509
    :cond_0
    return-void
.end method

.method private reportDigit(I)V
    .locals 2
    .param p1, "digit"    # I

    .prologue
    .line 489
    iget v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 500
    :cond_1
    :goto_0
    return-void

    .line 495
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 499
    iget v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    goto :goto_0
.end method

.method private simLockChanged(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    const/4 v3, 0x0

    .line 181
    const-string v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simLockChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz p1, :cond_1

    .line 183
    sput v3, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    .line 184
    iget-boolean v0, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e0632

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    .line 211
    :goto_1
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e0633

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 195
    :cond_1
    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    .line 196
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 197
    const v0, 0x7f0e0654

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_1

    .line 199
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e0652

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e0636

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private simLockPasswdChanged(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    const/4 v3, 0x0

    .line 154
    const-string v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simLockPasswdChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-nez p1, :cond_2

    .line 156
    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    .line 157
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 158
    const v0, 0x7f0e0654

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    .line 178
    :goto_1
    return-void

    .line 160
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e0652

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e0636

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 172
    :cond_2
    sput v3, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    .line 173
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e0638

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_1
.end method

.method private tryChangeSimLockPasswd()V
    .locals 4

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 149
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 150
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mOldPasswd:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 151
    return-void
.end method

.method private updateViews()V
    .locals 2

    .prologue
    .line 264
    sget-object v0, Lcom/android/settings/SimPersoLockSettings$3;->$SwitchMap$com$android$settings$SimPersoLockSettings$LockState:[I

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 308
    const-string v0, "SimPersoLockSettings"

    const-string v1, "Exception: unexpected state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :pswitch_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e064c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 311
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e062d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 275
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e064d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e062e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 283
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    if-eqz v0, :cond_3

    .line 284
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e0650

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e0634

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 290
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e0651

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 293
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e0635

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 299
    :pswitch_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 300
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e0653

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 302
    :cond_5
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e0637

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 437
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 438
    .local v3, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 440
    .local v0, "action":I
    if-ne v0, v4, :cond_5

    .line 441
    const/16 v5, 0x11

    if-ne v3, v5, :cond_1

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    .line 478
    :cond_0
    :goto_0
    return v4

    .line 443
    :cond_1
    const/16 v5, 0x12

    if-ne v3, v5, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->onClickConfirm()V

    goto :goto_0

    .line 445
    :cond_2
    const/16 v5, 0x43

    if-ne v3, v5, :cond_3

    .line 446
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->deleteDigit()V

    goto :goto_0

    .line 447
    :cond_3
    const/4 v5, 0x7

    if-lt v3, v5, :cond_4

    const/16 v5, 0x10

    if-gt v3, v5, :cond_4

    .line 448
    add-int/lit8 v5, v3, -0x7

    invoke-direct {p0, v5}, Lcom/android/settings/SimPersoLockSettings;->reportDigit(I)V

    goto :goto_0

    .line 450
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 452
    :cond_5
    if-nez v0, :cond_0

    .line 453
    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 454
    sget-boolean v5, Lcom/android/settings/SimPersoLockSettings;->mEnableCancelBackConcept:Z

    if-eqz v5, :cond_a

    .line 455
    const/4 v2, 0x0

    .line 456
    .local v2, "isVirtualKeyboard":Z
    const/4 v1, 0x0

    .line 457
    .local v1, "isFlagSystem":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 458
    const/4 v2, 0x1

    .line 461
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_7

    .line 462
    const/4 v1, 0x1

    .line 464
    :cond_7
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 465
    iget v5, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    if-lez v5, :cond_8

    .line 466
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->deleteDigit()V

    goto :goto_0

    .line 468
    :cond_8
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 470
    :cond_9
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 473
    .end local v1    # "isFlagSystem":Z
    .end local v2    # "isVirtualKeyboard":Z
    :cond_a
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method protected getProgressDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 337
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0e0639

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 347
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 348
    const v0, 0x7f0e0654

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 353
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->deleteDigit()V

    goto :goto_0

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->onClickConfirm()V

    goto :goto_0
.end method

.method public onClickConfirm()V
    .locals 6

    .prologue
    const v5, 0x7f0e064e

    const v3, 0x7f0e0630

    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 361
    iget v1, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    if-nez v1, :cond_0

    .line 362
    const v1, 0x7f0e062f

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 433
    :goto_0
    return-void

    .line 366
    :cond_0
    iget v1, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    if-ge v1, v2, :cond_2

    .line 367
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 372
    :cond_1
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 377
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    if-le v1, v2, :cond_3

    .line 378
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 382
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_4

    .line 383
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 389
    :cond_4
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$3;->$SwitchMap$com$android$settings$SimPersoLockSettings$LockState:[I

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v2}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 428
    const-string v1, "SimPersoLockSettings"

    const-string v2, "Exception: unexpected click"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected click event"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    .line 392
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_REENTER:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    .line 431
    :goto_1
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iput v4, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    goto :goto_0

    .line 396
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    .line 397
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 398
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->tryChangeSimLockPasswd()V

    goto :goto_1

    .line 400
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 402
    const v1, 0x7f0e064f

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 410
    :goto_2
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_1

    .line 406
    :cond_6
    const v1, 0x7f0e0631

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 415
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mOldPasswd:Ljava/lang/String;

    .line 416
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_1

    .line 420
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 421
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    .line 422
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings/SimPersoLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccSimPersoEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mActionBar:Landroid/app/ActionBar;

    .line 218
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 219
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccUsimPersoEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    .line 222
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "productName":Ljava/lang/String;
    const-string v1, "novel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    sput-boolean v2, Lcom/android/settings/SimPersoLockSettings;->mEnableCancelBackConcept:Z

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->setupViews()V

    .line 228
    new-instance v1, Lcom/android/settings/SimPersoLockSettings$TouchInput;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SimPersoLockSettings$TouchInput;-><init>(Lcom/android/settings/SimPersoLockSettings;Lcom/android/settings/SimPersoLockSettings$1;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "checkbox"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    const-string v1, "SimPersoLockSettings"

    const-string v2, "Change USIM lock state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0e0628

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 234
    :cond_1
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    .line 241
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->updateViews()V

    .line 242
    return-void

    .end local v0    # "productName":Ljava/lang/String;
    :cond_2
    move v1, v3

    .line 219
    goto :goto_0

    .line 236
    .restart local v0    # "productName":Ljava/lang/String;
    :cond_3
    const-string v1, "SimPersoLockSettings"

    const-string v2, "Change USIM lock password"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_4

    .line 238
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0e062b

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 239
    :cond_4
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 317
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPersoLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    .line 320
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 326
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 327
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/SimPersoLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    .line 332
    return-void
.end method

.method protected setupViews()V
    .locals 1

    .prologue
    .line 249
    const v0, 0x7f0401e4

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPersoLockSettings;->setContentView(I)V

    .line 251
    const v0, 0x7f0d00f8

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f0d01fa

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f0d01fb

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mBackSpaceButton:Landroid/view/View;

    .line 254
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v0, 0x7f0d0207

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mOkButton:Landroid/widget/TextView;

    .line 257
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const v0, 0x7f0d00ee

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mCancelButton:Landroid/widget/TextView;

    .line 260
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    return-void
.end method

.method public updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V
    .locals 3
    .param p1, "lockstate"    # Lcom/android/settings/SimPersoLockSettings$LockState;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    .line 484
    const-string v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->updateViews()V

    .line 486
    return-void
.end method
