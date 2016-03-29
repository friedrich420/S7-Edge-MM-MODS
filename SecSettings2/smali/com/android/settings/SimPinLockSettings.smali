.class public Lcom/android/settings/SimPinLockSettings;
.super Landroid/app/Activity;
.source "SimPinLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SimPinLockSettings$3;,
        Lcom/android/settings/SimPinLockSettings$TouchInput;,
        Lcom/android/settings/SimPinLockSettings$LockState;
    }
.end annotation


# static fields
.field private static mEnableCancelBackConcept:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBackSpaceButton:Landroid/view/View;

.field private mCancelButton:Landroid/widget/TextView;

.field private mCurrentInputLockNumber:Ljava/lang/String;

.field private mEnteredDigits:I

.field private mExceptionIsNull:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockState:Lcom/android/settings/SimPinLockSettings$LockState;

.field private mNewPin:Ljava/lang/String;

.field private mOkButton:Landroid/widget/TextView;

.field private mOldPin:Ljava/lang/String;

.field private mPasswordText:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRes:Landroid/content/res/Resources;

.field private mToState:Z

.field private num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/SimPinLockSettings;->mEnableCancelBackConcept:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput v0, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    .line 87
    iput v0, p0, Lcom/android/settings/SimPinLockSettings;->num_of_retry:I

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SimPinLockSettings;->mExceptionIsNull:Z

    .line 95
    new-instance v0, Lcom/android/settings/SimPinLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPinLockSettings$1;-><init>(Lcom/android/settings/SimPinLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/android/settings/SimPinLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPinLockSettings$2;-><init>(Lcom/android/settings/SimPinLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 497
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SimPinLockSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SimPinLockSettings;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/settings/SimPinLockSettings;->mExceptionIsNull:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/SimPinLockSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimPinLockSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/settings/SimPinLockSettings;->mExceptionIsNull:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/SimPinLockSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimPinLockSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/SimPinLockSettings;->iccLockChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SimPinLockSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimPinLockSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/SimPinLockSettings;->iccPinChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/SimPinLockSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimPinLockSettings;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/SimPinLockSettings;->reportDigit(I)V

    return-void
.end method

.method private deleteDigit()V
    .locals 3

    .prologue
    .line 485
    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 486
    .local v0, "digits":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 487
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 488
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 489
    iget v2, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    .line 491
    :cond_0
    return-void
.end method

.method private iccLockChanged(Z)V
    .locals 7
    .param p1, "success"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 170
    if-eqz p1, :cond_1

    .line 171
    iget-boolean v1, p0, Lcom/android/settings/SimPinLockSettings;->mToState:Z

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e063d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->finish()V

    .line 204
    :goto_1
    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e063e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getLockPinKey()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v1

    if-lez v1, :cond_2

    .line 185
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e0641

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e0643

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "message":Ljava/lang/String;
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 202
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->finish()V

    goto/16 :goto_1

    .line 190
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e1557

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e1558

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .restart local v0    # "message":Ljava/lang/String;
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 196
    .end local v0    # "message":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e0618

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e063c

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .restart local v0    # "message":Ljava/lang/String;
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2
.end method

.method private iccPinChanged(Z)V
    .locals 7
    .param p1, "success"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 139
    const-string v0, ""

    .line 141
    .local v0, "message":Ljava/lang/String;
    if-nez p1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getLockPinKey()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v1

    if-lez v1, :cond_0

    .line 144
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e0642

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e0643

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 161
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->finish()V

    .line 166
    :goto_1
    return-void

    .line 149
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e1557

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e1558

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 155
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e0614

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e063c

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e0617

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->finish()V

    goto/16 :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "logMsg"    # Ljava/lang/String;

    .prologue
    .line 481
    const-string v0, "SimPinLockSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-void
.end method

.method private reportDigit(I)V
    .locals 2
    .param p1, "digit"    # I

    .prologue
    .line 470
    iget v0, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :cond_0
    iget v0, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 477
    iget v0, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    goto :goto_0
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 134
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SimPinLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 135
    return-void
.end method

.method private updateViews()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 255
    sget-object v0, Lcom/android/settings/SimPinLockSettings$3;->$SwitchMap$com$android$settings$SimPinLockSettings$LockState:[I

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mLockState:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPinLockSettings$LockState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 300
    const-string v0, "Exception: unexpected state"

    invoke-direct {p0, v0}, Lcom/android/settings/SimPinLockSettings;->log(Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e0648

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 303
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e060e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 265
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e0649

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e060f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 273
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v0

    iput v0, p0, Lcom/android/settings/SimPinLockSettings;->num_of_retry:I

    .line 274
    iget-boolean v0, p0, Lcom/android/settings/SimPinLockSettings;->mToState:Z

    if-eqz v0, :cond_3

    .line 275
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e064a

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/SimPinLockSettings;->num_of_retry:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SimPinLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e060b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 281
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 282
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e064b

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/SimPinLockSettings;->num_of_retry:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SimPinLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e060c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 290
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v0

    iput v0, p0, Lcom/android/settings/SimPinLockSettings;->num_of_retry:I

    .line 291
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 292
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e0647

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/SimPinLockSettings;->num_of_retry:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SimPinLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0e060d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 255
    nop

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

    .line 419
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 420
    .local v3, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 422
    .local v0, "action":I
    if-ne v0, v4, :cond_5

    .line 423
    const/16 v5, 0x11

    if-ne v3, v5, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->finish()V

    .line 460
    :cond_0
    :goto_0
    return v4

    .line 425
    :cond_1
    const/16 v5, 0x12

    if-ne v3, v5, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->onClickConfirm()V

    goto :goto_0

    .line 427
    :cond_2
    const/16 v5, 0x43

    if-ne v3, v5, :cond_3

    .line 428
    invoke-direct {p0}, Lcom/android/settings/SimPinLockSettings;->deleteDigit()V

    goto :goto_0

    .line 429
    :cond_3
    const/4 v5, 0x7

    if-lt v3, v5, :cond_4

    const/16 v5, 0x10

    if-gt v3, v5, :cond_4

    .line 430
    add-int/lit8 v5, v3, -0x7

    invoke-direct {p0, v5}, Lcom/android/settings/SimPinLockSettings;->reportDigit(I)V

    goto :goto_0

    .line 432
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 434
    :cond_5
    if-nez v0, :cond_0

    .line 435
    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 436
    sget-boolean v5, Lcom/android/settings/SimPinLockSettings;->mEnableCancelBackConcept:Z

    if-eqz v5, :cond_a

    .line 437
    const/4 v2, 0x0

    .line 438
    .local v2, "isVirtualKeyboard":Z
    const/4 v1, 0x0

    .line 439
    .local v1, "isFlagSystem":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 440
    const/4 v2, 0x1

    .line 443
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_7

    .line 444
    const/4 v1, 0x1

    .line 446
    :cond_7
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 447
    iget v5, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    if-lez v5, :cond_8

    .line 448
    invoke-direct {p0}, Lcom/android/settings/SimPinLockSettings;->deleteDigit()V

    goto :goto_0

    .line 450
    :cond_8
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 452
    :cond_9
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 455
    .end local v1    # "isFlagSystem":Z
    .end local v2    # "isVirtualKeyboard":Z
    :cond_a
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/android/settings/SimPinLockSettings;->deleteDigit()V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->onClickConfirm()V

    goto :goto_0
.end method

.method public onClickConfirm()V
    .locals 6

    .prologue
    const v5, 0x7f0e0645

    const v3, 0x7f0e063b

    const/4 v4, 0x0

    .line 336
    iget v1, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    if-nez v1, :cond_1

    .line 337
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const v1, 0x7f0e0644

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 415
    :goto_0
    return-void

    .line 342
    :cond_0
    const v1, 0x7f0e063a

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 347
    :cond_1
    iget v1, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    .line 348
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 353
    :cond_2
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 358
    :cond_3
    iget v1, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_5

    .line 359
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 360
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 365
    :cond_4
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 372
    :cond_5
    sget-object v1, Lcom/android/settings/SimPinLockSettings$3;->$SwitchMap$com$android$settings$SimPinLockSettings$LockState:[I

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mLockState:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {v2}, Lcom/android/settings/SimPinLockSettings$LockState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 410
    const-string v1, "Exception: unexpected click"

    invoke-direct {p0, v1}, Lcom/android/settings/SimPinLockSettings;->log(Ljava/lang/String;)V

    .line 411
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected click event"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mNewPin:Ljava/lang/String;

    .line 375
    sget-object v1, Lcom/android/settings/SimPinLockSettings$LockState;->LOCK_REENTER:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPinLockSettings;->updateStage(Lcom/android/settings/SimPinLockSettings$LockState;)V

    .line 413
    :goto_1
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iput v4, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    goto :goto_0

    .line 379
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 381
    invoke-direct {p0}, Lcom/android/settings/SimPinLockSettings;->tryChangePin()V

    goto :goto_1

    .line 383
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 384
    const v1, 0x7f0e0646

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 393
    :goto_2
    sget-object v1, Lcom/android/settings/SimPinLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPinLockSettings;->updateStage(Lcom/android/settings/SimPinLockSettings$LockState;)V

    goto :goto_1

    .line 389
    :cond_7
    const v1, 0x7f0e0612

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 398
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mOldPin:Ljava/lang/String;

    .line 399
    sget-object v1, Lcom/android/settings/SimPinLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPinLockSettings;->updateStage(Lcom/android/settings/SimPinLockSettings$LockState;)V

    goto :goto_1

    .line 403
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    .line 404
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 405
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/SimPinLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings/SimPinLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 372
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

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mActionBar:Landroid/app/ActionBar;

    .line 211
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 212
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/SimPinLockSettings;->mToState:Z

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    .line 215
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "productName":Ljava/lang/String;
    const-string v1, "novel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    sput-boolean v2, Lcom/android/settings/SimPinLockSettings;->mEnableCancelBackConcept:Z

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->setupViews()V

    .line 221
    new-instance v1, Lcom/android/settings/SimPinLockSettings$TouchInput;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SimPinLockSettings$TouchInput;-><init>(Lcom/android/settings/SimPinLockSettings;Lcom/android/settings/SimPinLockSettings$1;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "checkbox"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0e0607

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 226
    :cond_1
    sget-object v1, Lcom/android/settings/SimPinLockSettings$LockState;->LOCK_CONFIRM:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPinLockSettings;->updateStage(Lcom/android/settings/SimPinLockSettings$LockState;)V

    .line 232
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/SimPinLockSettings;->updateViews()V

    .line 233
    return-void

    .end local v0    # "productName":Ljava/lang/String;
    :cond_2
    move v1, v3

    .line 212
    goto :goto_0

    .line 228
    .restart local v0    # "productName":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_4

    .line 229
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0e060a

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 230
    :cond_4
    sget-object v1, Lcom/android/settings/SimPinLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPinLockSettings;->updateStage(Lcom/android/settings/SimPinLockSettings$LockState;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 309
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPinLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    .line 312
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 318
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 319
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/SimPinLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    .line 324
    return-void
.end method

.method protected setupViews()V
    .locals 1

    .prologue
    .line 240
    const v0, 0x7f0401e4

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPinLockSettings;->setContentView(I)V

    .line 242
    const v0, 0x7f0d00f8

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f0d01fa

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    .line 244
    const v0, 0x7f0d01fb

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mBackSpaceButton:Landroid/view/View;

    .line 245
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    const v0, 0x7f0d0207

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mOkButton:Landroid/widget/TextView;

    .line 248
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const v0, 0x7f0d00ee

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mCancelButton:Landroid/widget/TextView;

    .line 251
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    return-void
.end method

.method public updateStage(Lcom/android/settings/SimPinLockSettings$LockState;)V
    .locals 0
    .param p1, "lockstate"    # Lcom/android/settings/SimPinLockSettings$LockState;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/settings/SimPinLockSettings;->mLockState:Lcom/android/settings/SimPinLockSettings$LockState;

    .line 466
    invoke-direct {p0}, Lcom/android/settings/SimPinLockSettings;->updateViews()V

    .line 467
    return-void
.end method
