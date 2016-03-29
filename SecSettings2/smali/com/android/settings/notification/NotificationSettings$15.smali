.class Lcom/android/settings/notification/NotificationSettings$15;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
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
    .line 1003
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$15;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 8
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1006
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1007
    .local v2, "val":I
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings$15;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I
    invoke-static {v5}, Lcom/android/settings/notification/NotificationSettings;->access$1400(Lcom/android/settings/notification/NotificationSettings;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 1018
    :goto_0
    return v3

    .line 1010
    :cond_0
    const v5, 0x7f0e0e26

    if-eq v2, v5, :cond_2

    move v0, v3

    .line 1012
    .local v0, "enabled":Z
    :goto_1
    const v5, 0x7f0e0e24

    if-ne v2, v5, :cond_3

    move v1, v3

    .line 1013
    .local v1, "show":Z
    :goto_2
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings$15;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # invokes: Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/settings/notification/NotificationSettings;->access$1500(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_4

    move v5, v3

    :goto_3
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1015
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings$15;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # invokes: Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/settings/notification/NotificationSettings;->access$1600(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_notifications"

    if-eqz v0, :cond_1

    move v4, v3

    :cond_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1017
    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettings$15;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # setter for: Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I
    invoke-static {v4, v2}, Lcom/android/settings/notification/NotificationSettings;->access$1402(Lcom/android/settings/notification/NotificationSettings;I)I

    goto :goto_0

    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_2
    move v0, v4

    .line 1010
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_3
    move v1, v4

    .line 1012
    goto :goto_2

    .restart local v1    # "show":Z
    :cond_4
    move v5, v4

    .line 1013
    goto :goto_3
.end method
