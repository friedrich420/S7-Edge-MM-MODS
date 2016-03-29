.class Lcom/android/settings/notification/NotificationsSubSettings$10;
.super Ljava/lang/Object;
.source "NotificationsSubSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationsSubSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationsSubSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationsSubSettings;)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/settings/notification/NotificationsSubSettings$10;->this$0:Lcom/android/settings/notification/NotificationsSubSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 932
    iget-object v1, p0, Lcom/android/settings/notification/NotificationsSubSettings$10;->this$0:Lcom/android/settings/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings/notification/NotificationsSubSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationsSubSettings;->access$800(Lcom/android/settings/notification/NotificationsSubSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 933
    iget-object v1, p0, Lcom/android/settings/notification/NotificationsSubSettings$10;->this$0:Lcom/android/settings/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationsSubSettings;->access$900(Lcom/android/settings/notification/NotificationsSubSettings;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/settings/notification/NotificationsSubSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/settings/notification/NotificationsSubSettings;->access$1000(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 935
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 936
    iget-object v1, p0, Lcom/android/settings/notification/NotificationsSubSettings$10;->this$0:Lcom/android/settings/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings/notification/NotificationsSubSettings;->mHandler:Lcom/android/settings/notification/NotificationsSubSettings$H;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationsSubSettings;->access$1100(Lcom/android/settings/notification/NotificationsSubSettings;)Lcom/android/settings/notification/NotificationsSubSettings$H;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/NotificationsSubSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 939
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationsSubSettings$10;->this$0:Lcom/android/settings/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings/notification/NotificationsSubSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationsSubSettings;->access$1200(Lcom/android/settings/notification/NotificationsSubSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 940
    iget-object v1, p0, Lcom/android/settings/notification/NotificationsSubSettings$10;->this$0:Lcom/android/settings/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationsSubSettings;->access$900(Lcom/android/settings/notification/NotificationsSubSettings;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x80

    # invokes: Lcom/android/settings/notification/NotificationsSubSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/settings/notification/NotificationsSubSettings;->access$1000(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 942
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 943
    iget-object v1, p0, Lcom/android/settings/notification/NotificationsSubSettings$10;->this$0:Lcom/android/settings/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings/notification/NotificationsSubSettings;->mHandler:Lcom/android/settings/notification/NotificationsSubSettings$H;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationsSubSettings;->access$1100(Lcom/android/settings/notification/NotificationsSubSettings;)Lcom/android/settings/notification/NotificationsSubSettings$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/NotificationsSubSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 946
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/NotificationsSubSettings$10;->this$0:Lcom/android/settings/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationsSubSettings;->access$1300(Lcom/android/settings/notification/NotificationsSubSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 947
    iget-object v1, p0, Lcom/android/settings/notification/NotificationsSubSettings$10;->this$0:Lcom/android/settings/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationsSubSettings;->access$900(Lcom/android/settings/notification/NotificationsSubSettings;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/settings/notification/NotificationsSubSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {v1, v3}, Lcom/android/settings/notification/NotificationsSubSettings;->access$1000(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 949
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 950
    iget-object v1, p0, Lcom/android/settings/notification/NotificationsSubSettings$10;->this$0:Lcom/android/settings/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings/notification/NotificationsSubSettings;->mHandler:Lcom/android/settings/notification/NotificationsSubSettings$H;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationsSubSettings;->access$1100(Lcom/android/settings/notification/NotificationsSubSettings;)Lcom/android/settings/notification/NotificationsSubSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/notification/NotificationsSubSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 953
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method
