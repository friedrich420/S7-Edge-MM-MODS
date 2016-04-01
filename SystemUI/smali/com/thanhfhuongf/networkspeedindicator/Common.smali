.class public Lcom/thanhfhuongf/networkspeedindicator/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static final ACTION_SETTINGS_CHANGED:Ljava/lang/String; = "com.thanhfhuongf.networkspeedindicator.changed"

.field public static final DEF_COLOR:I = -0x333334

.field public static final DEF_COLOR_MODE:I = 0x0

.field public static final DEF_DISPLAY:I = 0x0

.field public static final DEF_FONT_SIZE:I = 0xa

.field public static final DEF_FORCE_UNIT:I = 0x0

.field public static final DEF_HIDE_INACTIVE:Z = false

.field public static final DEF_HIDE_UNIT:Z = false

.field public static final DEF_NETWORK_TYPE:Ljava/lang/String; = "both"

.field public static final DEF_POSITION:I = 0x0

.field public static final DEF_SHOW_DOWNLOAD_SPEED:Z = true

.field public static final DEF_SHOW_UPLOAD_SPEED:Z = true

.field public static final DEF_SUFFIX:I = 0x1

.field public static final DEF_UPDATE_INTERVALE:I = 0x3e8

.field public static final KEY_COLOR:Ljava/lang/String; = "color"

.field public static final KEY_COLOR_MODE:Ljava/lang/String; = "color_mode"

.field public static final KEY_DISPLAY:Ljava/lang/String; = "display"

.field public static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"

.field public static final KEY_FORCE_UNIT:Ljava/lang/String; = "force_unit"

.field public static final KEY_HIDE_INACTIVE:Ljava/lang/String; = "hide_inactive"

.field public static final KEY_HIDE_UNIT:Ljava/lang/String; = "hide_unit"

.field public static final KEY_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field public static final KEY_POSITION:Ljava/lang/String; = "position"

.field public static final KEY_SHOW_DOWNLOAD_SPEED:Ljava/lang/String; = "show_download_speed"

.field public static final KEY_SHOW_UPLOAD_SPEED:Ljava/lang/String; = "show_upload_speed"

.field public static final KEY_SUFFIX:Ljava/lang/String; = "suffix"

.field public static final KEY_UPDATE_INTERVAL:Ljava/lang/String; = "update_interval"

.field public static final PKG_NAME:Ljava/lang/String; = "com.thanhfhuongf.networkspeedindicator"

.field public static final PREFERENCE_FILE:Ljava/lang/String; = "com.thanhfhuongf.networkspeedindicator_preferences"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 8

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    :try_start_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 42
    move-object v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    .line 46
    :goto_0
    return v0

    .line 42
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 46
    move v5, v2

    move v0, v5

    goto :goto_0
.end method
