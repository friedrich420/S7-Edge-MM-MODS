.class public Lcom/android/internal/alsa/AlsaDevicesParser;
.super Ljava/lang/Object;
.source "AlsaDevicesParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AlsaDevicesParser"

.field private static final kDevicesFilePath:Ljava/lang/String; = "/proc/asound/devices"

.field private static final kEndIndex_CardNum:I = 0x8

.field private static final kEndIndex_DeviceNum:I = 0xb

.field private static final kIndex_CardDeviceField:I = 0x5

.field private static final kStartIndex_CardNum:I = 0x6

.field private static final kStartIndex_DeviceNum:I = 0x9

.field private static final kStartIndex_Type:I = 0xe

.field private static mTokenizer:Lcom/android/internal/alsa/LineTokenizer;


# instance fields
.field private mDeviceRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHasCaptureDevices:Z

.field private mHasMIDIDevices:Z

.field private mHasPlaybackDevices:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    new-instance v0, Lcom/android/internal/alsa/LineTokenizer;

    const-string v1, " :[]-"

    invoke-direct {v0, v1}, Lcom/android/internal/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, mHasCaptureDevices:Z

    .line 46
    iput-boolean v0, p0, mHasPlaybackDevices:Z

    .line 47
    iput-boolean v0, p0, mHasMIDIDevices:Z

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDeviceRecords:Ljava/util/ArrayList;

    .line 189
    return-void
.end method

.method static synthetic access$000()Lcom/android/internal/alsa/LineTokenizer;
    .registers 1

    .prologue
    .line 30
    sget-object v0, mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/alsa/AlsaDevicesParser;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, mHasMIDIDevices:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/alsa/AlsaDevicesParser;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, mHasCaptureDevices:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/alsa/AlsaDevicesParser;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, mHasPlaybackDevices:Z

    return p1
.end method

.method private isLineDeviceRecord(Ljava/lang/String;)Z
    .registers 4
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public Log(Ljava/lang/String;)V
    .registers 2
    .param p1, "heading"    # Ljava/lang/String;

    .prologue
    .line 286
    return-void
.end method

.method public getDefaultDeviceNum(I)I
    .registers 3
    .param p1, "card"    # I

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public hasCaptureDevices()Z
    .registers 2

    .prologue
    .line 218
    iget-boolean v0, p0, mHasCaptureDevices:Z

    return v0
.end method

.method public hasCaptureDevices(I)Z
    .registers 5
    .param p1, "card"    # I

    .prologue
    .line 222
    iget-object v2, p0, mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    .line 223
    .local v0, "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v2, p1, :cond_6

    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    if-nez v2, :cond_6

    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    if-nez v2, :cond_6

    .line 226
    const/4 v2, 0x1

    .line 229
    .end local v0    # "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public hasMIDIDevices()Z
    .registers 2

    .prologue
    .line 233
    iget-boolean v0, p0, mHasMIDIDevices:Z

    return v0
.end method

.method public hasMIDIDevices(I)Z
    .registers 6
    .param p1, "card"    # I

    .prologue
    .line 237
    iget-object v2, p0, mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    .line 238
    .local v0, "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v2, p1, :cond_6

    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 240
    const/4 v2, 0x1

    .line 243
    .end local v0    # "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public hasPlaybackDevices()Z
    .registers 2

    .prologue
    .line 203
    iget-boolean v0, p0, mHasPlaybackDevices:Z

    return v0
.end method

.method public hasPlaybackDevices(I)Z
    .registers 6
    .param p1, "card"    # I

    .prologue
    const/4 v2, 0x1

    .line 207
    iget-object v3, p0, mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    .line 208
    .local v0, "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    iget v3, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v3, p1, :cond_7

    iget v3, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    if-nez v3, :cond_7

    iget v3, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    if-ne v3, v2, :cond_7

    .line 214
    .end local v0    # "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public scan()V
    .registers 8

    .prologue
    .line 254
    iget-object v6, p0, mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 256
    new-instance v2, Ljava/io/File;

    const-string v6, "/proc/asound/devices"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v2, "devicesFile":Ljava/io/File;
    :try_start_c
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 259
    .local v5, "reader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 260
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 261
    .local v4, "line":Ljava/lang/String;
    :cond_18
    :goto_18
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 262
    invoke-direct {p0, v4}, isLineDeviceRecord(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 263
    new-instance v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    invoke-direct {v1, p0}, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;-><init>(Lcom/android/internal/alsa/AlsaDevicesParser;)V

    .line 264
    .local v1, "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    invoke-virtual {v1, v4}, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->parse(Ljava/lang/String;)Z

    .line 265
    iget-object v6, p0, mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_31} :catch_32
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_31} :catch_3b

    goto :goto_18

    .line 269
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :catch_32
    move-exception v3

    .line 270
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 274
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_36
    return-void

    .line 268
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :cond_37
    :try_start_37
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3a} :catch_32
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_36

    .line 271
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :catch_3b
    move-exception v3

    .line 272
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36
.end method
