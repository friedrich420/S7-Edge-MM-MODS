.class public Lcom/android/internal/util/ScreenShapeHelper;
.super Ljava/lang/Object;
.source "ScreenShapeHelper.java"


# static fields
.field private static final IS_EMULATOR:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "goldfish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, IS_EMULATOR:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWindowOutsetBottomPx(Landroid/content/res/Resources;)I
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 24
    sget-boolean v0, IS_EMULATOR:Z

    if-eqz v0, :cond_d

    .line 25
    const-string/jumbo v0, "ro.emu.win_outset_bottom_px"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 27
    :goto_c
    return v0

    :cond_d
    const v0, 0x10e008c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_c
.end method
