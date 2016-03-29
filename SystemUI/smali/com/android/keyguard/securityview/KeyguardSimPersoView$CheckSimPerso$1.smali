.class Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso$1;
.super Ljava/lang/Object;
.source "KeyguardSimPersoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;

.field final synthetic val$verifySucceed:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;Z)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;

    iput-boolean p2, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso$1;->val$verifySucceed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso$1;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;

    iget-boolean v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso$1;->val$verifySucceed:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;->onSimCheckResponse(Z)V

    .line 156
    return-void
.end method
