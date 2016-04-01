.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$6;
.super Landroid/telephony/PhoneStateListener;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 659
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 661
    iget-object v1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    if-eq p1, v0, :cond_8

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1b

    :cond_8
    :goto_8
    # setter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z
    invoke-static {v1, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$102(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Z)Z

    .line 662
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z
    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$100(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 663
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->requestTraversalForCoverView()V

    .line 665
    :cond_1a
    return-void

    .line 661
    :cond_1b
    const/4 v0, 0x0

    goto :goto_8
.end method
