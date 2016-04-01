.class Landroid/view/PointerIcon$HoverEffect;
.super Ljava/lang/Object;
.source "PointerIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PointerIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverEffect"
.end annotation


# instance fields
.field private mHoverSound:Landroid/media/SoundPool;

.field private mSoundId:I

.field private final soundURIs:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1395
    const-string v0, "/media/audio/ui/HoverPointer.ogg"

    iput-object v0, p0, soundURIs:Ljava/lang/String;

    .line 1398
    const/4 v0, -0x1

    iput v0, p0, mSoundId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/PointerIcon$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/view/PointerIcon$1;

    .prologue
    .line 1394
    invoke-direct {p0}, <init>()V

    return-void
.end method


# virtual methods
.method playSound(I)V
    .registers 11
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 1401
    iget-object v0, p0, mHoverSound:Landroid/media/SoundPool;

    if-nez v0, :cond_f

    .line 1402
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v4, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, mHoverSound:Landroid/media/SoundPool;

    .line 1405
    :cond_f
    iget v0, p0, mSoundId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/HoverPointer.ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1407
    .local v8, "soundPath":Ljava/lang/String;
    iget-object v0, p0, mHoverSound:Landroid/media/SoundPool;

    invoke-virtual {v0, v8, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, mSoundId:I

    .line 1410
    .end local v8    # "soundPath":Ljava/lang/String;
    :cond_33
    iget-object v0, p0, mHoverSound:Landroid/media/SoundPool;

    iget v1, p0, mSoundId:I

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 1411
    .local v7, "ret":I
    return-void
.end method
