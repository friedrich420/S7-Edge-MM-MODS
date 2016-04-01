.class final Lcom/android/server/input/InputManagerService$ControlWakeKey;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ControlWakeKey"
.end annotation


# instance fields
.field private final WAKEKEY_TAG:Ljava/lang/String;

.field private mDefaultWakeKey:Ljava/lang/String;

.field private mWakeKeyFileName:Ljava/lang/String;

.field private mWakeKeyFilePath:Ljava/lang/String;

.field private mWakeKeyRefCount:Ljava/util/HashMap;
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

.field private mfosWakeKey:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3608
    iput-object v3, p0, mWakeKeyRefCount:Ljava/util/HashMap;

    .line 3609
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, mWakeKeyFilePath:Ljava/lang/String;

    .line 3610
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, mWakeKeyFileName:Ljava/lang/String;

    .line 3611
    const-string v2, "102,116,172"

    iput-object v2, p0, mDefaultWakeKey:Ljava/lang/String;

    .line 3613
    const-string v2, "WAKEKEY"

    iput-object v2, p0, WAKEKEY_TAG:Ljava/lang/String;

    .line 3616
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, mWakeKeyRefCount:Ljava/util/HashMap;

    .line 3617
    iput-object v3, p0, mfosWakeKey:Ljava/io/FileOutputStream;

    .line 3619
    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3620
    .local v1, "platform":Ljava/lang/String;
    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3622
    .local v0, "buildcarrier":Ljava/lang/String;
    const-string/jumbo v2, "msm7k"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string/jumbo v2, "msm7627a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 3624
    :cond_40
    const-string v2, "/sys/devices/platform/gpio-event/"

    iput-object v2, p0, mWakeKeyFilePath:Ljava/lang/String;

    .line 3625
    const-string v2, "0"

    iput-object v2, p0, mDefaultWakeKey:Ljava/lang/String;

    .line 3634
    :cond_48
    :goto_48
    if-eqz v0, :cond_64

    .line 3635
    const-string/jumbo v2, "ks023g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string/jumbo v2, "ks02lte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 3636
    :cond_5c
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, mWakeKeyFilePath:Ljava/lang/String;

    .line 3637
    const-string v2, "116"

    iput-object v2, p0, mDefaultWakeKey:Ljava/lang/String;

    .line 3641
    :cond_64
    const/4 v2, 0x1

    iget-object v3, p0, mDefaultWakeKey:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, makeWakeKeyRefCount(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 3642
    const-string v2, "WAKEKEY"

    const-string/jumbo v3, "makeWakeKeyRefCount in constructor returns false"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3646
    :goto_75
    return-void

    .line 3626
    :cond_76
    const-string/jumbo v2, "montblanc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 3627
    const-string v2, "/sys/devices/platform/gpio-keys.0/"

    iput-object v2, p0, mWakeKeyFilePath:Ljava/lang/String;

    .line 3628
    const-string v2, "172"

    iput-object v2, p0, mDefaultWakeKey:Ljava/lang/String;

    goto :goto_48

    .line 3629
    :cond_88
    const-string/jumbo v2, "msm8960"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 3630
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, mWakeKeyFilePath:Ljava/lang/String;

    .line 3631
    const-string v2, "172"

    iput-object v2, p0, mDefaultWakeKey:Ljava/lang/String;

    goto :goto_48

    .line 3645
    :cond_9a
    invoke-direct {p0}, makeWakeKeyString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, writeWakeKeyString(Ljava/lang/String;)V

    goto :goto_75
.end method

.method private makeWakeKeyRefCount(ZLjava/lang/String;)Z
    .registers 13
    .param p1, "isPut"    # Z
    .param p2, "keycodes"    # Ljava/lang/String;

    .prologue
    .line 3668
    const-string v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3670
    .local v6, "splitted_keycodes":[Ljava/lang/String;
    if-eqz p1, :cond_5a

    .line 3671
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_b
    if-ge v2, v4, :cond_ba

    aget-object v5, v0, v2

    .line 3672
    .local v5, "splitted_keycode":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3674
    .local v3, "keycode":Ljava/lang/String;
    iget-object v7, p0, mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 3675
    iget-object v7, p0, mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    .line 3679
    .local v1, "count":I
    :goto_29
    iget-object v7, p0, mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3680
    const-string v7, "WAKEKEY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mWakeKeyRefCount("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is increased: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3677
    .end local v1    # "count":I
    :cond_58
    const/4 v1, 0x1

    .restart local v1    # "count":I
    goto :goto_29

    .line 3683
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "count":I
    .end local v2    # "i$":I
    .end local v3    # "keycode":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "splitted_keycode":Ljava/lang/String;
    :cond_5a
    move-object v0, v6

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_5d
    if-ge v2, v4, :cond_ba

    aget-object v5, v0, v2

    .line 3684
    .restart local v5    # "splitted_keycode":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3685
    .restart local v3    # "keycode":Ljava/lang/String;
    iget-object v7, p0, mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 3686
    iget-object v7, p0, mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 3687
    .restart local v1    # "count":I
    if-gtz v1, :cond_8d

    .line 3688
    iget-object v7, p0, mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3689
    const-string v7, "WAKEKEY"

    const-string/jumbo v8, "keycode is removed"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    .end local v1    # "count":I
    :cond_8a
    :goto_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 3691
    .restart local v1    # "count":I
    :cond_8d
    iget-object v7, p0, mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3692
    const-string v7, "WAKEKEY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mWakeKeyRefCount("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is decreased: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 3697
    .end local v1    # "count":I
    .end local v3    # "keycode":Ljava/lang/String;
    .end local v5    # "splitted_keycode":Ljava/lang/String;
    :cond_ba
    const/4 v7, 0x1

    return v7
.end method

.method private makeWakeKeyString()Ljava/lang/String;
    .registers 10

    .prologue
    .line 3701
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3702
    .local v1, "buff":Ljava/lang/StringBuffer;
    iget-object v6, p0, mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_61

    .line 3703
    iget-object v6, p0, mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 3704
    .local v4, "keycodes":[Ljava/lang/String;
    iget-object v6, p0, mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3705
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_21
    if-ge v2, v5, :cond_31

    aget-object v3, v0, v2

    .line 3706
    .local v3, "keycode":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3705
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 3708
    .end local v3    # "keycode":Ljava/lang/String;
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 3709
    const-string v6, "WAKEKEY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "keycodes in makeWakeKeyString is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "keycodes":[Ljava/lang/String;
    .end local v5    # "len$":I
    :goto_57
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v6

    .line 3711
    :cond_61
    const-string v6, "WAKEKEY"

    const-string/jumbo v7, "mWakeKeyRefCount is empty"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method

.method private writeWakeKeyString(Ljava/lang/String;)V
    .registers 6
    .param p1, "keycodes"    # Ljava/lang/String;

    .prologue
    .line 3718
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, mWakeKeyFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mWakeKeyFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3719
    .local v1, "wakekeyfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 3721
    :try_start_20
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 3722
    const-string v2, "WAKEKEY"

    const-string/jumbo v3, "wakekeyfile is created"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2b} :catch_62

    .line 3730
    :cond_2b
    :goto_2b
    :try_start_2b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, mfosWakeKey:Ljava/io/FileOutputStream;

    .line 3731
    const-string v2, "WAKEKEY"

    const-string v3, "FileOutputStream is passed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_39} :catch_6f

    .line 3738
    :goto_39
    :try_start_39
    iget-object v2, p0, mfosWakeKey:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_4e

    .line 3739
    iget-object v2, p0, mfosWakeKey:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 3740
    const-string v2, "WAKEKEY"

    const-string/jumbo v3, "mfosWakeKey writing is passed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_4e} :catch_7b

    .line 3749
    :cond_4e
    :goto_4e
    :try_start_4e
    iget-object v2, p0, mfosWakeKey:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_61

    .line 3750
    iget-object v2, p0, mfosWakeKey:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3751
    const/4 v2, 0x0

    iput-object v2, p0, mfosWakeKey:Ljava/io/FileOutputStream;

    .line 3752
    const-string v2, "WAKEKEY"

    const-string v3, "closing mfosWakeKey is passed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_61} :catch_88

    .line 3758
    :cond_61
    :goto_61
    return-void

    .line 3723
    :catch_62
    move-exception v0

    .line 3724
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "WAKEKEY"

    const-string/jumbo v3, "wakekeyfile.createNewFile() is failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3725
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    .line 3732
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6f
    move-exception v0

    .line 3733
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "WAKEKEY"

    const-string v3, "FileOutputStream is failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_39

    .line 3742
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_7b
    move-exception v0

    .line 3743
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "WAKEKEY"

    const-string/jumbo v3, "mfosWakeKey writing is failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 3754
    .end local v0    # "e":Ljava/io/IOException;
    :catch_88
    move-exception v0

    .line 3755
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "WAKEKEY"

    const-string v3, "closing mfosWakeKey is failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_61
.end method


# virtual methods
.method public setWakeKeyDynamically(ZLjava/lang/String;)V
    .registers 6
    .param p1, "isPut"    # Z
    .param p2, "keycodes"    # Ljava/lang/String;

    .prologue
    .line 3649
    const-string v0, "WAKEKEY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "input keycodes is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3652
    const-string v1, "WAKEKEY"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keycodes in setWakeKeyDynamically is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_48

    const-string/jumbo v0, "null"

    :goto_3c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    :goto_47
    return-void

    .line 3652
    :cond_48
    const-string/jumbo v0, "empty"

    goto :goto_3c

    .line 3656
    :cond_4c
    iget-object v0, p0, mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 3657
    const/4 v0, 0x1

    iget-object v1, p0, mDefaultWakeKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, makeWakeKeyRefCount(ZLjava/lang/String;)Z

    .line 3660
    :cond_5a
    invoke-direct {p0, p1, p2}, makeWakeKeyRefCount(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 3661
    const-string v0, "WAKEKEY"

    const-string/jumbo v1, "makeWakeKeyRefCount in setWakeKeyDynamically returns false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 3664
    :cond_69
    invoke-direct {p0}, makeWakeKeyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, writeWakeKeyString(Ljava/lang/String;)V

    goto :goto_47
.end method
