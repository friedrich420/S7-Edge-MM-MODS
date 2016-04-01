.class public final Landroid/view/InputDevice;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputDevice$MotionRange;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYBOARD_TYPE_ALPHABETIC:I = 0x2

.field public static final KEYBOARD_TYPE_NONE:I = 0x0

.field public static final KEYBOARD_TYPE_NON_ALPHABETIC:I = 0x1

.field public static final KEYBOARD_TYPE_NUMERIC:I = 0x3

.field public static final MOTION_RANGE_ORIENTATION:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_PRESSURE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_SIZE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOOL_MAJOR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOOL_MINOR:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOUCH_MAJOR:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOUCH_MINOR:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOURCE_ANY:I = -0x100

.field public static final SOURCE_BLUETOOTH_STYLUS:I = 0xc002

.field public static final SOURCE_CLASS_BUTTON:I = 0x1

.field public static final SOURCE_CLASS_JOYSTICK:I = 0x10

.field public static final SOURCE_CLASS_MASK:I = 0xff

.field public static final SOURCE_CLASS_NONE:I = 0x0

.field public static final SOURCE_CLASS_POINTER:I = 0x2

.field public static final SOURCE_CLASS_POSITION:I = 0x8

.field public static final SOURCE_CLASS_TRACKBALL:I = 0x4

.field public static final SOURCE_DPAD:I = 0x201

.field public static final SOURCE_GAMEPAD:I = 0x401

.field public static final SOURCE_HDMI:I = 0x2000001

.field public static final SOURCE_JOYSTICK:I = 0x1000010

.field public static final SOURCE_KEYBOARD:I = 0x101

.field public static final SOURCE_KNOB:I = 0x40000000

.field public static final SOURCE_MOUSE:I = 0x2002

.field public static final SOURCE_STYLUS:I = 0x4002

.field public static final SOURCE_TOUCHPAD:I = 0x100008

.field public static final SOURCE_TOUCHSCREEN:I = 0x1002

.field public static final SOURCE_TOUCH_NAVIGATION:I = 0x200000

.field public static final SOURCE_TRACKBALL:I = 0x10004

.field public static final SOURCE_UNKNOWN:I


# instance fields
.field private final mControllerNumber:I

.field private final mDescriptor:Ljava/lang/String;

.field private final mGeneration:I

.field private final mHasButtonUnderPad:Z

.field private final mHasMicrophone:Z

.field private final mHasVibrator:Z

.field private final mId:I

.field private final mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private final mIsExternal:Z

.field private final mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mKeyboardType:I

.field private final mMotionRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mProductId:I

.field private final mSources:I

.field private final mVendorId:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 395
    new-instance v0, Landroid/view/InputDevice$1;

    invoke-direct {v0}, Landroid/view/InputDevice$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;IILjava/lang/String;ZIILandroid/view/KeyCharacterMap;ZZZ)V
    .registers 16
    .param p1, "id"    # I
    .param p2, "generation"    # I
    .param p3, "controllerNumber"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "vendorId"    # I
    .param p6, "productId"    # I
    .param p7, "descriptor"    # Ljava/lang/String;
    .param p8, "isExternal"    # Z
    .param p9, "sources"    # I
    .param p10, "keyboardType"    # I
    .param p11, "keyCharacterMap"    # Landroid/view/KeyCharacterMap;
    .param p12, "hasVibrator"    # Z
    .param p13, "hasMicrophone"    # Z
    .param p14, "hasButtonUnderPad"    # Z

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mMotionRanges:Ljava/util/ArrayList;

    .line 410
    iput p1, p0, mId:I

    .line 411
    iput p2, p0, mGeneration:I

    .line 412
    iput p3, p0, mControllerNumber:I

    .line 413
    iput-object p4, p0, mName:Ljava/lang/String;

    .line 414
    iput p5, p0, mVendorId:I

    .line 415
    iput p6, p0, mProductId:I

    .line 416
    iput-object p7, p0, mDescriptor:Ljava/lang/String;

    .line 417
    iput-boolean p8, p0, mIsExternal:Z

    .line 418
    iput p9, p0, mSources:I

    .line 419
    iput p10, p0, mKeyboardType:I

    .line 420
    iput-object p11, p0, mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 421
    iput-boolean p12, p0, mHasVibrator:Z

    .line 422
    iput-boolean p13, p0, mHasMicrophone:Z

    .line 423
    iput-boolean p14, p0, mHasButtonUnderPad:Z

    .line 424
    new-instance v0, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {v0, p7, p5, p6}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 425
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mMotionRanges:Ljava/util/ArrayList;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mId:I

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mGeneration:I

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mControllerNumber:I

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mName:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mVendorId:I

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mProductId:I

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDescriptor:Ljava/lang/String;

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_83

    move v0, v2

    :goto_3d
    iput-boolean v0, p0, mIsExternal:Z

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mSources:I

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mKeyboardType:I

    .line 438
    sget-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyCharacterMap;

    iput-object v0, p0, mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_85

    move v0, v2

    :goto_5c
    iput-boolean v0, p0, mHasVibrator:Z

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_87

    move v0, v2

    :goto_65
    iput-boolean v0, p0, mHasMicrophone:Z

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_89

    :goto_6d
    iput-boolean v2, p0, mHasButtonUnderPad:Z

    .line 442
    new-instance v0, Landroid/hardware/input/InputDeviceIdentifier;

    iget-object v2, p0, mDescriptor:Ljava/lang/String;

    iget v3, p0, mVendorId:I

    iget v4, p0, mProductId:I

    invoke-direct {v0, v2, v3, v4}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 445
    :goto_7c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 446
    .local v1, "axis":I
    if-gez v1, :cond_8b

    .line 452
    return-void

    .end local v1    # "axis":I
    :cond_83
    move v0, v3

    .line 435
    goto :goto_3d

    :cond_85
    move v0, v3

    .line 439
    goto :goto_5c

    :cond_87
    move v0, v3

    .line 440
    goto :goto_65

    :cond_89
    move v2, v3

    .line 441
    goto :goto_6d

    .line 449
    .restart local v1    # "axis":I
    :cond_8b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, addMotionRange(IIFFFFF)V

    goto :goto_7c
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/InputDevice$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/InputDevice$1;

    .prologue
    .line 45
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private addMotionRange(IIFFFFF)V
    .registers 18
    .param p1, "axis"    # I
    .param p2, "source"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "flat"    # F
    .param p6, "fuzz"    # F
    .param p7, "resolution"    # F

    .prologue
    .line 755
    iget-object v9, p0, mMotionRanges:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/InputDevice$MotionRange;

    const/4 v8, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFFLandroid/view/InputDevice$1;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    return-void
.end method

.method private appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .registers 5
    .param p1, "description"    # Ljava/lang/StringBuilder;
    .param p2, "source"    # I
    .param p3, "sourceName"    # Ljava/lang/String;

    .prologue
    .line 1002
    iget v0, p0, mSources:I

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_d

    .line 1003
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    :cond_d
    return-void
.end method

.method public static getDevice(I)Landroid/view/InputDevice;
    .registers 2
    .param p0, "id"    # I

    .prologue
    .line 460
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIds()[I
    .registers 1

    .prologue
    .line 468
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 944
    const/4 v0, 0x0

    return v0
.end method

.method public getControllerNumber()I
    .registers 2

    .prologue
    .line 503
    iget v0, p0, mControllerNumber:I

    return v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneration()I
    .registers 2

    .prologue
    .line 528
    iget v0, p0, mGeneration:I

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 484
    iget v0, p0, mId:I

    return v0
.end method

.method public getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    return-object v0
.end method

.method public getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .registers 2

    .prologue
    .line 679
    iget-object v0, p0, mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-object v0
.end method

.method public getKeyboardType()I
    .registers 2

    .prologue
    .line 671
    iget v0, p0, mKeyboardType:I

    return v0
.end method

.method public getMotionRange(I)Landroid/view/InputDevice$MotionRange;
    .registers 6
    .param p1, "axis"    # I

    .prologue
    .line 707
    iget-object v3, p0, mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 708
    .local v1, "numRanges":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_1b

    .line 709
    iget-object v3, p0, mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 710
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    # getter for: Landroid/view/InputDevice$MotionRange;->mAxis:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_18

    .line 714
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :goto_17
    return-object v2

    .line 708
    .restart local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 714
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_1b
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public getMotionRange(II)Landroid/view/InputDevice$MotionRange;
    .registers 7
    .param p1, "axis"    # I
    .param p2, "source"    # I

    .prologue
    .line 732
    iget-object v3, p0, mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 733
    .local v1, "numRanges":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_21

    .line 734
    iget-object v3, p0, mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 735
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    # getter for: Landroid/view/InputDevice$MotionRange;->mAxis:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_1e

    # getter for: Landroid/view/InputDevice$MotionRange;->mSource:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$200(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p2, :cond_1e

    .line 739
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :goto_1d
    return-object v2

    .line 733
    .restart local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 739
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public getMotionRanges()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, mMotionRanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 643
    iget-object v0, p0, mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .registers 2

    .prologue
    .line 555
    iget v0, p0, mProductId:I

    return v0
.end method

.method public getSources()I
    .registers 2

    .prologue
    .line 651
    iget v0, p0, mSources:I

    return v0
.end method

.method public getVendorId()I
    .registers 2

    .prologue
    .line 541
    iget v0, p0, mVendorId:I

    return v0
.end method

.method public getVibrator()Landroid/os/Vibrator;
    .registers 4

    .prologue
    .line 771
    iget-object v1, p0, mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v1

    .line 772
    :try_start_3
    iget-object v0, p0, mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_17

    .line 773
    iget-boolean v0, p0, mHasVibrator:Z

    if-eqz v0, :cond_1b

    .line 774
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v2, p0, mId:I

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->getInputDeviceVibrator(I)Landroid/os/Vibrator;

    move-result-object v0

    iput-object v0, p0, mVibrator:Landroid/os/Vibrator;

    .line 779
    :cond_17
    :goto_17
    iget-object v0, p0, mVibrator:Landroid/os/Vibrator;

    monitor-exit v1

    return-object v0

    .line 776
    :cond_1b
    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    move-result-object v0

    iput-object v0, p0, mVibrator:Landroid/os/Vibrator;

    goto :goto_17

    .line 780
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public hasButtonUnderPad()Z
    .registers 2

    .prologue
    .line 797
    iget-boolean v0, p0, mHasButtonUnderPad:Z

    return v0
.end method

.method public varargs hasKeys([I)[Z
    .registers 4
    .param p1, "keys"    # [I

    .prologue
    .line 689
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, mId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public hasMicrophone()Z
    .registers 2

    .prologue
    .line 788
    iget-boolean v0, p0, mHasMicrophone:Z

    return v0
.end method

.method public isExternal()Z
    .registers 2

    .prologue
    .line 609
    iget-boolean v0, p0, mIsExternal:Z

    return v0
.end method

.method public isFullKeyboard()Z
    .registers 3

    .prologue
    .line 620
    iget v0, p0, mSources:I

    and-int/lit16 v0, v0, 0x101

    const/16 v1, 0x101

    if-ne v0, v1, :cond_f

    iget v0, p0, mKeyboardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isGamePad()Z
    .registers 4

    .prologue
    const v2, 0x1000010

    .line 633
    iget v0, p0, mSources:I

    and-int/lit16 v0, v0, 0x401

    const/16 v1, 0x401

    if-eq v0, v1, :cond_10

    iget v0, p0, mSources:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isVirtual()Z
    .registers 2

    .prologue
    .line 597
    iget v0, p0, mId:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public supportsSource(I)Z
    .registers 3
    .param p1, "source"    # I

    .prologue
    .line 663
    iget v0, p0, mSources:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    .local v0, "description":Ljava/lang/StringBuilder;
    const-string v4, "Input Device "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    const-string v4, "  Descriptor: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mDescriptor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    const-string v4, "  Generation: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mGeneration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    const-string v4, "  Location: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, mIsExternal:Z

    if-eqz v4, :cond_167

    const-string v4, "external"

    :goto_50
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    const-string v4, "  Keyboard Type: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    iget v4, p0, mKeyboardType:I

    packed-switch v4, :pswitch_data_188

    .line 967
    :goto_63
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    const-string v4, "  Has Vibrator: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mHasVibrator:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    const-string v4, "  Has mic: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mHasMicrophone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    const-string v4, "  Sources: 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mSources:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const/16 v4, 0x101

    const-string v5, "keyboard"

    invoke-direct {p0, v0, v4, v5}, appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 975
    const/16 v4, 0x201

    const-string v5, "dpad"

    invoke-direct {p0, v0, v4, v5}, appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 976
    const/16 v4, 0x1002

    const-string/jumbo v5, "touchscreen"

    invoke-direct {p0, v0, v4, v5}, appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 977
    const/16 v4, 0x2002

    const-string/jumbo v5, "mouse"

    invoke-direct {p0, v0, v4, v5}, appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 978
    const/16 v4, 0x4002

    const-string/jumbo v5, "stylus"

    invoke-direct {p0, v0, v4, v5}, appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 979
    const v4, 0x10004

    const-string/jumbo v5, "trackball"

    invoke-direct {p0, v0, v4, v5}, appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 980
    const v4, 0x100008

    const-string/jumbo v5, "touchpad"

    invoke-direct {p0, v0, v4, v5}, appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 981
    const v4, 0x1000010

    const-string v5, "joystick"

    invoke-direct {p0, v0, v4, v5}, appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 982
    const/16 v4, 0x401

    const-string v5, "gamepad"

    invoke-direct {p0, v0, v4, v5}, appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 983
    const-string v4, " )\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    iget-object v4, p0, mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 986
    .local v2, "numAxes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f2
    if-ge v1, v2, :cond_182

    .line 987
    iget-object v4, p0, mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice$MotionRange;

    .line 988
    .local v3, "range":Landroid/view/InputDevice$MotionRange;
    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/view/InputDevice$MotionRange;->mAxis:I
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    move-result v5

    invoke-static {v5}, Landroid/view/MotionEvent;->axisToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    const-string v4, ": source=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/view/InputDevice$MotionRange;->mSource:I
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$200(Landroid/view/InputDevice$MotionRange;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v4, " min="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/view/InputDevice$MotionRange;->mMin:F
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$400(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 991
    const-string v4, " max="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/view/InputDevice$MotionRange;->mMax:F
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$500(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 992
    const-string v4, " flat="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/view/InputDevice$MotionRange;->mFlat:F
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$600(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 993
    const-string v4, " fuzz="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/view/InputDevice$MotionRange;->mFuzz:F
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$700(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 994
    const-string v4, " resolution="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/view/InputDevice$MotionRange;->mResolution:F
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$800(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 995
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    add-int/lit8 v1, v1, 0x1

    goto :goto_f2

    .line 953
    .end local v1    # "i":I
    .end local v2    # "numAxes":I
    .end local v3    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_167
    const-string v4, "built-in"

    goto/16 :goto_50

    .line 958
    :pswitch_16b
    const-string/jumbo v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_63

    .line 961
    :pswitch_173
    const-string/jumbo v4, "non-alphabetic"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_63

    .line 964
    :pswitch_17b
    const-string v4, "alphabetic"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_63

    .line 997
    .restart local v1    # "i":I
    .restart local v2    # "numAxes":I
    :cond_182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 956
    nop

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_16b
        :pswitch_173
        :pswitch_17b
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 913
    iget v3, p0, mId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    iget v3, p0, mGeneration:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    iget v3, p0, mControllerNumber:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    iget-object v3, p0, mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 917
    iget v3, p0, mVendorId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    iget v3, p0, mProductId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    iget-object v3, p0, mDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 920
    iget-boolean v3, p0, mIsExternal:Z

    if-eqz v3, :cond_98

    move v3, v4

    :goto_2a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    iget v3, p0, mSources:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    iget v3, p0, mKeyboardType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    iget-object v3, p0, mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v3, p1, p2}, Landroid/view/KeyCharacterMap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 924
    iget-boolean v3, p0, mHasVibrator:Z

    if-eqz v3, :cond_9a

    move v3, v4

    :goto_41
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    iget-boolean v3, p0, mHasMicrophone:Z

    if-eqz v3, :cond_9c

    move v3, v4

    :goto_49
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    iget-boolean v3, p0, mHasButtonUnderPad:Z

    if-eqz v3, :cond_9e

    :goto_50
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    iget-object v3, p0, mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 929
    .local v1, "numRanges":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5a
    if-ge v0, v1, :cond_a0

    .line 930
    iget-object v3, p0, mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 931
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    # getter for: Landroid/view/InputDevice$MotionRange;->mAxis:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    # getter for: Landroid/view/InputDevice$MotionRange;->mSource:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$200(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    # getter for: Landroid/view/InputDevice$MotionRange;->mMin:F
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$400(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 934
    # getter for: Landroid/view/InputDevice$MotionRange;->mMax:F
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$500(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 935
    # getter for: Landroid/view/InputDevice$MotionRange;->mFlat:F
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$600(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 936
    # getter for: Landroid/view/InputDevice$MotionRange;->mFuzz:F
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$700(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 937
    # getter for: Landroid/view/InputDevice$MotionRange;->mResolution:F
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$800(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 929
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .end local v0    # "i":I
    .end local v1    # "numRanges":I
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_98
    move v3, v5

    .line 920
    goto :goto_2a

    :cond_9a
    move v3, v5

    .line 924
    goto :goto_41

    :cond_9c
    move v3, v5

    .line 925
    goto :goto_49

    :cond_9e
    move v4, v5

    .line 926
    goto :goto_50

    .line 939
    .restart local v0    # "i":I
    .restart local v1    # "numRanges":I
    :cond_a0
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    return-void
.end method
