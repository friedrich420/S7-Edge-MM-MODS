.class Lcom/android/settings/notification/NotificationSettings$12;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$12;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 756
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$12;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$700(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 757
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$12;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$800(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/settings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/settings/notification/NotificationSettings;->access$900(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 759
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 760
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$12;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$1000(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 763
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$12;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$1100(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 764
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$12;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$800(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x80

    # invokes: Lcom/android/settings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/settings/notification/NotificationSettings;->access$900(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 766
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 767
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$12;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$1000(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 770
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$12;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$1200(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 771
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$12;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$800(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/settings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {v1, v3}, Lcom/android/settings/notification/NotificationSettings;->access$900(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 773
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 774
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$12;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$1000(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 777
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method
