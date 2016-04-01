.class Lcom/android/server/policy/PhoneWindowManager$39;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->systemReady()V
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
    .line 11143
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 11146
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings()V

    .line 11147
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1800(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateSettings()V

    .line 11150
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2900(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->updateSettings()V

    .line 11153
    return-void
.end method
