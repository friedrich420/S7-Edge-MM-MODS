.class Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;
.super Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;
.source "KeyguardSimPersoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardSimPersoView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardSimPersoView;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;-><init>(Lcom/android/keyguard/securityview/KeyguardSimPersoView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimCheckResponse(Z)V
    .locals 2
    .param p1, "verifySucceed"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    new-instance v1, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2$1;-><init>(Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;Z)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method
