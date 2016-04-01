.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$PointerProperties;,
        Landroid/view/MotionEvent$PointerCoords;
    }
.end annotation


# static fields
.field public static final ACTION_BUTTON_PRESS:I = 0xb

.field public static final ACTION_BUTTON_RELEASE:I = 0xc

.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_PEN_CANCEL:I = 0xd6

.field public static final ACTION_PEN_DOWN:I = 0xd3

.field public static final ACTION_PEN_MOVE:I = 0xd5

.field public static final ACTION_PEN_UP:I = 0xd4

.field public static final ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field public static final ACTION_UP:I = 0x1

.field public static final AXIS_BRAKE:I = 0x17

.field public static final AXIS_DISTANCE:I = 0x18

.field public static final AXIS_GAS:I = 0x16

.field public static final AXIS_GENERIC_1:I = 0x20

.field public static final AXIS_GENERIC_10:I = 0x29

.field public static final AXIS_GENERIC_11:I = 0x2a

.field public static final AXIS_GENERIC_12:I = 0x2b

.field public static final AXIS_GENERIC_13:I = 0x2c

.field public static final AXIS_GENERIC_14:I = 0x2d

.field public static final AXIS_GENERIC_15:I = 0x2e

.field public static final AXIS_GENERIC_16:I = 0x2f

.field public static final AXIS_GENERIC_2:I = 0x21

.field public static final AXIS_GENERIC_3:I = 0x22

.field public static final AXIS_GENERIC_4:I = 0x23

.field public static final AXIS_GENERIC_5:I = 0x24

.field public static final AXIS_GENERIC_6:I = 0x25

.field public static final AXIS_GENERIC_7:I = 0x26

.field public static final AXIS_GENERIC_8:I = 0x27

.field public static final AXIS_GENERIC_9:I = 0x28

.field public static final AXIS_GRIP:I = 0x31

.field public static final AXIS_HAT_X:I = 0xf

.field public static final AXIS_HAT_Y:I = 0x10

.field public static final AXIS_HSCROLL:I = 0xa

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_ORIENTATION:I = 0x8

.field public static final AXIS_PALM:I = 0x30

.field public static final AXIS_PREDICTED_X:I = 0x33

.field public static final AXIS_PREDICTED_Y:I = 0x34

.field public static final AXIS_PRESSURE:I = 0x2

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RUDDER:I = 0x14

.field public static final AXIS_RX:I = 0xc

.field public static final AXIS_RY:I = 0xd

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_SIZE:I = 0x3

.field private static final AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AXIS_THROTTLE:I = 0x13

.field public static final AXIS_TILT:I = 0x19

.field public static final AXIS_TOOL_MAJOR:I = 0x6

.field public static final AXIS_TOOL_MINOR:I = 0x7

.field public static final AXIS_TOUCH_MAJOR:I = 0x4

.field public static final AXIS_TOUCH_MINOR:I = 0x5

.field public static final AXIS_VSCROLL:I = 0x9

.field public static final AXIS_WHEEL:I = 0x15

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final BUTTON_3FINGER_DOWN:I = 0x200000

.field public static final BUTTON_3FINGER_LEFT:I = 0x400000

.field public static final BUTTON_3FINGER_RIGHT:I = 0x800000

.field public static final BUTTON_3FINGER_UP:I = 0x100000

.field public static final BUTTON_BACK:I = 0x8

.field public static final BUTTON_FORWARD:I = 0x10

.field public static final BUTTON_PRIMARY:I = 0x1

.field public static final BUTTON_SECONDARY:I = 0x2

.field public static final BUTTON_STYLUS_PRIMARY:I = 0x20

.field public static final BUTTON_STYLUS_SECONDARY:I = 0x40

.field private static final BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final BUTTON_TERTIARY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field public static final FLAG_BOTH_DISPLAY_TOUCH_HOLD:I = 0x10000000

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TARGET_ACCESSIBILITY_FOCUS:I = 0x40000000

.field public static final FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field private static final HISTORY_CURRENT:I = -0x80000000

.field public static final INVALID_POINTER_ID:I = -0x1

.field private static final LABEL_PREFIX:Ljava/lang/String; = "AXIS_"

.field private static final MAX_RECYCLED:I = 0xa

.field private static final NS_PER_MS:J = 0xf4240L

.field public static final TOOL_TYPE_ERASER:I = 0x4

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_MOUSE:I = 0x3

.field public static final TOOL_TYPE_STYLUS:I = 0x2

.field private static final TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOOL_TYPE_UNKNOWN:I = 0x0

.field private static final bDSSEnabled:Z = true

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I

.field private static final gSharedTempLock:Ljava/lang/Object;

.field private static gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static gSharedTempPointerIndexMap:[I

.field private static gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mDssScale:F

.field private mNativePtr:J

.field mNeedWindowOffset:Z

.field private mNext:Landroid/view/MotionEvent;

.field mScaleFactorX:F

.field mScaleFactorY:F

.field mScaledWindowOffsetX:I

.field mScaledWindowOffsetY:I

.field mWindowOffsetX:I

.field mWindowOffsetY:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1225
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1227
    sget-object v0, AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1228
    .local v0, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "AXIS_X"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1229
    const-string v1, "AXIS_Y"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1230
    const-string v1, "AXIS_PRESSURE"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1231
    const-string v1, "AXIS_SIZE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1232
    const-string v1, "AXIS_TOUCH_MAJOR"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1233
    const/4 v1, 0x5

    const-string v2, "AXIS_TOUCH_MINOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1234
    const/4 v1, 0x6

    const-string v2, "AXIS_TOOL_MAJOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1235
    const/4 v1, 0x7

    const-string v2, "AXIS_TOOL_MINOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1236
    const/16 v1, 0x8

    const-string v2, "AXIS_ORIENTATION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1237
    const/16 v1, 0x9

    const-string v2, "AXIS_VSCROLL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1238
    const/16 v1, 0xa

    const-string v2, "AXIS_HSCROLL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1239
    const/16 v1, 0xb

    const-string v2, "AXIS_Z"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1240
    const/16 v1, 0xc

    const-string v2, "AXIS_RX"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1241
    const/16 v1, 0xd

    const-string v2, "AXIS_RY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1242
    const/16 v1, 0xe

    const-string v2, "AXIS_RZ"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1243
    const/16 v1, 0xf

    const-string v2, "AXIS_HAT_X"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1244
    const/16 v1, 0x10

    const-string v2, "AXIS_HAT_Y"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1245
    const/16 v1, 0x11

    const-string v2, "AXIS_LTRIGGER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1246
    const/16 v1, 0x12

    const-string v2, "AXIS_RTRIGGER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1247
    const/16 v1, 0x13

    const-string v2, "AXIS_THROTTLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1248
    const/16 v1, 0x14

    const-string v2, "AXIS_RUDDER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1249
    const/16 v1, 0x15

    const-string v2, "AXIS_WHEEL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1250
    const/16 v1, 0x16

    const-string v2, "AXIS_GAS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1251
    const/16 v1, 0x17

    const-string v2, "AXIS_BRAKE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1252
    const/16 v1, 0x18

    const-string v2, "AXIS_DISTANCE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1253
    const/16 v1, 0x19

    const-string v2, "AXIS_TILT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1254
    const/16 v1, 0x20

    const-string v2, "AXIS_GENERIC_1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1255
    const/16 v1, 0x21

    const-string v2, "AXIS_GENERIC_2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1256
    const/16 v1, 0x22

    const-string v2, "AXIS_GENERIC_3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1257
    const/16 v1, 0x23

    const-string v2, "AXIS_GENERIC_4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1258
    const/16 v1, 0x24

    const-string v2, "AXIS_GENERIC_5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1259
    const/16 v1, 0x25

    const-string v2, "AXIS_GENERIC_6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1260
    const/16 v1, 0x26

    const-string v2, "AXIS_GENERIC_7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1261
    const/16 v1, 0x27

    const-string v2, "AXIS_GENERIC_8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1262
    const/16 v1, 0x28

    const-string v2, "AXIS_GENERIC_9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1263
    const/16 v1, 0x29

    const-string v2, "AXIS_GENERIC_10"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1264
    const/16 v1, 0x2a

    const-string v2, "AXIS_GENERIC_11"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1265
    const/16 v1, 0x2b

    const-string v2, "AXIS_GENERIC_12"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1266
    const/16 v1, 0x2c

    const-string v2, "AXIS_GENERIC_13"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1267
    const/16 v1, 0x2d

    const-string v2, "AXIS_GENERIC_14"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1268
    const/16 v1, 0x2e

    const-string v2, "AXIS_GENERIC_15"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1269
    const/16 v1, 0x2f

    const-string v2, "AXIS_GENERIC_16"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1273
    const/16 v1, 0x30

    const-string v2, "AXIS_PALM"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1365
    const/16 v1, 0x20

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "BUTTON_PRIMARY"

    aput-object v2, v1, v4

    const-string v2, "BUTTON_SECONDARY"

    aput-object v2, v1, v5

    const-string v2, "BUTTON_TERTIARY"

    aput-object v2, v1, v6

    const-string v2, "BUTTON_BACK"

    aput-object v2, v1, v7

    const-string v2, "BUTTON_FORWARD"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "BUTTON_STYLUS_PRIMARY"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "BUTTON_STYLUS_SECONDARY"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "0x00000080"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "0x00000100"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "0x00000200"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "0x00000400"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "0x00000800"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "0x00001000"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "0x00002000"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "0x00004000"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "0x00008000"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "0x00010000"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "0x00020000"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "0x00040000"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "0x00080000"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "0x00100000"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "0x00200000"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "0x00400000"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "0x00800000"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "0x01000000"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "0x02000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "0x04000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "0x08000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "0x10000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "0x20000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "0x40000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "0x80000000"

    aput-object v3, v1, v2

    sput-object v1, BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1441
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1443
    sget-object v0, TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1444
    const-string v1, "TOOL_TYPE_UNKNOWN"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1445
    const-string v1, "TOOL_TYPE_FINGER"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1446
    const-string v1, "TOOL_TYPE_STYLUS"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1447
    const-string v1, "TOOL_TYPE_MOUSE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1448
    const-string v1, "TOOL_TYPE_ERASER"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1455
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, gRecyclerLock:Ljava/lang/Object;

    .line 1461
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, gSharedTempLock:Ljava/lang/Object;

    .line 3675
    new-instance v1, Landroid/view/MotionEvent$1;

    invoke-direct {v1}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v1, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1546
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 188
    iput v1, p0, mDssScale:F

    .line 2648
    iput v1, p0, mScaleFactorX:F

    .line 2649
    iput v1, p0, mScaleFactorY:F

    .line 2650
    iput v0, p0, mScaledWindowOffsetX:I

    .line 2651
    iput v0, p0, mScaledWindowOffsetY:I

    .line 2676
    iput v0, p0, mWindowOffsetX:I

    .line 2677
    iput v0, p0, mWindowOffsetY:I

    .line 2678
    iput-boolean v0, p0, mNeedWindowOffset:Z

    .line 1547
    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "action"    # I

    .prologue
    .line 3536
    packed-switch p0, :pswitch_data_68

    .line 3560
    :pswitch_3
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x8

    .line 3561
    .local v0, "index":I
    and-int/lit16 v1, p0, 0xff

    packed-switch v1, :pswitch_data_86

    .line 3567
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "index":I
    :goto_12
    return-object v1

    .line 3538
    :pswitch_13
    const-string v1, "ACTION_DOWN"

    goto :goto_12

    .line 3540
    :pswitch_16
    const-string v1, "ACTION_UP"

    goto :goto_12

    .line 3542
    :pswitch_19
    const-string v1, "ACTION_CANCEL"

    goto :goto_12

    .line 3544
    :pswitch_1c
    const-string v1, "ACTION_OUTSIDE"

    goto :goto_12

    .line 3546
    :pswitch_1f
    const-string v1, "ACTION_MOVE"

    goto :goto_12

    .line 3548
    :pswitch_22
    const-string v1, "ACTION_HOVER_MOVE"

    goto :goto_12

    .line 3550
    :pswitch_25
    const-string v1, "ACTION_SCROLL"

    goto :goto_12

    .line 3552
    :pswitch_28
    const-string v1, "ACTION_HOVER_ENTER"

    goto :goto_12

    .line 3554
    :pswitch_2b
    const-string v1, "ACTION_HOVER_EXIT"

    goto :goto_12

    .line 3556
    :pswitch_2e
    const-string v1, "ACTION_BUTTON_PRESS"

    goto :goto_12

    .line 3558
    :pswitch_31
    const-string v1, "ACTION_BUTTON_RELEASE"

    goto :goto_12

    .line 3563
    .restart local v0    # "index":I
    :pswitch_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_DOWN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 3565
    :pswitch_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_UP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 3536
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_13
        :pswitch_16
        :pswitch_1f
        :pswitch_19
        :pswitch_1c
        :pswitch_3
        :pswitch_3
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
    .end packed-switch

    .line 3561
    :pswitch_data_86
    .packed-switch 0x5
        :pswitch_34
        :pswitch_4e
    .end packed-switch
.end method

.method public static axisFromString(Ljava/lang/String;)I
    .registers 4
    .param p0, "symbolicName"    # Ljava/lang/String;

    .prologue
    .line 3592
    const-string v2, "AXIS_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3593
    const-string v2, "AXIS_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3594
    invoke-static {p0}, nativeAxisFromString(Ljava/lang/String;)I

    move-result v0

    .line 3595
    .local v0, "axis":I
    if-ltz v0, :cond_19

    .line 3602
    .end local v0    # "axis":I
    :goto_18
    return v0

    .line 3600
    :cond_19
    const/16 v2, 0xa

    :try_start_1b
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1e} :catch_20

    move-result v0

    goto :goto_18

    .line 3601
    :catch_20
    move-exception v1

    .line 3602
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public static axisToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "axis"    # I

    .prologue
    .line 3579
    invoke-static {p0}, nativeAxisToString(I)Ljava/lang/String;

    move-result-object v0

    .line 3580
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AXIS_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_19
    return-object v1

    :cond_1a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_19
.end method

.method public static buttonStateToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "buttonState"    # I

    .prologue
    .line 3617
    if-nez p0, :cond_5

    .line 3618
    const-string v2, "0"

    .line 3639
    :cond_4
    :goto_4
    return-object v2

    .line 3620
    :cond_5
    const/4 v3, 0x0

    .line 3621
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 3622
    .local v0, "i":I
    :goto_7
    if-eqz p0, :cond_2d

    .line 3623
    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_22

    const/4 v1, 0x1

    .line 3624
    .local v1, "isSet":Z
    :goto_e
    ushr-int/lit8 p0, p0, 0x1

    .line 3625
    if-eqz v1, :cond_1f

    .line 3626
    sget-object v4, BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v2, v4, v0

    .line 3627
    .local v2, "name":Ljava/lang/String;
    if-nez v3, :cond_24

    .line 3628
    if-eqz p0, :cond_4

    .line 3631
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3637
    .end local v2    # "name":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/StringBuilder;
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    .line 3638
    goto :goto_7

    .line 3623
    .end local v1    # "isSet":Z
    :cond_22
    const/4 v1, 0x0

    goto :goto_e

    .line 3633
    .restart local v1    # "isSet":Z
    .restart local v2    # "name":Ljava/lang/String;
    :cond_24
    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3634
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 3639
    .end local v1    # "isSet":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method private static final clamp(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 3343
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .line 3348
    .end local p1    # "low":F
    :goto_4
    return p1

    .line 3345
    .restart local p1    # "low":F
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    .line 3346
    goto :goto_4

    :cond_b
    move p1, p0

    .line 3348
    goto :goto_4
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3689
    invoke-static {}, obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 3690
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v2, v0, mNativePtr:J

    invoke-static {v2, v3, p0}, nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v2

    iput-wide v2, v0, mNativePtr:J

    .line 3691
    return-object v0
.end method

.method private static final ensureSharedTempPointerCapacity(I)V
    .registers 3
    .param p0, "desiredCapacity"    # I

    .prologue
    .line 1467
    sget-object v1, gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_9

    sget-object v1, gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v1

    if-ge v1, p0, :cond_28

    .line 1469
    :cond_9
    sget-object v1, gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_15

    sget-object v1, gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v1

    .line 1470
    .local v0, "capacity":I
    :goto_10
    if-ge v0, p0, :cond_18

    .line 1471
    mul-int/lit8 v0, v0, 0x2

    goto :goto_10

    .line 1469
    .end local v0    # "capacity":I
    :cond_15
    const/16 v0, 0x8

    goto :goto_10

    .line 1473
    .restart local v0    # "capacity":I
    :cond_18
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    sput-object v1, gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1474
    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v1

    sput-object v1, gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1475
    new-array v1, v0, [I

    sput-object v1, gSharedTempPointerIndexMap:[I

    .line 1477
    .end local v0    # "capacity":I
    :cond_28
    return-void
.end method

.method private static native nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native nativeAxisFromString(Ljava/lang/String;)I
.end method

.method private static native nativeAxisToString(I)Ljava/lang/String;
.end method

.method private static native nativeCopy(JJZ)J
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFindPointerIndex(JI)I
.end method

.method private static native nativeGetAction(J)I
.end method

.method private static native nativeGetActionButton(J)I
.end method

.method private static native nativeGetAxisValue(JIII)F
.end method

.method private static native nativeGetButtonState(J)I
.end method

.method private static native nativeGetDeviceId(J)I
.end method

.method private static native nativeGetDisplayId(J)I
.end method

.method private static native nativeGetDownTimeNanos(J)J
.end method

.method private static native nativeGetEdgeFlags(J)I
.end method

.method private static native nativeGetEventTimeNanos(JI)J
.end method

.method private static native nativeGetFlags(J)I
.end method

.method private static native nativeGetHistorySize(J)I
.end method

.method private static native nativeGetMetaState(J)I
.end method

.method private static native nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native nativeGetPointerCount(J)I
.end method

.method private static native nativeGetPointerId(JI)I
.end method

.method private static native nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native nativeGetRawAxisValue(JIII)F
.end method

.method private static native nativeGetSource(J)I
.end method

.method private static native nativeGetToolType(JI)I
.end method

.method private static native nativeGetXOffset(J)F
.end method

.method private static native nativeGetXPrecision(J)F
.end method

.method private static native nativeGetYOffset(J)F
.end method

.method private static native nativeGetYPrecision(J)F
.end method

.method private static native nativeInitialize(JIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J
.end method

.method private static native nativeIsTouchEvent(J)Z
.end method

.method private static native nativeOffsetLocation(JFF)V
.end method

.method private static native nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native nativeScale(JF)V
.end method

.method private static native nativeSetAction(JI)V
.end method

.method private static native nativeSetActionButton(JI)V
.end method

.method private static native nativeSetButtonState(JI)V
.end method

.method private static native nativeSetDisplayId(JI)V
.end method

.method private static native nativeSetDownTimeNanos(JJ)V
.end method

.method private static native nativeSetEdgeFlags(JI)V
.end method

.method private static native nativeSetFlags(JI)V
.end method

.method private static native nativeSetSource(JI)I
.end method

.method private static native nativeTransform(JLandroid/graphics/Matrix;)V
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static obtain()Landroid/view/MotionEvent;
    .registers 3

    .prologue
    .line 1563
    sget-object v2, gRecyclerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1564
    :try_start_3
    sget-object v0, gRecyclerTop:Landroid/view/MotionEvent;

    .line 1565
    .local v0, "ev":Landroid/view/MotionEvent;
    if-nez v0, :cond_e

    .line 1566
    new-instance v0, Landroid/view/MotionEvent;

    .end local v0    # "ev":Landroid/view/MotionEvent;
    invoke-direct {v0}, <init>()V

    monitor-exit v2

    .line 1573
    .restart local v0    # "ev":Landroid/view/MotionEvent;
    :goto_d
    return-object v0

    .line 1568
    :cond_e
    iget-object v1, v0, mNext:Landroid/view/MotionEvent;

    sput-object v1, gRecyclerTop:Landroid/view/MotionEvent;

    .line 1569
    sget v1, gRecyclerUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, gRecyclerUsed:I

    .line 1570
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_20

    .line 1571
    const/4 v1, 0x0

    iput-object v1, v0, mNext:Landroid/view/MotionEvent;

    .line 1572
    invoke-virtual {v0}, prepareForReuse()V

    goto :goto_d

    .line 1570
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 40
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F
    .param p8, "size"    # F
    .param p9, "metaState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I

    .prologue
    .line 1716
    invoke-static {}, obtain()Landroid/view/MotionEvent;

    move-result-object v23

    .line 1717
    .local v23, "ev":Landroid/view/MotionEvent;
    sget-object v24, gSharedTempLock:Ljava/lang/Object;

    monitor-enter v24

    .line 1718
    const/4 v2, 0x1

    :try_start_8
    invoke-static {v2}, ensureSharedTempPointerCapacity(I)V

    .line 1719
    sget-object v21, gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1720
    .local v21, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v2, 0x0

    aget-object v2, v21, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1721
    const/4 v2, 0x0

    aget-object v2, v21, v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1723
    sget-object v22, gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1724
    .local v22, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    aget-object v2, v22, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 1725
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p5

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1726
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p6

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1727
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p7

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1728
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p8

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1730
    move-object/from16 v0, v23

    iget-wide v2, v0, mNativePtr:J

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/32 v8, 0xf4240

    mul-long v16, p0, v8

    const-wide/32 v8, 0xf4240

    mul-long v18, p2, v8

    const/16 v20, 0x1

    move/from16 v4, p12

    move/from16 v6, p4

    move/from16 v8, p13

    move/from16 v9, p9

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-static/range {v2 .. v22}, nativeInitialize(JIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    move-object/from16 v0, v23

    iput-wide v2, v0, mNativePtr:J

    .line 1735
    monitor-exit v24

    return-object v23

    .line 1736
    .end local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_69
    move-exception v2

    monitor-exit v24
    :try_end_6b
    .catchall {:try_start_8 .. :try_end_6b} :catchall_69

    throw v2
.end method

.method public static obtain(JJIFFFFIIFFII)Landroid/view/MotionEvent;
    .registers 41
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F
    .param p8, "size"    # F
    .param p9, "metaState"    # I
    .param p10, "displayId"    # I
    .param p11, "xPrecision"    # F
    .param p12, "yPrecision"    # F
    .param p13, "deviceId"    # I
    .param p14, "edgeFlags"    # I

    .prologue
    .line 1746
    invoke-static {}, obtain()Landroid/view/MotionEvent;

    move-result-object v23

    .line 1747
    .local v23, "ev":Landroid/view/MotionEvent;
    sget-object v24, gSharedTempLock:Ljava/lang/Object;

    monitor-enter v24

    .line 1748
    const/4 v2, 0x1

    :try_start_8
    invoke-static {v2}, ensureSharedTempPointerCapacity(I)V

    .line 1749
    sget-object v21, gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1750
    .local v21, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v2, 0x0

    aget-object v2, v21, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1751
    const/4 v2, 0x0

    aget-object v2, v21, v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1753
    sget-object v22, gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1754
    .local v22, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    aget-object v2, v22, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 1755
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p5

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1756
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p6

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1757
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p7

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1758
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p8

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1760
    move-object/from16 v0, v23

    iget-wide v2, v0, mNativePtr:J

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/32 v8, 0xf4240

    mul-long v16, p0, v8

    const-wide/32 v8, 0xf4240

    mul-long v18, p2, v8

    const/16 v20, 0x1

    move/from16 v4, p13

    move/from16 v6, p4

    move/from16 v8, p14

    move/from16 v9, p9

    move/from16 v11, p10

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-static/range {v2 .. v22}, nativeInitialize(JIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    move-object/from16 v0, v23

    iput-wide v2, v0, mNativePtr:J

    .line 1765
    monitor-exit v24

    return-object v23

    .line 1766
    .end local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_6a
    move-exception v2

    monitor-exit v24
    :try_end_6c
    .catchall {:try_start_8 .. :try_end_6c} :catchall_6a

    throw v2
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .registers 22
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "metaState"    # I

    .prologue
    .line 1828
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v13}, obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 29
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "pressure"    # F
    .param p9, "size"    # F
    .param p10, "metaState"    # I
    .param p11, "xPrecision"    # F
    .param p12, "yPrecision"    # F
    .param p13, "deviceId"    # I
    .param p14, "edgeFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1807
    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    invoke-static/range {v0 .. v13}, obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .registers 35
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerIds"    # [I
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "xPrecision"    # F
    .param p10, "yPrecision"    # F
    .param p11, "deviceId"    # I
    .param p12, "edgeFlags"    # I
    .param p13, "source"    # I
    .param p14, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1671
    sget-object v19, gSharedTempLock:Ljava/lang/Object;

    monitor-enter v19

    .line 1672
    :try_start_3
    invoke-static/range {p5 .. p5}, ensureSharedTempPointerCapacity(I)V

    .line 1673
    sget-object v8, gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1674
    .local v8, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_a
    move/from16 v0, v18

    move/from16 v1, p5

    if-ge v0, v1, :cond_1e

    .line 1675
    aget-object v2, v8, v18

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1676
    aget-object v2, v8, v18

    aget v3, p6, v18

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1674
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 1678
    :cond_1e
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-static/range {v2 .. v17}, obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    monitor-exit v19

    return-object v2

    .line 1681
    .end local v8    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v18    # "i":I
    :catchall_3d
    move-exception v2

    monitor-exit v19
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public static obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .registers 40
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerProperties"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "buttonState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I
    .param p14, "source"    # I
    .param p15, "flags"    # I

    .prologue
    .line 1609
    invoke-static {}, obtain()Landroid/view/MotionEvent;

    move-result-object v23

    .line 1610
    .local v23, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, v23

    iget-wide v2, v0, mNativePtr:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/32 v4, 0xf4240

    mul-long v16, p0, v4

    const-wide/32 v4, 0xf4240

    mul-long v18, p2, v4

    move/from16 v4, p12

    move/from16 v5, p14

    move/from16 v6, p4

    move/from16 v7, p15

    move/from16 v8, p13

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v20, p5

    move-object/from16 v21, p6

    move-object/from16 v22, p7

    invoke-static/range {v2 .. v22}, nativeInitialize(JIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    move-object/from16 v0, v23

    iput-wide v2, v0, mNativePtr:J

    .line 1615
    return-object v23
.end method

.method public static obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;
    .registers 41
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerProperties"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "buttonState"    # I
    .param p10, "displayId"    # I
    .param p11, "xPrecision"    # F
    .param p12, "yPrecision"    # F
    .param p13, "deviceId"    # I
    .param p14, "edgeFlags"    # I
    .param p15, "source"    # I
    .param p16, "flags"    # I

    .prologue
    .line 1627
    invoke-static {}, obtain()Landroid/view/MotionEvent;

    move-result-object v23

    .line 1628
    .local v23, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, v23

    iget-wide v2, v0, mNativePtr:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/32 v4, 0xf4240

    mul-long v16, p0, v4

    const-wide/32 v4, 0xf4240

    mul-long v18, p2, v4

    move/from16 v4, p13

    move/from16 v5, p15

    move/from16 v6, p4

    move/from16 v7, p16

    move/from16 v8, p14

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v20, p5

    move-object/from16 v21, p6

    move-object/from16 v22, p7

    invoke-static/range {v2 .. v22}, nativeInitialize(JIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    move-object/from16 v0, v23

    iput-wide v2, v0, mNativePtr:J

    .line 1633
    return-object v23
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 7
    .param p0, "other"    # Landroid/view/MotionEvent;

    .prologue
    .line 1836
    if-nez p0, :cond_b

    .line 1837
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other motion event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1840
    :cond_b
    invoke-static {}, obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1841
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v2, v0, mNativePtr:J

    iget-wide v4, p0, mNativePtr:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v4, v5, v1}, nativeCopy(JJZ)J

    move-result-wide v2

    iput-wide v2, v0, mNativePtr:J

    .line 1843
    iget-boolean v1, p0, mNeedWindowOffset:Z

    if-eqz v1, :cond_3b

    .line 1844
    iget-boolean v1, p0, mNeedWindowOffset:Z

    iput-boolean v1, v0, mNeedWindowOffset:Z

    .line 1845
    iget v1, p0, mWindowOffsetX:I

    iput v1, v0, mWindowOffsetX:I

    .line 1846
    iget v1, p0, mWindowOffsetY:I

    iput v1, v0, mWindowOffsetY:I

    .line 1847
    iget v1, p0, mScaleFactorX:F

    iput v1, v0, mScaleFactorX:F

    .line 1848
    iget v1, p0, mScaleFactorY:F

    iput v1, v0, mScaleFactorY:F

    .line 1849
    iget v1, p0, mScaledWindowOffsetX:I

    iput v1, v0, mScaledWindowOffsetX:I

    .line 1850
    iget v1, p0, mScaledWindowOffsetY:I

    iput v1, v0, mScaledWindowOffsetY:I

    .line 1856
    :goto_3a
    return-object v0

    .line 1852
    :cond_3b
    const/4 v1, 0x0

    iput-boolean v1, v0, mNeedWindowOffset:Z

    goto :goto_3a
.end method

.method public static obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 7
    .param p0, "other"    # Landroid/view/MotionEvent;

    .prologue
    .line 1864
    if-nez p0, :cond_b

    .line 1865
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other motion event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1868
    :cond_b
    invoke-static {}, obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1869
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v2, v0, mNativePtr:J

    iget-wide v4, p0, mNativePtr:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v5, v1}, nativeCopy(JJZ)J

    move-result-wide v2

    iput-wide v2, v0, mNativePtr:J

    .line 1870
    return-object v0
.end method

.method public static toolTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "toolType"    # I

    .prologue
    .line 3651
    sget-object v1, TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3652
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_b

    .end local v0    # "symbolicName":Ljava/lang/String;
    :goto_a
    return-object v0

    .restart local v0    # "symbolicName":Ljava/lang/String;
    :cond_b
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .registers 15
    .param p1, "eventTime"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "pressure"    # F
    .param p6, "size"    # F
    .param p7, "metaState"    # I

    .prologue
    .line 3236
    sget-object v6, gSharedTempLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3237
    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, ensureSharedTempPointerCapacity(I)V

    .line 3238
    sget-object v4, gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3239
    .local v4, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 3240
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3241
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p4, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3242
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p5, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3243
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3245
    iget-wide v0, p0, mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move v5, p7

    invoke-static/range {v0 .. v5}, nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3246
    monitor-exit v6

    .line 3247
    return-void

    .line 3246
    .end local v4    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_2f
    move-exception v0

    monitor-exit v6
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public final addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .registers 12
    .param p1, "eventTime"    # J
    .param p3, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p4, "metaState"    # I

    .prologue
    .line 3261
    iget-wide v0, p0, mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3262
    return-void
.end method

.method public final addBatch(Landroid/view/MotionEvent;)Z
    .registers 20
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3277
    move-object/from16 v0, p0

    iget-wide v2, v0, mNativePtr:J

    invoke-static {v2, v3}, nativeGetAction(J)I

    move-result v8

    .line 3278
    .local v8, "action":I
    const/4 v2, 0x2

    if-eq v8, v2, :cond_10

    const/4 v2, 0x7

    if-eq v8, v2, :cond_10

    .line 3279
    const/4 v2, 0x0

    .line 3322
    :goto_f
    return v2

    .line 3281
    :cond_10
    move-object/from16 v0, p1

    iget-wide v2, v0, mNativePtr:J

    invoke-static {v2, v3}, nativeGetAction(J)I

    move-result v2

    if-eq v8, v2, :cond_1c

    .line 3282
    const/4 v2, 0x0

    goto :goto_f

    .line 3285
    :cond_1c
    move-object/from16 v0, p0

    iget-wide v2, v0, mNativePtr:J

    invoke-static {v2, v3}, nativeGetDeviceId(J)I

    move-result v2

    move-object/from16 v0, p1

    iget-wide v0, v0, mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, nativeGetDeviceId(J)I

    move-result v3

    if-ne v2, v3, :cond_58

    move-object/from16 v0, p0

    iget-wide v2, v0, mNativePtr:J

    invoke-static {v2, v3}, nativeGetSource(J)I

    move-result v2

    move-object/from16 v0, p1

    iget-wide v0, v0, mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, nativeGetSource(J)I

    move-result v3

    if-ne v2, v3, :cond_58

    move-object/from16 v0, p0

    iget-wide v2, v0, mNativePtr:J

    invoke-static {v2, v3}, nativeGetFlags(J)I

    move-result v2

    move-object/from16 v0, p1

    iget-wide v0, v0, mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, nativeGetFlags(J)I

    move-result v3

    if-eq v2, v3, :cond_5a

    .line 3288
    :cond_58
    const/4 v2, 0x0

    goto :goto_f

    .line 3291
    :cond_5a
    move-object/from16 v0, p0

    iget-wide v2, v0, mNativePtr:J

    invoke-static {v2, v3}, nativeGetPointerCount(J)I

    move-result v13

    .line 3292
    .local v13, "pointerCount":I
    move-object/from16 v0, p1

    iget-wide v2, v0, mNativePtr:J

    invoke-static {v2, v3}, nativeGetPointerCount(J)I

    move-result v2

    if-eq v13, v2, :cond_6e

    .line 3293
    const/4 v2, 0x0

    goto :goto_f

    .line 3296
    :cond_6e
    sget-object v15, gSharedTempLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3297
    const/4 v2, 0x2

    :try_start_72
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, ensureSharedTempPointerCapacity(I)V

    .line 3298
    sget-object v14, gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3299
    .local v14, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v6, gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3301
    .local v6, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_7e
    if-ge v12, v13, :cond_b0

    .line 3302
    move-object/from16 v0, p0

    iget-wide v2, v0, mNativePtr:J

    const/16 v16, 0x0

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-static {v2, v3, v12, v0}, nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3303
    move-object/from16 v0, p1

    iget-wide v2, v0, mNativePtr:J

    const/16 v16, 0x1

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-static {v2, v3, v12, v0}, nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3304
    const/4 v2, 0x0

    aget-object v2, v14, v2

    const/4 v3, 0x1

    aget-object v3, v14, v3

    # invokes: Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z
    invoke-static {v2, v3}, Landroid/view/MotionEvent$PointerProperties;->access$000(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 3305
    const/4 v2, 0x0

    monitor-exit v15

    goto/16 :goto_f

    .line 3321
    .end local v6    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v12    # "i":I
    .end local v14    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    :catchall_aa
    move-exception v2

    monitor-exit v15
    :try_end_ac
    .catchall {:try_start_72 .. :try_end_ac} :catchall_aa

    throw v2

    .line 3301
    .restart local v6    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v12    # "i":I
    .restart local v14    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    :cond_ad
    add-int/lit8 v12, v12, 0x1

    goto :goto_7e

    .line 3309
    :cond_b0
    :try_start_b0
    move-object/from16 v0, p1

    iget-wide v2, v0, mNativePtr:J

    invoke-static {v2, v3}, nativeGetMetaState(J)I

    move-result v7

    .line 3310
    .local v7, "metaState":I
    move-object/from16 v0, p1

    iget-wide v2, v0, mNativePtr:J

    invoke-static {v2, v3}, nativeGetHistorySize(J)I

    move-result v11

    .line 3311
    .local v11, "historySize":I
    const/4 v9, 0x0

    .local v9, "h":I
    :goto_c1
    if-gt v9, v11, :cond_ec

    .line 3312
    if-ne v9, v11, :cond_d8

    const/high16 v10, -0x80000000

    .line 3314
    .local v10, "historyPos":I
    :goto_c7
    const/4 v12, 0x0

    :goto_c8
    if-ge v12, v13, :cond_da

    .line 3315
    move-object/from16 v0, p1

    iget-wide v2, v0, mNativePtr:J

    aget-object v16, v6, v12

    move-object/from16 v0, v16

    invoke-static {v2, v3, v12, v10, v0}, nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3314
    add-int/lit8 v12, v12, 0x1

    goto :goto_c8

    .end local v10    # "historyPos":I
    :cond_d8
    move v10, v9

    .line 3312
    goto :goto_c7

    .line 3318
    .restart local v10    # "historyPos":I
    :cond_da
    move-object/from16 v0, p1

    iget-wide v2, v0, mNativePtr:J

    invoke-static {v2, v3, v10}, nativeGetEventTimeNanos(JI)J

    move-result-wide v4

    .line 3319
    .local v4, "eventTimeNanos":J
    move-object/from16 v0, p0

    iget-wide v2, v0, mNativePtr:J

    invoke-static/range {v2 .. v7}, nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3311
    add-int/lit8 v9, v9, 0x1

    goto :goto_c1

    .line 3321
    .end local v4    # "eventTimeNanos":J
    .end local v10    # "historyPos":I
    :cond_ec
    monitor-exit v15
    :try_end_ed
    .catchall {:try_start_b0 .. :try_end_ed} :catchall_aa

    .line 3322
    const/4 v2, 0x1

    goto/16 :goto_f
.end method

.method public final cancel()V
    .registers 2

    .prologue
    .line 3697
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, setAction(I)V

    .line 3698
    return-void
.end method

.method public final clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .registers 34
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 3356
    invoke-static {}, obtain()Landroid/view/MotionEvent;

    move-result-object v25

    .line 3357
    .local v25, "ev":Landroid/view/MotionEvent;
    sget-object v27, gSharedTempLock:Ljava/lang/Object;

    monitor-enter v27

    .line 3358
    :try_start_7
    move-object/from16 v0, p0

    iget-wide v4, v0, mNativePtr:J

    invoke-static {v4, v5}, nativeGetPointerCount(J)I

    move-result v22

    .line 3360
    .local v22, "pointerCount":I
    invoke-static/range {v22 .. v22}, ensureSharedTempPointerCapacity(I)V

    .line 3361
    sget-object v23, gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3362
    .local v23, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v24, gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3364
    .local v24, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_18
    move/from16 v0, v26

    move/from16 v1, v22

    if-ge v0, v1, :cond_59

    .line 3365
    move-object/from16 v0, p0

    iget-wide v4, v0, mNativePtr:J

    aget-object v6, v23, v26

    move/from16 v0, v26

    invoke-static {v4, v5, v0, v6}, nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3366
    move-object/from16 v0, p0

    iget-wide v4, v0, mNativePtr:J

    const/high16 v6, -0x80000000

    aget-object v7, v24, v26

    move/from16 v0, v26

    invoke-static {v4, v5, v0, v6, v7}, nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3367
    aget-object v4, v24, v26

    aget-object v5, v24, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v5, v0, v1}, clamp(FFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3368
    aget-object v4, v24, v26

    aget-object v5, v24, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v5, v0, v1}, clamp(FFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3364
    add-int/lit8 v26, v26, 0x1

    goto :goto_18

    .line 3370
    :cond_59
    move-object/from16 v0, v25

    iget-wide v4, v0, mNativePtr:J

    move-object/from16 v0, p0

    iget-wide v6, v0, mNativePtr:J

    invoke-static {v6, v7}, nativeGetDeviceId(J)I

    move-result v6

    move-object/from16 v0, p0

    iget-wide v8, v0, mNativePtr:J

    invoke-static {v8, v9}, nativeGetSource(J)I

    move-result v7

    move-object/from16 v0, p0

    iget-wide v8, v0, mNativePtr:J

    invoke-static {v8, v9}, nativeGetAction(J)I

    move-result v8

    move-object/from16 v0, p0

    iget-wide v10, v0, mNativePtr:J

    invoke-static {v10, v11}, nativeGetFlags(J)I

    move-result v9

    move-object/from16 v0, p0

    iget-wide v10, v0, mNativePtr:J

    invoke-static {v10, v11}, nativeGetEdgeFlags(J)I

    move-result v10

    move-object/from16 v0, p0

    iget-wide v12, v0, mNativePtr:J

    invoke-static {v12, v13}, nativeGetMetaState(J)I

    move-result v11

    move-object/from16 v0, p0

    iget-wide v12, v0, mNativePtr:J

    invoke-static {v12, v13}, nativeGetButtonState(J)I

    move-result v12

    move-object/from16 v0, p0

    iget-wide v14, v0, mNativePtr:J

    invoke-static {v14, v15}, nativeGetDisplayId(J)I

    move-result v13

    move-object/from16 v0, p0

    iget-wide v14, v0, mNativePtr:J

    invoke-static {v14, v15}, nativeGetXOffset(J)F

    move-result v14

    move-object/from16 v0, p0

    iget-wide v0, v0, mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, nativeGetYOffset(J)F

    move-result v15

    move-object/from16 v0, p0

    iget-wide v0, v0, mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, nativeGetXPrecision(J)F

    move-result v16

    move-object/from16 v0, p0

    iget-wide v0, v0, mNativePtr:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, nativeGetYPrecision(J)F

    move-result v17

    move-object/from16 v0, p0

    iget-wide v0, v0, mNativePtr:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, nativeGetDownTimeNanos(J)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, mNativePtr:J

    move-wide/from16 v20, v0

    const/high16 v28, -0x80000000

    move-wide/from16 v0, v20

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, nativeGetEventTimeNanos(JI)J

    move-result-wide v20

    invoke-static/range {v4 .. v24}, nativeInitialize(JIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v4

    move-object/from16 v0, v25

    iput-wide v4, v0, mNativePtr:J

    .line 3380
    monitor-exit v27

    return-object v25

    .line 3381
    .end local v22    # "pointerCount":I
    .end local v23    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v24    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v26    # "i":I
    :catchall_e7
    move-exception v4

    monitor-exit v27
    :try_end_e9
    .catchall {:try_start_7 .. :try_end_e9} :catchall_e7

    throw v4
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .registers 2

    .prologue
    .line 182
    invoke-virtual {p0}, copy()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/MotionEvent;
    .registers 2

    .prologue
    .line 1876
    invoke-static {p0}, obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 1552
    :try_start_2
    iget-wide v0, p0, mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 1553
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeDispose(J)V

    .line 1554
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mNativePtr:J
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_15

    .line 1557
    :cond_11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1559
    return-void

    .line 1557
    :catchall_15
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final findPointerIndex(I)I
    .registers 4
    .param p1, "pointerId"    # I

    .prologue
    .line 2256
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeFindPointerIndex(JI)I

    move-result v0

    return v0
.end method

.method public final getAction()I
    .registers 3

    .prologue
    .line 1939
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetAction(J)I

    move-result v0

    return v0
.end method

.method public final getActionButton()I
    .registers 3

    .prologue
    .line 2550
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetActionButton(J)I

    move-result v0

    return v0
.end method

.method public final getActionIndex()I
    .registers 3

    .prologue
    .line 1962
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetAction(J)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final getActionMasked()I
    .registers 3

    .prologue
    .line 1948
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetAction(J)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getAdjustedRawXByWindowOffset()F
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2693
    iget-wide v2, p0, mNativePtr:J

    const/high16 v1, -0x80000000

    invoke-static {v2, v3, v4, v4, v1}, nativeGetRawAxisValue(JIII)F

    move-result v0

    .line 2694
    .local v0, "rawX":F
    iget v1, p0, mScaleFactorX:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1f

    .line 2695
    iget v1, p0, mScaledWindowOffsetX:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v2, p0, mWindowOffsetX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, mScaleFactorX:F

    mul-float v0, v1, v2

    .line 2699
    :goto_1e
    return v0

    .line 2697
    :cond_1f
    iget v1, p0, mWindowOffsetX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1e
.end method

.method public final getAdjustedRawYByWindowOffset()F
    .registers 7

    .prologue
    .line 2704
    iget-wide v2, p0, mNativePtr:J

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    invoke-static {v2, v3, v1, v4, v5}, nativeGetRawAxisValue(JIII)F

    move-result v0

    .line 2705
    .local v0, "rawY":F
    iget v1, p0, mScaleFactorY:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_20

    .line 2706
    iget v1, p0, mScaledWindowOffsetY:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v2, p0, mWindowOffsetY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, mScaleFactorY:F

    mul-float v0, v1, v2

    .line 2710
    :goto_1f
    return v0

    .line 2708
    :cond_20
    iget v1, p0, mWindowOffsetY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1f
.end method

.method public final getAxisValue(I)F
    .registers 6
    .param p1, "axis"    # I

    .prologue
    .line 2166
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p1, v2, v3}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getAxisValue(II)F
    .registers 6
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I

    .prologue
    .line 2468
    iget-wide v0, p0, mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, p2, v2}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getButtonState()I
    .registers 3

    .prologue
    .line 2528
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetButtonState(J)I

    move-result v0

    return v0
.end method

.method public final getDeviceId()I
    .registers 3

    .prologue
    .line 1916
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetDeviceId(J)I

    move-result v0

    return v0
.end method

.method public final getDisplayId()I
    .registers 3

    .prologue
    .line 2569
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetDisplayId(J)I

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .registers 5

    .prologue
    .line 2022
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetDownTimeNanos(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEdgeFlags()I
    .registers 3

    .prologue
    .line 3163
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetEdgeFlags(J)I

    move-result v0

    return v0
.end method

.method public final getEventTime()J
    .registers 5

    .prologue
    .line 2044
    iget-wide v0, p0, mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .registers 4

    .prologue
    .line 2063
    iget-wide v0, p0, mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFlags()I
    .registers 3

    .prologue
    .line 1986
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetFlags(J)I

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(II)F
    .registers 6
    .param p1, "axis"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2945
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(III)F
    .registers 6
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I
    .param p3, "pos"    # I

    .prologue
    .line 3126
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalEventTime(I)J
    .registers 6
    .param p1, "pos"    # I

    .prologue
    .line 2767
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getHistoricalEventTimeNano(I)J
    .registers 4
    .param p1, "pos"    # I

    .prologue
    .line 2793
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHistoricalOrientation(I)F
    .registers 6
    .param p1, "pos"    # I

    .prologue
    .line 2928
    iget-wide v0, p0, mNativePtr:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalOrientation(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3107
    iget-wide v0, p0, mNativePtr:J

    const/16 v2, 0x8

    invoke-static {v0, v1, v2, p1, p2}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I
    .param p3, "outPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 3147
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3148
    return-void
.end method

.method public final getHistoricalPressure(I)F
    .registers 6
    .param p1, "pos"    # I

    .prologue
    .line 2838
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalPressure(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2999
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1, p2}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalSize(I)F
    .registers 6
    .param p1, "pos"    # I

    .prologue
    .line 2853
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalSize(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3017
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1, p2}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMajor(I)F
    .registers 6
    .param p1, "pos"    # I

    .prologue
    .line 2898
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMajor(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3071
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1, p2}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMinor(I)F
    .registers 6
    .param p1, "pos"    # I

    .prologue
    .line 2913
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMinor(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3089
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, p1, p2}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMajor(I)F
    .registers 6
    .param p1, "pos"    # I

    .prologue
    .line 2868
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMajor(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3035
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, p1, p2}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMinor(I)F
    .registers 6
    .param p1, "pos"    # I

    .prologue
    .line 2883
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMinor(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3053
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p1, p2}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalX(I)F
    .registers 5
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 2808
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, v2, v2, p1}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalX(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2963
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalY(I)F
    .registers 6
    .param p1, "pos"    # I

    .prologue
    .line 2823
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalY(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2981
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1, p2}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistorySize()I
    .registers 3

    .prologue
    .line 2747
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetHistorySize(J)I

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .registers 3

    .prologue
    .line 2511
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetMetaState(J)I

    move-result v0

    return v0
.end method

.method public final getOrientation()F
    .registers 6

    .prologue
    .line 2153
    iget-wide v0, p0, mNativePtr:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getOrientation(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2436
    iget-wide v0, p0, mNativePtr:J

    const/16 v2, 0x8

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getPalm()F
    .registers 6

    .prologue
    .line 2176
    iget-wide v0, p0, mNativePtr:J

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getPalm(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2446
    iget-wide v0, p0, mNativePtr:J

    const/16 v2, 0x30

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "outPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 2482
    iget-wide v0, p0, mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2, p2}, nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 2483
    return-void
.end method

.method public final getPointerCount()I
    .registers 3

    .prologue
    .line 2214
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetPointerCount(J)I

    move-result v0

    return v0
.end method

.method public final getPointerId(I)I
    .registers 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2226
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeGetPointerId(JI)I

    move-result v0

    return v0
.end method

.method public final getPointerIdBits()I
    .registers 7

    .prologue
    .line 3389
    const/4 v1, 0x0

    .line 3390
    .local v1, "idBits":I
    iget-wide v4, p0, mNativePtr:J

    invoke-static {v4, v5}, nativeGetPointerCount(J)I

    move-result v2

    .line 3391
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v2, :cond_16

    .line 3392
    const/4 v3, 0x1

    iget-wide v4, p0, mNativePtr:J

    invoke-static {v4, v5, v0}, nativeGetPointerId(JI)I

    move-result v4

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 3391
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3394
    :cond_16
    return v1
.end method

.method public final getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .registers 5
    .param p1, "pointerIndex"    # I
    .param p2, "outPointerProperties"    # Landroid/view/MotionEvent$PointerProperties;

    .prologue
    .line 2497
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1, p2}, nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 2498
    return-void
.end method

.method public final getPredictedX(I)F
    .registers 7
    .param p1, "pointerIndex"    # I

    .prologue
    const/high16 v4, -0x80000000

    .line 2302
    iget-wide v2, p0, mNativePtr:J

    const/16 v1, 0x33

    invoke-static {v2, v3, v1, p1, v4}, nativeGetAxisValue(JIII)F

    move-result v0

    .line 2303
    .local v0, "x":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_10

    .line 2304
    .end local v0    # "x":F
    :goto_f
    return v0

    .restart local v0    # "x":F
    :cond_10
    iget-wide v2, p0, mNativePtr:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p1, v4}, nativeGetAxisValue(JIII)F

    move-result v0

    goto :goto_f
.end method

.method public final getPredictedY(I)F
    .registers 7
    .param p1, "pointerIndex"    # I

    .prologue
    const/high16 v4, -0x80000000

    .line 2319
    iget-wide v2, p0, mNativePtr:J

    const/16 v1, 0x34

    invoke-static {v2, v3, v1, p1, v4}, nativeGetAxisValue(JIII)F

    move-result v0

    .line 2320
    .local v0, "y":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_10

    .line 2321
    .end local v0    # "y":F
    :goto_f
    return v0

    .restart local v0    # "y":F
    :cond_10
    iget-wide v2, p0, mNativePtr:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1, p1, v4}, nativeGetAxisValue(JIII)F

    move-result v0

    goto :goto_f
.end method

.method public final getPressure()F
    .registers 6

    .prologue
    .line 2093
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getPressure(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2339
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x2

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getRawX()F
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2590
    iget-boolean v0, p0, mNeedWindowOffset:Z

    if-eqz v0, :cond_a

    .line 2591
    invoke-virtual {p0}, getAdjustedRawXByWindowOffset()F

    move-result v0

    .line 2593
    :goto_9
    return v0

    :cond_a
    iget-wide v0, p0, mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v3, v3, v2}, nativeGetRawAxisValue(JIII)F

    move-result v0

    goto :goto_9
.end method

.method public final getRawXForScaledWindow()F
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2601
    iget-wide v0, p0, mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v3, v3, v2}, nativeGetRawAxisValue(JIII)F

    move-result v0

    iget v1, p0, mDssScale:F

    div-float/2addr v0, v1

    return v0
.end method

.method public final getRawY()F
    .registers 6

    .prologue
    .line 2619
    iget-boolean v0, p0, mNeedWindowOffset:Z

    if-eqz v0, :cond_9

    .line 2620
    invoke-virtual {p0}, getAdjustedRawYByWindowOffset()F

    move-result v0

    .line 2622
    :goto_8
    return v0

    :cond_9
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, nativeGetRawAxisValue(JIII)F

    move-result v0

    goto :goto_8
.end method

.method public final getRawYForScaledWindow()F
    .registers 6

    .prologue
    .line 2641
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, nativeGetRawAxisValue(JIII)F

    move-result v0

    iget v1, p0, mDssScale:F

    div-float/2addr v0, v1

    return v0
.end method

.method public final getSize()F
    .registers 6

    .prologue
    .line 2103
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getSize(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2357
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x3

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getSource()I
    .registers 3

    .prologue
    .line 1922
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetSource(J)I

    move-result v0

    return v0
.end method

.method public final getSumSize()Ljava/lang/Float;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2193
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final getSurfaceSize(I)F
    .registers 3
    .param p1, "pointerIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2205
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public final getToolMajor()F
    .registers 6

    .prologue
    .line 2133
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolMajor(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2401
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor()F
    .registers 6

    .prologue
    .line 2143
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2417
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x7

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolType(I)I
    .registers 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2244
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeGetToolType(JI)I

    move-result v0

    return v0
.end method

.method public final getTouchMajor()F
    .registers 6

    .prologue
    .line 2113
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMajor(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2371
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x4

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor()F
    .registers 6

    .prologue
    .line 2123
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2385
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x5

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getX()F
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2073
    iget-wide v0, p0, mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v3, v3, v2}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getX(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2271
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getXPrecision()F
    .registers 3

    .prologue
    .line 2723
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetXPrecision(J)F

    move-result v0

    return v0
.end method

.method public final getY()F
    .registers 6

    .prologue
    .line 2083
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getY(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2286
    iget-wide v0, p0, mNativePtr:J

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getYPrecision()F
    .registers 3

    .prologue
    .line 2735
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetYPrecision(J)F

    move-result v0

    return v0
.end method

.method public final isButtonPressed(I)Z
    .registers 4
    .param p1, "button"    # I

    .prologue
    const/4 v0, 0x0

    .line 3669
    if-nez p1, :cond_4

    .line 3672
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, getButtonState()I

    move-result v1

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public final isTainted()Z
    .registers 3

    .prologue
    .line 1992
    invoke-virtual {p0}, getFlags()I

    move-result v0

    .line 1993
    .local v0, "flags":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public final isTargetAccessibilityFocus()Z
    .registers 3

    .prologue
    .line 2005
    invoke-virtual {p0}, getFlags()I

    move-result v0

    .line 2006
    .local v0, "flags":I
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public final isTouchEvent()Z
    .registers 3

    .prologue
    .line 1977
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeIsTouchEvent(J)Z

    move-result v0

    return v0
.end method

.method public final isWithinBoundsNoHistory(FFFF)Z
    .registers 14
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v8, -0x80000000

    .line 3331
    iget-wide v6, p0, mNativePtr:J

    invoke-static {v6, v7}, nativeGetPointerCount(J)I

    move-result v1

    .line 3332
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_2d

    .line 3333
    iget-wide v6, p0, mNativePtr:J

    invoke-static {v6, v7, v4, v0, v8}, nativeGetAxisValue(JIII)F

    move-result v2

    .line 3334
    .local v2, "x":F
    iget-wide v6, p0, mNativePtr:J

    invoke-static {v6, v7, v5, v0, v8}, nativeGetAxisValue(JIII)F

    move-result v3

    .line 3335
    .local v3, "y":F
    cmpg-float v6, v2, p1

    if-ltz v6, :cond_29

    cmpl-float v6, v2, p3

    if-gtz v6, :cond_29

    cmpg-float v6, v3, p2

    if-ltz v6, :cond_29

    cmpl-float v6, v3, p4

    if-lez v6, :cond_2a

    .line 3339
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_29
    :goto_29
    return v4

    .line 3332
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2d
    move v4, v5

    .line 3339
    goto :goto_29
.end method

.method public final offsetLocation(FF)V
    .registers 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v1, 0x0

    .line 3189
    cmpl-float v0, p1, v1

    if-nez v0, :cond_9

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_e

    .line 3190
    :cond_9
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1, p2}, nativeOffsetLocation(JFF)V

    .line 3192
    :cond_e
    return-void
.end method

.method public final recycle()V
    .registers 4

    .prologue
    .line 1885
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 1887
    sget-object v1, gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1888
    :try_start_6
    sget v0, gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_18

    .line 1889
    sget v0, gRecyclerUsed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, gRecyclerUsed:I

    .line 1890
    sget-object v0, gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v0, p0, mNext:Landroid/view/MotionEvent;

    .line 1891
    sput-object p0, gRecyclerTop:Landroid/view/MotionEvent;

    .line 1893
    :cond_18
    monitor-exit v1

    .line 1894
    return-void

    .line 1893
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public final scale(F)V
    .registers 4
    .param p1, "scale"    # F

    .prologue
    .line 1908
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1909
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeScale(JF)V

    .line 1911
    :cond_b
    return-void
.end method

.method public final setAction(I)V
    .registers 4
    .param p1, "action"    # I

    .prologue
    .line 3180
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeSetAction(JI)V

    .line 3181
    return-void
.end method

.method public final setActionButton(I)V
    .registers 4
    .param p1, "button"    # I

    .prologue
    .line 2560
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeSetActionButton(JI)V

    .line 2561
    return-void
.end method

.method public final setButtonState(I)V
    .registers 4
    .param p1, "buttonState"    # I

    .prologue
    .line 2538
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeSetButtonState(JI)V

    .line 2539
    return-void
.end method

.method public final setDisplayId(I)V
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 2576
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeSetDisplayId(JI)V

    .line 2577
    return-void
.end method

.method public final setDownTime(J)V
    .registers 8
    .param p1, "downTime"    # J

    .prologue
    .line 2032
    iget-wide v0, p0, mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, nativeSetDownTimeNanos(JJ)V

    .line 2033
    return-void
.end method

.method public setDssScale(F)V
    .registers 2
    .param p1, "dssScale"    # F

    .prologue
    .line 2629
    iput p1, p0, mDssScale:F

    .line 2632
    return-void
.end method

.method public final setEdgeFlags(I)V
    .registers 4
    .param p1, "flags"    # I

    .prologue
    .line 3173
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeSetEdgeFlags(JI)V

    .line 3174
    return-void
.end method

.method public final setLocation(FF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3202
    invoke-virtual {p0}, getX()F

    move-result v0

    .line 3203
    .local v0, "oldX":F
    invoke-virtual {p0}, getY()F

    move-result v1

    .line 3204
    .local v1, "oldY":F
    sub-float v2, p1, v0

    sub-float v3, p2, v1

    invoke-virtual {p0, v2, v3}, offsetLocation(FF)V

    .line 3205
    return-void
.end method

.method public setScale(FF)V
    .registers 5
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2656
    cmpl-float v0, p1, v1

    if-nez v0, :cond_a

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_12

    .line 2657
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, mNeedWindowOffset:Z

    .line 2661
    :goto_d
    iput p1, p0, mScaleFactorX:F

    .line 2662
    iput p2, p0, mScaleFactorY:F

    .line 2664
    return-void

    .line 2659
    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, mNeedWindowOffset:Z

    goto :goto_d
.end method

.method public setScaledWindowOffset(II)V
    .registers 3
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 2669
    iput p1, p0, mScaledWindowOffsetX:I

    .line 2670
    iput p2, p0, mScaledWindowOffsetY:I

    .line 2672
    return-void
.end method

.method public final setSource(I)V
    .registers 4
    .param p1, "source"    # I

    .prologue
    .line 1928
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeSetSource(JI)I

    .line 1929
    return-void
.end method

.method public final setTainted(Z)V
    .registers 6
    .param p1, "tainted"    # Z

    .prologue
    .line 1999
    invoke-virtual {p0}, getFlags()I

    move-result v0

    .line 2000
    .local v0, "flags":I
    iget-wide v2, p0, mNativePtr:J

    if-eqz p1, :cond_f

    const/high16 v1, -0x80000000

    or-int/2addr v1, v0

    :goto_b
    invoke-static {v2, v3, v1}, nativeSetFlags(JI)V

    .line 2001
    return-void

    .line 2000
    :cond_f
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    goto :goto_b
.end method

.method public final setTargetAccessibilityFocus(Z)V
    .registers 6
    .param p1, "targetsFocus"    # Z

    .prologue
    .line 2011
    invoke-virtual {p0}, getFlags()I

    move-result v0

    .line 2012
    .local v0, "flags":I
    iget-wide v2, p0, mNativePtr:J

    if-eqz p1, :cond_f

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v1, v0

    :goto_b
    invoke-static {v2, v3, v1}, nativeSetFlags(JI)V

    .line 2015
    return-void

    .line 2012
    :cond_f
    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v1, v0

    goto :goto_b
.end method

.method public setWindowOffsetByCocktailBar(II)V
    .registers 4
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 2683
    if-nez p1, :cond_4

    if-eqz p2, :cond_7

    .line 2684
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, mNeedWindowOffset:Z

    .line 2686
    :cond_7
    iput p1, p0, mWindowOffsetX:I

    .line 2687
    iput p2, p0, mWindowOffsetY:I

    .line 2689
    return-void
.end method

.method public final split(I)Landroid/view/MotionEvent;
    .registers 39
    .param p1, "idBits"    # I

    .prologue
    .line 3402
    invoke-static {}, obtain()Landroid/view/MotionEvent;

    move-result-object v23

    .line 3403
    .local v23, "ev":Landroid/view/MotionEvent;
    sget-object v36, gSharedTempLock:Ljava/lang/Object;

    monitor-enter v36

    .line 3404
    :try_start_7
    move-object/from16 v0, p0

    iget-wide v2, v0, mNativePtr:J

    invoke-static {v2, v3}, nativeGetPointerCount(J)I

    move-result v35

    .line 3405
    .local v35, "oldPointerCount":I
    invoke-static/range {v35 .. v35}, ensureSharedTempPointerCapacity(I)V

    .line 3406
    sget-object v21, gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3407
    .local v21, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v22, gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3408
    .local v22, "pc":[Landroid/view/MotionEvent$PointerCoords;
    sget-object v29, gSharedTempPointerIndexMap:[I

    .line 3410
    .local v29, "map":[I
    move-object/from16 v0, p0

    iget-wide v2, v0, mNativePtr:J

    invoke-static {v2, v3}, nativeGetAction(J)I

    move-result v32

    .line 3411
    .local v32, "oldAction":I
    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    .line 3412
    .local v33, "oldActionMasked":I
    const v2, 0xff00

    and-int v2, v2, v32

    shr-int/lit8 v34, v2, 0x8

    .line 3414
    .local v34, "oldActionPointerIndex":I
    const/16 v30, -0x1

    .line 3415
    .local v30, "newActionPointerIndex":I
    const/16 v20, 0x0

    .line 3416
    .local v20, "newPointerCount":I
    const/16 v31, 0x0

    .line 3417
    .local v31, "newIdBits":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_35
    move/from16 v0, v27

    move/from16 v1, v35

    if-ge v0, v1, :cond_62

    .line 3418
    move-object/from16 v0, p0

    iget-wide v2, v0, mNativePtr:J

    aget-object v4, v21, v20

    move/from16 v0, v27

    invoke-static {v2, v3, v0, v4}, nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3419
    const/4 v2, 0x1

    aget-object v3, v21, v20

    iget v3, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int v28, v2, v3

    .line 3420
    .local v28, "idBit":I
    and-int v2, v28, p1

    if-eqz v2, :cond_5f

    .line 3421
    move/from16 v0, v27

    move/from16 v1, v34

    if-ne v0, v1, :cond_59

    .line 3422
    move/from16 v30, v20

    .line 3424
    :cond_59
    aput v27, v29, v20

    .line 3425
    add-int/lit8 v20, v20, 0x1

    .line 3426
    or-int v31, v31, v28

    .line 3417
    :cond_5f
    add-int/lit8 v27, v27, 0x1

    goto :goto_35

    .line 3430
    .end local v28    # "idBit":I
    :cond_62
    if-nez v20, :cond_6f

    .line 3431
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "idBits did not match any ids in the event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3488
    .end local v20    # "newPointerCount":I
    .end local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v27    # "i":I
    .end local v29    # "map":[I
    .end local v30    # "newActionPointerIndex":I
    .end local v31    # "newIdBits":I
    .end local v32    # "oldAction":I
    .end local v33    # "oldActionMasked":I
    .end local v34    # "oldActionPointerIndex":I
    .end local v35    # "oldPointerCount":I
    :catchall_6c
    move-exception v2

    monitor-exit v36
    :try_end_6e
    .catchall {:try_start_7 .. :try_end_6e} :catchall_6c

    throw v2

    .line 3435
    .restart local v20    # "newPointerCount":I
    .restart local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v27    # "i":I
    .restart local v29    # "map":[I
    .restart local v30    # "newActionPointerIndex":I
    .restart local v31    # "newIdBits":I
    .restart local v32    # "oldAction":I
    .restart local v33    # "oldActionMasked":I
    .restart local v34    # "oldActionPointerIndex":I
    .restart local v35    # "oldPointerCount":I
    :cond_6f
    const/4 v2, 0x5

    move/from16 v0, v33

    if-eq v0, v2, :cond_79

    const/4 v2, 0x6

    move/from16 v0, v33

    if-ne v0, v2, :cond_bf

    .line 3436
    :cond_79
    if-gez v30, :cond_ac

    .line 3438
    const/4 v6, 0x2

    .line 3453
    .local v6, "newAction":I
    :goto_7c
    :try_start_7c
    move-object/from16 v0, p0

    iget-wide v2, v0, mNativePtr:J

    invoke-static {v2, v3}, nativeGetHistorySize(J)I

    move-result v26

    .line 3454
    .local v26, "historySize":I
    const/16 v24, 0x0

    .local v24, "h":I
    :goto_86
    move/from16 v0, v24

    move/from16 v1, v26

    if-gt v0, v1, :cond_152

    .line 3455
    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_c2

    const/high16 v25, -0x80000000

    .line 3457
    .local v25, "historyPos":I
    :goto_94
    const/16 v27, 0x0

    :goto_96
    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_c5

    .line 3458
    move-object/from16 v0, p0

    iget-wide v2, v0, mNativePtr:J

    aget v4, v29, v27

    aget-object v5, v22, v27

    move/from16 v0, v25

    invoke-static {v2, v3, v4, v0, v5}, nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3457
    add-int/lit8 v27, v27, 0x1

    goto :goto_96

    .line 3439
    .end local v6    # "newAction":I
    .end local v24    # "h":I
    .end local v25    # "historyPos":I
    .end local v26    # "historySize":I
    :cond_ac
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_ba

    .line 3441
    const/4 v2, 0x5

    move/from16 v0, v33

    if-ne v0, v2, :cond_b8

    const/4 v6, 0x0

    .restart local v6    # "newAction":I
    :goto_b7
    goto :goto_7c

    .end local v6    # "newAction":I
    :cond_b8
    const/4 v6, 0x1

    goto :goto_b7

    .line 3445
    :cond_ba
    shl-int/lit8 v2, v30, 0x8

    or-int v6, v33, v2

    .restart local v6    # "newAction":I
    goto :goto_7c

    .line 3450
    .end local v6    # "newAction":I
    :cond_bf
    move/from16 v6, v32

    .restart local v6    # "newAction":I
    goto :goto_7c

    .restart local v24    # "h":I
    .restart local v26    # "historySize":I
    :cond_c2
    move/from16 v25, v24

    .line 3455
    goto :goto_94

    .line 3461
    .restart local v25    # "historyPos":I
    :cond_c5
    move-object/from16 v0, p0

    iget-wide v2, v0, mNativePtr:J

    move/from16 v0, v25

    invoke-static {v2, v3, v0}, nativeGetEventTimeNanos(JI)J

    move-result-wide v18

    .line 3462
    .local v18, "eventTimeNanos":J
    if-nez v24, :cond_145

    .line 3463
    move-object/from16 v0, v23

    iget-wide v2, v0, mNativePtr:J

    move-object/from16 v0, p0

    iget-wide v4, v0, mNativePtr:J

    invoke-static {v4, v5}, nativeGetDeviceId(J)I

    move-result v4

    move-object/from16 v0, p0

    iget-wide v8, v0, mNativePtr:J

    invoke-static {v8, v9}, nativeGetSource(J)I

    move-result v5

    move-object/from16 v0, p0

    iget-wide v8, v0, mNativePtr:J

    invoke-static {v8, v9}, nativeGetFlags(J)I

    move-result v7

    move-object/from16 v0, p0

    iget-wide v8, v0, mNativePtr:J

    invoke-static {v8, v9}, nativeGetEdgeFlags(J)I

    move-result v8

    move-object/from16 v0, p0

    iget-wide v10, v0, mNativePtr:J

    invoke-static {v10, v11}, nativeGetMetaState(J)I

    move-result v9

    move-object/from16 v0, p0

    iget-wide v10, v0, mNativePtr:J

    invoke-static {v10, v11}, nativeGetButtonState(J)I

    move-result v10

    move-object/from16 v0, p0

    iget-wide v12, v0, mNativePtr:J

    invoke-static {v12, v13}, nativeGetDisplayId(J)I

    move-result v11

    move-object/from16 v0, p0

    iget-wide v12, v0, mNativePtr:J

    invoke-static {v12, v13}, nativeGetXOffset(J)F

    move-result v12

    move-object/from16 v0, p0

    iget-wide v14, v0, mNativePtr:J

    invoke-static {v14, v15}, nativeGetYOffset(J)F

    move-result v13

    move-object/from16 v0, p0

    iget-wide v14, v0, mNativePtr:J

    invoke-static {v14, v15}, nativeGetXPrecision(J)F

    move-result v14

    move-object/from16 v0, p0

    iget-wide v0, v0, mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, nativeGetYPrecision(J)F

    move-result v15

    move-object/from16 v0, p0

    iget-wide v0, v0, mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, nativeGetDownTimeNanos(J)J

    move-result-wide v16

    invoke-static/range {v2 .. v22}, nativeInitialize(JIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    move-object/from16 v0, v23

    iput-wide v2, v0, mNativePtr:J

    .line 3454
    :goto_141
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_86

    .line 3473
    :cond_145
    move-object/from16 v0, v23

    iget-wide v8, v0, mNativePtr:J

    const/4 v13, 0x0

    move-wide/from16 v10, v18

    move-object/from16 v12, v22

    invoke-static/range {v8 .. v13}, nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    goto :goto_141

    .line 3477
    .end local v18    # "eventTimeNanos":J
    .end local v25    # "historyPos":I
    :cond_152
    move-object/from16 v0, p0

    iget-boolean v2, v0, mNeedWindowOffset:Z

    if-eqz v2, :cond_190

    .line 3478
    move-object/from16 v0, p0

    iget-boolean v2, v0, mNeedWindowOffset:Z

    move-object/from16 v0, v23

    iput-boolean v2, v0, mNeedWindowOffset:Z

    .line 3479
    move-object/from16 v0, p0

    iget v2, v0, mWindowOffsetX:I

    move-object/from16 v0, v23

    iput v2, v0, mWindowOffsetX:I

    .line 3480
    move-object/from16 v0, p0

    iget v2, v0, mWindowOffsetY:I

    move-object/from16 v0, v23

    iput v2, v0, mWindowOffsetY:I

    .line 3481
    move-object/from16 v0, p0

    iget v2, v0, mScaleFactorX:F

    move-object/from16 v0, v23

    iput v2, v0, mScaleFactorX:F

    .line 3482
    move-object/from16 v0, p0

    iget v2, v0, mScaleFactorY:F

    move-object/from16 v0, v23

    iput v2, v0, mScaleFactorY:F

    .line 3483
    move-object/from16 v0, p0

    iget v2, v0, mScaledWindowOffsetX:I

    move-object/from16 v0, v23

    iput v2, v0, mScaledWindowOffsetX:I

    .line 3484
    move-object/from16 v0, p0

    iget v2, v0, mScaledWindowOffsetY:I

    move-object/from16 v0, v23

    iput v2, v0, mScaledWindowOffsetY:I

    .line 3487
    :cond_190
    monitor-exit v36
    :try_end_191
    .catchall {:try_start_7c .. :try_end_191} :catchall_6c

    return-object v23
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 3493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3499
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string v3, "MotionEvent { action="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, getAction()I

    move-result v4

    invoke-static {v4}, actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3501
    const-string v3, ", actionButton="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, getActionButton()I

    move-result v4

    invoke-static {v4}, buttonStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3503
    invoke-virtual {p0}, getPointerCount()I

    move-result v2

    .line 3504
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    if-ge v0, v2, :cond_91

    .line 3505
    const-string v3, ", id["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3506
    const-string v3, ", x["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, getX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3507
    const-string v3, ", y["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, getY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3508
    const-string v3, ", toolType["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, getToolType(I)I

    move-result v4

    invoke-static {v4}, toolTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3504
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 3512
    :cond_91
    const-string v3, ", buttonState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, getButtonState()I

    move-result v4

    invoke-static {v4}, buttonStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3513
    const-string v3, ", metaState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, getMetaState()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3514
    const-string v3, ", flags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3515
    const-string v3, ", edgeFlags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, getEdgeFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3516
    const-string v3, ", pointerCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3517
    const-string v3, ", historySize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, getHistorySize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3518
    const-string v3, ", eventTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3519
    const-string v3, ", downTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, getDownTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3520
    const-string v3, ", deviceId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3521
    const-string v3, ", source=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, getSource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3522
    const-string v3, " }"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3523
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final transform(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 3213
    if-nez p1, :cond_b

    .line 3214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "matrix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3217
    :cond_b
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeTransform(JLandroid/graphics/Matrix;)V

    .line 3218
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 3701
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3702
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 3703
    return-void
.end method
