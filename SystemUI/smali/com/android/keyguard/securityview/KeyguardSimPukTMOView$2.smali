.class Lcom/android/keyguard/securityview/KeyguardSimPukTMOView$2;
.super Ljava/lang/Object;
.source "KeyguardSimPukTMOView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->access$000(Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    if-nez v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->access$000(Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tel"

    const-string v2, "911"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;->access$200(Lcom/android/keyguard/securityview/KeyguardSimPukTMOView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
