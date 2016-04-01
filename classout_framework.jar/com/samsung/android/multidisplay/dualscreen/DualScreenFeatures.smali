.class public Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;
.super Ljava/lang/Object;
.source "DualScreenFeatures.java"


# static fields
.field public static final DESKTOP_MODE_ENABLED:Z = false

.field public static final DUALSCREEN_ENABLED:Z = false

.field public static final DUALSCREEN_MODE_ENABLED:Z = true

.field public static SUPPORT_AUTO_EXPAND_SHRINK_VI:Z = false

.field public static SUPPORT_DESKTOP_MODE:Z = false

.field public static SUPPORT_DISPLAY_CHOOSER:Z = false

.field public static SUPPORT_DUALSCREEN_VI:Z = false

.field public static SUPPORT_DUAL_SCREENSHOT:Z = false

.field public static final SUPPORT_EXPANDED_MODE:Z = true

.field public static SUPPORT_OPPOSITE_LAUNCH:Z

.field public static SUPPORT_PINNED_HOME:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 40
    sput-boolean v1, SUPPORT_DUAL_SCREENSHOT:Z

    .line 41
    sput-boolean v0, SUPPORT_DISPLAY_CHOOSER:Z

    .line 42
    sput-boolean v1, SUPPORT_OPPOSITE_LAUNCH:Z

    .line 43
    sput-boolean v0, SUPPORT_DESKTOP_MODE:Z

    .line 45
    sput-boolean v1, SUPPORT_DUALSCREEN_VI:Z

    .line 46
    sput-boolean v0, SUPPORT_AUTO_EXPAND_SHRINK_VI:Z

    .line 47
    sput-boolean v0, SUPPORT_PINNED_HOME:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
