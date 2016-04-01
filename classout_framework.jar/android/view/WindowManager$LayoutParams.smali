.class public Landroid/view/WindowManager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "WindowManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final ALPHA_CHANGED:I = 0x80

.field public static final ANIMATION_CHANGED:I = 0x10

.field public static final BRIGHTNESS_OVERRIDE_FULL:F = 1.0f

.field public static final BRIGHTNESS_OVERRIDE_NONE:F = -1.0f

.field public static final BRIGHTNESS_OVERRIDE_OFF:F = 0.0f

.field public static final BUTTON_BRIGHTNESS_CHANGED:I = 0x2000

.field public static final BUTTON_LIGHT_TIMEOUT_CHANGED:I = 0x2000000

.field public static final COVER_MODE_CHANGED:I = 0x8000000

.field public static final COVER_MODE_HIDE_SVIEW_ONCE:I = 0x2

.field public static final COVER_MODE_NONE:I = 0x0

.field public static final COVER_MODE_SVIEW:I = 0x1

.field public static final COVER_MODE_SVIEW_SUB_WINDOW:I = 0x10

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIM_AMOUNT_CHANGED:I = 0x20

.field public static final EVERYTHING_CHANGED:I = -0x1

.field public static final FIRST_APPLICATION_WINDOW:I = 0x1

.field public static final FIRST_SUB_WINDOW:I = 0x3e8

.field public static final FIRST_SYSTEM_WINDOW:I = 0x7d0

.field public static final FLAGS_CHANGED:I = 0x4

.field public static final FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x1

.field public static final FLAG_ALT_FOCUSABLE_IM:I = 0x20000

.field public static final FLAG_BLUR_BEHIND:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DIM_BEHIND:I = 0x2

.field public static final FLAG_DISMISS_KEYGUARD:I = 0x400000

.field public static final FLAG_DITHER:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field public static final FLAG_FORCE_NOT_FULLSCREEN:I = 0x800

.field public static final FLAG_FULLSCREEN:I = 0x400

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x1000000

.field public static final FLAG_IGNORE_CHEEK_PRESSES:I = 0x8000

.field public static final FLAG_KEEP_SCREEN_ON:I = 0x80

.field public static final FLAG_LAYOUT_ATTACHED_IN_DECOR:I = 0x40000000

.field public static final FLAG_LAYOUT_INSET_DECOR:I = 0x10000

.field public static final FLAG_LAYOUT_IN_OVERSCAN:I = 0x2000000

.field public static final FLAG_LAYOUT_IN_SCREEN:I = 0x100

.field public static final FLAG_LAYOUT_NO_LIMITS:I = 0x200

.field public static final FLAG_LOCAL_FOCUS_MODE:I = 0x10000000

.field public static final FLAG_NOT_FOCUSABLE:I = 0x8

.field public static final FLAG_NOT_TOUCHABLE:I = 0x10

.field public static final FLAG_NOT_TOUCH_MODAL:I = 0x20

.field public static final FLAG_SCALED:I = 0x4000

.field public static final FLAG_SECURE:I = 0x2000

.field public static final FLAG_SHOW_WALLPAPER:I = 0x100000

.field public static final FLAG_SHOW_WHEN_LOCKED:I = 0x80000

.field public static final FLAG_SLIPPERY:I = 0x20000000

.field public static final FLAG_SPLIT_TOUCH:I = 0x800000

.field public static final FLAG_TOUCHABLE_WHEN_WAKING:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_TRANSLUCENT_NAVIGATION:I = 0x8000000

.field public static final FLAG_TRANSLUCENT_STATUS:I = 0x4000000

.field public static final FLAG_TURN_SCREEN_ON:I = 0x200000

.field public static final FLAG_WATCH_OUTSIDE_TOUCH:I = 0x40000

.field public static final FORMAT_CHANGED:I = 0x8

.field public static final INPUT_FEATURES_CHANGED:I = 0x10000

.field public static final INPUT_FEATURE_DISABLE_POINTER_GESTURES:I = 0x1

.field public static final INPUT_FEATURE_DISABLE_USER_ACTIVITY:I = 0x4

.field public static final INPUT_FEATURE_NO_INPUT_CHANNEL:I = 0x2

.field public static final LAST_APPLICATION_WINDOW:I = 0x63

.field public static final LAST_SUB_WINDOW:I = 0x7cf

.field public static final LAST_SYSTEM_WINDOW:I = 0xbb7

.field public static final LAYOUT_CHANGED:I = 0x1

.field public static final MEMORY_TYPE_CHANGED:I = 0x100

.field public static final MEMORY_TYPE_GPU:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_HARDWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_PUSH_BUFFERS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final METADATA_COVER_MODE:Ljava/lang/String; = "com.sec.android.sdk.cover.MODE"

.field public static final MULTIWINDOW_FLAGS_CHANGED:I = 0x10000000

.field public static final MULTIWINDOW_FLAG_ABSOLUTE_LAYOUT_WITH_MULTI_WINDOW:I = 0x8

.field public static final MULTIWINDOW_FLAG_DISABLE_FLOATING_WINDOW:I = 0x80

.field public static final MULTIWINDOW_FLAG_DISABLE_MULTI_WINDOW_TRAY_BAR:I = 0x2

.field public static final MULTIWINDOW_FLAG_FORCE_HIDE_POPUP_WINDOW:I = 0x40

.field public static final MULTIWINDOW_FLAG_MINIMIZE_ANIMATOR:I = 0x400

.field public static final MULTIWINDOW_FLAG_MINIMIZE_ANIMATOR_LONG_PRESSED:I = 0x800

.field public static final MULTIWINDOW_FLAG_NEEDS_OFFSET_TITLEBAR:I = 0x20

.field public static final MULTIWINDOW_FLAG_NOTIFY_SYSTEMUI_VISIBILITY_CHANGED:I = 0x4

.field public static final MULTIWINDOW_FLAG_NOT_FORCE_HIDE:I = 0x1

.field public static final MULTIWINDOW_FLAG_NOT_MULTIPHONEWINDOW:I = 0x10

.field public static final MULTIWINDOW_FLAG_NO_SELECTIVE_ORIENATION_LAYOUT:I = 0x200

.field public static final MULTIWINDOW_FLAG_THERE_MAY_BE_TRANSPARENT_BACKGROUND:I = 0x100

.field public static final NEEDS_MENU_KEY_CHANGED:I = 0x400000

.field public static final NEEDS_MENU_SET_FALSE:I = 0x2

.field public static final NEEDS_MENU_SET_TRUE:I = 0x1

.field public static final NEEDS_MENU_UNSET:I = 0x0

.field public static final PREFERRED_DISPLAY_MODE_ID:I = 0x800000

.field public static final PREFERRED_REFRESH_RATE_CHANGED:I = 0x200000

.field public static final PRIVATE_FLAGS_CHANGED:I = 0x20000

.field public static final PRIVATE_FLAG_COMPATIBLE_WINDOW:I = 0x80

.field public static final PRIVATE_FLAG_DISABLE_WALLPAPER_TOUCH_EVENTS:I = 0x800

.field public static final PRIVATE_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:I = 0x0

.field public static final PRIVATE_FLAG_FAKE_HARDWARE_ACCELERATED:I = 0x1

.field public static final PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED:I = 0x2

.field public static final PRIVATE_FLAG_FORCE_STATUS_BAR_VISIBLE_TRANSPARENT:I = 0x1000

.field public static final PRIVATE_FLAG_INHERIT_TRANSLUCENT_DECOR:I = 0x200

.field public static final PRIVATE_FLAG_KEYGUARD:I = 0x400

.field public static final PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field public static final PRIVATE_FLAG_SCALED_SURFACE:I = 0x1000000

.field public static final PRIVATE_FLAG_SHARED_DEVICE_KEYGUARD:I = 0x2000

.field public static final PRIVATE_FLAG_SHOW_FOR_ALL_USERS:I = 0x10

.field public static final PRIVATE_FLAG_SYSTEM_ERROR:I = 0x100

.field public static final PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS:I = 0x4

.field public static final ROTATION_ANIMATION_CHANGED:I = 0x1000

.field public static final ROTATION_ANIMATION_CROSSFADE:I = 0x1

.field public static final ROTATION_ANIMATION_JUMPCUT:I = 0x2

.field public static final ROTATION_ANIMATION_ROTATE:I = 0x0

.field public static final SAMSUNG_FLAGS_CHANGED:I = 0x4000000

.field public static final SAMSUNG_FLAG_CHANGE_DIM_EFFECT_TO_BLUR:I = 0x40

.field public static final SAMSUNG_FLAG_CONTENT_RESIZE_ANIMATION:I = 0x4000

.field public static final SAMSUNG_FLAG_DEFER_SURFACE_DESTROY:I = 0x1000

.field public static final SAMSUNG_FLAG_DISABLE_LAYOUT_INSETS_BY_SOFT_INPUT:I = 0x400

.field public static final SAMSUNG_FLAG_DISABLE_TRANSIENT_COCKTAIL_BAR:I = 0x40000000

.field public static final SAMSUNG_FLAG_DONT_NEED_SURFACE_BUFFER:I = 0x80

.field public static final SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:I = 0x2

.field public static final SAMSUNG_FLAG_FAKE_FOCUSABLE:I = 0x10000

.field public static final SAMSUNG_FLAG_FIXED_ORIENTATION_LANDSCAPE:I = 0x4

.field public static final SAMSUNG_FLAG_FIXED_ORIENTATION_PORTRAIT:I = 0x8

.field public static final SAMSUNG_FLAG_FULLSCREEN_COCKTAIL:I = 0x20000000

.field public static final SAMSUNG_FLAG_INCLUDE_IN_PARTIAL_MIRROR:I = 0x8000

.field public static final SAMSUNG_FLAG_INTERNAL_PRESENTATION:I = -0x80000000

.field public static final SAMSUNG_FLAG_MOBILE_KEYBOARD_INPUT_METHOD:I = 0x800

.field public static final SAMSUNG_FLAG_NOT_SELECTABLE:I = 0x2000

.field public static final SAMSUNG_FLAG_NO_RESIZE_ANIMATION_INCLUDE_CHILD:I = 0x10

.field public static final SAMSUNG_FLAG_OVERRIDE_SYSTEM_UI_POLICY:I = 0x20

.field public static final SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I = 0x1

.field public static final SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I = 0x200

.field public static final SAMSUNG_FLAG_SVIEW_COVER:I = 0x10000000

.field public static final SCREEN_BRIGHTNESS_CHANGED:I = 0x800

.field public static final SCREEN_DIM_DURATION_CHANGED:I = 0x1000000

.field public static final SCREEN_ORIENTATION_CHANGED:I = 0x400

.field public static final SOFT_INPUT_ADJUST_NOTHING:I = 0x30

.field public static final SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final SOFT_INPUT_ADJUST_RESIZE:I = 0x10

.field public static final SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_IS_FORWARD_NAVIGATION:I = 0x100

.field public static final SOFT_INPUT_MASK_ADJUST:I = 0xf0

.field public static final SOFT_INPUT_MASK_STATE:I = 0xf

.field public static final SOFT_INPUT_MODE_CHANGED:I = 0x200

.field public static final SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final SOFT_INPUT_STATE_UNCHANGED:I = 0x1

.field public static final SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final SURFACE_INSETS_CHANGED:I = 0x100000

.field public static final SYSTEM_UI_LISTENER_CHANGED:I = 0x8000

.field public static final SYSTEM_UI_VISIBILITY_CHANGED:I = 0x4000

.field public static final TITLE_CHANGED:I = 0x40

.field public static final TRANSLUCENT_FLAGS_CHANGED:I = 0x80000

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x7f0

.field public static final TYPE_APPLICATION:I = 0x2

.field public static final TYPE_APPLICATION_ABOVE_SUB_PANEL:I = 0x3ed

.field public static final TYPE_APPLICATION_ATTACHED_DIALOG:I = 0x3eb

.field public static final TYPE_APPLICATION_COCKTAIL:I = 0x62

.field public static final TYPE_APPLICATION_MEDIA:I = 0x3e9

.field public static final TYPE_APPLICATION_MEDIA_OVERLAY:I = 0x3ec

.field public static final TYPE_APPLICATION_PANEL:I = 0x3e8

.field public static final TYPE_APPLICATION_STARTING:I = 0x3

.field public static final TYPE_APPLICATION_SUB_PANEL:I = 0x3ea

.field public static final TYPE_BASE_APPLICATION:I = 0x1

.field public static final TYPE_BOOT_PROGRESS:I = 0x7e5

.field public static final TYPE_BOTTOM_SOFTKEY:I = 0x8d0

.field public static final TYPE_CARMODE_BAR:I = 0x8de

.field public static final TYPE_CARMODE_BAR_OVERLAY:I = 0x8df

.field public static final TYPE_CHANGED:I = 0x2

.field public static final TYPE_CLIPBOARD:I = 0x8e8

.field public static final TYPE_COCKTAIL_BAR:I = 0x8ac

.field public static final TYPE_COCKTAIL_BAR_BACKGROUND:I = 0x8ad

.field public static final TYPE_COCKTAIL_BAR_OVERLAY:I = 0x8ae

.field public static final TYPE_DISPLAY_OVERLAY:I = 0x7ea

.field public static final TYPE_DRAG:I = 0x7e0

.field public static final TYPE_DREAM:I = 0x7e7

.field public static final TYPE_EASYONEHAND_ADDON:I = 0x8cc

.field public static final TYPE_EASYONEHAND_BACKGROUND:I = 0x8cf

.field public static final TYPE_EASYONEHAND_CONTROLLER:I = 0x8ca

.field public static final TYPE_EASYONEHAND_SIDE_PANEL:I = 0x8cd

.field public static final TYPE_EASYONEHAND_SIDE_SOFTKEY:I = 0x8ce

.field public static final TYPE_EDGE_OVERLAY:I = 0x8b2

.field public static final TYPE_INPUT_CONSUMER:I = 0x7e6

.field public static final TYPE_INPUT_METHOD:I = 0x7db

.field public static final TYPE_INPUT_METHOD_DIALOG:I = 0x7dc

.field public static final TYPE_INPUT_METHOD_PANEL:I = 0x44c

.field public static final TYPE_KEYGUARD:I = 0x7d4

.field public static final TYPE_KEYGUARD_DIALOG:I = 0x7d9

.field public static final TYPE_KEYGUARD_EFFECT:I = 0x832

.field public static final TYPE_KEYGUARD_SCRIM:I = 0x7ed

.field public static final TYPE_KMS:I = 0x8cb

.field public static final TYPE_MAGNIFICATION_OVERLAY:I = 0x7eb

.field public static final TYPE_MINI_APP:I = 0x834

.field public static final TYPE_MINI_APP_DIALOG:I = 0x835

.field public static final TYPE_MINI_APP_ON_KEYGUARD:I = 0x836

.field public static final TYPE_MINI_APP_ON_KEYGUARD_DIALOG:I = 0x837

.field public static final TYPE_MULTI_WINDOW_CONTROLLER:I = 0x3ee

.field public static final TYPE_MULTI_WINDOW_CONTROLLER_PANEL:I = 0x3ef

.field public static final TYPE_MULTI_WINDOW_CONTROL_BAR:I = 0x898

.field public static final TYPE_MULTI_WINDOW_DRAG_MODE:I = 0x89c

.field public static final TYPE_MULTI_WINDOW_EDIT_MODE:I = 0x89a

.field public static final TYPE_MULTI_WINDOW_GESTURE_GUIDE_VIEW:I = 0x8d5

.field public static final TYPE_MULTI_WINDOW_GUIDE_MODE:I = 0x89b

.field public static final TYPE_MULTI_WINDOW_GUIDE_VIEW:I = 0x8d4

.field public static final TYPE_MULTI_WINDOW_SWITCH_WINDOW:I = 0x8a4

.field public static final TYPE_MULTI_WINDOW_TRAY_BAR:I = 0x899

.field public static final TYPE_NAVIGATION_BAR:I = 0x7e3

.field public static final TYPE_NAVIGATION_BAR_PANEL:I = 0x7e8

.field public static final TYPE_NIGHT_CLOCK:I = 0x8b1

.field public static final TYPE_PHONE:I = 0x7d2

.field public static final TYPE_POINTER:I = 0x7e2

.field public static final TYPE_PRIORITY_PHONE:I = 0x7d7

.field public static final TYPE_PRIVATE_PRESENTATION:I = 0x7ee

.field public static final TYPE_RECENTS_PANEL:I = 0x82f

.field public static final TYPE_SEARCH_BAR:I = 0x7d1

.field public static final TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df

.field public static final TYPE_SIDE_SYNC_OVERLAY:I = 0x8b6

.field public static final TYPE_STATUS_BAR:I = 0x7d0

.field public static final TYPE_STATUS_BAR_OVERLAY:I = 0x831

.field public static final TYPE_STATUS_BAR_PANEL:I = 0x7de

.field public static final TYPE_STATUS_BAR_PANEL_USER:I = 0x830

.field public static final TYPE_STATUS_BAR_SUB_PANEL:I = 0x7e1

.field public static final TYPE_SVIEW_COVER_DIALOG:I = 0x833

.field public static final TYPE_SYSTEM_ALERT:I = 0x7d3

.field public static final TYPE_SYSTEM_DIALOG:I = 0x7d8

.field public static final TYPE_SYSTEM_ERROR:I = 0x7da

.field public static final TYPE_SYSTEM_OVERLAY:I = 0x7d6

.field public static final TYPE_TOAST:I = 0x7d5

.field public static final TYPE_VOICE_INTERACTION:I = 0x7ef

.field public static final TYPE_VOICE_INTERACTION_STARTING:I = 0x7f1

.field public static final TYPE_VOLUME_OVERLAY:I = 0x7e4

.field public static final TYPE_VR_APPLICATION:I = 0x61

.field public static final TYPE_VR_BACKGROUND:I = 0x822

.field public static final TYPE_VR_MODE_TRANSITION:I = 0x821

.field public static final TYPE_VR_POPUP:I = 0x820

.field public static final TYPE_WALLPAPER:I = 0x7dd

.field public static final TYPE_WINDOW_FOR_UNIVERSAL_VIEW:I = 0x8d6

.field public static final USER_ACTIVITY_TIMEOUT_CHANGED:I = 0x40000


# instance fields
.field public alpha:F

.field public buttonBrightness:F

.field public buttonLightTimeout:J

.field public coverMode:I

.field public dimAmount:F

.field public flags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "FLAG_ALLOW_LOCK_WHILE_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "FLAG_DIM_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "FLAG_BLUR_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "FLAG_NOT_FOCUSABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "FLAG_NOT_TOUCHABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "FLAG_NOT_TOUCH_MODAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "FLAG_TOUCHABLE_WHEN_WAKING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "FLAG_KEEP_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "FLAG_LAYOUT_IN_SCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "FLAG_LAYOUT_NO_LIMITS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "FLAG_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "FLAG_FORCE_NOT_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FLAG_DITHER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "FLAG_SECURE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "FLAG_SCALED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "FLAG_IGNORE_CHEEK_PRESSES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "FLAG_LAYOUT_INSET_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "FLAG_ALT_FOCUSABLE_IM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "FLAG_WATCH_OUTSIDE_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "FLAG_SHOW_WHEN_LOCKED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "FLAG_SHOW_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "FLAG_TURN_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "FLAG_DISMISS_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "FLAG_SPLIT_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "FLAG_HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "FLAG_LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "FLAG_TRANSLUCENT_STATUS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "FLAG_TRANSLUCENT_NAVIGATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public format:I

.field public gravity:I

.field public hasManualSurfaceInsets:Z

.field public hasSystemUiListeners:Z

.field public horizontalMargin:F

.field public horizontalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public inputFeatures:I

.field private mCompatibilityParamsBackup:[I

.field private mTitle:Ljava/lang/CharSequence;

.field public memoryType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public multiWindowFlags:I

.field public needsMenuKey:I

.field public packageName:Ljava/lang/String;

.field public preferredDisplayModeId:I

.field public preferredRefreshRate:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public privateFlags:I

.field public rotationAnimation:I

.field public samsungFlags:I

.field public screenBrightness:F

.field public screenDimDuration:J

.field public screenOrientation:I

.field public softInputMode:I

.field public subtreeSystemUiVisibility:I

.field public final surfaceInsets:Landroid/graphics/Rect;

.field public systemUiVisibility:I

.field public token:Landroid/os/IBinder;

.field public type:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "TYPE_BASE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TYPE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TYPE_APPLICATION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e8
                to = "TYPE_APPLICATION_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e9
                to = "TYPE_APPLICATION_MEDIA"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ea
                to = "TYPE_APPLICATION_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ed
                to = "TYPE_APPLICATION_ABOVE_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3eb
                to = "TYPE_APPLICATION_ATTACHED_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ec
                to = "TYPE_APPLICATION_MEDIA_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d0
                to = "TYPE_STATUS_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d1
                to = "TYPE_SEARCH_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d2
                to = "TYPE_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d3
                to = "TYPE_SYSTEM_ALERT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d5
                to = "TYPE_TOAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d6
                to = "TYPE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d7
                to = "TYPE_PRIORITY_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d8
                to = "TYPE_SYSTEM_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d9
                to = "TYPE_KEYGUARD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7da
                to = "TYPE_SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7db
                to = "TYPE_INPUT_METHOD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dc
                to = "TYPE_INPUT_METHOD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dd
                to = "TYPE_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7de
                to = "TYPE_STATUS_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7df
                to = "TYPE_SECURE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e0
                to = "TYPE_DRAG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e1
                to = "TYPE_STATUS_BAR_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e2
                to = "TYPE_POINTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e3
                to = "TYPE_NAVIGATION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e4
                to = "TYPE_VOLUME_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e5
                to = "TYPE_BOOT_PROGRESS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e6
                to = "TYPE_INPUT_CONSUMER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e7
                to = "TYPE_DREAM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e8
                to = "TYPE_NAVIGATION_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ea
                to = "TYPE_DISPLAY_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7eb
                to = "TYPE_MAGNIFICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ee
                to = "TYPE_PRIVATE_PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ef
                to = "TYPE_VOICE_INTERACTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f1
                to = "TYPE_VOICE_INTERACTION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x833
                to = "TYPE_SVIEW_COVER_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x61
                to = "TYPE_VR_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x820
                to = "TYPE_VR_POPUP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x821
                to = "TYPE_VR_MODE_TRANSITION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x822
                to = "TYPE_VR_BACKGROUND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8e8
                to = "TYPE_CLIPBOARD"
            .end subannotation
        }
    .end annotation
.end field

.field public userActivityTimeout:J

.field public verticalMargin:F

.field public verticalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public windowAnimations:I

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2399
    new-instance v0, Landroid/view/WindowManager$LayoutParams$1;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2279
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1502
    iput v2, p0, needsMenuKey:I

    .line 1807
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    .line 1836
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, alpha:F

    .line 1843
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, dimAmount:F

    .line 1872
    iput v6, p0, screenBrightness:F

    .line 1880
    iput v6, p0, buttonBrightness:F

    .line 1912
    iput v2, p0, rotationAnimation:I

    .line 1918
    iput-object v3, p0, token:Landroid/os/IBinder;

    .line 1923
    iput-object v3, p0, packageName:Ljava/lang/String;

    .line 1933
    iput v1, p0, screenOrientation:I

    .line 2036
    iput-wide v4, p0, userActivityTimeout:J

    .line 2051
    iput-wide v4, p0, screenDimDuration:J

    .line 2063
    iput-wide v4, p0, buttonLightTimeout:J

    .line 2275
    iput v2, p0, coverMode:I

    .line 2518
    iput-object v3, p0, mCompatibilityParamsBackup:[I

    .line 2897
    const-string v0, ""

    iput-object v0, p0, mTitle:Ljava/lang/CharSequence;

    .line 2280
    const/4 v0, 0x2

    iput v0, p0, type:I

    .line 2281
    iput v1, p0, format:I

    .line 2282
    return-void
.end method

.method public constructor <init>(I)V
    .registers 9
    .param p1, "_type"    # I

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2285
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1502
    iput v2, p0, needsMenuKey:I

    .line 1807
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    .line 1836
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, alpha:F

    .line 1843
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, dimAmount:F

    .line 1872
    iput v6, p0, screenBrightness:F

    .line 1880
    iput v6, p0, buttonBrightness:F

    .line 1912
    iput v2, p0, rotationAnimation:I

    .line 1918
    iput-object v3, p0, token:Landroid/os/IBinder;

    .line 1923
    iput-object v3, p0, packageName:Ljava/lang/String;

    .line 1933
    iput v1, p0, screenOrientation:I

    .line 2036
    iput-wide v4, p0, userActivityTimeout:J

    .line 2051
    iput-wide v4, p0, screenDimDuration:J

    .line 2063
    iput-wide v4, p0, buttonLightTimeout:J

    .line 2275
    iput v2, p0, coverMode:I

    .line 2518
    iput-object v3, p0, mCompatibilityParamsBackup:[I

    .line 2897
    const-string v0, ""

    iput-object v0, p0, mTitle:Ljava/lang/CharSequence;

    .line 2286
    iput p1, p0, type:I

    .line 2287
    iput v1, p0, format:I

    .line 2288
    return-void
.end method

.method public constructor <init>(II)V
    .registers 10
    .param p1, "_type"    # I
    .param p2, "_flags"    # I

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2291
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1502
    iput v2, p0, needsMenuKey:I

    .line 1807
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    .line 1836
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, alpha:F

    .line 1843
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, dimAmount:F

    .line 1872
    iput v6, p0, screenBrightness:F

    .line 1880
    iput v6, p0, buttonBrightness:F

    .line 1912
    iput v2, p0, rotationAnimation:I

    .line 1918
    iput-object v3, p0, token:Landroid/os/IBinder;

    .line 1923
    iput-object v3, p0, packageName:Ljava/lang/String;

    .line 1933
    iput v1, p0, screenOrientation:I

    .line 2036
    iput-wide v4, p0, userActivityTimeout:J

    .line 2051
    iput-wide v4, p0, screenDimDuration:J

    .line 2063
    iput-wide v4, p0, buttonLightTimeout:J

    .line 2275
    iput v2, p0, coverMode:I

    .line 2518
    iput-object v3, p0, mCompatibilityParamsBackup:[I

    .line 2897
    const-string v0, ""

    iput-object v0, p0, mTitle:Ljava/lang/CharSequence;

    .line 2292
    iput p1, p0, type:I

    .line 2293
    iput p2, p0, flags:I

    .line 2294
    iput v1, p0, format:I

    .line 2295
    return-void
.end method

.method public constructor <init>(III)V
    .registers 11
    .param p1, "_type"    # I
    .param p2, "_flags"    # I
    .param p3, "_format"    # I

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2298
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1502
    iput v2, p0, needsMenuKey:I

    .line 1807
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    .line 1836
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, alpha:F

    .line 1843
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, dimAmount:F

    .line 1872
    iput v6, p0, screenBrightness:F

    .line 1880
    iput v6, p0, buttonBrightness:F

    .line 1912
    iput v2, p0, rotationAnimation:I

    .line 1918
    iput-object v3, p0, token:Landroid/os/IBinder;

    .line 1923
    iput-object v3, p0, packageName:Ljava/lang/String;

    .line 1933
    iput v1, p0, screenOrientation:I

    .line 2036
    iput-wide v4, p0, userActivityTimeout:J

    .line 2051
    iput-wide v4, p0, screenDimDuration:J

    .line 2063
    iput-wide v4, p0, buttonLightTimeout:J

    .line 2275
    iput v2, p0, coverMode:I

    .line 2518
    iput-object v3, p0, mCompatibilityParamsBackup:[I

    .line 2897
    const-string v0, ""

    iput-object v0, p0, mTitle:Ljava/lang/CharSequence;

    .line 2299
    iput p1, p0, type:I

    .line 2300
    iput p2, p0, flags:I

    .line 2301
    iput p3, p0, format:I

    .line 2302
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 13
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "_type"    # I
    .param p4, "_flags"    # I
    .param p5, "_format"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2305
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1502
    iput v1, p0, needsMenuKey:I

    .line 1807
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    .line 1836
    iput v6, p0, alpha:F

    .line 1843
    iput v6, p0, dimAmount:F

    .line 1872
    iput v3, p0, screenBrightness:F

    .line 1880
    iput v3, p0, buttonBrightness:F

    .line 1912
    iput v1, p0, rotationAnimation:I

    .line 1918
    iput-object v2, p0, token:Landroid/os/IBinder;

    .line 1923
    iput-object v2, p0, packageName:Ljava/lang/String;

    .line 1933
    const/4 v0, -0x1

    iput v0, p0, screenOrientation:I

    .line 2036
    iput-wide v4, p0, userActivityTimeout:J

    .line 2051
    iput-wide v4, p0, screenDimDuration:J

    .line 2063
    iput-wide v4, p0, buttonLightTimeout:J

    .line 2275
    iput v1, p0, coverMode:I

    .line 2518
    iput-object v2, p0, mCompatibilityParamsBackup:[I

    .line 2897
    const-string v0, ""

    iput-object v0, p0, mTitle:Ljava/lang/CharSequence;

    .line 2306
    iput p3, p0, type:I

    .line 2307
    iput p4, p0, flags:I

    .line 2308
    iput p5, p0, format:I

    .line 2309
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .registers 15
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "xpos"    # I
    .param p4, "ypos"    # I
    .param p5, "_type"    # I
    .param p6, "_flags"    # I
    .param p7, "_format"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2313
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1502
    iput v1, p0, needsMenuKey:I

    .line 1807
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    .line 1836
    iput v6, p0, alpha:F

    .line 1843
    iput v6, p0, dimAmount:F

    .line 1872
    iput v3, p0, screenBrightness:F

    .line 1880
    iput v3, p0, buttonBrightness:F

    .line 1912
    iput v1, p0, rotationAnimation:I

    .line 1918
    iput-object v2, p0, token:Landroid/os/IBinder;

    .line 1923
    iput-object v2, p0, packageName:Ljava/lang/String;

    .line 1933
    const/4 v0, -0x1

    iput v0, p0, screenOrientation:I

    .line 2036
    iput-wide v4, p0, userActivityTimeout:J

    .line 2051
    iput-wide v4, p0, screenDimDuration:J

    .line 2063
    iput-wide v4, p0, buttonLightTimeout:J

    .line 2275
    iput v1, p0, coverMode:I

    .line 2518
    iput-object v2, p0, mCompatibilityParamsBackup:[I

    .line 2897
    const-string v0, ""

    iput-object v0, p0, mTitle:Ljava/lang/CharSequence;

    .line 2314
    iput p3, p0, x:I

    .line 2315
    iput p4, p0, y:I

    .line 2316
    iput p5, p0, type:I

    .line 2317
    iput p6, p0, flags:I

    .line 2318
    iput p7, p0, format:I

    .line 2319
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2411
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 1502
    iput v1, p0, needsMenuKey:I

    .line 1807
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    .line 1836
    iput v6, p0, alpha:F

    .line 1843
    iput v6, p0, dimAmount:F

    .line 1872
    iput v3, p0, screenBrightness:F

    .line 1880
    iput v3, p0, buttonBrightness:F

    .line 1912
    iput v1, p0, rotationAnimation:I

    .line 1918
    iput-object v2, p0, token:Landroid/os/IBinder;

    .line 1923
    iput-object v2, p0, packageName:Ljava/lang/String;

    .line 1933
    const/4 v0, -0x1

    iput v0, p0, screenOrientation:I

    .line 2036
    iput-wide v4, p0, userActivityTimeout:J

    .line 2051
    iput-wide v4, p0, screenDimDuration:J

    .line 2063
    iput-wide v4, p0, buttonLightTimeout:J

    .line 2275
    iput v1, p0, coverMode:I

    .line 2518
    iput-object v2, p0, mCompatibilityParamsBackup:[I

    .line 2897
    const-string v0, ""

    iput-object v0, p0, mTitle:Ljava/lang/CharSequence;

    .line 2412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, width:I

    .line 2413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, height:I

    .line 2414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, x:I

    .line 2415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, y:I

    .line 2416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, type:I

    .line 2417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, flags:I

    .line 2418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, privateFlags:I

    .line 2419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, softInputMode:I

    .line 2420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, gravity:I

    .line 2421
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, horizontalMargin:F

    .line 2422
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, verticalMargin:F

    .line 2423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, format:I

    .line 2424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, windowAnimations:I

    .line 2425
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, alpha:F

    .line 2426
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, dimAmount:F

    .line 2427
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, screenBrightness:F

    .line 2428
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, buttonBrightness:F

    .line 2429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, rotationAnimation:I

    .line 2430
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, token:Landroid/os/IBinder;

    .line 2431
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, packageName:Ljava/lang/String;

    .line 2432
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, mTitle:Ljava/lang/CharSequence;

    .line 2433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, screenOrientation:I

    .line 2434
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, preferredRefreshRate:F

    .line 2435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, preferredDisplayModeId:I

    .line 2436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, systemUiVisibility:I

    .line 2437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, subtreeSystemUiVisibility:I

    .line 2438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_136

    const/4 v0, 0x1

    :goto_da
    iput-boolean v0, p0, hasSystemUiListeners:Z

    .line 2439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, inputFeatures:I

    .line 2440
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, userActivityTimeout:J

    .line 2441
    iget-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2442
    iget-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2443
    iget-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2444
    iget-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10f

    const/4 v1, 0x1

    :cond_10f
    iput-boolean v1, p0, hasManualSurfaceInsets:Z

    .line 2446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, needsMenuKey:I

    .line 2448
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, screenDimDuration:J

    .line 2449
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, buttonLightTimeout:J

    .line 2450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, samsungFlags:I

    .line 2453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, coverMode:I

    .line 2457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, multiWindowFlags:I

    .line 2460
    return-void

    :cond_136
    move v0, v1

    .line 2438
    goto :goto_da
.end method

.method public static mayUseInputMethod(I)Z
    .registers 2
    .param p0, "flags"    # I

    .prologue
    .line 1644
    const v0, 0x20008

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_c

    .line 1649
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 1647
    :sswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 1644
    nop

    :sswitch_data_c
    .sparse-switch
        0x0 -> :sswitch_9
        0x20008 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method backup()V
    .registers 4

    .prologue
    .line 2872
    iget-object v0, p0, mCompatibilityParamsBackup:[I

    .line 2873
    .local v0, "backup":[I
    if-nez v0, :cond_9

    .line 2875
    const/4 v1, 0x4

    new-array v0, v1, [I

    .end local v0    # "backup":[I
    iput-object v0, p0, mCompatibilityParamsBackup:[I

    .line 2877
    .restart local v0    # "backup":[I
    :cond_9
    const/4 v1, 0x0

    iget v2, p0, x:I

    aput v2, v0, v1

    .line 2878
    const/4 v1, 0x1

    iget v2, p0, y:I

    aput v2, v0, v1

    .line 2879
    const/4 v1, 0x2

    iget v2, p0, width:I

    aput v2, v0, v1

    .line 2880
    const/4 v1, 0x3

    iget v2, p0, height:I

    aput v2, v0, v1

    .line 2881
    return-void
.end method

.method public final copyFrom(Landroid/view/WindowManager$LayoutParams;)I
    .registers 9
    .param p1, "o"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/high16 v6, 0x100000

    .line 2521
    const/4 v0, 0x0

    .line 2523
    .local v0, "changes":I
    iget v2, p0, width:I

    iget v3, p1, width:I

    if-eq v2, v3, :cond_f

    .line 2524
    iget v2, p1, width:I

    iput v2, p0, width:I

    .line 2525
    or-int/lit8 v0, v0, 0x1

    .line 2527
    :cond_f
    iget v2, p0, height:I

    iget v3, p1, height:I

    if-eq v2, v3, :cond_1b

    .line 2528
    iget v2, p1, height:I

    iput v2, p0, height:I

    .line 2529
    or-int/lit8 v0, v0, 0x1

    .line 2531
    :cond_1b
    iget v2, p0, x:I

    iget v3, p1, x:I

    if-eq v2, v3, :cond_27

    .line 2532
    iget v2, p1, x:I

    iput v2, p0, x:I

    .line 2533
    or-int/lit8 v0, v0, 0x1

    .line 2535
    :cond_27
    iget v2, p0, y:I

    iget v3, p1, y:I

    if-eq v2, v3, :cond_33

    .line 2536
    iget v2, p1, y:I

    iput v2, p0, y:I

    .line 2537
    or-int/lit8 v0, v0, 0x1

    .line 2539
    :cond_33
    iget v2, p0, horizontalWeight:F

    iget v3, p1, horizontalWeight:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_41

    .line 2540
    iget v2, p1, horizontalWeight:F

    iput v2, p0, horizontalWeight:F

    .line 2541
    or-int/lit8 v0, v0, 0x1

    .line 2543
    :cond_41
    iget v2, p0, verticalWeight:F

    iget v3, p1, verticalWeight:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4f

    .line 2544
    iget v2, p1, verticalWeight:F

    iput v2, p0, verticalWeight:F

    .line 2545
    or-int/lit8 v0, v0, 0x1

    .line 2547
    :cond_4f
    iget v2, p0, horizontalMargin:F

    iget v3, p1, horizontalMargin:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5d

    .line 2548
    iget v2, p1, horizontalMargin:F

    iput v2, p0, horizontalMargin:F

    .line 2549
    or-int/lit8 v0, v0, 0x1

    .line 2551
    :cond_5d
    iget v2, p0, verticalMargin:F

    iget v3, p1, verticalMargin:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6b

    .line 2552
    iget v2, p1, verticalMargin:F

    iput v2, p0, verticalMargin:F

    .line 2553
    or-int/lit8 v0, v0, 0x1

    .line 2555
    :cond_6b
    iget v2, p0, type:I

    iget v3, p1, type:I

    if-eq v2, v3, :cond_77

    .line 2556
    iget v2, p1, type:I

    iput v2, p0, type:I

    .line 2557
    or-int/lit8 v0, v0, 0x2

    .line 2559
    :cond_77
    iget v2, p0, flags:I

    iget v3, p1, flags:I

    if-eq v2, v3, :cond_91

    .line 2560
    iget v2, p0, flags:I

    iget v3, p1, flags:I

    xor-int v1, v2, v3

    .line 2561
    .local v1, "diff":I
    const/high16 v2, 0xc000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_8b

    .line 2562
    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    .line 2564
    :cond_8b
    iget v2, p1, flags:I

    iput v2, p0, flags:I

    .line 2565
    or-int/lit8 v0, v0, 0x4

    .line 2567
    .end local v1    # "diff":I
    :cond_91
    iget v2, p0, privateFlags:I

    iget v3, p1, privateFlags:I

    if-eq v2, v3, :cond_9e

    .line 2568
    iget v2, p1, privateFlags:I

    iput v2, p0, privateFlags:I

    .line 2569
    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    .line 2571
    :cond_9e
    iget v2, p0, softInputMode:I

    iget v3, p1, softInputMode:I

    if-eq v2, v3, :cond_aa

    .line 2572
    iget v2, p1, softInputMode:I

    iput v2, p0, softInputMode:I

    .line 2573
    or-int/lit16 v0, v0, 0x200

    .line 2575
    :cond_aa
    iget v2, p0, gravity:I

    iget v3, p1, gravity:I

    if-eq v2, v3, :cond_b6

    .line 2576
    iget v2, p1, gravity:I

    iput v2, p0, gravity:I

    .line 2577
    or-int/lit8 v0, v0, 0x1

    .line 2579
    :cond_b6
    iget v2, p0, format:I

    iget v3, p1, format:I

    if-eq v2, v3, :cond_c2

    .line 2580
    iget v2, p1, format:I

    iput v2, p0, format:I

    .line 2581
    or-int/lit8 v0, v0, 0x8

    .line 2583
    :cond_c2
    iget v2, p0, windowAnimations:I

    iget v3, p1, windowAnimations:I

    if-eq v2, v3, :cond_ce

    .line 2584
    iget v2, p1, windowAnimations:I

    iput v2, p0, windowAnimations:I

    .line 2585
    or-int/lit8 v0, v0, 0x10

    .line 2587
    :cond_ce
    iget-object v2, p0, token:Landroid/os/IBinder;

    if-nez v2, :cond_d6

    .line 2590
    iget-object v2, p1, token:Landroid/os/IBinder;

    iput-object v2, p0, token:Landroid/os/IBinder;

    .line 2592
    :cond_d6
    iget-object v2, p0, packageName:Ljava/lang/String;

    if-nez v2, :cond_de

    .line 2595
    iget-object v2, p1, packageName:Ljava/lang/String;

    iput-object v2, p0, packageName:Ljava/lang/String;

    .line 2597
    :cond_de
    iget-object v2, p0, mTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ee

    .line 2598
    iget-object v2, p1, mTitle:Ljava/lang/CharSequence;

    iput-object v2, p0, mTitle:Ljava/lang/CharSequence;

    .line 2599
    or-int/lit8 v0, v0, 0x40

    .line 2601
    :cond_ee
    iget v2, p0, alpha:F

    iget v3, p1, alpha:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_fc

    .line 2602
    iget v2, p1, alpha:F

    iput v2, p0, alpha:F

    .line 2603
    or-int/lit16 v0, v0, 0x80

    .line 2605
    :cond_fc
    iget v2, p0, dimAmount:F

    iget v3, p1, dimAmount:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_10a

    .line 2606
    iget v2, p1, dimAmount:F

    iput v2, p0, dimAmount:F

    .line 2607
    or-int/lit8 v0, v0, 0x20

    .line 2609
    :cond_10a
    iget v2, p0, screenBrightness:F

    iget v3, p1, screenBrightness:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_118

    .line 2610
    iget v2, p1, screenBrightness:F

    iput v2, p0, screenBrightness:F

    .line 2611
    or-int/lit16 v0, v0, 0x800

    .line 2613
    :cond_118
    iget v2, p0, buttonBrightness:F

    iget v3, p1, buttonBrightness:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_126

    .line 2614
    iget v2, p1, buttonBrightness:F

    iput v2, p0, buttonBrightness:F

    .line 2615
    or-int/lit16 v0, v0, 0x2000

    .line 2617
    :cond_126
    iget v2, p0, rotationAnimation:I

    iget v3, p1, rotationAnimation:I

    if-eq v2, v3, :cond_132

    .line 2618
    iget v2, p1, rotationAnimation:I

    iput v2, p0, rotationAnimation:I

    .line 2619
    or-int/lit16 v0, v0, 0x1000

    .line 2622
    :cond_132
    iget v2, p0, screenOrientation:I

    iget v3, p1, screenOrientation:I

    if-eq v2, v3, :cond_13e

    .line 2623
    iget v2, p1, screenOrientation:I

    iput v2, p0, screenOrientation:I

    .line 2624
    or-int/lit16 v0, v0, 0x400

    .line 2627
    :cond_13e
    iget v2, p0, preferredRefreshRate:F

    iget v3, p1, preferredRefreshRate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_14d

    .line 2628
    iget v2, p1, preferredRefreshRate:F

    iput v2, p0, preferredRefreshRate:F

    .line 2629
    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    .line 2632
    :cond_14d
    iget v2, p0, preferredDisplayModeId:I

    iget v3, p1, preferredDisplayModeId:I

    if-eq v2, v3, :cond_15a

    .line 2633
    iget v2, p1, preferredDisplayModeId:I

    iput v2, p0, preferredDisplayModeId:I

    .line 2634
    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    .line 2637
    :cond_15a
    iget v2, p0, systemUiVisibility:I

    iget v3, p1, systemUiVisibility:I

    if-ne v2, v3, :cond_166

    iget v2, p0, subtreeSystemUiVisibility:I

    iget v3, p1, subtreeSystemUiVisibility:I

    if-eq v2, v3, :cond_170

    .line 2639
    :cond_166
    iget v2, p1, systemUiVisibility:I

    iput v2, p0, systemUiVisibility:I

    .line 2640
    iget v2, p1, subtreeSystemUiVisibility:I

    iput v2, p0, subtreeSystemUiVisibility:I

    .line 2641
    or-int/lit16 v0, v0, 0x4000

    .line 2644
    :cond_170
    iget-boolean v2, p0, hasSystemUiListeners:Z

    iget-boolean v3, p1, hasSystemUiListeners:Z

    if-eq v2, v3, :cond_17e

    .line 2645
    iget-boolean v2, p1, hasSystemUiListeners:Z

    iput-boolean v2, p0, hasSystemUiListeners:Z

    .line 2646
    const v2, 0x8000

    or-int/2addr v0, v2

    .line 2649
    :cond_17e
    iget v2, p0, inputFeatures:I

    iget v3, p1, inputFeatures:I

    if-eq v2, v3, :cond_18b

    .line 2650
    iget v2, p1, inputFeatures:I

    iput v2, p0, inputFeatures:I

    .line 2651
    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 2654
    :cond_18b
    iget-wide v2, p0, userActivityTimeout:J

    iget-wide v4, p1, userActivityTimeout:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19a

    .line 2655
    iget-wide v2, p1, userActivityTimeout:J

    iput-wide v2, p0, userActivityTimeout:J

    .line 2656
    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    .line 2659
    :cond_19a
    iget-object v2, p0, surfaceInsets:Landroid/graphics/Rect;

    iget-object v3, p1, surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ac

    .line 2660
    iget-object v2, p0, surfaceInsets:Landroid/graphics/Rect;

    iget-object v3, p1, surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2661
    or-int/2addr v0, v6

    .line 2664
    :cond_1ac
    iget-boolean v2, p0, hasManualSurfaceInsets:Z

    iget-boolean v3, p1, hasManualSurfaceInsets:Z

    if-eq v2, v3, :cond_1b7

    .line 2665
    iget-boolean v2, p1, hasManualSurfaceInsets:Z

    iput-boolean v2, p0, hasManualSurfaceInsets:Z

    .line 2666
    or-int/2addr v0, v6

    .line 2669
    :cond_1b7
    iget v2, p0, needsMenuKey:I

    iget v3, p1, needsMenuKey:I

    if-eq v2, v3, :cond_1c4

    .line 2670
    iget v2, p1, needsMenuKey:I

    iput v2, p0, needsMenuKey:I

    .line 2671
    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    .line 2675
    :cond_1c4
    iget-wide v2, p0, screenDimDuration:J

    iget-wide v4, p1, screenDimDuration:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d3

    .line 2676
    iget-wide v2, p1, screenDimDuration:J

    iput-wide v2, p0, screenDimDuration:J

    .line 2677
    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    .line 2680
    :cond_1d3
    iget-wide v2, p0, buttonLightTimeout:J

    iget-wide v4, p1, buttonLightTimeout:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e2

    .line 2681
    iget-wide v2, p1, buttonLightTimeout:J

    iput-wide v2, p0, buttonLightTimeout:J

    .line 2682
    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    .line 2685
    :cond_1e2
    iget v2, p0, samsungFlags:I

    iget v3, p1, samsungFlags:I

    if-eq v2, v3, :cond_1ef

    .line 2686
    iget v2, p1, samsungFlags:I

    iput v2, p0, samsungFlags:I

    .line 2687
    const/high16 v2, 0x4000000

    or-int/2addr v0, v2

    .line 2692
    :cond_1ef
    iget v2, p0, coverMode:I

    iget v3, p1, coverMode:I

    if-eq v2, v3, :cond_1fc

    .line 2693
    iget v2, p1, coverMode:I

    iput v2, p0, coverMode:I

    .line 2694
    const/high16 v2, 0x8000000

    or-int/2addr v0, v2

    .line 2700
    :cond_1fc
    iget v2, p0, multiWindowFlags:I

    iget v3, p1, multiWindowFlags:I

    if-eq v2, v3, :cond_209

    .line 2701
    iget v2, p1, multiWindowFlags:I

    iput v2, p0, multiWindowFlags:I

    .line 2702
    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    .line 2706
    :cond_209
    return v0
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 2711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Contents of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2712
    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    const-string v0, ""

    invoke-super {p0, v0}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2714
    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    const-string v0, "Debug"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    const-string v0, "Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManager.LayoutParams={title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    const-string v0, ""

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 2345
    const/4 v0, 0x0

    return v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 2902
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2904
    const-string/jumbo v0, "x"

    iget v1, p0, x:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2905
    const-string/jumbo v0, "y"

    iget v1, p0, y:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2906
    const-string v0, "horizontalWeight"

    iget v1, p0, horizontalWeight:F

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 2907
    const-string/jumbo v0, "verticalWeight"

    iget v1, p0, verticalWeight:F

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 2908
    const-string/jumbo v0, "type"

    iget v1, p0, type:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2909
    const-string v0, "flags"

    iget v1, p0, flags:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2910
    return-void
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2329
    iget-object v0, p0, mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getUserActivityTimeout()J
    .registers 3

    .prologue
    .line 2341
    iget-wide v0, p0, userActivityTimeout:J

    return-wide v0
.end method

.method restore()V
    .registers 3

    .prologue
    .line 2888
    iget-object v0, p0, mCompatibilityParamsBackup:[I

    .line 2889
    .local v0, "backup":[I
    if-eqz v0, :cond_18

    .line 2890
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, x:I

    .line 2891
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, y:I

    .line 2892
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, width:I

    .line 2893
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, height:I

    .line 2895
    :cond_18
    return-void
.end method

.method public scale(F)V
    .registers 4
    .param p1, "scale"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 2857
    iget v0, p0, x:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, x:I

    .line 2858
    iget v0, p0, y:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, y:I

    .line 2859
    iget v0, p0, width:I

    if-lez v0, :cond_1e

    .line 2860
    iget v0, p0, width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, width:I

    .line 2862
    :cond_1e
    iget v0, p0, height:I

    if-lez v0, :cond_2a

    .line 2863
    iget v0, p0, height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, height:I

    .line 2865
    :cond_2a
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2322
    if-nez p1, :cond_4

    .line 2323
    const-string p1, ""

    .line 2325
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, mTitle:Ljava/lang/CharSequence;

    .line 2326
    return-void
.end method

.method public final setUserActivityTimeout(J)V
    .registers 4
    .param p1, "timeout"    # J

    .prologue
    .line 2335
    iput-wide p1, p0, userActivityTimeout:J

    .line 2336
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v2, -0x2

    const/high16 v5, -0x40800000    # -1.0f

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2722
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2723
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "WM.LayoutParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2724
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2725
    iget v1, p0, x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2726
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2727
    iget v1, p0, y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2728
    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2729
    iget v1, p0, width:I

    if-ne v1, v3, :cond_242

    const-string v1, "fill"

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2730
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2731
    iget v1, p0, height:I

    if-ne v1, v3, :cond_253

    const-string v1, "fill"

    :goto_40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2732
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2733
    iget v1, p0, horizontalMargin:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_58

    .line 2734
    const-string v1, " hm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2735
    iget v1, p0, horizontalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2737
    :cond_58
    iget v1, p0, verticalMargin:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_68

    .line 2738
    const-string v1, " vm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2739
    iget v1, p0, verticalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2741
    :cond_68
    iget v1, p0, gravity:I

    if-eqz v1, :cond_7a

    .line 2742
    const-string v1, " gr=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2743
    iget v1, p0, gravity:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2745
    :cond_7a
    iget v1, p0, softInputMode:I

    if-eqz v1, :cond_8c

    .line 2746
    const-string v1, " sim=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2747
    iget v1, p0, softInputMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2749
    :cond_8c
    const-string v1, " ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2750
    iget v1, p0, type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2751
    const-string v1, " fl=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2752
    iget v1, p0, flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2753
    iget v1, p0, privateFlags:I

    if-eqz v1, :cond_c2

    .line 2754
    iget v1, p0, privateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_b3

    .line 2755
    const-string v1, " compatible=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    :cond_b3
    const-string v1, " pfl=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, privateFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2759
    :cond_c2
    iget v1, p0, format:I

    if-eq v1, v3, :cond_d0

    .line 2760
    const-string v1, " fmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2761
    iget v1, p0, format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2763
    :cond_d0
    iget v1, p0, windowAnimations:I

    if-eqz v1, :cond_e2

    .line 2764
    const-string v1, " wanim=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2765
    iget v1, p0, windowAnimations:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2767
    :cond_e2
    iget v1, p0, screenOrientation:I

    if-eq v1, v3, :cond_f0

    .line 2768
    const-string v1, " or="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2769
    iget v1, p0, screenOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2771
    :cond_f0
    iget v1, p0, alpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_102

    .line 2772
    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2773
    iget v1, p0, alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2775
    :cond_102
    iget v1, p0, screenBrightness:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_112

    .line 2776
    const-string v1, " sbrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2777
    iget v1, p0, screenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2779
    :cond_112
    iget v1, p0, buttonBrightness:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_122

    .line 2780
    const-string v1, " bbrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2781
    iget v1, p0, buttonBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2783
    :cond_122
    iget v1, p0, rotationAnimation:I

    if-eqz v1, :cond_130

    .line 2784
    const-string v1, " rotAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    iget v1, p0, rotationAnimation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2787
    :cond_130
    iget v1, p0, preferredRefreshRate:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_140

    .line 2788
    const-string v1, " preferredRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    iget v1, p0, preferredRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2791
    :cond_140
    iget v1, p0, preferredDisplayModeId:I

    if-eqz v1, :cond_14e

    .line 2792
    const-string v1, " preferredDisplayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2793
    iget v1, p0, preferredDisplayModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2795
    :cond_14e
    iget v1, p0, systemUiVisibility:I

    if-eqz v1, :cond_160

    .line 2796
    const-string v1, " sysui=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2797
    iget v1, p0, systemUiVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2799
    :cond_160
    iget v1, p0, subtreeSystemUiVisibility:I

    if-eqz v1, :cond_172

    .line 2800
    const-string v1, " vsysui=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2801
    iget v1, p0, subtreeSystemUiVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2803
    :cond_172
    iget-boolean v1, p0, hasSystemUiListeners:Z

    if-eqz v1, :cond_180

    .line 2804
    const-string v1, " sysuil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2805
    iget-boolean v1, p0, hasSystemUiListeners:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2807
    :cond_180
    iget v1, p0, inputFeatures:I

    if-eqz v1, :cond_193

    .line 2808
    const-string v1, " if=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, inputFeatures:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    :cond_193
    iget-wide v2, p0, userActivityTimeout:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1a4

    .line 2811
    const-string v1, " userActivityTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, userActivityTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2813
    :cond_1a4
    iget-object v1, p0, surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_1c0

    iget-object v1, p0, surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_1c0

    iget-object v1, p0, surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_1c0

    iget-object v1, p0, surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_1c0

    iget-boolean v1, p0, hasManualSurfaceInsets:Z

    if-eqz v1, :cond_1d4

    .line 2815
    :cond_1c0
    const-string v1, " surfaceInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2816
    iget-boolean v1, p0, hasManualSurfaceInsets:Z

    if-eqz v1, :cond_1d4

    .line 2817
    const-string v1, " (manual)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    :cond_1d4
    iget v1, p0, needsMenuKey:I

    if-eqz v1, :cond_1e2

    .line 2821
    const-string v1, " needsMenuKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    iget v1, p0, needsMenuKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2825
    :cond_1e2
    iget-wide v2, p0, screenDimDuration:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1f3

    .line 2826
    const-string v1, " screenDimDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, screenDimDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2828
    :cond_1f3
    iget-wide v2, p0, buttonLightTimeout:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_204

    .line 2829
    const-string v1, " buttonLightTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, buttonLightTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2831
    :cond_204
    iget v1, p0, samsungFlags:I

    if-eqz v1, :cond_216

    .line 2832
    const-string v1, " sfl=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    iget v1, p0, samsungFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2837
    :cond_216
    iget v1, p0, coverMode:I

    if-eqz v1, :cond_225

    .line 2838
    const-string v1, " cm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, coverMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2843
    :cond_225
    iget v1, p0, multiWindowFlags:I

    if-eqz v1, :cond_238

    .line 2844
    const-string v1, " mwfl=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, multiWindowFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    :cond_238
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2849
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2729
    :cond_242
    iget v1, p0, width:I

    if-ne v1, v2, :cond_24b

    const-string/jumbo v1, "wrap"

    goto/16 :goto_32

    :cond_24b
    iget v1, p0, width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_32

    .line 2731
    :cond_253
    iget v1, p0, height:I

    if-ne v1, v2, :cond_25c

    const-string/jumbo v1, "wrap"

    goto/16 :goto_40

    :cond_25c
    iget v1, p0, height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_40
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2349
    iget v0, p0, width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2350
    iget v0, p0, height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2351
    iget v0, p0, x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2352
    iget v0, p0, y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2353
    iget v0, p0, type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2354
    iget v0, p0, flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2355
    iget v0, p0, privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2356
    iget v0, p0, softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2357
    iget v0, p0, gravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2358
    iget v0, p0, horizontalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2359
    iget v0, p0, verticalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2360
    iget v0, p0, format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2361
    iget v0, p0, windowAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2362
    iget v0, p0, alpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2363
    iget v0, p0, dimAmount:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2364
    iget v0, p0, screenBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2365
    iget v0, p0, buttonBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2366
    iget v0, p0, rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2367
    iget-object v0, p0, token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2368
    iget-object v0, p0, packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2369
    iget-object v0, p0, mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2370
    iget v0, p0, screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2371
    iget v0, p0, preferredRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2372
    iget v0, p0, preferredDisplayModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2373
    iget v0, p0, systemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2374
    iget v0, p0, subtreeSystemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2375
    iget-boolean v0, p0, hasSystemUiListeners:Z

    if-eqz v0, :cond_d8

    move v0, v1

    :goto_89
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2376
    iget v0, p0, inputFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2377
    iget-wide v4, p0, userActivityTimeout:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2378
    iget-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2379
    iget-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2380
    iget-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2381
    iget-object v0, p0, surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2382
    iget-boolean v0, p0, hasManualSurfaceInsets:Z

    if-eqz v0, :cond_da

    :goto_b6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2383
    iget v0, p0, needsMenuKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2385
    iget-wide v0, p0, screenDimDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2386
    iget-wide v0, p0, buttonLightTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2387
    iget v0, p0, samsungFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2390
    iget v0, p0, coverMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2394
    iget v0, p0, multiWindowFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2397
    return-void

    :cond_d8
    move v0, v2

    .line 2375
    goto :goto_89

    :cond_da
    move v1, v2

    .line 2382
    goto :goto_b6
.end method
