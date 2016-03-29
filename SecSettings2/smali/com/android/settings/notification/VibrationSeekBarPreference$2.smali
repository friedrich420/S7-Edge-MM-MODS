.class Lcom/android/settings/notification/VibrationSeekBarPreference$2;
.super Ljava/lang/Object;
.source "VibrationSeekBarPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/VibrationSeekBarPreference;->setVibrationIntensity(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/VibrationSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/VibrationSeekBarPreference;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/notification/VibrationSeekBarPreference$2;->this$0:Lcom/android/settings/notification/VibrationSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/VibrationSeekBarPreference$2;->this$0:Lcom/android/settings/notification/VibrationSeekBarPreference;

    iget-object v0, v0, Lcom/android/settings/notification/VibrationSeekBarPreference;->mVibrator:Landroid/os/Vibrator;

    const v1, 0xc361

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 110
    return-void
.end method
