.class Lcom/android/keyguard/status/KeyguardDateView$1;
.super Landroid/os/Handler;
.source "KeyguardDateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/KeyguardDateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/KeyguardDateView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/KeyguardDateView;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/keyguard/status/KeyguardDateView$1;->this$0:Lcom/android/keyguard/status/KeyguardDateView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView$1;->this$0:Lcom/android/keyguard/status/KeyguardDateView;

    # invokes: Lcom/android/keyguard/status/KeyguardDateView;->handleUpdateDateText()V
    invoke-static {v0}, Lcom/android/keyguard/status/KeyguardDateView;->access$000(Lcom/android/keyguard/status/KeyguardDateView;)V

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView$1;->this$0:Lcom/android/keyguard/status/KeyguardDateView;

    iget-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView$1;->this$0:Lcom/android/keyguard/status/KeyguardDateView;

    invoke-virtual {v1}, Lcom/android/keyguard/status/KeyguardDateView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_date_format_for_display:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/status/KeyguardDateView;->mDisplayPattern:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/status/KeyguardDateView;->access$102(Lcom/android/keyguard/status/KeyguardDateView;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView$1;->this$0:Lcom/android/keyguard/status/KeyguardDateView;

    iget-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView$1;->this$0:Lcom/android/keyguard/status/KeyguardDateView;

    invoke-virtual {v1}, Lcom/android/keyguard/status/KeyguardDateView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_date_format_for_tts:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/status/KeyguardDateView;->mTTSPattern:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/status/KeyguardDateView;->access$202(Lcom/android/keyguard/status/KeyguardDateView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
