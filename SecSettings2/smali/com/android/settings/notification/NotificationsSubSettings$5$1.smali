.class Lcom/android/settings/notification/NotificationsSubSettings$5$1;
.super Ljava/lang/Object;
.source "NotificationsSubSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationsSubSettings$5;->setSetting(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationsSubSettings$5;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationsSubSettings$5;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings/notification/NotificationsSubSettings$5$1;->this$0:Lcom/android/settings/notification/NotificationsSubSettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 265
    # getter for: Lcom/android/settings/notification/NotificationsSubSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/settings/notification/NotificationsSubSettings;->access$500()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    .line 266
    return-void
.end method
