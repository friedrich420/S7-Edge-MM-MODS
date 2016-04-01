.class public Lcom/android/internal/logging/MetricsLogger;
.super Ljava/lang/Object;
.source "MetricsLogger.java"

# interfaces
.implements Lcom/android/internal/logging/MetricsConstants;


# static fields
.field public static final ACCESSIBILITY_DIRECT_ACCESS:I = 0x132

.field public static final ACCESSIBILITY_HEARING:I = 0x12c

.field public static final ACCESSIBILITY_MOBILITY:I = 0x12d

.field public static final ACCESSIBILITY_NOTIFICATION_REMINDER:I = 0x133

.field public static final ACCESSIBILITY_SHARED_ACCESSIBILITY:I = 0x134

.field public static final ACCESSIBILITY_SOUND_DETECTOR:I = 0x137

.field public static final ACCESSIBILITY_TAB_AND_HOLD:I = 0x135

.field public static final ACCESSIBILITY_TOGGLE_ACCESS_CONTROL:I = 0x12f

.field public static final ACCESSIBILITY_TOGGLE_AIR_WAKEUP:I = 0x130

.field public static final ACCESSIBILITY_TOGGLE_MAGNIFIER:I = 0x131

.field public static final ACCESSIBILITY_UNIVERSAL_LOCK:I = 0x136

.field public static final ACCESSIBILITY_VISION:I = 0x12e

.field public static final ACTION_ASSIST_LONG_PRESS:I = 0xef

.field public static final ACTION_DOUBLE_TAP_POWER_CAMERA_GESTURE:I = 0xff

.field public static final ACTION_FINGERPRINT_AUTH:I = 0xfc

.field public static final ACTION_FINGERPRINT_DELETE:I = 0xfd

.field public static final ACTION_FINGERPRINT_ENROLL:I = 0xfb

.field public static final ACTION_FINGERPRINT_RENAME:I = 0xfe

.field public static final ACTION_WIGGLE_CAMERA_GESTURE:I = 0x100

.field public static final FINGERPRINT_ENROLLING:I = 0xf0

.field public static final FINGERPRINT_ENROLLING_SETUP:I = 0xf6

.field public static final FINGERPRINT_ENROLL_FINISH:I = 0xf2

.field public static final FINGERPRINT_ENROLL_FINISH_SETUP:I = 0xf8

.field public static final FINGERPRINT_ENROLL_INTRO:I = 0xf3

.field public static final FINGERPRINT_ENROLL_INTRO_SETUP:I = 0xf9

.field public static final FINGERPRINT_ENROLL_ONBOARD:I = 0xf4

.field public static final FINGERPRINT_ENROLL_ONBOARD_SETUP:I = 0xfa

.field public static final FINGERPRINT_ENROLL_SIDECAR:I = 0xf5

.field public static final FINGERPRINT_FIND_SENSOR:I = 0xf1

.field public static final FINGERPRINT_FIND_SENSOR_SETUP:I = 0xf7

.field public static final QS_APN:I = 0x196

.field public static final QS_DEFAULTDATA:I = 0x197

.field public static final QS_EBOOK:I = 0x198

.field public static final QS_MOBILEDATA:I = 0x199

.field public static final QS_NFC:I = 0x19a

.field public static final QS_POWERSAVING:I = 0x19c

.field public static final QS_PRIVATEMODE:I = 0x19b

.field public static final QS_QUICKCONNECT:I = 0x190

.field public static final QS_SCREENMIRRORING:I = 0x195

.field public static final QS_SFINDER:I = 0x191

.field public static final QS_SILENTMODE:I = 0x192

.field public static final QS_SMARTSTAY:I = 0x193

.field public static final QS_SYNC:I = 0x194

.field public static final QS_TOUCHSENSITIVITY:I = 0x19d

.field public static final QS_ULTRAPOWERSAVING:I = 0x19e

.field public static final QS_VOLTE:I = 0x19f

.field public static final QS_VOWIFI:I = 0x1a1

.field public static final QS_WIFICALLING:I = 0x1a0

.field public static final SETTINGS_CPA:I = 0x1f4

.field public static final SETTINGS_DATA_SLOT:I = 0x1f5

.field public static final SETTINGS_GLOBAL_ROAMING:I = 0x1f6

.field public static final SETTINGS_LGT_CUSTOMER:I = 0x1f7

.field public static final SETTINGS_LGT_ENV:I = 0x1f8

.field public static final SETTINGS_LTE_MODE:I = 0x1f9

.field public static final SETTINGS_LTE_ROAMING:I = 0x1fa

.field public static final SETTINGS_ROAMING:I = 0x1fb


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(Landroid/content/Context;I)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I

    .prologue
    .line 127
    const-string v0, ""

    invoke-static {p0, p1, v0}, action(Landroid/content/Context;ILjava/lang/String;)V

    .line 128
    return-void
.end method

.method public static action(Landroid/content/Context;II)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # I

    .prologue
    .line 131
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, action(Landroid/content/Context;ILjava/lang/String;)V

    .line 132
    return-void
.end method

.method public static action(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 139
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_e
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiAction(ILjava/lang/String;)V

    .line 143
    return-void
.end method

.method public static action(Landroid/content/Context;IZ)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # Z

    .prologue
    .line 135
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, action(Landroid/content/Context;ILjava/lang/String;)V

    .line 136
    return-void
.end method

.method public static count(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 147
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiCount(Ljava/lang/String;I)V

    .line 148
    return-void
.end method

.method public static hidden(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 106
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_e
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiViewVisibility(II)V

    .line 110
    return-void
.end method

.method public static histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bucket"    # I

    .prologue
    .line 152
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiHistogram(Ljava/lang/String;I)V

    .line 153
    return-void
.end method

.method public static visibility(Landroid/content/Context;II)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "vis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-static {p0, p1, v0}, visibility(Landroid/content/Context;IZ)V

    .line 124
    return-void

    .line 123
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static visibility(Landroid/content/Context;IZ)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "visibile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 114
    if-eqz p2, :cond_6

    .line 115
    invoke-static {p0, p1}, visible(Landroid/content/Context;I)V

    .line 119
    :goto_5
    return-void

    .line 117
    :cond_6
    invoke-static {p0, p1}, hidden(Landroid/content/Context;I)V

    goto :goto_5
.end method

.method public static visible(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 99
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_e
    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiViewVisibility(II)V

    .line 103
    return-void
.end method
