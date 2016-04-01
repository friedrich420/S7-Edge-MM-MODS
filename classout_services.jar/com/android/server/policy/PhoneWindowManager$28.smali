.class Lcom/android/server/policy/PhoneWindowManager$28;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
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
    .line 9701
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 9703
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 9704
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->ALARM_STARTED:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_27

    .line 9705
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->ALARM_STARTED:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 9706
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mAlarmReceivedFlag:Z

    if-eq v2, v5, :cond_24

    .line 9707
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mAlarmReceivedFlag:Z

    .line 9704
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 9710
    :cond_27
    const/4 v1, 0x0

    :goto_28
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->ALARM_STOPPED:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_48

    .line 9711
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->ALARM_STOPPED:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 9712
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mAlarmReceivedFlag:Z

    if-eqz v2, :cond_45

    .line 9713
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v6, v2, Lcom/android/server/policy/PhoneWindowManager;->mAlarmReceivedFlag:Z

    .line 9710
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 9716
    :cond_48
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALARM Received.status  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mAlarmReceivedFlag:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9717
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mAlarmReceivedFlag:Z

    if-ne v2, v5, :cond_8e

    .line 9718
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    if-ne v2, v5, :cond_83

    .line 9719
    const-string v2, "WindowManager"

    const-string v3, "SmartDock Alarm Started"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9720
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 9721
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v6, v2, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 9728
    :cond_83
    :goto_83
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 9729
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 9731
    return-void

    .line 9723
    :cond_8e
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    if-nez v2, :cond_83

    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mAlarmReceivedFlag:Z

    if-nez v2, :cond_83

    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    if-eqz v2, :cond_83

    .line 9724
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    iput-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 9725
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v6, v2, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 9726
    const-string v2, "WindowManager"

    const-string v3, "SmartDock ALARM Stopped"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83
.end method
