.class Lcom/android/keyguard/KeyguardMessageArea$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 1
    .param p1, "bouncer"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    # setter for: Lcom/android/keyguard/KeyguardMessageArea;->isBouncer:Z
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->access$202(Lcom/android/keyguard/KeyguardMessageArea;Z)Z

    .line 96
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 89
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 92
    return-void
.end method
