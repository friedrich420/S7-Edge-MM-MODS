.class public Lcom/samsung/android/multiwindow/MultiWindowStyle;
.super Ljava/lang/Object;
.source "MultiWindowStyle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;,
        Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SPECIFIC_TASK_ID:I = -0x1

.field public static final FLOATING_LAYER:I = 0x1

.field public static final MINIMIZE_LAYER:I = 0x2

.field public static final NORMAL_LAYER:I = 0x0

.field public static final NOTIFY_FOCUS_REASON_ACTIVITY_CHANGED:I = 0x1

.field public static final NOTIFY_FOCUS_REASON_FOCUSED_RELAUNCH:I = 0x4

.field public static final NOTIFY_FOCUS_REASON_MASK:I = 0x7

.field public static final NOTIFY_FOCUS_REASON_NO_CHANGED:I = 0x0

.field public static final NOTIFY_FOCUS_REASON_STACK_CHANGED:I = 0x2

.field public static final NOTIFY_REASON_ARRANGE_MINIMIZED:I = 0x4

.field public static final NOTIFY_REASON_ARRANGE_MINIMIZED_ALL:I = 0x10

.field public static final NOTIFY_REASON_ARRANGE_MINIMIZED_SHOW:I = 0x20

.field public static final NOTIFY_REASON_OPTION_SPLIT_RECENT_MULTIWINDOW:I = 0x40

.field public static final NOTIFY_REASON_ROTATION_CHANGED:I = 0x100

.field public static final NOTIFY_REASON_SELECTIVE_ORIENTATION_CHANGED:I = 0x80

.field public static final NOTIFY_REASON_SIZE_CHANGED:I = 0x2

.field public static final NOTIFY_REASON_STYLE_CHANGED:I = 0x1

.field public static final NOTIFY_REASON_TAB_MODE_CHANGED:I = 0x8

.field public static final NOTIFY_REASON_TYPE_MASK:I = 0x1fe

.field public static final NOTIFY_STATE_HIDDEN:I = 0x1

.field public static final NOTIFY_STATE_SHOWN:I = 0x2

.field public static final OPTION_DISABLE_FLOATING_WINDOW:I = 0x8000000

.field public static final OPTION_EXTERNAL_DISP:I = 0x400

.field public static final OPTION_FIXED_ORIENTATION:I = 0x400000

.field public static final OPTION_FIXED_RATIO:I = 0x8000

.field public static final OPTION_FIXED_SIZE:I = 0x10000

.field public static final OPTION_FORCE_CONTROL_RESIZE:I = 0x4000

.field public static final OPTION_FORCE_MAKE_PHONEWINDOW:I = 0x40000

.field public static final OPTION_FORCE_MULTIPLE_TASK:I = 0x80000

.field public static final OPTION_FORCE_TITLE_BAR:I = 0x20

.field public static final OPTION_FORCE_TO_SET_MULTIWINDOW_STYLE:I = 0x10000000

.field public static final OPTION_FULLSCREEN_MINIMIZABLE:I = 0x20000

.field public static final OPTION_FULLSCREEN_ONLY:I = 0x200000

.field public static final OPTION_HIDDEN:I = 0x8

.field public static final OPTION_HIDE_CENTER_BAR_DURING_STARTING:I = 0x2000000

.field public static final OPTION_INHERIT_STACK:I = 0x2000

.field public static final OPTION_ISOLATED_SPLIT:I = 0x1000

.field public static final OPTION_LAUNCH_IN_SAME:I = 0x100000

.field public static final OPTION_MINIMIZED:I = 0x4

.field public static final OPTION_NO_TITLE_BAR:I = 0x10

.field public static final OPTION_PENWINDOWABLE:I = 0x1000000

.field public static final OPTION_PINUP:I = 0x1

.field public static final OPTION_RECENTS_MULTIWINDOW:I = 0x4000000

.field public static final OPTION_RESIZE:I = 0x2

.field public static final OPTION_SCALE:I = 0x800

.field public static final OPTION_TAB_MODE:I = 0x800000

.field public static final OPTION_TOOLKIT:I = 0x200

.field private static final STYLE_ACTIVITY_FORCE_TITLE_BAR:Ljava/lang/String; = "forceTitleBar"

.field private static final STYLE_ACTIVITY_FULLSCREEN_ONLY:Ljava/lang/String; = "fullscreenOnly"

.field private static final STYLE_ACTIVITY_RESIZE_ONLY:Ljava/lang/String; = "resizeOnly"

.field private static final STYLE_FIXED_ORIENTATION:Ljava/lang/String; = "fixedOrientation"

.field private static final STYLE_FIXED_RATIO:Ljava/lang/String; = "fixedRatio"

.field private static final STYLE_FIXED_SIZE:Ljava/lang/String; = "fixedSize"

.field private static final STYLE_FREESTYLE_ONLY:Ljava/lang/String; = "freestyleOnly"

.field private static final STYLE_ISOLATED_SPLIT:Ljava/lang/String; = "isolatedSplit"

.field private static final STYLE_NO_TITLE_BAR:Ljava/lang/String; = "noTitleBar"

.field public static final TYPE_CASCADE:I = 0x2

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_SPLIT:I = 0x1

.field private static final UNIQUE_OPTIONS:I = 0x1d223032

.field private static final UNITARY_OPTIONS:I = 0x200000

.field public static final ZONE_A:I = 0x3

.field public static final ZONE_B:I = 0xc

.field public static final ZONE_C:I = 0x1

.field public static final ZONE_D:I = 0x2

.field public static final ZONE_E:I = 0x4

.field public static final ZONE_F:I = 0x8

.field public static final ZONE_FULL:I = 0xf

.field public static final ZONE_UNKNOWN:I

.field public static sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field public static sDefaultOrientation:I

.field private static sStyleStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sTypeStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppRequestOrientation:I

.field private mBounds:Landroid/graphics/Rect;

.field private mIsNull:Z

.field private mIsolatedCenterPoint:Landroid/graphics/Point;

.field private mOnTransaction:I

.field private mOptionFlags:I

.field private mScale:F

.field private mSpecificTaskId:I

.field private mType:I

.field private mZone:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 103
    sput v3, sDefaultOrientation:I

    .line 732
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    .line 1195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sStyleStrings:Ljava/util/HashMap;

    .line 1196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sTypeStrings:Ljava/util/HashMap;

    .line 1198
    sget-object v0, sStyleStrings:Ljava/util/HashMap;

    const-string/jumbo v1, "noTitleBar"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v0, sStyleStrings:Ljava/util/HashMap;

    const-string v1, "forceTitleBar"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v0, sStyleStrings:Ljava/util/HashMap;

    const-string v1, "isolatedSplit"

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    sget-object v0, sStyleStrings:Ljava/util/HashMap;

    const-string v1, "fixedSize"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v0, sStyleStrings:Ljava/util/HashMap;

    const-string v1, "fixedRatio"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    sget-object v0, sStyleStrings:Ljava/util/HashMap;

    const-string v1, "fixedOrientation"

    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v0, sStyleStrings:Ljava/util/HashMap;

    const-string v1, "fullscreenOnly"

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    sget-object v0, sTypeStrings:Ljava/util/HashMap;

    const-string v1, "freestyleOnly"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$2;

    invoke-direct {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle$2;-><init>(I)V

    sput-object v0, sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, mAppRequestOrientation:I

    .line 53
    iput v1, p0, mOnTransaction:I

    .line 63
    iput v0, p0, mSpecificTaskId:I

    .line 343
    iput v1, p0, mZone:I

    .line 670
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 867
    iput-boolean v1, p0, mIsNull:Z

    .line 461
    iput v1, p0, mType:I

    .line 462
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, mAppRequestOrientation:I

    .line 53
    iput v1, p0, mOnTransaction:I

    .line 63
    iput v0, p0, mSpecificTaskId:I

    .line 343
    iput v1, p0, mZone:I

    .line 670
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 867
    iput-boolean v1, p0, mIsNull:Z

    .line 475
    iput p1, p0, mType:I

    .line 476
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, mAppRequestOrientation:I

    .line 53
    iput v1, p0, mOnTransaction:I

    .line 63
    iput v0, p0, mSpecificTaskId:I

    .line 343
    iput v1, p0, mZone:I

    .line 670
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 867
    iput-boolean v1, p0, mIsNull:Z

    .line 468
    invoke-direct {p0, p1}, readFromParcel(Landroid/os/Parcel;)V

    .line 469
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 4
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, mAppRequestOrientation:I

    .line 53
    iput v1, p0, mOnTransaction:I

    .line 63
    iput v0, p0, mSpecificTaskId:I

    .line 343
    iput v1, p0, mZone:I

    .line 670
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 867
    iput-boolean v1, p0, mIsNull:Z

    .line 482
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 483
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .param p1, "isNull"    # Z

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, mAppRequestOrientation:I

    .line 53
    iput v1, p0, mOnTransaction:I

    .line 63
    iput v0, p0, mSpecificTaskId:I

    .line 343
    iput v1, p0, mZone:I

    .line 670
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 867
    iput-boolean v1, p0, mIsNull:Z

    .line 873
    iput-boolean p1, p0, mIsNull:Z

    .line 874
    return-void
.end method

.method public static cleanMultiWindowLaunchInSame(Landroid/content/Intent;)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1326
    invoke-virtual {p0}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1327
    .local v0, "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v0}, isMultiWindowLaunchInSame(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    .line 1328
    return-void
.end method

.method public static cleanMultiWindowLaunchInSame(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 3
    .param p0, "mws"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 1334
    if-nez p0, :cond_3

    .line 1338
    :goto_2
    return-void

    .line 1337
    :cond_3
    const/high16 v0, 0x100000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, setOption(IZ)V

    goto :goto_2
.end method

.method public static convertToConfigurationOrientation(II)I
    .registers 5
    .param p0, "requestedOrientation"    # I
    .param p1, "currentOrientation"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 264
    const/4 v2, 0x5

    if-ne p0, v2, :cond_e

    .line 265
    sget v2, sDefaultOrientation:I

    if-eqz v2, :cond_e

    .line 266
    sget v2, sDefaultOrientation:I

    if-ne v2, v0, :cond_14

    .line 267
    const/4 p0, 0x1

    .line 274
    :cond_e
    :goto_e
    if-ne p1, v1, :cond_18

    .line 275
    sparse-switch p0, :sswitch_data_20

    .line 292
    .end local p1    # "currentOrientation":I
    :cond_13
    :goto_13
    return p1

    .line 269
    .restart local p1    # "currentOrientation":I
    :cond_14
    const/4 p0, 0x0

    goto :goto_e

    :sswitch_16
    move p1, v0

    .line 280
    goto :goto_13

    .line 282
    :cond_18
    if-ne p1, v0, :cond_13

    .line 283
    sparse-switch p0, :sswitch_data_32

    goto :goto_13

    :sswitch_1e
    move p1, v1

    .line 288
    goto :goto_13

    .line 275
    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_16
        0x7 -> :sswitch_16
        0x9 -> :sswitch_16
        0xc -> :sswitch_16
    .end sparse-switch

    .line 283
    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_1e
        0x6 -> :sswitch_1e
        0x8 -> :sswitch_1e
        0xb -> :sswitch_1e
    .end sparse-switch
.end method

.method public static convertToOrientation(I)I
    .registers 3
    .param p0, "requestedOrientation"    # I

    .prologue
    .line 1382
    const/4 v0, 0x0

    .line 1383
    .local v0, "rotation":I
    if-nez p0, :cond_5

    .line 1384
    const/4 v0, 0x2

    .line 1388
    :cond_4
    :goto_4
    return v0

    .line 1385
    :cond_5
    const/4 v1, 0x1

    if-ne p0, v1, :cond_4

    .line 1386
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public static isMultiWindowLaunchInSame(Landroid/content/Intent;)Z
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1309
    invoke-virtual {p0}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1310
    .local v0, "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v0}, isMultiWindowLaunchInSame(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v1

    return v1
.end method

.method public static isMultiWindowLaunchInSame(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .registers 2
    .param p0, "mws"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 1317
    if-nez p0, :cond_4

    .line 1318
    const/4 v0, 0x0

    .line 1319
    :goto_3
    return v0

    :cond_4
    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, isEnabled(I)Z

    move-result v0

    goto :goto_3
.end method

.method private parseStyleOptions(Ljava/lang/String;)V
    .registers 8
    .param p1, "stylesString"    # Ljava/lang/String;

    .prologue
    .line 1273
    if-nez p1, :cond_3

    .line 1291
    :goto_2
    return-void

    .line 1277
    :cond_3
    const/4 v1, 0x0

    .line 1278
    .local v1, "options":I
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1279
    .local v3, "styles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1280
    .local v2, "style":Ljava/lang/String;
    sget-object v4, sStyleStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1281
    sget-object v4, sStyleStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v1, v4

    goto :goto_17

    .line 1282
    :cond_39
    sget-object v4, sTypeStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1284
    invoke-virtual {p0}, getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_50

    const/16 v4, 0x800

    invoke-virtual {p0, v4}, isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_17

    .line 1285
    :cond_50
    sget-object v4, sTypeStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, setType(I)V

    goto :goto_17

    .line 1290
    .end local v2    # "style":Ljava/lang/String;
    :cond_60
    iget v4, p0, mOptionFlags:I

    or-int/2addr v4, v1

    iput v4, p0, mOptionFlags:I

    goto :goto_2
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .prologue
    .line 716
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, setType(I)V

    .line 717
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, setZone(I)V

    .line 718
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, setScale(F)V

    .line 719
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, setSpecificTaskId(I)V

    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mOptionFlags:I

    .line 721
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mAppRequestOrientation:I

    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, sDefaultOrientation:I

    .line 723
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 724
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, mBounds:Landroid/graphics/Rect;

    .line 726
    :cond_3e
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 727
    return-void
.end method

.method public static skipMultiWindowLaunch(Landroid/content/Intent;)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1297
    invoke-virtual {p0}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1298
    .local v0, "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-nez v0, :cond_b

    .line 1299
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v0    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v0}, <init>()V

    .line 1301
    .restart local v0    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_b
    const/high16 v1, 0x100000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, setOption(IZ)V

    .line 1302
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1303
    return-void
.end method

.method public static zoneToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "zone"    # I

    .prologue
    .line 817
    packed-switch p0, :pswitch_data_2c

    .line 833
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invaild vaue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 819
    :pswitch_17
    const-string v0, "ZONE_A"

    goto :goto_16

    .line 821
    :pswitch_1a
    const-string v0, "ZONE_B"

    goto :goto_16

    .line 823
    :pswitch_1d
    const-string v0, "ZONE_C"

    goto :goto_16

    .line 825
    :pswitch_20
    const-string v0, "ZONE_D"

    goto :goto_16

    .line 827
    :pswitch_23
    const-string v0, "ZONE_E"

    goto :goto_16

    .line 829
    :pswitch_26
    const-string v0, "ZONE_F"

    goto :goto_16

    .line 831
    :pswitch_29
    const-string v0, "ZONE_UNKNOWN"

    goto :goto_16

    .line 817
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_1d
        :pswitch_20
        :pswitch_17
        :pswitch_23
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_26
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public convertToMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 999
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;

    invoke-direct {v0, p0, p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 1000
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    return-object v1
.end method

.method public convertToWindowMode()I
    .registers 5

    .prologue
    .line 991
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;

    iget v1, p0, mType:I

    iget v2, p0, mZone:I

    iget v3, p0, mOptionFlags:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;III)V

    .line 992
    .local v0, "mode":Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->getCurrentMode()I

    move-result v1

    return v1
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .registers 5
    .param p1, "other"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v0, 0x0

    .line 746
    iget v1, p0, mType:I

    iget v2, p1, mType:I

    if-eq v1, v2, :cond_8

    .line 769
    :cond_7
    :goto_7
    return v0

    .line 750
    :cond_8
    iget v1, p0, mZone:I

    iget v2, p1, mZone:I

    if-ne v1, v2, :cond_7

    .line 754
    iget v1, p0, mOptionFlags:I

    iget v2, p1, mOptionFlags:I

    if-ne v1, v2, :cond_7

    .line 758
    iget-object v1, p0, mIsolatedCenterPoint:Landroid/graphics/Point;

    iget-object v2, p1, mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 762
    iget-object v1, p0, mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2c

    iget-object v1, p0, mBounds:Landroid/graphics/Rect;

    iget-object v2, p1, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 766
    :cond_2c
    iget v1, p0, mScale:F

    iget v2, p1, mScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    .line 769
    const/4 v0, 0x1

    goto :goto_7
.end method

.method findBaseZone(I)I
    .registers 3
    .param p1, "requestZone"    # I

    .prologue
    .line 363
    const/16 v0, 0xf

    .line 364
    .local v0, "baseZone":I
    packed-switch p1, :pswitch_data_e

    .line 380
    :goto_5
    :pswitch_5
    return v0

    .line 367
    :pswitch_6
    const/16 v0, 0xf

    .line 368
    goto :goto_5

    .line 372
    :pswitch_9
    const/4 v0, 0x3

    .line 373
    goto :goto_5

    .line 377
    :pswitch_b
    const/16 v0, 0xc

    goto :goto_5

    .line 364
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getAppRequestOrientation()I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, mAppRequestOrientation:I

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 667
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFirstZone()Z
    .registers 2

    .prologue
    .line 428
    iget v0, p0, mZone:I

    packed-switch v0, :pswitch_data_a

    .line 435
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 432
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 428
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getIsolatedCenterPoint()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 683
    iget-object v0, p0, mIsolatedCenterPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getLayer()I
    .registers 3

    .prologue
    const/4 v0, 0x2

    .line 141
    iget v1, p0, mType:I

    if-ne v1, v0, :cond_f

    .line 142
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 147
    :goto_c
    return v0

    .line 145
    :cond_d
    const/4 v0, 0x1

    goto :goto_c

    .line 147
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getOppositeZone()I
    .registers 3

    .prologue
    .line 387
    iget v1, p0, mZone:I

    invoke-virtual {p0, v1}, findBaseZone(I)I

    move-result v0

    .line 388
    .local v0, "baseZone":I
    iget v1, p0, mZone:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    return v1
.end method

.method public getOptionFlags()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, mOptionFlags:I

    return v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 76
    iget v0, p0, mScale:F

    return v0
.end method

.method public getSpecificTaskId()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, mSpecificTaskId:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, mType:I

    return v0
.end method

.method public getZone()I
    .registers 2

    .prologue
    .line 356
    iget v0, p0, mZone:I

    return v0
.end method

.method public getZoneByType()I
    .registers 2

    .prologue
    .line 395
    iget v0, p0, mType:I

    packed-switch v0, :pswitch_data_c

    .line 404
    const/16 v0, 0xf

    :goto_7
    return v0

    .line 398
    :pswitch_8
    iget v0, p0, mZone:I

    goto :goto_7

    .line 395
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public getZoneLevel()I
    .registers 2

    .prologue
    .line 442
    iget v0, p0, mZone:I

    packed-switch v0, :pswitch_data_c

    .line 454
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 445
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 451
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_6

    .line 442
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public hasUnitaryOption()Z
    .registers 3

    .prologue
    .line 1344
    iget v0, p0, mOptionFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isCascade()Z
    .registers 3

    .prologue
    .line 185
    iget v0, p0, mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "option"    # I

    .prologue
    .line 617
    iget v0, p0, mOptionFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isFakeTarget(I)Z
    .registers 5
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 204
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-nez v1, :cond_6

    .line 205
    const/4 v0, 0x0

    .line 230
    :goto_5
    return v0

    .line 207
    :cond_6
    const/4 v0, 0x0

    .line 208
    .local v0, "bFake":Z
    const/4 v1, 0x5

    if-ne p1, v1, :cond_14

    .line 209
    sget v1, sDefaultOrientation:I

    if-eqz v1, :cond_14

    .line 210
    sget v1, sDefaultOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 211
    const/4 p1, 0x1

    .line 218
    :cond_14
    :goto_14
    packed-switch p1, :pswitch_data_1c

    :pswitch_17
    goto :goto_5

    .line 227
    :pswitch_18
    const/4 v0, 0x1

    goto :goto_5

    .line 213
    :cond_1a
    const/4 p1, 0x0

    goto :goto_14

    .line 218
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public isInValidZone()Z
    .registers 2

    .prologue
    .line 411
    iget v0, p0, mZone:I

    packed-switch v0, :pswitch_data_a

    .line 421
    :pswitch_5
    const/4 v0, 0x1

    :goto_6
    return v0

    .line 418
    :pswitch_7
    const/4 v0, 0x0

    goto :goto_6

    .line 411
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public isMultiPhoneWindowNeeded(Landroid/content/pm/ActivityInfo;Landroid/content/Context;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 631
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    .line 632
    .local v0, "infos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_27

    :cond_18
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_29

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 636
    :cond_27
    const/4 v1, 0x1

    .line 638
    :goto_28
    return v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public isNormal()Z
    .registers 2

    .prologue
    .line 199
    iget v0, p0, mType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isNull()Z
    .registers 2

    .prologue
    .line 887
    iget-boolean v0, p0, mIsNull:Z

    return v0
.end method

.method public isOnTransaction()Z
    .registers 2

    .prologue
    .line 1365
    iget v0, p0, mOnTransaction:I

    if-eqz v0, :cond_6

    .line 1366
    const/4 v0, 0x1

    .line 1368
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSplit()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 192
    iget v1, p0, mType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSupportingMultiWindow()Z
    .registers 2

    .prologue
    .line 624
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .registers 15
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1237
    if-nez p2, :cond_3

    .line 1270
    :cond_2
    :goto_2
    return-void

    .line 1241
    :cond_3
    iget-object v10, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1242
    .local v3, "applicationMetaData":Landroid/os/Bundle;
    if-eqz v3, :cond_12

    .line 1243
    const-string v10, "com.sec.android.multiwindow.STYLE"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, parseStyleOptions(Ljava/lang/String;)V

    .line 1246
    :cond_12
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1247
    .local v2, "activityMetaData":Landroid/os/Bundle;
    if-eqz v2, :cond_1f

    .line 1248
    const-string v10, "com.sec.android.multiwindow.activity.STYLE"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, parseStyleOptions(Ljava/lang/String;)V

    .line 1251
    :cond_1f
    const/16 v10, 0x1000

    invoke-virtual {p0, v10}, isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1253
    const-string v0, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.x"

    .line 1254
    .local v0, "METADATA_ISOLATED_SPLIT_CENTER_POINT_X":Ljava/lang/String;
    const-string v1, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.y"

    .line 1256
    .local v1, "METADATA_ISOLATED_SPLIT_CENTER_POINT_Y":Ljava/lang/String;
    const-string v10, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.x"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1257
    .local v8, "isolatedCenterPointXResId":I
    const-string v10, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.y"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1261
    .local v9, "isolatedCenterPointYResId":I
    :try_start_37
    iget-object v10, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 1262
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1263
    .local v4, "centerPointX":I
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1264
    .local v5, "centerPointY":I
    iget-object v10, p0, mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Point;->set(II)V
    :try_end_53
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_53} :catch_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_53} :catch_56

    goto :goto_2

    .line 1265
    .end local v4    # "centerPointX":I
    .end local v5    # "centerPointY":I
    .end local v6    # "context":Landroid/content/Context;
    :catch_54
    move-exception v10

    goto :goto_2

    .line 1266
    :catch_56
    move-exception v7

    .line 1267
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public releaseOnTransaction()V
    .registers 2

    .prologue
    .line 1375
    const/4 v0, 0x0

    iput v0, p0, mOnTransaction:I

    .line 1376
    return-void
.end method

.method public removeUnitaryOption()V
    .registers 3

    .prologue
    .line 1351
    iget v0, p0, mOptionFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, mOptionFlags:I

    .line 1352
    return-void
.end method

.method public resetSpecificTaskId()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, -0x1

    iput v0, p0, mSpecificTaskId:I

    .line 84
    return-void
.end method

.method public setAppRequestOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, setAppRequestOrientation(IZ)V

    .line 160
    return-void
.end method

.method public setAppRequestOrientation(IZ)V
    .registers 4
    .param p1, "orientation"    # I
    .param p2, "force"    # Z

    .prologue
    .line 169
    if-nez p2, :cond_5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    .line 170
    :cond_5
    iput p1, p0, mAppRequestOrientation:I

    .line 172
    :cond_7
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 645
    if-nez p1, :cond_b

    .line 646
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rect is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_b
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_18

    .line 652
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 661
    :goto_17
    return-void

    .line 656
    :cond_18
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_24

    .line 657
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, mBounds:Landroid/graphics/Rect;

    goto :goto_17

    .line 659
    :cond_24
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_17
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .registers 5
    .param p1, "centerPoint"    # Landroid/graphics/Point;

    .prologue
    .line 676
    iget-object v0, p0, mIsolatedCenterPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 677
    return-void
.end method

.method public setNull(Z)V
    .registers 2
    .param p1, "isNull"    # Z

    .prologue
    .line 880
    iput-boolean p1, p0, mIsNull:Z

    .line 881
    return-void
.end method

.method public setOnTransaction()V
    .registers 2

    .prologue
    .line 1358
    const/4 v0, 0x1

    iput v0, p0, mOnTransaction:I

    .line 1359
    return-void
.end method

.method public setOption(II)V
    .registers 5
    .param p1, "option"    # I
    .param p2, "mask"    # I

    .prologue
    .line 599
    iget v0, p0, mOptionFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, mOptionFlags:I

    .line 600
    iget v0, p0, mOptionFlags:I

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, mOptionFlags:I

    .line 601
    return-void
.end method

.method public setOption(IZ)V
    .registers 5
    .param p1, "option"    # I
    .param p2, "value"    # Z

    .prologue
    .line 607
    iget v0, p0, mOptionFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, mOptionFlags:I

    .line 608
    if-eqz p2, :cond_e

    .line 609
    iget v0, p0, mOptionFlags:I

    or-int/2addr v0, p1

    iput v0, p0, mOptionFlags:I

    .line 611
    :cond_e
    return-void
.end method

.method public setScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .prologue
    .line 69
    iput p1, p0, mScale:F

    .line 70
    return-void
.end method

.method public setSpecificTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .prologue
    .line 90
    iput p1, p0, mSpecificTaskId:I

    .line 91
    return-void
.end method

.method public setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 3
    .param p1, "other"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 777
    return-void
.end method

.method public setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V
    .registers 7
    .param p1, "other"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "includeUniqueOptions"    # Z

    .prologue
    .line 783
    if-nez p1, :cond_3

    .line 811
    :goto_2
    return-void

    .line 786
    :cond_3
    iget v1, p1, mType:I

    iput v1, p0, mType:I

    .line 787
    iget v1, p1, mZone:I

    invoke-virtual {p0, v1}, setZone(I)V

    .line 788
    iget v1, p1, mScale:F

    iput v1, p0, mScale:F

    .line 790
    if-nez p2, :cond_18

    iget v1, p1, mOptionFlags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_4b

    .line 791
    :cond_18
    iget v1, p1, mOptionFlags:I

    iput v1, p0, mOptionFlags:I

    .line 792
    iget v1, p0, mOptionFlags:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, mOptionFlags:I

    .line 800
    :goto_22
    iget-object v1, p1, mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2f

    .line 801
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, mBounds:Landroid/graphics/Rect;

    .line 803
    :cond_2f
    iget-object v1, p1, mIsolatedCenterPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_3c

    .line 804
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p1, mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-direct {v1, v2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v1, p0, mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 807
    :cond_3c
    if-eqz p2, :cond_47

    iget v1, p1, mAppRequestOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_47

    .line 808
    iget v1, p1, mAppRequestOrientation:I

    iput v1, p0, mAppRequestOrientation:I

    .line 810
    :cond_47
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsNull:Z

    goto :goto_2

    .line 794
    :cond_4b
    iget v1, p0, mOptionFlags:I

    const/high16 v2, 0x200000

    and-int v0, v1, v2

    .line 795
    .local v0, "unitaryOption":I
    iget v1, p0, mOptionFlags:I

    const v2, 0x1d223032

    and-int/2addr v1, v2

    iput v1, p0, mOptionFlags:I

    .line 796
    iget v1, p0, mOptionFlags:I

    iget v2, p1, mOptionFlags:I

    const v3, -0x1d223033

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, p0, mOptionFlags:I

    .line 797
    iget v1, p0, mOptionFlags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, p0, mOptionFlags:I

    .line 798
    iget v1, p0, mOptionFlags:I

    or-int/2addr v1, v0

    iput v1, p0, mOptionFlags:I

    goto :goto_22
.end method

.method public setType(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 120
    iput p1, p0, mType:I

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setZone(I)V

    .line 124
    iget v0, p0, mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_16

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBounds:Landroid/graphics/Rect;

    .line 127
    :cond_16
    iget v0, p0, mOptionFlags:I

    const v1, 0x1d223032

    and-int/2addr v0, v1

    iput v0, p0, mOptionFlags:I

    .line 128
    return-void
.end method

.method public setType(IZ)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "resetOptions"    # Z

    .prologue
    .line 109
    if-eqz p2, :cond_6

    .line 110
    invoke-virtual {p0, p1}, setType(I)V

    .line 114
    :goto_5
    return-void

    .line 112
    :cond_6
    iput p1, p0, mType:I

    goto :goto_5
.end method

.method public setZone(I)V
    .registers 2
    .param p1, "zone"    # I

    .prologue
    .line 349
    iput p1, p0, mZone:I

    .line 350
    return-void
.end method

.method public shouldFakeOrientation(IILandroid/graphics/Rect;)Z
    .registers 8
    .param p1, "requestedOrientation"    # I
    .param p2, "currentOrientation"    # I
    .param p3, "outBound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 237
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-nez v3, :cond_7

    move v0, v2

    .line 257
    :cond_6
    :goto_6
    return v0

    .line 241
    :cond_7
    const/4 v0, 0x0

    .line 243
    .local v0, "bFake":Z
    invoke-virtual {p0}, isCascade()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 247
    invoke-static {p1, p2}, convertToConfigurationOrientation(II)I

    move-result v3

    if-eq v3, p2, :cond_2a

    const/4 v0, 0x1

    .line 249
    :goto_15
    if-eqz p3, :cond_6

    if-eqz v0, :cond_6

    .line 250
    iget v1, p3, Landroid/graphics/Rect;->left:I

    .line 251
    .local v1, "temp":I
    iget v2, p3, Landroid/graphics/Rect;->top:I

    iput v2, p3, Landroid/graphics/Rect;->left:I

    .line 252
    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 253
    iget v1, p3, Landroid/graphics/Rect;->right:I

    .line 254
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iput v2, p3, Landroid/graphics/Rect;->right:I

    .line 255
    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    .end local v1    # "temp":I
    :cond_2a
    move v0, v2

    .line 247
    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 842
    .local v0, "out":Ljava/lang/StringBuilder;
    const-string v1, "MultiWindowStyle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    const-string/jumbo v1, "{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    iget v1, p0, mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 845
    const-string v1, ", zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    iget v1, p0, mZone:I

    invoke-static {v1}, zoneToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    const-string v1, ", option=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    const-string v1, "%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, mOptionFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    iget-object v1, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 851
    const-string v1, ", isNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {p0}, isNull()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 853
    const-string v1, ", isolatedCenterPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    iget-object v1, p0, mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 855
    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    iget v1, p0, mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 857
    const-string v1, ", specificTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    iget v1, p0, mSpecificTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 859
    iget v1, p0, mAppRequestOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_82

    .line 860
    const-string v1, ", or="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    iget v1, p0, mAppRequestOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 863
    :cond_82
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 699
    iget v0, p0, mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    iget v0, p0, mZone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    iget v0, p0, mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 702
    iget v0, p0, mSpecificTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    iget v0, p0, mOptionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    iget v0, p0, mAppRequestOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    sget v0, sDefaultOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_36

    .line 707
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 712
    :goto_30
    iget-object v0, p0, mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 713
    return-void

    .line 710
    :cond_36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30
.end method
