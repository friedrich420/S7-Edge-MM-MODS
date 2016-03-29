.class Lcom/android/settings/BrightnessSeekBarPreference$4;
.super Landroid/database/ContentObserver;
.source "BrightnessSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BrightnessSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessSeekBarPreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/BrightnessSeekBarPreference$4;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 143
    const-string v0, "BrightnessSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTracking : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference$4;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->mTracking:Z
    invoke-static {v2}, Lcom/android/settings/BrightnessSeekBarPreference;->access$600(Lcom/android/settings/BrightnessSeekBarPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$4;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->mTracking:Z
    invoke-static {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->access$600(Lcom/android/settings/BrightnessSeekBarPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$4;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->onBrightnessModeChanged()V

    .line 149
    :cond_0
    return-void
.end method
