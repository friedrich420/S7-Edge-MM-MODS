.class Lcom/android/settings/notification/NotificationSettings$4$1;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSettings$4;->setSetting(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettings$4;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettings$4;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$4$1;->this$0:Lcom/android/settings/notification/NotificationSettings$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 290
    # getter for: Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/settings/notification/NotificationSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    .line 291
    return-void
.end method
