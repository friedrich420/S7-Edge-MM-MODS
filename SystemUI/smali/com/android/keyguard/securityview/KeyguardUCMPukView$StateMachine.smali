.class Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardUCMPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/securityview/KeyguardUCMPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field private state:I

.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->ENTER_PUK:I

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->ENTER_PIN:I

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->CONFIRM_PIN:I

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->DONE:I

    .line 77
    iput v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->state:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;
    .param p2, "x1"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;-><init>(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "msg":I
    iget v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->state:I

    if-nez v1, :cond_3

    .line 82
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->checkPuk()Z
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$100(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    iput v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->state:I

    .line 84
    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_puk_enter_pin_hint:I

    .line 105
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->resetPasswordText(Z)V
    invoke-static {v1, v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$400(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Z)V

    .line 106
    if-eqz v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$600(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getSimIconResId()I
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$500(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)I

    move-result v2

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 108
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$700(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    .line 110
    :cond_1
    return-void

    .line 86
    :cond_2
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_puk_hint:I

    goto :goto_0

    .line 88
    :cond_3
    iget v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->state:I

    if-ne v1, v3, :cond_5

    .line 89
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->checkPin()Z
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$200(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    iput v2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->state:I

    .line 91
    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_enter_confirm_pin_hint:I

    goto :goto_0

    .line 93
    :cond_4
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    goto :goto_0

    .line 95
    :cond_5
    iget v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->state:I

    if-ne v1, v2, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->state:I

    .line 98
    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_unlock_progress_dialog_message:I

    .line 99
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->updateSim()V
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$300(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)V

    goto :goto_0

    .line 101
    :cond_6
    iput v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->state:I

    .line 102
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_confirm_pin_hint:I

    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    const-string v1, ""

    # setter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mPinText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$802(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    const-string v1, ""

    # setter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mPukText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$902(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->state:I

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$1000(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 117
    return-void
.end method
