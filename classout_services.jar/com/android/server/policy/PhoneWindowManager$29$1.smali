.class Lcom/android/server/policy/PhoneWindowManager$29$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$29;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$29;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$29;)V
    .registers 2

    .prologue
    .line 9750
    iput-object p1, p0, this$1:Lcom/android/server/policy/PhoneWindowManager$29;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 9752
    if-eq p1, v2, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_30

    .line 9753
    :cond_6
    iget-object v0, p0, this$1:Lcom/android/server/policy/PhoneWindowManager$29;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    if-ne v0, v2, :cond_21

    .line 9754
    iget-object v0, p0, this$1:Lcom/android/server/policy/PhoneWindowManager$29;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, this$1:Lcom/android/server/policy/PhoneWindowManager$29;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 9755
    iget-object v0, p0, this$1:Lcom/android/server/policy/PhoneWindowManager$29;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 9760
    :cond_21
    :goto_21
    iget-object v0, p0, this$1:Lcom/android/server/policy/PhoneWindowManager$29;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 9761
    iget-object v0, p0, this$1:Lcom/android/server/policy/PhoneWindowManager$29;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 9762
    return-void

    .line 9758
    :cond_30
    iget-object v0, p0, this$1:Lcom/android/server/policy/PhoneWindowManager$29;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, this$1:Lcom/android/server/policy/PhoneWindowManager$29;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    goto :goto_21
.end method
