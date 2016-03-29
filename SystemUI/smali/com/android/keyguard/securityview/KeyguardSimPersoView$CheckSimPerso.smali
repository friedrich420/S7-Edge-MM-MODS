.class abstract Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;
.super Ljava/lang/Thread;
.source "KeyguardSimPersoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/securityview/KeyguardSimPersoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPerso"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/securityview/KeyguardSimPersoView;Ljava/lang/String;)V
    .locals 0
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;->mPin:Ljava/lang/String;

    .line 143
    return-void
.end method


# virtual methods
.method abstract onSimCheckResponse(Z)V
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x32

    .line 150
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPerso(Ljava/lang/String;)Z

    move-result v1

    .line 153
    .local v1, "verifySucceed":Z
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    new-instance v3, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso$1;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso$1;-><init>(Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;Z)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1    # "verifySucceed":Z
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardSimPersoView"

    const-string v3, "RemoteException for supplyPerso:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;->this$0:Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    new-instance v3, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso$2;-><init>(Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;)V

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
