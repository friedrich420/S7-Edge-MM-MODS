.class Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$6;
.super Ljava/lang/Object;
.source "KeyguardCarrierLockPlusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$6;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    const-string v2, "KeyguardCarrierLockPlusView"

    const-string v3, "emergencyButton onclick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.phone.EmergencyDialer.LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$6;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->access$700(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "KeyguardCarrierLockPlusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
