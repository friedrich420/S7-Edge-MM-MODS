.class public Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSimPukTMOView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public needsInput()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 77
    sget v5, Lcom/android/keyguard/R$id;->keyguard_unlock_view_help_text:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 78
    .local v3, "helpTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112005c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 80
    .local v4, "voiceCapable":Z
    if-eqz v3, :cond_0

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->kg_sim_puk_tmo_help_pin_blocked:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->kg_sim_puk_tmo_help_contact_service_provider:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "helpTextString":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    const v7, 0x104028f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .end local v2    # "helpTextString":Ljava/lang/String;
    :cond_0
    :goto_0
    sget v5, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 93
    .local v0, "emergencyCallButton":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 95
    if-eqz v4, :cond_4

    .line 96
    sget v5, Lcom/android/keyguard/R$string;->kg_lockscreen_emergency_call_button_text:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 101
    :goto_1
    new-instance v5, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView$1;-><init>(Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_1
    sget v5, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 115
    .local v1, "emergencyCallButton2":Landroid/widget/Button;
    if-eqz v4, :cond_5

    .line 116
    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    sget v5, Lcom/android/keyguard/R$string;->kg_sim_puk_tmo_sos_call:I

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 119
    new-instance v5, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView$2;-><init>(Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_2
    :goto_2
    return-void

    .line 88
    .end local v0    # "emergencyCallButton":Landroid/widget/Button;
    .end local v1    # "emergencyCallButton2":Landroid/widget/Button;
    .restart local v2    # "helpTextString":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    .end local v2    # "helpTextString":Ljava/lang/String;
    .restart local v0    # "emergencyCallButton":Landroid/widget/Button;
    :cond_4
    sget v5, Lcom/android/keyguard/R$string;->kg_sim_puk_tmo_enter_unlock_code:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 99
    sget v5, Lcom/android/keyguard/R$drawable;->ic_dialog_dialer:I

    invoke-virtual {v0, v5, v8, v8, v8}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 132
    .restart local v1    # "emergencyCallButton2":Landroid/widget/Button;
    :cond_5
    if-eqz v1, :cond_2

    .line 133
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 229
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 61
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 71
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 236
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 206
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method
