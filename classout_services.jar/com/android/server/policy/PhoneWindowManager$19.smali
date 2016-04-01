.class Lcom/android/server/policy/PhoneWindowManager$19;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 8742
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 8746
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 8747
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 8748
    return-void
.end method
