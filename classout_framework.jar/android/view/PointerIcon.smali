.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PointerIcon$HoverEffect;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOM_DEFAULT_ICON_ID:I = 0xff

.field private static final HOVERING_CUSTOM_ICON_MAX_COUNT:I = 0x5

.field private static final HOVERING_CUSTOM_ICON_MAX_SIZE:I = 0x9c40

.field private static final HOVERING_CUSTOM_ICON_RESIZE_X:I = 0x64

.field public static final HOVERING_FLAG_ALWAYSSHOW:I = 0x1

.field public static final HOVERING_PENSELECT_POINTER_01:I = 0x15

.field public static final HOVERING_SCROLLICON_POINTER_01:I = 0xb

.field public static final HOVERING_SCROLLICON_POINTER_02:I = 0xc

.field public static final HOVERING_SCROLLICON_POINTER_03:I = 0xd

.field public static final HOVERING_SCROLLICON_POINTER_04:I = 0xe

.field public static final HOVERING_SCROLLICON_POINTER_05:I = 0xf

.field public static final HOVERING_SCROLLICON_POINTER_06:I = 0x10

.field public static final HOVERING_SCROLLICON_POINTER_07:I = 0x11

.field public static final HOVERING_SCROLLICON_POINTER_08:I = 0x12

.field public static final HOVERING_SPENICON_CURSOR:I = 0x2

.field public static final HOVERING_SPENICON_CUSTOM:I = 0x0

.field public static final HOVERING_SPENICON_DEFAULT:I = 0x1

.field public static final HOVERING_SPENICON_DEFAULT_CUSTOM:I = 0x16

.field public static final HOVERING_SPENICON_DISABLE_DEFAULT_CUSTOM:I = 0x17

.field public static final HOVERING_SPENICON_HIDE:I = 0x13

.field public static final HOVERING_SPENICON_HOVERPOPUP_DEFAULT:I = 0x14

.field public static final HOVERING_SPENICON_MORE:I = 0xa

.field public static final HOVERING_SPENICON_MOVE:I = 0x5

.field public static final HOVERING_SPENICON_RESIZE_01:I = 0x6

.field public static final HOVERING_SPENICON_RESIZE_02:I = 0x7

.field public static final HOVERING_SPENICON_RESIZE_03:I = 0x8

.field public static final HOVERING_SPENICON_RESIZE_04:I = 0x9

.field public static final HOVERING_SPENICON_SPLIT_01:I = 0x3

.field public static final HOVERING_SPENICON_SPLIT_02:I = 0x4

.field public static final MOUSEICON_CURSOR:I = 0x66

.field public static final MOUSEICON_CUSTOM:I = 0x64

.field public static final MOUSEICON_DEFAULT:I = 0x65

.field public static final MOUSEICON_DRAWING:I = 0x78

.field public static final MOUSEICON_MORE:I = 0x6e

.field public static final MOUSEICON_MOVE:I = 0x69

.field public static final MOUSEICON_POINTER_01:I = 0x6f

.field public static final MOUSEICON_POINTER_02:I = 0x70

.field public static final MOUSEICON_POINTER_03:I = 0x71

.field public static final MOUSEICON_POINTER_04:I = 0x72

.field public static final MOUSEICON_POINTER_05:I = 0x73

.field public static final MOUSEICON_POINTER_06:I = 0x74

.field public static final MOUSEICON_POINTER_07:I = 0x75

.field public static final MOUSEICON_POINTER_08:I = 0x76

.field public static final MOUSEICON_RESIZE_01:I = 0x6a

.field public static final MOUSEICON_RESIZE_02:I = 0x6b

.field public static final MOUSEICON_RESIZE_03:I = 0x6c

.field public static final MOUSEICON_RESIZE_04:I = 0x6d

.field public static final MOUSEICON_SPLIT_01:I = 0x67

.field public static final MOUSEICON_SPLIT_02:I = 0x68

.field public static final MOUSEICON_TRANSPARENT:I = 0x77

.field private static final MOUSE_CUSTOM_ICON_MAX_COUNT:I = 0x5

.field private static final MOUSE_CUSTOM_ICON_MAX_SIZE:I = 0x9c40

.field private static final MOUSE_CUSTOM_ICON_RESIZE_X:I = 0x64

.field public static final STYLE_ARROW:I = 0x3e8

.field public static final STYLE_ARROW_BIG:I = 0x3e9

.field public static final STYLE_CUSTOM:I = -0x1

.field private static final STYLE_DEFAULT:I = 0x3e8

.field public static final STYLE_NULL:I = 0x0

.field private static final STYLE_OEM_FIRST:I = 0x2710

.field public static final STYLE_SPOT_ANCHOR:I = 0x7d2

.field public static final STYLE_SPOT_FINGERHOVER:I = 0x2712

.field public static final STYLE_SPOT_HOVER:I = 0x7d0

.field public static final STYLE_SPOT_HOVERING_SPEN:I = 0x2711

.field public static final STYLE_SPOT_TOUCH:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "PointerIcon"

.field private static final gNullIcon:Landroid/view/PointerIcon;

.field private static mContext:Landroid/content/Context;

.field private static mCustomHotSpotPoint:Landroid/graphics/Point;

.field private static mCustomIconCurrentId:I

.field private static mCustomIconId:I

.field private static mHoverBitmap:[Landroid/graphics/Bitmap;

.field private static mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

.field private static mIconType:I

.field private static volatile mLock:Ljava/lang/Object;

.field private static volatile mLockforMouse:Ljava/lang/Object;

.field private static mMouseBitmap:[Landroid/graphics/Bitmap;

.field private static mMouseCustomHotSpotPoint:Landroid/graphics/Point;

.field private static mMouseCustomIconCurrentId:I

.field private static mMouseCustomIconId:I

.field private static mMouseIconType:I

.field public static mThemeApplied:Z

.field private static sInputManager:Landroid/hardware/input/IInputManager;

.field private static final sStaticInitInput:Ljava/lang/Object;

.field private static final sStaticInitWindow:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHotSpotX:F

.field private mHotSpotY:F

.field private final mStyle:I

.field private mSystemIconResourceId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 98
    new-instance v0, Landroid/view/PointerIcon;

    invoke-direct {v0, v2}, <init>(I)V

    sput-object v0, gNullIcon:Landroid/view/PointerIcon;

    .line 170
    sput-boolean v2, mThemeApplied:Z

    .line 494
    new-instance v0, Landroid/view/PointerIcon$1;

    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    .line 828
    sput v1, mMouseIconType:I

    .line 830
    sput-object v3, mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    .line 831
    sput v1, mMouseCustomIconCurrentId:I

    .line 833
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mLockforMouse:Ljava/lang/Object;

    .line 1040
    sput v1, mIconType:I

    .line 1041
    sput v1, mCustomIconId:I

    .line 1042
    sput-object v3, mCustomHotSpotPoint:Landroid/graphics/Point;

    .line 1043
    sput v2, mCustomIconCurrentId:I

    .line 1045
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sStaticInitWindow:Ljava/lang/Object;

    .line 1046
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sStaticInitInput:Ljava/lang/Object;

    .line 1050
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2
    .param p1, "style"    # I

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput p1, p0, mStyle:I

    .line 177
    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/PointerIcon$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/view/PointerIcon$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, <init>(I)V

    return-void
.end method

.method static synthetic access$102(Landroid/view/PointerIcon;I)I
    .registers 2
    .param p0, "x0"    # Landroid/view/PointerIcon;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, mSystemIconResourceId:I

    return p1
.end method

.method public static createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .registers 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    .line 341
    if-nez p0, :cond_a

    .line 342
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_a
    invoke-static {p0, p1, p2}, validateHotSpot(Landroid/graphics/Bitmap;FF)V

    .line 346
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, <init>(I)V

    .line 347
    .local v0, "icon":Landroid/view/PointerIcon;
    iput-object p0, v0, mBitmap:Landroid/graphics/Bitmap;

    .line 348
    iput p1, v0, mHotSpotX:F

    .line 349
    iput p2, v0, mHotSpotY:F

    .line 350
    return-object v0
.end method

.method public static getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method static getInputManager()Landroid/hardware/input/IInputManager;
    .registers 2

    .prologue
    .line 1385
    sget-object v1, sStaticInitInput:Ljava/lang/Object;

    monitor-enter v1

    .line 1386
    :try_start_3
    sget-object v0, sInputManager:Landroid/hardware/input/IInputManager;

    if-nez v0, :cond_13

    .line 1387
    const-string v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    sput-object v0, sInputManager:Landroid/hardware/input/IInputManager;

    .line 1389
    :cond_13
    sget-object v0, sInputManager:Landroid/hardware/input/IInputManager;

    monitor-exit v1

    return-object v0

    .line 1390
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public static getNullIcon()Landroid/view/PointerIcon;
    .registers 1

    .prologue
    .line 188
    sget-object v0, gNullIcon:Landroid/view/PointerIcon;

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    const/16 v11, 0x3e9

    const/4 v10, -0x1

    const/16 v8, 0x3e8

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 216
    if-nez p0, :cond_12

    .line 217
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "context must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 220
    :cond_12
    if-nez p1, :cond_17

    .line 221
    sget-object v4, gNullIcon:Landroid/view/PointerIcon;

    .line 323
    :goto_16
    return-object v4

    .line 225
    :cond_17
    sget-object v4, mContext:Landroid/content/Context;

    if-nez v4, :cond_1d

    .line 226
    sput-object p0, mContext:Landroid/content/Context;

    .line 229
    :cond_1d
    sget-object v5, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 230
    if-ne p1, v8, :cond_6a

    :try_start_22
    sget-object v4, mHoverBitmap:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6a

    sget-object v4, mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    if-eqz v4, :cond_6a

    .line 231
    sget-object v4, mCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_55

    .line 232
    sget-object v4, mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    sget-object v6, mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    sget-object v7, mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-static {v4, v6, v7}, createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto :goto_16

    .line 265
    :catchall_52
    move-exception v4

    monitor-exit v5
    :try_end_54
    .catchall {:try_start_22 .. :try_end_54} :catchall_52

    throw v4

    .line 234
    :cond_55
    :try_start_55
    sget-object v4, mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    sget-object v6, mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sget-object v7, mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-static {v4, v6, v7}, createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto :goto_16

    .line 237
    :cond_6a
    const/16 v4, 0x2711

    if-ne p1, v4, :cond_130

    .line 238
    sget v4, mIconType:I

    if-nez v4, :cond_de

    .line 239
    sget v4, mCustomIconId:I

    if-ltz v4, :cond_7b

    sget v4, mCustomIconId:I

    const/4 v6, 0x5

    if-lt v4, v6, :cond_86

    .line 240
    :cond_7b
    const/4 v4, 0x1

    sput v4, mCustomIconId:I

    .line 241
    const/16 v4, 0x3e8

    invoke-static {p0, v4}, getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto :goto_16

    .line 243
    :cond_86
    sget-object v4, mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v6, mCustomIconId:I

    aget-object v4, v4, v6

    if-nez v4, :cond_9e

    .line 244
    const-string v4, "PointerIcon"

    const-string v6, "getSystemIcon mHoverBitmap is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/16 v4, 0x3e8

    invoke-static {p0, v4}, getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_16

    .line 248
    :cond_9e
    sget-object v4, mCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_c7

    .line 249
    sget-object v4, mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v6, mCustomIconId:I

    aget-object v4, v4, v6

    sget-object v6, mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v7, mCustomIconId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    sget-object v7, mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v8, mCustomIconId:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-static {v4, v6, v7}, createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_16

    .line 253
    :cond_c7
    sget-object v4, mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v6, mCustomIconId:I

    aget-object v4, v4, v6

    sget-object v6, mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sget-object v7, mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-static {v4, v6, v7}, createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_16

    .line 255
    :cond_de
    sget v4, mIconType:I

    const/16 v6, 0x16

    if-eq v4, v6, :cond_e9

    sget v4, mIconType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_130

    :cond_e9
    sget-object v4, mHoverBitmap:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_130

    sget-object v4, mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    if-eqz v4, :cond_130

    .line 257
    sget-object v4, mCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_11a

    .line 258
    sget-object v4, mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    sget-object v6, mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    sget-object v7, mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-static {v4, v6, v7}, createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_16

    .line 261
    :cond_11a
    sget-object v4, mHoverBitmap:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    sget-object v6, mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sget-object v7, mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-static {v4, v6, v7}, createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_16

    .line 265
    :cond_130
    monitor-exit v5
    :try_end_131
    .catchall {:try_start_55 .. :try_end_131} :catchall_52

    .line 269
    sget-object v5, mLockforMouse:Ljava/lang/Object;

    monitor-enter v5

    .line 270
    if-ne p1, v11, :cond_1a5

    .line 271
    :try_start_136
    sget v4, mMouseIconType:I

    const/16 v6, 0x64

    if-ne v4, v6, :cond_1a5

    .line 272
    sget v4, mMouseCustomIconId:I

    if-ltz v4, :cond_145

    sget v4, mMouseCustomIconId:I

    const/4 v6, 0x5

    if-lt v4, v6, :cond_154

    .line 273
    :cond_145
    const/4 v4, 0x0

    sput v4, mMouseCustomIconId:I

    .line 274
    const/16 v4, 0x3e8

    invoke-static {p0, v4}, getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_16

    .line 289
    :catchall_151
    move-exception v4

    monitor-exit v5
    :try_end_153
    .catchall {:try_start_136 .. :try_end_153} :catchall_151

    throw v4

    .line 276
    :cond_154
    :try_start_154
    sget-object v4, mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v6, mMouseCustomIconId:I

    aget-object v4, v4, v6

    if-nez v4, :cond_165

    .line 277
    const/16 v4, 0x3e8

    invoke-static {p0, v4}, getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_16

    .line 279
    :cond_165
    sget-object v4, mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_18e

    .line 280
    sget-object v4, mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v6, mMouseCustomIconId:I

    aget-object v4, v4, v6

    sget-object v6, mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v7, mMouseCustomIconId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    sget-object v7, mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v8, mMouseCustomIconId:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-static {v4, v6, v7}, createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_16

    .line 284
    :cond_18e
    sget-object v4, mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v6, mMouseCustomIconId:I

    aget-object v4, v4, v6

    sget-object v6, mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sget-object v7, mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-static {v4, v6, v7}, createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    monitor-exit v5

    goto/16 :goto_16

    .line 289
    :cond_1a5
    monitor-exit v5
    :try_end_1a6
    .catchall {:try_start_154 .. :try_end_1a6} :catchall_151

    .line 292
    invoke-static {p1}, getSystemIconStyleIndex(I)I

    move-result v3

    .line 294
    .local v3, "styleIndex":I
    if-nez v3, :cond_1b6

    const/16 v4, 0x2711

    if-eq p1, v4, :cond_1b6

    if-eq p1, v11, :cond_1b6

    .line 295
    invoke-static {v8}, getSystemIconStyleIndex(I)I

    move-result v3

    .line 300
    :cond_1b6
    const/16 v4, 0x2711

    if-eq p1, v4, :cond_1bc

    if-ne p1, v11, :cond_1ed

    .line 301
    :cond_1bc
    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->DeviceDefault_Pointer:[I

    const v6, 0x11600bb

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 302
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 303
    .local v2, "resourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 312
    :goto_1cd
    if-ne v2, v10, :cond_205

    .line 313
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing theme resources for pointer icon style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-ne p1, v8, :cond_1ff

    sget-object v4, gNullIcon:Landroid/view/PointerIcon;

    goto/16 :goto_16

    .line 305
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "resourceId":I
    :cond_1ed
    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->Pointer:[I

    const v6, 0x1160030

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 308
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 309
    .restart local v2    # "resourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1cd

    .line 314
    :cond_1ff
    invoke-static {p0, v8}, getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_16

    .line 317
    :cond_205
    new-instance v1, Landroid/view/PointerIcon;

    invoke-direct {v1, p1}, <init>(I)V

    .line 318
    .local v1, "icon":Landroid/view/PointerIcon;
    const/high16 v4, -0x1000000

    and-int/2addr v4, v2

    const/high16 v5, 0x1000000

    if-ne v4, v5, :cond_216

    .line 319
    iput v2, v1, mSystemIconResourceId:I

    :goto_213
    move-object v4, v1

    .line 323
    goto/16 :goto_16

    .line 321
    :cond_216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, p0, v4, v2}, loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    goto :goto_213
.end method

.method private static getSystemIconStyleIndex(I)I
    .registers 8
    .param p0, "style"    # I

    .prologue
    const/16 v1, 0x13

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 622
    sparse-switch p0, :sswitch_data_ac

    .line 726
    :goto_9
    :pswitch_9
    :sswitch_9
    return v0

    .line 627
    :sswitch_a
    sget v0, mMouseIconType:I

    packed-switch v0, :pswitch_data_ca

    move v0, v1

    .line 669
    goto :goto_9

    :pswitch_11
    move v0, v1

    .line 629
    goto :goto_9

    .line 631
    :pswitch_13
    const/16 v0, 0x14

    goto :goto_9

    .line 633
    :pswitch_16
    const/16 v0, 0x15

    goto :goto_9

    .line 635
    :pswitch_19
    const/16 v0, 0x16

    goto :goto_9

    .line 637
    :pswitch_1c
    const/16 v0, 0x17

    goto :goto_9

    .line 639
    :pswitch_1f
    const/16 v0, 0x18

    goto :goto_9

    .line 641
    :pswitch_22
    const/16 v0, 0x19

    goto :goto_9

    .line 643
    :pswitch_25
    const/16 v0, 0x1a

    goto :goto_9

    .line 645
    :pswitch_28
    const/16 v0, 0x1b

    goto :goto_9

    .line 647
    :pswitch_2b
    const/16 v0, 0x1c

    goto :goto_9

    .line 649
    :pswitch_2e
    const/16 v0, 0x1d

    goto :goto_9

    .line 651
    :pswitch_31
    const/16 v0, 0x1e

    goto :goto_9

    .line 653
    :pswitch_34
    const/16 v0, 0x1f

    goto :goto_9

    .line 655
    :pswitch_37
    const/16 v0, 0x20

    goto :goto_9

    .line 657
    :pswitch_3a
    const/16 v0, 0x21

    goto :goto_9

    .line 659
    :pswitch_3d
    const/16 v0, 0x22

    goto :goto_9

    .line 661
    :pswitch_40
    const/16 v0, 0x23

    goto :goto_9

    .line 663
    :pswitch_43
    const/16 v0, 0x24

    goto :goto_9

    .line 665
    :pswitch_46
    const/16 v0, 0x25

    goto :goto_9

    .line 667
    :pswitch_49
    const/16 v0, 0x26

    goto :goto_9

    :sswitch_4c
    move v0, v2

    .line 672
    goto :goto_9

    :sswitch_4e
    move v0, v3

    .line 674
    goto :goto_9

    :sswitch_50
    move v0, v4

    .line 676
    goto :goto_9

    .line 682
    :sswitch_52
    const-string v1, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSystemIconStyleIndex style: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    sget v1, mIconType:I

    packed-switch v1, :pswitch_data_f6

    .line 723
    :pswitch_6f
    const/16 v0, 0x9

    goto :goto_9

    .line 685
    :pswitch_72
    const/16 v0, 0xb

    goto :goto_9

    .line 687
    :pswitch_75
    const/16 v0, 0xc

    goto :goto_9

    .line 689
    :pswitch_78
    const/16 v0, 0xd

    goto :goto_9

    .line 691
    :pswitch_7b
    const/16 v0, 0xe

    goto :goto_9

    .line 693
    :pswitch_7e
    const/16 v0, 0xf

    goto :goto_9

    .line 695
    :pswitch_81
    const/16 v0, 0x10

    goto :goto_9

    .line 697
    :pswitch_84
    const/16 v0, 0x11

    goto :goto_9

    .line 699
    :pswitch_87
    const/16 v0, 0x12

    goto :goto_9

    .line 701
    :pswitch_8a
    const/16 v0, 0xa

    goto/16 :goto_9

    :pswitch_8e
    move v0, v2

    .line 705
    goto/16 :goto_9

    :pswitch_91
    move v0, v3

    .line 707
    goto/16 :goto_9

    :pswitch_94
    move v0, v4

    .line 709
    goto/16 :goto_9

    .line 711
    :pswitch_97
    const/4 v0, 0x4

    goto/16 :goto_9

    .line 713
    :pswitch_9a
    const/4 v0, 0x5

    goto/16 :goto_9

    .line 715
    :pswitch_9d
    const/4 v0, 0x6

    goto/16 :goto_9

    .line 717
    :pswitch_a0
    const/4 v0, 0x7

    goto/16 :goto_9

    .line 719
    :pswitch_a3
    const/16 v0, 0x8

    goto/16 :goto_9

    .line 721
    :pswitch_a7
    const/16 v0, 0x27

    goto/16 :goto_9

    .line 622
    nop

    :sswitch_data_ac
    .sparse-switch
        0x3e8 -> :sswitch_9
        0x3e9 -> :sswitch_a
        0x7d0 -> :sswitch_4c
        0x7d1 -> :sswitch_4e
        0x7d2 -> :sswitch_50
        0x2711 -> :sswitch_52
        0x2712 -> :sswitch_9
    .end sparse-switch

    .line 627
    :pswitch_data_ca
    .packed-switch 0x65
        :pswitch_11
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
    .end packed-switch

    .line 683
    :pswitch_data_f6
    .packed-switch 0x2
        :pswitch_72
        :pswitch_75
        :pswitch_78
        :pswitch_7b
        :pswitch_7e
        :pswitch_81
        :pswitch_84
        :pswitch_87
        :pswitch_8a
        :pswitch_9
        :pswitch_8e
        :pswitch_91
        :pswitch_94
        :pswitch_97
        :pswitch_9a
        :pswitch_9d
        :pswitch_a0
        :pswitch_a3
        :pswitch_6f
        :pswitch_a7
    .end packed-switch
.end method

.method public static loadCustomIcon(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .registers 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .prologue
    .line 376
    if-nez p0, :cond_b

    .line 377
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "resources must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 380
    :cond_b
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, <init>(I)V

    .line 381
    .local v0, "icon":Landroid/view/PointerIcon;
    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 382
    return-object v0
.end method

.method private loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I

    .prologue
    .line 572
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 577
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_4
    const-string/jumbo v7, "pointer-icon"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 579
    sget-object v7, Lcom/android/internal/R$styleable;->PointerIcon:[I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 581
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 582
    .local v1, "bitmapRes":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 583
    .local v4, "hotSpotX":F
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 584
    .local v5, "hotSpotY":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_32
    .catchall {:try_start_4 .. :try_end_25} :catchall_3b

    .line 588
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 591
    if-nez v1, :cond_40

    .line 592
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> is missing bitmap attribute."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 585
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "bitmapRes":I
    .end local v4    # "hotSpotX":F
    .end local v5    # "hotSpotY":F
    :catch_32
    move-exception v3

    .line 586
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_33
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Exception parsing pointer icon resource."

    invoke-direct {v7, v8, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3b

    .line 588
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_3b
    move-exception v7

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v7

    .line 596
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "bitmapRes":I
    .restart local v4    # "hotSpotX":F
    .restart local v5    # "hotSpotY":F
    :cond_40
    if-nez p1, :cond_52

    .line 597
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 601
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_46
    instance-of v7, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v7, :cond_57

    .line 602
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 599
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_52
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_46

    .line 607
    :cond_57
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, mBitmap:Landroid/graphics/Bitmap;

    .line 608
    iput v4, p0, mHotSpotX:F

    .line 609
    iput v5, p0, mHotSpotY:F

    .line 610
    return-void
.end method

.method public static registerHoveringSpenCustomIcon(Landroid/graphics/drawable/Drawable;)I
    .registers 9
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1063
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerHoveringSpenCustomIcon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    if-nez p0, :cond_15

    .line 1068
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerHoveringSpenCustomIcon Drawable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const/4 v4, -0x1

    .line 1088
    :goto_14
    return v4

    .line 1072
    :cond_15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1073
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1075
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1076
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1078
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x9c40

    if-le v4, v5, :cond_90

    .line 1082
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1084
    .local v3, "scale":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1085
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1086
    move-object v0, v2

    .line 1088
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scale":F
    :cond_90
    invoke-static {}, getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/hardware/input/IInputManager;->registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v4

    goto/16 :goto_14
.end method

.method public static registerMouseCustomIcon(Landroid/graphics/drawable/Drawable;)I
    .registers 9
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 842
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerMouseCustomIcon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    if-nez p0, :cond_15

    .line 845
    const-string v4, "PointerIcon"

    const-string/jumbo v5, "registerMouseCustomIcon Drawable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/4 v4, -0x1

    .line 865
    :goto_14
    return v4

    .line 849
    :cond_15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 850
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 852
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 853
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 855
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x9c40

    if-le v4, v5, :cond_90

    .line 859
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 861
    .local v3, "scale":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 862
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 863
    move-object v0, v2

    .line 865
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scale":F
    :cond_90
    invoke-static {}, getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/hardware/input/IInputManager;->registerMouseCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v4

    goto/16 :goto_14
.end method

.method public static removeHoveringSpenCustomIcon(I)V
    .registers 4
    .param p0, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1098
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeHoveringSpenCustomIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-static {}, getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hardware/input/IInputManager;->removeHoveringSpenCustomIcon(I)V

    .line 1100
    return-void
.end method

.method public static removeMouseCustomIcon(I)V
    .registers 4
    .param p0, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 875
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMouseCustomIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-static {}, getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hardware/input/IInputManager;->removeMouseCustomIcon(I)V

    .line 877
    return-void
.end method

.method public static setCustomDefaultIcon(ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 740
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCustomDefaultIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType is CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    if-nez p1, :cond_2a

    .line 743
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setCustomDefaultIcon(), invalid customIcon."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_29
    return-void

    .line 747
    :cond_2a
    const/4 v0, 0x2

    if-ne p0, v0, :cond_33

    .line 748
    const/16 v0, 0x16

    invoke-static {v0, p1}, setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    goto :goto_29

    .line 749
    :cond_33
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3c

    .line 750
    const/16 v0, 0x64

    invoke-static {v0, p1}, setMouseIcon(ILandroid/graphics/drawable/Drawable;)I

    goto :goto_29

    .line 752
    :cond_3c
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setCustomDefaultIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public static setDisableCustomDefaultIcon()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 762
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setDisableCustomDefaultIcon()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-static {v0, v1}, setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    .line 764
    return-void
.end method

.method public static setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I
    .registers 6
    .param p0, "IconId"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1353
    sget-object v2, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1354
    move v0, p0

    .line 1357
    .local v0, "iReaIconId":I
    if-gez v0, :cond_8

    .line 1358
    :try_start_6
    sget v0, mCustomIconId:I

    .line 1360
    :cond_8
    const/4 v1, 0x1

    if-ge v0, v1, :cond_c

    .line 1361
    const/4 v0, 0x1

    .line 1364
    :cond_c
    sget-object v1, mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_20

    .line 1365
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 1370
    :goto_15
    const/16 v1, 0xff

    if-ne p0, v1, :cond_1a

    .line 1371
    const/4 v0, 0x0

    .line 1379
    :cond_1a
    sget-object v1, mHoverBitmap:[Landroid/graphics/Bitmap;

    aput-object p1, v1, v0

    .line 1380
    monitor-exit v2

    return v0

    .line 1367
    :cond_20
    const-string v1, "PointerIcon"

    const-string v3, "HoverBitmap instance already exist."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1381
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public static setHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I
    .registers 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x5

    .line 1322
    sget-object v1, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1324
    :try_start_4
    sget v0, mCustomIconCurrentId:I

    if-lt v0, v2, :cond_2f

    .line 1325
    const/4 v0, 0x1

    sput v0, mCustomIconCurrentId:I

    .line 1330
    :goto_b
    sget-object v0, mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_39

    .line 1331
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 1336
    :goto_14
    sget-object v0, mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v2, mCustomIconCurrentId:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_25

    .line 1337
    sget-object v0, mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v2, mCustomIconCurrentId:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1339
    :cond_25
    sget-object v0, mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v2, mCustomIconCurrentId:I

    aput-object p0, v0, v2

    .line 1340
    sget v0, mCustomIconCurrentId:I

    monitor-exit v1

    return v0

    .line 1327
    :cond_2f
    sget v0, mCustomIconCurrentId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, mCustomIconCurrentId:I

    goto :goto_b

    .line 1341
    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw v0

    .line 1333
    :cond_39
    :try_start_39
    const-string v0, "PointerIcon"

    const-string v2, "HoverBitmap instance already exist."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_36

    goto :goto_14
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    .registers 3
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1159
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;I)I
    .registers 15
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2711

    const/16 v6, 0x64

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1168
    const-string v0, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHoveringSpenIcon2 iconType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/16 v0, 0x17

    if-ne p0, v0, :cond_2f

    .line 1175
    invoke-static {}, getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    move v2, p0

    move-object v4, v3

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    .line 1195
    :goto_2e
    return v0

    .line 1178
    :cond_2f
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1179
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1181
    .local v10, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v5, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1182
    invoke-virtual {p1, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1184
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    const v2, 0x9c40

    if-le v0, v2, :cond_93

    .line 1188
    const-string v0, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "height:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-static {v7, v6, v6, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1191
    .local v11, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1192
    move-object v7, v11

    .line 1195
    .end local v11    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_93
    invoke-static {}, getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v4

    move v5, v1

    move v6, p0

    move-object v8, v3

    move v9, p2

    invoke-interface/range {v4 .. v9}, Landroid/hardware/input/IInputManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    goto :goto_2e
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I
    .registers 4
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1207
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I
    .registers 12
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 1216
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHoveringSpenIcon with hotSpotPoint iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1222
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1224
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1225
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1227
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_80

    .line 1231
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1234
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1235
    move-object v3, v7

    .line 1238
    .end local v7    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_80
    invoke-static {}, getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    move v2, p0

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(II)V
    .registers 3
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1109
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, setHoveringSpenIcon(III)V

    .line 1110
    return-void
.end method

.method public static setHoveringSpenIcon(III)V
    .registers 9
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1123
    invoke-static {}, getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    const/4 v4, 0x0

    move v2, p0

    move v3, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    .line 1124
    return-void
.end method

.method public static setHoveringSpenIcon(IILandroid/graphics/Point;)V
    .registers 4
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1135
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, setHoveringSpenIcon(IILandroid/graphics/Point;I)V

    .line 1136
    return-void
.end method

.method public static setHoveringSpenIcon(IILandroid/graphics/Point;I)V
    .registers 10
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1148
    invoke-static {}, getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    .line 1149
    return-void
.end method

.method public static setIcon(II)V
    .registers 6
    .param p0, "deviceType"    # I
    .param p1, "iconType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 773
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2b

    .line 775
    invoke-static {p1, v3}, setHoveringSpenIcon(II)V

    .line 783
    :goto_2a
    return-void

    .line 777
    :cond_2b
    const/4 v0, 0x3

    if-ne p0, v0, :cond_32

    .line 778
    invoke-static {p1, v3}, setMouseIcon(II)V

    goto :goto_2a

    .line 781
    :cond_32
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public static setIcon(ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 792
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType is CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v0, 0x2

    if-ne p0, v0, :cond_27

    .line 794
    const/4 v0, 0x0

    invoke-static {v0, p1}, setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    .line 802
    :goto_26
    return-void

    .line 796
    :cond_27
    const/4 v0, 0x3

    if-ne p0, v0, :cond_30

    .line 797
    const/16 v0, 0x64

    invoke-static {v0, p1}, setMouseIcon(ILandroid/graphics/drawable/Drawable;)I

    goto :goto_26

    .line 800
    :cond_30
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public static setIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V
    .registers 6
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 812
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIcon(), deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iconType is CUSTOM, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2b

    .line 814
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I

    .line 822
    :goto_2a
    return-void

    .line 816
    :cond_2b
    const/4 v0, 0x3

    if-ne p0, v0, :cond_34

    .line 817
    const/16 v0, 0x64

    invoke-static {v0, p1, p2}, setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I

    goto :goto_2a

    .line 820
    :cond_34
    const-string v0, "PointerIcon"

    const-string/jumbo v1, "setIcon(), invalid device type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public static setMouseCustomIcon(ILandroid/graphics/Bitmap;)I
    .registers 6
    .param p0, "IconId"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1009
    sget-object v2, mLockforMouse:Ljava/lang/Object;

    monitor-enter v2

    .line 1010
    move v0, p0

    .line 1012
    .local v0, "iReaIconId":I
    if-gez v0, :cond_8

    .line 1013
    :try_start_6
    sget v0, mMouseCustomIconId:I

    .line 1016
    :cond_8
    if-gez v0, :cond_b

    .line 1017
    const/4 v0, 0x0

    .line 1020
    :cond_b
    sget-object v1, mMouseBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_27

    .line 1021
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, mMouseBitmap:[Landroid/graphics/Bitmap;

    .line 1026
    :goto_14
    sget-object v1, mMouseBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_21

    .line 1027
    sget-object v1, mMouseBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1030
    :cond_21
    sget-object v1, mMouseBitmap:[Landroid/graphics/Bitmap;

    aput-object p1, v1, v0

    .line 1031
    monitor-exit v2

    return v0

    .line 1023
    :cond_27
    const-string v1, "PointerIcon"

    const-string v3, "MouseBitmap instance already exist"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1032
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public static setMouseCustomIcon(Landroid/graphics/Bitmap;)I
    .registers 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x5

    .line 985
    sget-object v1, mLockforMouse:Ljava/lang/Object;

    monitor-enter v1

    .line 986
    :try_start_4
    sget v0, mMouseCustomIconCurrentId:I

    if-lt v0, v2, :cond_2f

    .line 987
    const/4 v0, 0x0

    sput v0, mMouseCustomIconCurrentId:I

    .line 992
    :goto_b
    sget-object v0, mMouseBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_39

    .line 993
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, mMouseBitmap:[Landroid/graphics/Bitmap;

    .line 998
    :goto_14
    sget-object v0, mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v2, mMouseCustomIconCurrentId:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_25

    .line 999
    sget-object v0, mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v2, mMouseCustomIconCurrentId:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1001
    :cond_25
    sget-object v0, mMouseBitmap:[Landroid/graphics/Bitmap;

    sget v2, mMouseCustomIconCurrentId:I

    aput-object p0, v0, v2

    .line 1002
    sget v0, mMouseCustomIconCurrentId:I

    monitor-exit v1

    return v0

    .line 989
    :cond_2f
    sget v0, mMouseCustomIconCurrentId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, mMouseCustomIconCurrentId:I

    goto :goto_b

    .line 1003
    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw v0

    .line 995
    :cond_39
    :try_start_39
    const-string v0, "PointerIcon"

    const-string v2, "MouseBitmap instance already exist"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_36

    goto :goto_14
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;)I
    .registers 3
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 906
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, setMouseIcon(ILandroid/graphics/drawable/Drawable;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;I)I
    .registers 11
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 912
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseIcon2 iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 915
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 917
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 918
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 920
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_80

    .line 924
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 927
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 928
    move-object v3, v7

    .line 931
    .end local v7    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_80
    invoke-static {}, getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v4, 0x0

    move v2, p0

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I
    .registers 4
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 937
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I
    .registers 12
    .param p0, "iconType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 943
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseIcon with hotSpotPoint iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 946
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 948
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 949
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 951
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_80

    .line 955
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerMouseCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 958
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 959
    move-object v3, v7

    .line 962
    .end local v7    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_80
    invoke-static {}, getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    move v2, p0

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setMouseIcon(II)V
    .registers 3
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 882
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, setMouseIcon(III)V

    .line 883
    return-void
.end method

.method public static setMouseIcon(III)V
    .registers 9
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 888
    invoke-static {}, getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v4, 0x0

    move v2, p0

    move v3, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    .line 889
    return-void
.end method

.method public static setMouseIcon(IILandroid/graphics/Point;)V
    .registers 4
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 894
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, setMouseIcon(IILandroid/graphics/Point;I)V

    .line 895
    return-void
.end method

.method public static setMouseIcon(IILandroid/graphics/Point;I)V
    .registers 10
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 900
    invoke-static {}, getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x3e9

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    .line 901
    return-void
.end method

.method public static setMousePointerIcon(IILandroid/graphics/Point;)Z
    .registers 6
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;

    .prologue
    .line 968
    sget v0, mMouseIconType:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_27

    sget v0, mMouseIconType:I

    if-ne v0, p0, :cond_27

    .line 969
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseCustomIcon IconType is same."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, mMouseIconType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/4 v0, 0x0

    .line 979
    :goto_26
    return v0

    .line 973
    :cond_27
    sget-object v1, mLockforMouse:Ljava/lang/Object;

    monitor-enter v1

    .line 974
    :try_start_2a
    sput p0, mMouseIconType:I

    .line 975
    sput p1, mMouseCustomIconId:I

    .line 976
    sput-object p2, mMouseCustomHotSpotPoint:Landroid/graphics/Point;

    .line 977
    monitor-exit v1

    .line 979
    const/4 v0, 0x1

    goto :goto_26

    .line 977
    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_33

    throw v0
.end method

.method public static setPointerIcon(IILandroid/graphics/Point;)Z
    .registers 13
    .param p0, "iconType"    # I
    .param p1, "customIconId"    # I
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;

    .prologue
    const/16 v9, 0x14

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1248
    if-ne p0, v9, :cond_c

    sget v7, mCustomIconId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_c

    .line 1311
    :goto_b
    return v5

    .line 1250
    :cond_c
    if-ne p0, v9, :cond_f

    .line 1251
    const/4 p0, 0x1

    .line 1253
    :cond_f
    const/16 v7, 0x16

    if-eq p0, v7, :cond_17

    const/16 v7, 0x17

    if-ne p0, v7, :cond_3e

    .line 1254
    :cond_17
    const-string v5, "PointerIcon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setHoveringSpenCustomIcon mIconType is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, mIconType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", iconType is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1255
    goto :goto_b

    .line 1256
    :cond_3e
    sget v7, mIconType:I

    if-ne v7, v6, :cond_e2

    sget-boolean v7, mThemeApplied:Z

    if-eqz v7, :cond_e2

    .line 1257
    const-string v7, "PointerIcon"

    const-string/jumbo v8, "setHoveringSpenCustomIcon : HOVERING_SPENICON_DEFAULT. Theme changed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    sput-boolean v5, mThemeApplied:Z

    .line 1264
    :cond_50
    const/4 v0, 0x0

    .line 1266
    .local v0, "bNeedPlaySound":Z
    sget-object v7, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1267
    :try_start_54
    sput p0, mIconType:I

    .line 1268
    sput p1, mCustomIconId:I

    .line 1269
    sput-object p2, mCustomHotSpotPoint:Landroid/graphics/Point;

    .line 1270
    monitor-exit v7
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_107

    .line 1272
    const/16 v7, 0xa

    if-ne p0, v7, :cond_df

    .line 1273
    sget-object v7, mContext:Landroid/content/Context;

    if-eqz v7, :cond_82

    sget-object v7, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "spen_feedback_sound"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_82

    sget-object v7, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "spen_feedback_sound_air_view"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_82

    .line 1275
    const/4 v0, 0x1

    .line 1279
    :cond_82
    sget-object v7, mContext:Landroid/content/Context;

    if-eqz v7, :cond_96

    sget-object v7, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "pen_hovering_sound"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_96

    .line 1280
    const/4 v0, 0x1

    .line 1284
    :cond_96
    sget-object v5, mContext:Landroid/content/Context;

    if-eqz v5, :cond_c1

    sget-object v5, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_c1

    const-string v5, "2015A"

    const-string/jumbo v7, "ro.build.scafe.version"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c1

    .line 1285
    sget-object v5, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v7, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v4

    .line 1286
    .local v4, "uspLevel":I
    const/4 v5, 0x3

    if-le v4, v5, :cond_c1

    .line 1287
    const/4 v0, 0x0

    .line 1291
    .end local v4    # "uspLevel":I
    :cond_c1
    if-eqz v0, :cond_df

    .line 1292
    sget-object v7, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1293
    :try_start_c6
    sget-object v5, mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    if-nez v5, :cond_10a

    .line 1294
    new-instance v5, Landroid/view/PointerIcon$HoverEffect;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Landroid/view/PointerIcon$HoverEffect;-><init>(Landroid/view/PointerIcon$1;)V

    sput-object v5, mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    .line 1298
    :goto_d2
    monitor-exit v7
    :try_end_d3
    .catchall {:try_start_c6 .. :try_end_d3} :catchall_112

    .line 1300
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1302
    .local v2, "token":J
    :try_start_d7
    sget-object v5, mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    invoke-virtual {v5, p0}, Landroid/view/PointerIcon$HoverEffect;->playSound(I)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_dc} :catch_115
    .catchall {:try_start_d7 .. :try_end_dc} :catchall_122

    .line 1306
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "token":J
    :cond_df
    :goto_df
    move v5, v6

    .line 1311
    goto/16 :goto_b

    .line 1259
    .end local v0    # "bNeedPlaySound":Z
    :cond_e2
    sget v7, mIconType:I

    if-eqz v7, :cond_50

    sget v7, mIconType:I

    if-ne v7, p0, :cond_50

    .line 1260
    const-string v6, "PointerIcon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setHoveringSpenCustomIcon IconType is same."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, mIconType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1270
    .restart local v0    # "bNeedPlaySound":Z
    :catchall_107
    move-exception v5

    :try_start_108
    monitor-exit v7
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw v5

    .line 1296
    :cond_10a
    :try_start_10a
    const-string v5, "PointerIcon"

    const-string v8, "HoverEffect instance already exist"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 1298
    :catchall_112
    move-exception v5

    monitor-exit v7
    :try_end_114
    .catchall {:try_start_10a .. :try_end_114} :catchall_112

    throw v5

    .line 1303
    .restart local v2    # "token":J
    :catch_115
    move-exception v1

    .line 1304
    .local v1, "e":Ljava/lang/Exception;
    :try_start_116
    const-string v5, "PointerIcon"

    const-string/jumbo v7, "setPointerIcon , Exception is occurred during playSound"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catchall {:try_start_116 .. :try_end_11e} :catchall_122

    .line 1306
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_df

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_122
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private throwIfIconIsNotLoaded()V
    .registers 3

    .prologue
    .line 489
    invoke-virtual {p0}, isLoaded()Z

    move-result v0

    if-nez v0, :cond_e

    .line 490
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The icon is not loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_e
    return-void
.end method

.method private static validateHotSpot(Landroid/graphics/Bitmap;FF)V
    .registers 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    const/4 v1, 0x0

    .line 613
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_17

    .line 614
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_17
    cmpg-float v0, p2, v1

    if-ltz v0, :cond_24

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2d

    .line 617
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_2d
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 548
    if-ne p0, p1, :cond_5

    .line 568
    :cond_4
    :goto_4
    return v1

    .line 552
    :cond_5
    if-eqz p1, :cond_b

    instance-of v3, p1, Landroid/view/PointerIcon;

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    .line 553
    goto :goto_4

    :cond_d
    move-object v0, p1

    .line 556
    check-cast v0, Landroid/view/PointerIcon;

    .line 557
    .local v0, "otherIcon":Landroid/view/PointerIcon;
    iget v3, p0, mStyle:I

    iget v4, v0, mStyle:I

    if-ne v3, v4, :cond_1c

    iget v3, p0, mSystemIconResourceId:I

    iget v4, v0, mSystemIconResourceId:I

    if-eq v3, v4, :cond_1e

    :cond_1c
    move v1, v2

    .line 559
    goto :goto_4

    .line 562
    :cond_1e
    iget v3, p0, mSystemIconResourceId:I

    if-nez v3, :cond_4

    iget-object v3, p0, mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, mBitmap:Landroid/graphics/Bitmap;

    if-ne v3, v4, :cond_38

    iget v3, p0, mHotSpotX:F

    iget v4, v0, mHotSpotX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_38

    iget v3, p0, mHotSpotY:F

    iget v4, v0, mHotSpotY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    :cond_38
    move v1, v2

    .line 565
    goto :goto_4
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 454
    invoke-direct {p0}, throwIfIconIsNotLoaded()V

    .line 455
    iget-object v0, p0, mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHotSpotX()F
    .registers 2

    .prologue
    .line 469
    invoke-direct {p0}, throwIfIconIsNotLoaded()V

    .line 470
    iget v0, p0, mHotSpotX:F

    return v0
.end method

.method public getHotSpotY()F
    .registers 2

    .prologue
    .line 484
    invoke-direct {p0}, throwIfIconIsNotLoaded()V

    .line 485
    iget v0, p0, mHotSpotY:F

    return v0
.end method

.method public getStyle()I
    .registers 2

    .prologue
    .line 440
    iget v0, p0, mStyle:I

    return v0
.end method

.method public isLoaded()Z
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    iget v0, p0, mStyle:I

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isNullIcon()Z
    .registers 2

    .prologue
    .line 418
    iget v0, p0, mStyle:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 397
    if-nez p1, :cond_a

    .line 398
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_a
    iget v1, p0, mSystemIconResourceId:I

    if-eqz v1, :cond_12

    iget-object v1, p0, mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_14

    :cond_12
    move-object v0, p0

    .line 408
    :goto_13
    return-object v0

    .line 405
    :cond_14
    new-instance v0, Landroid/view/PointerIcon;

    iget v1, p0, mStyle:I

    invoke-direct {v0, v1}, <init>(I)V

    .line 406
    .local v0, "result":Landroid/view/PointerIcon;
    iget v1, p0, mSystemIconResourceId:I

    iput v1, v0, mSystemIconResourceId:I

    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, mSystemIconResourceId:I

    invoke-direct {v0, p1, v1, v2}, loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    goto :goto_13
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 531
    iget v0, p0, mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget v0, p0, mStyle:I

    if-eqz v0, :cond_21

    .line 534
    iget v0, p0, mSystemIconResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    iget v0, p0, mSystemIconResourceId:I

    if-nez v0, :cond_21

    .line 536
    iget-object v0, p0, mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 537
    iget v0, p0, mHotSpotX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 538
    iget v0, p0, mHotSpotY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 541
    :cond_21
    return-void
.end method
