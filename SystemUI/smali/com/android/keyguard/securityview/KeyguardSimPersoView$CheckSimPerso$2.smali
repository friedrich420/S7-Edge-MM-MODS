.class Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso$2;
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


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso$2;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso$2;->this$1:Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;->onSimCheckResponse(Z)V

    .line 163
    return-void
.end method
