.class public Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;
.super Ljava/lang/Object;
.source "ShareAccVariable.java"


# static fields
.field public static final ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

.field public static final ACC_SETTING_FILE_MOST_INTERNAL_PATH:Ljava/lang/String;

.field public static DATE_FORMAT:Ljava/lang/String;

.field public static FILE_NAME:Ljava/lang/String;

.field public static SaveFlag:I

.field public static export_external_file:Ljava/io/File;

.field public static export_internal_file:Ljava/io/File;

.field public static fis:Ljava/io/FileInputStream;

.field public static final keyList:[Ljava/lang/String;

.field public static final mCurConfig:Landroid/content/res/Configuration;

.field public static ois:Ljava/io/ObjectInputStream;

.field public static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x3a

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 61
    const/16 v0, 0x5d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "speak_password"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "anykey_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "answering_bring_to_ear"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "answering_accessibility_tapping"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "voice_input_control"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "voice_input_control_incomming_calls"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "incall_power_button_behavior"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accessibility_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "accessiblity_font_switch"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "font_size"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "font_scale"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "accessibility_display_magnification_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "high_contrast"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "color_blind"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "color_blind_test"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "color_blind_cvdtype"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "color_blind_cvdseverity"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "color_blind_user_parameter"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "tts_engine"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "tts_default_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "accessibility_script_injection"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "audio_balance"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sound_balance"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "show_button_background"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "mono_audio_db"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "all_sound_off"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "switch_access_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "flash_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "assistant_menu"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "assistant_menu_dominant_hand_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "assistant_menu_pointer_speed"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "assistant_menu_pointer_size"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "assistant_menu_pad_size"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "long_press_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "enable_accessibility_global_gesture_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "access_control_use"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "access_control_power_button"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "access_control_volume_button"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "access_control_keyboard_block"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "access_control_time_set_hour"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "access_control_time_set_min"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "lcd_curtain"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "ultrasonic_cane"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "haptic_feedback_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "haptic_feedback_extra"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "easy_interaction"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "notification_reminder"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "time_key"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "notification_reminder_selectable"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "time_key_selectable"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "notification_reminder_vibrate"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "notification_reminder_led_indicator"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "hearing_aid"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "air_motion_call_accept"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "accessibility_captioning_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "accessibility_captioning_font_scale"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "accessibility_captioning_preset"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "accessibility_captioning_typeface"

    aput-object v2, v0, v1

    const-string v1, "accessibility_captioning_foreground_color"

    aput-object v1, v0, v5

    const/16 v1, 0x3b

    const-string v2, "accessibility_captioning_edge_type"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "accessibility_captioning_edge_color"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "accessibility_captioning_window_color"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "accessibility_captioning_background_color"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "accessibility_captioning_locale"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "accessibility_sec_captioning_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "rapid_key_input"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "rapid_key_input_menu_checked"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "air_motion_wake_up"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "direct_access"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "direct_accessibility"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "direct_talkback"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "direct_negative"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "smart_scroll"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "face_smart_scroll"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "smart_scroll_sensitivity"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "smart_scroll_visual_feedback_icon"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "VIB_NOTIFICATION_MAGNITUDE"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "accessibility_magnifier"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "hover_zoom_value"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "hover_zoom_magnifier_size"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "direct_access_control"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "direct_greyscale"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "direct_color_adjustment"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "direct_s_talkback"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "direct_universal_switch"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "direct_access_magnifier"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "greyscale_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "galaxy_talkback"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "accessibility_display_inversion_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "accessibility_display_daltonizer_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "accessibility_display_daltonizer"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "high_text_contrast_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "high_contrast_keyboard"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    .line 179
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->mCurConfig:Landroid/content/res/Configuration;

    .line 181
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->sInstalledServices:Ljava/util/Set;

    .line 183
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v0, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/emulated/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Accessibility"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/emulated/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_MOST_INTERNAL_PATH:Ljava/lang/String;

    .line 200
    const-string v0, "yyyyMMdd"

    sput-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->DATE_FORMAT:Ljava/lang/String;

    .line 207
    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    .line 209
    sput v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I

    .line 212
    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    .line 213
    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ois:Ljava/io/ObjectInputStream;

    .line 214
    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    .line 215
    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
