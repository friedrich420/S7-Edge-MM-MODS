.class public Landroid/view/HapticFeedbackConstants;
.super Ljava/lang/Object;
.source "HapticFeedbackConstants.java"


# static fields
.field public static final CALENDAR_DATE:I = 0x5

.field public static final CLOCK_TICK:I = 0x4

.field public static final CONTEXT_CLICK:I = 0x6

.field public static final FLAG_IGNORE_GLOBAL_SETTING:I = 0x2

.field public static final FLAG_IGNORE_VIEW_SETTING:I = 0x1

.field public static final KEYBOARD_TAP:I = 0x3

.field public static final LONG_PRESS:I = 0x0

.field private static final NEW_VIBE_MAX_INDEX:I = 0xc375

.field private static final NEW_VIBE_MIN_INDEX:I = 0xc359

.field public static final SAFE_MODE_DISABLED:I = 0x2710

.field public static final SAFE_MODE_ENABLED:I = 0x2711

.field private static final SAMSUNG_VIBE_START:I = 0xc350

.field public static final VIBE_ALERT_ON_CALL:I = 0xc35f

.field public static final VIBE_CAUTION:I = 0xc35b

.field public static final VIBE_COMMON_A:I = 0xc369

.field public static final VIBE_COMMON_B:I = 0xc36a

.field public static final VIBE_COMMON_C:I = 0xc36b

.field public static final VIBE_COMMON_D:I = 0xc36c

.field public static final VIBE_COMMON_E:I = 0xc36d

.field public static final VIBE_COMMON_F:I = 0xc36e

.field public static final VIBE_COMMON_G:I = 0xc36f

.field public static final VIBE_COMMON_H:I = 0xc370

.field public static final VIBE_COMMON_I:I = 0xc371

.field public static final VIBE_COMMON_J:I = 0xc372

.field public static final VIBE_COMMON_K:I = 0xc373

.field public static final VIBE_COMMON_L:I = 0xc374

.field public static final VIBE_COMMON_M:I = 0xc375

.field public static final VIBE_HW_TOUCH:I = 0xc35e

.field public static final VIBE_MAX_INDEX:I = 0x16

.field public static final VIBE_MIN_INDEX:I = 0x9

.field public static final VIBE_NOTIFICATION:I = 0xc361

.field public static final VIBE_NOTIFICATION_ALARM:I = 0xc362

.field public static final VIBE_NOTIFICATION_EMAIL:I = 0xc360

.field public static final VIBE_NOTIFICATION_IM:I = 0xc35d

.field public static final VIBE_NOTIFICATION_IM_NEW:I = 0xc368

.field public static final VIBE_NOTIFICATION_MESSAGE:I = 0xc361

.field public static final VIBE_NOTIFICATION_RINGTONE:I = 0xc35d

.field public static final VIBE_OPERATION:I = 0xc35a

.field public static final VIBE_SILENT:I = 0xc35c

.field public static final VIBE_TEXT_SELECTION:I = 0xc366

.field public static final VIBE_TIMEPICKER:I = 0xc367

.field public static final VIBE_TOUCH:I = 0xc359

.field public static final VIBE_VOICE_ERROR:I = 0xc363

.field public static final VIBE_VOICE_READY:I = 0xc364

.field public static final VIBE_VOICE_SUCCESS:I = 0xc365

.field public static final VIRTUAL_KEY:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxVibeIndex()I
    .registers 1

    .prologue
    .line 120
    const v0, 0xc375

    return v0
.end method

.method public static getMinVibeIndex()I
    .registers 1

    .prologue
    .line 112
    const v0, 0xc359

    return v0
.end method

.method public static isValidatedVibeIndex(I)Z
    .registers 2
    .param p0, "index"    # I

    .prologue
    .line 128
    const v0, 0xc359

    if-lt p0, v0, :cond_c

    const v0, 0xc375

    if-gt p0, v0, :cond_c

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
