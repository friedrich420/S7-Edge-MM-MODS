.class Lcom/android/settings/LGTRoamingEnv$2;
.super Landroid/telephony/PhoneStateListener;
.source "LGTRoamingEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LGTRoamingEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LGTRoamingEnv;


# direct methods
.method constructor <init>(Lcom/android/settings/LGTRoamingEnv;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/LGTRoamingEnv$2;->this$0:Lcom/android/settings/LGTRoamingEnv;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 150
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 155
    const-string v0, "LGTRoamingEnv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneStateListener : + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv$2;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z
    invoke-static {v2}, Lcom/android/settings/LGTRoamingEnv;->access$400(Lcom/android/settings/LGTRoamingEnv;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv$2;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z
    invoke-static {v2}, Lcom/android/settings/LGTRoamingEnv;->access$500(Lcom/android/settings/LGTRoamingEnv;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv$2;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z
    invoke-static {v0}, Lcom/android/settings/LGTRoamingEnv;->access$400(Lcom/android/settings/LGTRoamingEnv;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv$2;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z
    invoke-static {v0}, Lcom/android/settings/LGTRoamingEnv;->access$500(Lcom/android/settings/LGTRoamingEnv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv$2;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # invokes: Lcom/android/settings/LGTRoamingEnv;->setAuto()V
    invoke-static {v0}, Lcom/android/settings/LGTRoamingEnv;->access$600(Lcom/android/settings/LGTRoamingEnv;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv$2;->this$0:Lcom/android/settings/LGTRoamingEnv;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z
    invoke-static {v0, v1}, Lcom/android/settings/LGTRoamingEnv;->access$402(Lcom/android/settings/LGTRoamingEnv;Z)Z

    .line 163
    :cond_1
    return-void
.end method
