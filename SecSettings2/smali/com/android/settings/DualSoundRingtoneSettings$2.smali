.class Lcom/android/settings/DualSoundRingtoneSettings$2;
.super Ljava/lang/Object;
.source "DualSoundRingtoneSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DualSoundRingtoneSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DualSoundRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DualSoundRingtoneSettings;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 178
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/DualSoundRingtoneSettings;->access$000(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I
    invoke-static {v0}, Lcom/android/settings/DualSoundRingtoneSettings;->access$200(Lcom/android/settings/DualSoundRingtoneSettings;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    const/16 v1, 0x80

    iget-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/DualSoundRingtoneSettings;->access$000(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x1

    # invokes: Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/DualSoundRingtoneSettings;->access$300(Lcom/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 196
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/DualSoundRingtoneSettings;->access$100(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I
    invoke-static {v0}, Lcom/android/settings/DualSoundRingtoneSettings;->access$200(Lcom/android/settings/DualSoundRingtoneSettings;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    const/16 v1, 0x100

    iget-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/DualSoundRingtoneSettings;->access$100(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x2

    # invokes: Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/DualSoundRingtoneSettings;->access$300(Lcom/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 212
    :cond_1
    :goto_1
    return-void

    .line 188
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/DualSoundRingtoneSettings;->access$000(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x1

    # invokes: Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/DualSoundRingtoneSettings;->access$300(Lcom/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0

    .line 206
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/DualSoundRingtoneSettings;->access$100(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x2

    # invokes: Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/DualSoundRingtoneSettings;->access$300(Lcom/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 208
    :catch_1
    move-exception v0

    goto :goto_1

    .line 201
    :catch_2
    move-exception v0

    goto :goto_1

    .line 183
    :catch_3
    move-exception v0

    goto :goto_0
.end method
