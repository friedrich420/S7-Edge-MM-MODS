.class public Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;
.super Ljava/lang/Object;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenshotCaptureSound"
.end annotation


# instance fields
.field private DEBUG:Z

.field private final NUM_MEDIA_SOUND_STREAMS:I

.field public final SHUTTER_CLICK:I

.field private final SOUND_FILES:[Ljava/lang/String;

.field private final SOUND_NOT_LOADED:I

.field private final TAG:Ljava/lang/String;

.field private mSoundIdToPlay:I

.field private mSoundIds:[I

.field private mSoundPool:Landroid/media/SoundPool;

.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SmartClipView;)V
    .registers 8

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 570
    iput-object p1, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput v4, p0, NUM_MEDIA_SOUND_STREAMS:I

    .line 555
    iput-boolean v3, p0, DEBUG:Z

    .line 561
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "/system/media/audio/ui/camera_click.ogg"

    aput-object v2, v1, v3

    iput-object v1, p0, SOUND_FILES:[Ljava/lang/String;

    .line 565
    const-string v1, "SpenScreenshotCaptureSound"

    iput-object v1, p0, TAG:Ljava/lang/String;

    .line 566
    iput v5, p0, SOUND_NOT_LOADED:I

    .line 568
    iput v3, p0, SHUTTER_CLICK:I

    .line 571
    new-instance v1, Landroid/media/SoundPool;

    invoke-direct {v1, v4, v4, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, mSoundPool:Landroid/media/SoundPool;

    .line 573
    iget-object v1, p0, mSoundPool:Landroid/media/SoundPool;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 574
    iget-object v1, p0, SOUND_FILES:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, mSoundIds:[I

    .line 575
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    iget-object v1, p0, mSoundIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3d

    .line 576
    iget-object v1, p0, mSoundIds:[I

    aput v5, v1, v0

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 578
    :cond_3d
    iput v5, p0, mSoundIdToPlay:I

    .line 579
    return-void
.end method


# virtual methods
.method public declared-synchronized load(I)V
    .registers 6
    .param p1, "soundName"    # I

    .prologue
    .line 582
    monitor-enter p0

    if-ltz p1, :cond_8

    :try_start_3
    iget-object v0, p0, SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_24

    .line 583
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_21

    .line 582
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 585
    :cond_24
    :try_start_24
    iget-object v0, p0, mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3a

    .line 586
    iget-object v0, p0, mSoundIds:[I

    iget-object v1, p0, mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, SOUND_FILES:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p1
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_21

    .line 588
    :cond_3a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized play(I)V
    .registers 10
    .param p1, "soundName"    # I

    .prologue
    .line 592
    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 593
    .local v7, "country":Ljava/lang/String;
    const-string v0, "JP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 594
    const-string/jumbo v0, "service.camera.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 595
    iget-object v0, p0, mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 604
    :goto_27
    if-ltz p1, :cond_2e

    iget-object v0, p0, SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_58

    .line 605
    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sound requested: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_47

    .line 592
    .end local v7    # "country":Ljava/lang/String;
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0

    .line 597
    .restart local v7    # "country":Ljava/lang/String;
    :cond_4a
    :try_start_4a
    iget-object v0, p0, mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    goto :goto_27

    .line 601
    :cond_51
    iget-object v0, p0, mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    goto :goto_27

    .line 607
    :cond_58
    iget-object v0, p0, mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_74

    .line 608
    iget-object v0, p0, mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, SOUND_FILES:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, mSoundIdToPlay:I

    .line 609
    iget-object v0, p0, mSoundIds:[I

    iget v1, p0, mSoundIdToPlay:I

    aput v1, v0, p1
    :try_end_72
    .catchall {:try_start_4a .. :try_end_72} :catchall_47

    .line 621
    :goto_72
    monitor-exit p0

    return-void

    .line 611
    :cond_74
    const/high16 v2, 0x3f800000    # 1.0f

    .line 612
    .local v2, "vol":F
    packed-switch p1, :pswitch_data_94

    .line 619
    :goto_79
    :try_start_79
    iget-object v0, p0, mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, mSoundIds:[I

    aget v1, v1, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_72

    .line 614
    :pswitch_88
    const-string/jumbo v0, "situation=3;device=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_92
    .catchall {:try_start_79 .. :try_end_92} :catchall_47

    move-result v2

    .line 615
    goto :goto_79

    .line 612
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_88
    .end packed-switch
.end method

.method public release()V
    .registers 2

    .prologue
    .line 624
    iget-object v0, p0, mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_c

    .line 625
    iget-object v0, p0, mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, mSoundPool:Landroid/media/SoundPool;

    .line 628
    :cond_c
    return-void
.end method
