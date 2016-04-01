.class Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredAccessoryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    }
.end annotation


# instance fields
.field private final mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .registers 3

    .prologue
    .line 329
    iput-object p1, p0, this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 330
    invoke-direct {p0}, makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mUEventInfo:Ljava/util/List;

    .line 331
    return-void
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 369
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v6, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;>;"
    iget-object v1, p0, this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z
    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$500(Lcom/android/server/WiredAccessoryManager;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 374
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v2, "h2w"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x20

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 375
    .local v0, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 376
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_26
    :goto_26
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v2, "usb_audio"

    const/4 v3, 0x4

    const/16 v4, 0x8

    move-object v1, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 384
    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 385
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    :goto_3c
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "ch_hdmi_audio"

    move-object v1, p0

    move v3, v8

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 400
    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 401
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :goto_50
    return-object v6

    .line 378
    :cond_51
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have wired headset support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 387
    :cond_5b
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have usb audio support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 404
    :cond_65
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string/jumbo v2, "hdmi_audio"

    move-object v1, p0

    move v3, v8

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 405
    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 406
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 408
    :cond_7b
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string/jumbo v2, "hdmi"

    move-object v1, p0

    move v3, v8

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 409
    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 410
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 412
    :cond_91
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have HDMI audio support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method private updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "devPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    .line 450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, mUEventInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 451
    iget-object v2, p0, mUEventInfo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 452
    .local v1, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 454
    const-string v2, "ch_hdmi_audio"

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 455
    iget-object v2, p0, this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mExtInfoManager:Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->access$600(Lcom/android/server/WiredAccessoryManager;)Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->getHDMIInfo(I)Ljava/lang/String;

    move-result-object p2

    .line 456
    const-string/jumbo v2, "dvi_or_non_speaker_hdmi_audio"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 466
    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_3a
    :goto_3a
    return-void

    .line 459
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_3b
    const/4 v2, -0x1

    if-ne p3, v2, :cond_4f

    const/4 p3, 0x0

    .line 462
    :cond_3f
    :goto_3f
    iget-object v2, p0, this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object v3, p0, this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I
    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->access$700(Lcom/android/server/WiredAccessoryManager;)I

    move-result v3

    invoke-virtual {v1, v3, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result v3

    # invokes: Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V
    invoke-static {v2, p2, v3}, Lcom/android/server/WiredAccessoryManager;->access$800(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    goto :goto_3a

    .line 459
    :cond_4f
    const/4 p3, 0x1

    goto :goto_3f

    .line 450
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method init()V
    .registers 12

    .prologue
    .line 334
    iget-object v7, p0, this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/WiredAccessoryManager;->access$300(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 335
    :try_start_7
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "init()"

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/16 v7, 0x400

    new-array v0, v7, [C

    .line 338
    .local v0, "buffer":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    iget-object v7, p0, mUEventInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_89

    .line 339
    iget-object v7, p0, mUEventInfo:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_7b

    .line 342
    .local v6, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_start_26
    new-instance v3, Ljava/io/FileReader;

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 343
    .local v3, "file":Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v9, 0x400

    invoke-virtual {v3, v0, v7, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 344
    .local v5, "len":I
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 345
    new-instance v7, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v7, v0, v9, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 347
    .local v1, "curState":I
    if-lez v1, :cond_58

    .line 348
    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9, v1}, updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_58} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_58} :catch_7e
    .catchall {:try_start_26 .. :try_end_58} :catchall_7b

    .line 338
    .end local v1    # "curState":I
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v5    # "len":I
    :cond_58
    :goto_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 350
    :catch_5b
    move-exception v2

    .line 351
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_5c
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found while attempting to determine initial switch state"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 357
    .end local v0    # "buffer":[C
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "i":I
    .end local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catchall_7b
    move-exception v7

    monitor-exit v8
    :try_end_7d
    .catchall {:try_start_5c .. :try_end_7d} :catchall_7b

    throw v7

    .line 353
    .restart local v0    # "buffer":[C
    .restart local v4    # "i":I
    .restart local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catch_7e
    move-exception v2

    .line 354
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7f
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v7

    const-string v9, ""

    invoke-static {v7, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 357
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_89
    monitor-exit v8
    :try_end_8a
    .catchall {:try_start_7f .. :try_end_8a} :catchall_7b

    .line 362
    const/4 v4, 0x0

    :goto_8b
    iget-object v7, p0, mUEventInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_b8

    .line 363
    iget-object v7, p0, mUEventInfo:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 364
    .restart local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DEVPATH="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, startObserving(Ljava/lang/String;)V

    .line 362
    add-int/lit8 v4, v4, 0x1

    goto :goto_8b

    .line 366
    .end local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_b8
    return-void
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 424
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Headset UEVENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :try_start_1e
    const-string v4, "DEVPATH"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_23} :catch_57

    move-result-object v0

    .line 431
    .local v0, "devPath":Ljava/lang/String;
    :try_start_24
    const-string v4, "SWITCH_NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_40
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_29} :catch_57

    move-result-object v2

    .line 437
    .local v2, "name":Ljava/lang/String;
    :goto_2a
    :try_start_2a
    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_48
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_33} :catch_57

    move-result v3

    .line 441
    .local v3, "state":I
    :goto_34
    :try_start_34
    iget-object v4, p0, this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/WiredAccessoryManager;->access$300(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_3b} :catch_57

    .line 442
    :try_start_3b
    invoke-direct {p0, v0, v2, v3}, updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 443
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_54

    .line 447
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "state":I
    :goto_3f
    return-void

    .line 432
    .restart local v0    # "devPath":Ljava/lang/String;
    :catch_40
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v4, "NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_2a

    .line 438
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_48
    move-exception v1

    .line 439
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_52} :catch_57

    move-result v3

    .restart local v3    # "state":I
    goto :goto_34

    .line 443
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_54
    move-exception v4

    :try_start_55
    monitor-exit v5
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    :try_start_56
    throw v4
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_57} :catch_57

    .line 444
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "state":I
    :catch_57
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse switch state from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method
