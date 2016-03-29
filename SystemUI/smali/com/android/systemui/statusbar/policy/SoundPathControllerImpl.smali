.class public Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;
.super Landroid/media/AudioDeviceCallback;
.source "SoundPathControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SoundPathController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;,
        Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final MODE_CALL:I

.field private final MODE_NONE_CALL:I

.field private mActiveAddress:Ljava/lang/String;

.field private mActiveDevice:I

.field private mAudioDeviceInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioDeviceListForUI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/SoundPathController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceName:Ljava/lang/String;

.field private final mDeviceNameObserver:Landroid/database/ContentObserver;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

.field private final mReceiver:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;

.field private mSAudioMgr:Landroid/media/SamsungAudioManager;

.field private mStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "SoundPathController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    .line 59
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 62
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 63
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mSAudioMgr:Landroid/media/SamsungAudioManager;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioDeviceInfoList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioDeviceListForUI:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;

    .line 69
    iput v3, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;

    .line 72
    iput v3, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->MODE_CALL:I

    .line 73
    iput v4, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->MODE_NONE_CALL:I

    .line 75
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioMode:I

    .line 296
    new-instance v0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mDeviceNameObserver:Landroid/database/ContentObserver;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 83
    new-instance v0, Landroid/media/SamsungAudioManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mSAudioMgr:Landroid/media/SamsungAudioManager;

    .line 85
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->init()V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->updateStreamAndActiveDevice()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mDeviceNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mDeviceNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->updateList()V

    .line 95
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioMode:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->updateStreamAndActiveDevice()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->isCalling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->updateList()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mStream:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I

    return p1
.end method

.method private getDeviceTypeString(Landroid/media/AudioDeviceInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Landroid/media/AudioDeviceInfo;

    .prologue
    .line 391
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    .line 393
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 417
    :pswitch_0
    const-string v1, "ETC"

    :goto_0
    return-object v1

    .line 398
    :pswitch_1
    const-string v1, "Phone"

    goto :goto_0

    .line 401
    :pswitch_2
    const-string v1, "BT"

    goto :goto_0

    .line 403
    :pswitch_3
    const-string v1, "Mirroring"

    goto :goto_0

    .line 406
    :pswitch_4
    const-string v1, "HDMI"

    goto :goto_0

    .line 408
    :pswitch_5
    const-string v1, "DOCK"

    goto :goto_0

    .line 411
    :pswitch_6
    const-string v1, "USB"

    goto :goto_0

    .line 415
    :pswitch_7
    const-string v1, "LINE"

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getIconResource(Landroid/media/AudioDeviceInfo;ZZ)I
    .locals 2
    .param p1, "info"    # Landroid/media/AudioDeviceInfo;
    .param p2, "calling"    # Z
    .param p3, "wfdConnected"    # Z

    .prologue
    const v1, 0x7f0203ae

    .line 355
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    .line 357
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 386
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 361
    :pswitch_1
    if-eqz p2, :cond_0

    const v1, 0x7f0203af

    goto :goto_0

    .line 364
    :pswitch_2
    const v1, 0x7f0203a8

    goto :goto_0

    .line 367
    :pswitch_3
    const v1, 0x7f0203bc

    goto :goto_0

    .line 369
    :pswitch_4
    if-eqz p3, :cond_1

    .line 370
    const v1, 0x7f0203c0

    goto :goto_0

    .line 372
    :cond_1
    const v1, 0x7f020394

    goto :goto_0

    .line 375
    :pswitch_5
    const v1, 0x7f0203a3

    goto :goto_0

    .line 377
    :pswitch_6
    const v1, 0x7f02039b

    goto :goto_0

    .line 380
    :pswitch_7
    const v1, 0x7f0203c1

    goto :goto_0

    .line 384
    :pswitch_8
    const v1, 0x7f0203ab

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getName(Landroid/media/AudioDeviceInfo;ZZ)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/media/AudioDeviceInfo;
    .param p2, "calling"    # Z
    .param p3, "wfdConnected"    # Z

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    .line 328
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_0

    .line 350
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 330
    :sswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0468

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 332
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0469

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 334
    :sswitch_2
    if-eqz p2, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0467

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mDeviceName:Ljava/lang/String;

    goto :goto_0

    .line 339
    :sswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mDeviceName:Ljava/lang/String;

    goto :goto_0

    .line 341
    :sswitch_4
    if-eqz p3, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->getWfdConnectedName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d046a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 347
    :sswitch_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d046c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 328
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0x15 -> :sswitch_4
    .end sparse-switch
.end method

.method private isCalling()Z
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioMode:I

    packed-switch v0, :pswitch_data_0

    .line 441
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 437
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateList()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v9, 0x1

    .line 188
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v10, v13}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v5

    .line 190
    .local v5, "mAudioDeviceInfo":[Landroid/media/AudioDeviceInfo;
    const-string v10, "SoundPathController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Update device list : mActiveDevice="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mActiveAddress="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    array-length v7, v5

    .line 193
    .local v7, "size":I
    const/4 v4, 0x0

    .line 194
    .local v4, "isActiveDevice":Z
    const/4 v1, 0x0

    .line 196
    .local v1, "hasWiredDevice":Z
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioDeviceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 199
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_3

    .line 200
    aget-object v10, v5, v2

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I

    if-ne v10, v11, :cond_0

    aget-object v10, v5, v2

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 201
    const/4 v4, 0x1

    .line 203
    :cond_0
    aget-object v10, v5, v2

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1

    aget-object v10, v5, v2

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    .line 205
    :cond_1
    const/4 v1, 0x1

    .line 199
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->isCalling()Z

    move-result v0

    .line 210
    .local v0, "calling":Z
    if-eqz v0, :cond_7

    const/4 v6, 0x0

    .line 211
    .local v6, "mode":I
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_b

    .line 212
    aget-object v10, v5, v2

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v10

    invoke-virtual {p0, v10, v0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->isInvalid(IZ)Z

    move-result v10

    if-nez v10, :cond_6

    .line 213
    new-instance v3, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;-><init>()V

    .line 215
    .local v3, "info":Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;
    const/4 v8, 0x0

    .line 216
    .local v8, "wfdConnected":Z
    aget-object v10, v5, v2

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v10

    const/16 v11, 0x15

    if-ne v10, v11, :cond_4

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->isWfdConnected()Z

    move-result v8

    .line 220
    :cond_4
    aget-object v10, v5, v2

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v10

    const/high16 v11, 0x20000000

    if-ne v10, v11, :cond_8

    .line 221
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0d046b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mName:Ljava/lang/String;

    .line 222
    const v10, 0x7f0203ba

    iput v10, v3, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mResId:I

    .line 229
    :goto_3
    aget-object v10, v5, v2

    iput-object v10, v3, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    .line 231
    if-eqz v4, :cond_9

    aget-object v10, v5, v2

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I

    if-ne v10, v11, :cond_9

    aget-object v10, v5, v2

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 232
    iput-boolean v9, v3, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mIsActivated:Z

    .line 233
    const-string v10, "SoundPathController"

    const-string v11, "active device #1"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_5
    :goto_4
    iget-boolean v10, v3, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mIsActivated:Z

    if-nez v10, :cond_a

    if-ne v6, v9, :cond_a

    if-eqz v1, :cond_a

    aget-object v10, v5, v2

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v10

    if-ne v10, v13, :cond_a

    .line 211
    .end local v3    # "info":Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;
    .end local v8    # "wfdConnected":Z
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v6    # "mode":I
    :cond_7
    move v6, v9

    .line 210
    goto :goto_1

    .line 225
    .restart local v3    # "info":Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;
    .restart local v6    # "mode":I
    .restart local v8    # "wfdConnected":Z
    :cond_8
    aget-object v10, v5, v2

    invoke-direct {p0, v10, v0, v8}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->getName(Landroid/media/AudioDeviceInfo;ZZ)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mName:Ljava/lang/String;

    .line 226
    aget-object v10, v5, v2

    invoke-direct {p0, v10, v0, v8}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->getIconResource(Landroid/media/AudioDeviceInfo;ZZ)I

    move-result v10

    iput v10, v3, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mResId:I

    goto :goto_3

    .line 234
    :cond_9
    if-nez v4, :cond_5

    aget-object v10, v5, v2

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I

    if-ne v10, v11, :cond_5

    .line 235
    iput-boolean v9, v3, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mIsActivated:Z

    .line 236
    const-string v10, "SoundPathController"

    const-string v11, "active device #2"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 244
    :cond_a
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioDeviceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 247
    .end local v3    # "info":Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;
    .end local v8    # "wfdConnected":Z
    :cond_b
    return-void
.end method

.method private updateStreamAndActiveDevice()V
    .locals 3

    .prologue
    .line 445
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioMode:I

    packed-switch v0, :pswitch_data_0

    .line 452
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mStream:I

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mStream:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "active_addr"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;

    .line 460
    const-string v0, "SoundPathController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAudioMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStream = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mActiveDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mActiveAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void

    .line 449
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mStream:I

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/SoundPathController$Callback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/SoundPathController$Callback;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->sendEmptyMessage(I)Z

    .line 101
    return-void
.end method

.method public connect(Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;)V
    .locals 6
    .param p1, "device"    # Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    .line 127
    .local v0, "d":Landroid/media/AudioDeviceInfo;
    const-string v1, "SoundPathController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "d.getDeviceId()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", d.getAddress()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mIsActivated:Z

    if-nez v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->APP_ID_QS:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_CHANGE_AUDIOPATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->getDeviceTypeString(Landroid/media/AudioDeviceInfo;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v2

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setDeviceToForceByUser(ILjava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 527
    const-string v2, "SoundPathController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    const-string v2, "  mActiveDevice="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 529
    const-string v2, "  mActiveAddress="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    const-string v2, "  mCallbacks.size="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 531
    const-string v2, "  Sound Path Devices:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioDeviceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;

    .line 533
    .local v0, "device":Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;
    :cond_0
    return-void
.end method

.method public getDevices()Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 110
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioDeviceListForUI:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 112
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mSAudioMgr:Landroid/media/SamsungAudioManager;

    invoke-virtual {v3}, Landroid/media/SamsungAudioManager;->getAvailableDeviceMaskForQuickSoundPath()I

    move-result v2

    .line 113
    .local v2, "mask":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioDeviceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;

    .line 114
    .local v1, "info":Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;
    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioDeviceListForUI:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v1    # "info":Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioDeviceListForUI:Ljava/util/ArrayList;

    return-object v3
.end method

.method public getWfdConnectedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 321
    :goto_0
    return-object v1

    .line 318
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, ""

    goto :goto_0
.end method

.method public isInvalid(IZ)Z
    .locals 2
    .param p1, "deviceType"    # I
    .param p2, "isCalling"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 252
    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    .line 293
    :goto_0
    :pswitch_1
    return v0

    .line 262
    :pswitch_2
    if-nez p2, :cond_0

    goto :goto_0

    .line 267
    :pswitch_3
    if-nez p2, :cond_0

    goto :goto_0

    .line 272
    :pswitch_4
    if-eqz p2, :cond_0

    move v0, v1

    .line 273
    goto :goto_0

    .line 286
    :pswitch_5
    if-eqz p2, :cond_0

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public isWfdConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 305
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 310
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 4
    .param p1, "addedDevices"    # [Landroid/media/AudioDeviceInfo;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/media/AudioDeviceCallback;->onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V

    .line 165
    const-string v1, "SoundPathController"

    const-string v2, "onAudioDevicesAdded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 167
    const-string v1, "SoundPathController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added Device is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Device Id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->updateList()V

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->sendEmptyMessage(I)Z

    .line 172
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 4
    .param p1, "removedDevices"    # [Landroid/media/AudioDeviceInfo;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/media/AudioDeviceCallback;->onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V

    .line 177
    const-string v1, "SoundPathController"

    const-string v2, "onAudioDevicesRemoved"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 179
    const-string v1, "SoundPathController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed Device is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Device Id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->updateList()V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->sendEmptyMessage(I)Z

    .line 184
    return-void
.end method
