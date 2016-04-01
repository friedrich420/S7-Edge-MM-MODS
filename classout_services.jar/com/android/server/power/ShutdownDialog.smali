.class public Lcom/android/server/power/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownDialog$SoundThread;,
        Lcom/android/server/power/ShutdownDialog$DrawHandler;,
        Lcom/android/server/power/ShutdownDialog$ImageLoadThread;,
        Lcom/android/server/power/ShutdownDialog$RunningCheckable;,
        Lcom/android/server/power/ShutdownDialog$StateDrawing;,
        Lcom/android/server/power/ShutdownDialog$StatePrepare;,
        Lcom/android/server/power/ShutdownDialog$DrawState;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x3

.field private static final MSG_LOAD_FINISH:I = -0x1

.field private static final MSG_UPDATE_DELAY:I = 0x64

.field private static final MSG_UPDATE_FRAME:I = 0x0

.field private static final PATH_B2BSHUTDOWNPATH:Ljava/lang/String; = "//data/b2b/ShutdownFileInfo.txt"

.field private static final PATH_BOOTSAMSUNG:Ljava/lang/String; = "//system/media/bootsamsung.qmg"

.field private static final PATH_BOOTSAMSUNG_LOOP:Ljava/lang/String; = "//system/media/bootsamsungloop.qmg"

.field private static final PATH_COVER_POSTFIX:Ljava/lang/String; = ".cover"

.field private static final PATH_MINI_COVER_POSTFIX:Ljava/lang/String; = ".mini"

.field private static final PATH_OLD_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_PST_IMG:Ljava/lang/String; = "//system/PST/shutdown.qmg"

.field private static final PATH_SHUTDOWNSOUND_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/PowerOff.ogg"

.field private static final PATH_SHUTDOWN_AFTER:Ljava/lang/String; = "//system/media/shutdownafter.qmg"

.field private static final PATH_SHUTDOWN_BEFORE:Ljava/lang/String; = "//system/media/shutdownbefore.qmg"

.field private static final PATH_SHUTDOWN_LOOP:Ljava/lang/String; = "//system/media/shutdownloop.qmg"

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private b2bAnimPath:Ljava/lang/String;

.field private b2bSoundPath:Ljava/lang/String;

.field private final bitmapQ:[Landroid/graphics/Bitmap;

.field private bitmapQFront:I

.field private bitmapQRear:I

.field private final coverQmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field private doLoopAnim:Z

.field private final drawBufferLock:Ljava/lang/Object;

.field private final logHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

.field private mImageView:Landroid/widget/ImageView;

.field private final mLogString:Ljava/lang/StringBuffer;

.field private mLogView:Landroid/widget/TextView;

.field private mState:Lcom/android/server/power/ShutdownDialog$DrawState;

.field private final mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

.field private final mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

.field private mp:Landroid/media/MediaPlayer;

.field private final qmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field private shutdownSoundPath:Ljava/lang/String;

.field private silentShutdown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;I)V

    .line 156
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 118
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, p0, bitmapQ:[Landroid/graphics/Bitmap;

    .line 119
    iput v5, p0, bitmapQFront:I

    .line 120
    iput v5, p0, bitmapQRear:I

    .line 121
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, drawBufferLock:Ljava/lang/Object;

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, qmgList:Ljava/util/List;

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, coverQmgList:Ljava/util/List;

    .line 130
    iput-boolean v5, p0, silentShutdown:Z

    .line 136
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, mLogString:Ljava/lang/StringBuffer;

    .line 137
    new-instance v2, Lcom/android/server/power/ShutdownDialog$1;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownDialog$1;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v2, p0, logHandler:Landroid/os/Handler;

    .line 150
    new-instance v2, Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v2, p0, mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    .line 151
    new-instance v2, Lcom/android/server/power/ShutdownDialog$StateDrawing;

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v2, p0, mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    .line 152
    iget-object v2, p0, mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    iput-object v2, p0, mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    .line 160
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 164
    new-instance v2, Ljava/io/File;

    const-string v3, "//data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 165
    invoke-direct {p0}, getBtoBShutdownPath()V

    .line 166
    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "B2B sound : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, b2bSoundPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "B2B img : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, b2bAnimPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_8b
    invoke-virtual {p0, v5}, setCancelable(Z)V

    .line 174
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 175
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x680588

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 182
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 183
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.cocktailbar"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 186
    .local v0, "hasCocktail":Z
    if-eqz v0, :cond_c9

    .line 187
    const/16 v2, 0x8ae

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 191
    :goto_ba
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 193
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 194
    return-void

    .line 189
    :cond_c9
    const/16 v2, 0x7e5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_ba
.end method

.method static synthetic access$000(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/StringBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget-object v0, p0, mLogString:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget-object v0, p0, mLogView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, prepareSound(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget-object v0, p0, mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Lcom/android/server/power/ShutdownDialog$DrawState;

    .prologue
    .line 92
    iput-object p1, p0, mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget-object v0, p0, mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/ShutdownDialog;Lcom/samsung/android/cover/CoverManager;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    .line 92
    invoke-direct {p0, p1}, getSCoverState(Lcom/samsung/android/cover/CoverManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget-object v0, p0, coverQmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/ShutdownDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget-boolean v0, p0, doLoopAnim:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget v0, p0, bitmapQFront:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/power/ShutdownDialog;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, bitmapQFront:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget-object v0, p0, drawBufferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget v0, p0, bitmapQRear:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/power/ShutdownDialog;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, bitmapQRear:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget-object v0, p0, mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget-object v0, p0, mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget-object v0, p0, qmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget-object v0, p0, bitmapQ:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    invoke-direct {p0}, getSystemVolume()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget-object v0, p0, shutdownSoundPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, getShutdownSoundPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/ShutdownDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 92
    iget-boolean v0, p0, silentShutdown:Z

    return v0
.end method

.method private addToPlaylistIfExists(Ljava/lang/String;)Z
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 718
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 719
    iget-object v4, p0, qmgList:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/LibQmg;

    invoke-direct {v5, p1}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 721
    .local v0, "cm":Lcom/samsung/android/cover/CoverManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 722
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, getCoverType(Lcom/samsung/android/cover/CoverManager;)I

    move-result v1

    .line 723
    .local v1, "coverType":I
    const/16 v4, 0x8

    if-ne v1, v4, :cond_4f

    .line 724
    const-string v4, "ShutdownDialog"

    const-string v5, "Clear cover"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_30
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 731
    iget-object v4, p0, coverQmgList:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/LibQmg;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    :goto_4d
    const/4 v2, 0x1

    .line 739
    .end local v0    # "cm":Lcom/samsung/android/cover/CoverManager;
    .end local v1    # "coverType":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .local v2, "rtn":Z
    :goto_4e
    return v2

    .line 725
    .end local v2    # "rtn":Z
    .restart local v0    # "cm":Lcom/samsung/android/cover/CoverManager;
    .restart local v1    # "coverType":I
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_4f
    const/4 v4, 0x6

    if-ne v1, v4, :cond_58

    .line 726
    const-string v4, ".mini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 728
    :cond_58
    const-string v4, ".cover"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 733
    :cond_5e
    iget-object v4, p0, coverQmgList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 737
    .end local v0    # "cm":Lcom/samsung/android/cover/CoverManager;
    .end local v1    # "coverType":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_65
    const/4 v2, 0x0

    .restart local v2    # "rtn":Z
    goto :goto_4e
.end method

.method private createBootupQmgPlayList()V
    .registers 2

    .prologue
    .line 743
    iget-object v0, p0, qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 744
    const-string v0, "//system/media/bootsamsung.qmg"

    invoke-direct {p0, v0}, addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 746
    return-void
.end method

.method private createShutdownQmgPlayList()V
    .registers 5

    .prologue
    .line 749
    iget-object v2, p0, qmgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 750
    iget-object v2, p0, coverQmgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 751
    const/4 v1, 0x0

    .line 752
    .local v1, "imei_mps_code":Ljava/lang/String;
    invoke-direct {p0}, getChameleonCode()Ljava/lang/String;

    move-result-object v1

    .line 753
    if-eqz v1, :cond_2d

    .line 754
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "//system/media/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_shutdown.qmg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 756
    .local v0, "chameleonPath":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 791
    .end local v0    # "chameleonPath":Ljava/lang/StringBuffer;
    :cond_2c
    :goto_2c
    return-void

    .line 762
    :cond_2d
    const-string v2, "//system/PST/shutdown.qmg"

    invoke-direct {p0, v2}, addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 766
    const-string v2, "//system/csc_contents/shutdown.qmg"

    invoke-direct {p0, v2}, addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 772
    iget-object v2, p0, b2bAnimPath:Ljava/lang/String;

    if-eqz v2, :cond_49

    iget-object v2, p0, b2bAnimPath:Ljava/lang/String;

    invoke-direct {p0, v2}, addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 778
    :cond_49
    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {p0, v2}, addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 781
    new-instance v2, Ljava/io/File;

    const-string v3, "//system/media/shutdown.qmg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 783
    const-string v2, "//system/media/shutdownbefore.qmg"

    invoke-direct {p0, v2}, addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 784
    const-string v2, "//system/media/shutdown.qmg"

    invoke-direct {p0, v2}, addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 785
    const-string v2, "//system/media/shutdownafter.qmg"

    invoke-direct {p0, v2}, addToPlaylistIfExists(Ljava/lang/String;)Z

    goto :goto_2c

    .line 788
    :cond_6e
    const-string v2, "//system/media/shutdownloop.qmg"

    invoke-direct {p0, v2}, addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_2c
.end method

.method private getBtoBShutdownPath()V
    .registers 6

    .prologue
    .line 853
    const/4 v1, 0x0

    .line 855
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "//data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_26
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_35
    .catchall {:try_start_1 .. :try_end_d} :catchall_44

    .line 856
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, b2bAnimPath:Ljava/lang/String;

    .line 857
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, b2bSoundPath:Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_19} :catch_56
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_53
    .catchall {:try_start_d .. :try_end_19} :catchall_50

    .line 863
    if-eqz v2, :cond_59

    .line 865
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_20

    move-object v1, v2

    .line 871
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_1f
    :goto_1f
    return-void

    .line 866
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_20
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 868
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_1f

    .line 858
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_26
    move-exception v0

    .line 859
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_27
    :try_start_27
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_44

    .line 863
    if-eqz v1, :cond_1f

    .line 865
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_1f

    .line 866
    :catch_30
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f

    .line 860
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_35
    move-exception v0

    .line 861
    .local v0, "e":Ljava/io/IOException;
    :goto_36
    :try_start_36
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_44

    .line 863
    if-eqz v1, :cond_1f

    .line 865
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_1f

    .line 866
    :catch_3f
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f

    .line 863
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_44
    move-exception v3

    :goto_45
    if-eqz v1, :cond_4a

    .line 865
    :try_start_47
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 868
    :cond_4a
    :goto_4a
    throw v3

    .line 866
    :catch_4b
    move-exception v0

    .line 867
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a

    .line 863
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_50
    move-exception v3

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_45

    .line 860
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_53
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_36

    .line 858
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_56
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_27

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_59
    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_1f
.end method

.method private getChameleonCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 665
    new-instance v1, Ljava/io/File;

    const-string v2, "/carrier/chameleon.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 666
    const/4 v0, 0x0

    .line 670
    :goto_e
    return-object v0

    .line 668
    :cond_f
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "ShutdownDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@Power off sound CHAMELEON is activated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private getCoverType(Lcom/samsung/android/cover/CoverManager;)I
    .registers 5
    .param p1, "cm"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    .line 462
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 463
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-nez v0, :cond_10

    .line 464
    const-string v1, "ShutdownDialog"

    const-string/jumbo v2, "state is null "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v1, -0x1

    .line 467
    :goto_f
    return v1

    :cond_10
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    goto :goto_f
.end method

.method private getSCoverState(Lcom/samsung/android/cover/CoverManager;)Z
    .registers 5
    .param p1, "cm"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    .line 453
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 454
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-nez v0, :cond_10

    .line 455
    const-string v1, "ShutdownDialog"

    const-string/jumbo v2, "state is null "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v1, 0x1

    .line 458
    :goto_f
    return v1

    :cond_10
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    goto :goto_f
.end method

.method private getShutdownSoundPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "soundPath"    # Ljava/lang/String;

    .prologue
    .line 674
    if-eqz p1, :cond_e

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 713
    .end local p1    # "soundPath":Ljava/lang/String;
    :goto_d
    return-object p1

    .line 680
    .restart local p1    # "soundPath":Ljava/lang/String;
    :cond_e
    invoke-direct {p0}, getChameleonCode()Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, "salesCode":Ljava/lang/String;
    if-eqz v3, :cond_39

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/system/media/audio/ui/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/PowerOff.ogg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 684
    .local v0, "chameleonPath":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    .line 691
    .end local v0    # "chameleonPath":Ljava/lang/StringBuilder;
    :cond_39
    new-instance v4, Ljava/io/File;

    const-string v5, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 692
    const-string p1, "//system/csc_contents/PowerOff.ogg"

    goto :goto_d

    .line 695
    :cond_49
    const-string v2, "//system/media/audio/ui/PowerOff.wav"

    .line 696
    .local v2, "poweroff_wav":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 697
    const-string p1, "//system/media/audio/ui/PowerOff.wav"

    goto :goto_d

    .line 702
    :cond_5b
    iget-object v4, p0, b2bSoundPath:Ljava/lang/String;

    if-eqz v4, :cond_6f

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, b2bSoundPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 703
    iget-object p1, p0, b2bSoundPath:Ljava/lang/String;

    goto :goto_d

    .line 708
    :cond_6f
    const-string v1, "//system/media/audio/ui/PowerOff.ogg"

    .line 709
    .local v1, "poweroff_ogg":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 710
    const-string p1, "//system/media/audio/ui/PowerOff.ogg"

    goto :goto_d

    .line 713
    :cond_81
    const/4 p1, 0x0

    goto :goto_d
.end method

.method private getSystemVolume()I
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 368
    const/16 v1, -0x270f

    .line 369
    .local v1, "systemVolume":I
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 370
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_1b

    .line 371
    const-string/jumbo v2, "shutdown"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 374
    :cond_1b
    const-string v2, "ShutdownDialog"

    const-string v3, "!@systemVol:%d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return v1
.end method

.method private prepareSound(Ljava/lang/String;)V
    .registers 11
    .param p1, "soundPath"    # Ljava/lang/String;

    .prologue
    .line 380
    const/4 v2, 0x0

    .line 381
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, "f":Ljava/io/File;
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_b} :catch_64
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_b} :catch_7c
    .catchall {:try_start_6 .. :try_end_b} :catchall_94

    .line 384
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .line 385
    .local v4, "tempMediaPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 386
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 388
    const-string/jumbo v6, "situation=8;device=0"

    invoke-static {v6}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 390
    .local v5, "vol":F
    invoke-virtual {v4, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 391
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 392
    new-instance v6, Lcom/android/server/power/ShutdownDialog$2;

    invoke-direct {v6, p0}, Lcom/android/server/power/ShutdownDialog$2;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 397
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 398
    iput-object v4, p0, mp:Landroid/media/MediaPlayer;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_3a} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_3a} :catch_ab
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_3a} :catch_a8
    .catchall {:try_start_b .. :try_end_3a} :catchall_a5

    .line 407
    if-eqz v3, :cond_3f

    .line 408
    :try_start_3c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_41

    :cond_3f
    move-object v2, v3

    .line 414
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "tempMediaPlayer":Landroid/media/MediaPlayer;
    .end local v5    # "vol":F
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_40
    :goto_40
    return-void

    .line 410
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "tempMediaPlayer":Landroid/media/MediaPlayer;
    .restart local v5    # "vol":F
    :catch_41
    move-exception v0

    .line 411
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "ShutdownDialog"

    const-string/jumbo v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 413
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_40

    .line 399
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "tempMediaPlayer":Landroid/media/MediaPlayer;
    .end local v5    # "vol":F
    :catch_4c
    move-exception v0

    .line 400
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4d
    :try_start_4d
    const-string v6, "ShutdownDialog"

    const-string v7, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_94

    .line 407
    if-eqz v2, :cond_40

    .line 408
    :try_start_56
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_40

    .line 410
    :catch_5a
    move-exception v0

    .line 411
    const-string v6, "ShutdownDialog"

    const-string/jumbo v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 401
    .end local v0    # "e":Ljava/io/IOException;
    :catch_64
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_65
    :try_start_65
    const-string v6, "ShutdownDialog"

    const-string v7, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_94

    .line 407
    if-eqz v2, :cond_40

    .line 408
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_40

    .line 410
    :catch_72
    move-exception v0

    .line 411
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "ShutdownDialog"

    const-string/jumbo v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 403
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7c
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_7d
    :try_start_7d
    const-string v6, "ShutdownDialog"

    const-string v7, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_94

    .line 407
    if-eqz v2, :cond_40

    .line 408
    :try_start_86
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_40

    .line 410
    :catch_8a
    move-exception v0

    .line 411
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "ShutdownDialog"

    const-string/jumbo v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 406
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_94
    move-exception v6

    .line 407
    :goto_95
    if-eqz v2, :cond_9a

    .line 408
    :try_start_97
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    .line 412
    :cond_9a
    :goto_9a
    throw v6

    .line 410
    :catch_9b
    move-exception v0

    .line 411
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "ShutdownDialog"

    const-string/jumbo v8, "sound file.close"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9a

    .line 406
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_a5
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_95

    .line 403
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_a8
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_7d

    .line 401
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_ab
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_65

    .line 399
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_ae
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4d
.end method


# virtual methods
.method public appendTextLog(Ljava/lang/String;)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 817
    iget-object v2, p0, logHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 818
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 819
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ShutdownDialog"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 821
    iget-object v2, p0, logHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 822
    return-void
.end method

.method public drawState()I
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkStart()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x12c

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public existAnim()Z
    .registers 2

    .prologue
    .line 826
    invoke-direct {p0}, createShutdownQmgPlayList()V

    .line 827
    iget-object v0, p0, qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasSound()Z
    .registers 4

    .prologue
    .line 812
    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "has sound for power off : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    # getter for: Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z
    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->access$2900(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    # getter for: Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->access$2900(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 198
    const-string v7, "ShutdownDialog"

    const-string/jumbo v8, "onCreate"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 202
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 203
    .local v2, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    invoke-direct {v3, v11, v11, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 207
    .local v3, "layoutparams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    const/high16 v7, -0x1000000

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 211
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, mImageView:Landroid/widget/ImageView;

    .line 214
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 215
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v7, v13, :cond_85

    .line 216
    const-string/jumbo v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    .line 217
    .local v6, "wm":Landroid/view/IWindowManager;
    if-eqz v6, :cond_85

    .line 218
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 220
    .local v5, "size":Landroid/graphics/Point;
    const/4 v7, 0x0

    :try_start_4e
    invoke-interface {v6, v7, v5}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_b5

    .line 224
    :goto_51
    const-string v7, "ShutdownDialog"

    const-string v8, "InitialDisplaySize : %d %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v5, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    iget v10, v5, Landroid/graphics/Point;->y:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget v7, v5, Landroid/graphics/Point;->x:I

    if-gtz v7, :cond_77

    iget v7, v5, Landroid/graphics/Point;->y:I

    if-lez v7, :cond_85

    .line 226
    :cond_77
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v8, v5, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 227
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, mImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "size":Landroid/graphics/Point;
    .end local v6    # "wm":Landroid/view/IWindowManager;
    :cond_85
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, mLogView:Landroid/widget/TextView;

    .line 235
    iget-object v7, p0, mLogView:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v7, p0, mLogView:Landroid/widget/TextView;

    const v8, -0xff0001

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    iget-object v7, p0, mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 242
    iget-object v7, p0, mLogView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 244
    new-instance v7, Lcom/android/server/power/ShutdownDialog$DrawHandler;

    invoke-direct {v7, p0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v7, p0, mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    .line 245
    invoke-virtual {p0, v2}, setContentView(Landroid/view/View;)V

    .line 246
    return-void

    .line 221
    .restart local v5    # "size":Landroid/graphics/Point;
    .restart local v6    # "wm":Landroid/view/IWindowManager;
    :catch_b5
    move-exception v1

    .line 222
    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "ShutdownDialog"

    const-string/jumbo v8, "getInitialDisplaySize error"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 251
    iget-object v0, p0, mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    .line 252
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 257
    return-void
.end method

.method public prepareShutdown()V
    .registers 3

    .prologue
    .line 831
    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, shutdownSoundPath:Ljava/lang/String;

    .line 833
    invoke-direct {p0}, createShutdownQmgPlayList()V

    .line 834
    const/4 v0, 0x1

    iput-boolean v0, p0, doLoopAnim:Z

    .line 835
    iget-object v0, p0, mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare()V

    .line 836
    return-void
.end method

.method public setSilentShutdown(Z)V
    .registers 2
    .param p1, "v"    # Z

    .prologue
    .line 839
    iput-boolean p1, p0, silentShutdown:Z

    .line 840
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 849
    iget-object v0, p0, mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    .line 850
    return-void
.end method

.method public waitForAnimEnd(I)Z
    .registers 12
    .param p1, "timeout"    # I

    .prologue
    .line 794
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v8, v3

    add-long v4, v6, v8

    .line 795
    .local v4, "endTime":J
    :goto_9
    iget-object v3, p0, mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v3}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkRunning()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 796
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 797
    .local v0, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_26

    .line 798
    const-string v3, "ShutdownDialog"

    const-string v6, "!@Animation finish wait timed out"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .end local v0    # "delay":J
    :cond_24
    const/4 v3, 0x1

    return v3

    .line 801
    .restart local v0    # "delay":J
    :cond_26
    const-string v3, "ShutdownDialog"

    const-string/jumbo v6, "wait for finish : sleep 100ms"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-wide/16 v6, 0x64

    :try_start_30
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_9

    .line 804
    :catch_34
    move-exception v2

    .line 805
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "ShutdownDialog"

    const-string v6, "InterruptedException"

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
