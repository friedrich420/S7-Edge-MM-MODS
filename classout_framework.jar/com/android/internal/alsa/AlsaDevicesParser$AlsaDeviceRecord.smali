.class public Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
.super Ljava/lang/Object;
.source "AlsaDevicesParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/alsa/AlsaDevicesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlsaDeviceRecord"
.end annotation


# static fields
.field public static final kDeviceDir_Capture:I = 0x0

.field public static final kDeviceDir_Playback:I = 0x1

.field public static final kDeviceDir_Unknown:I = -0x1

.field public static final kDeviceType_Audio:I = 0x0

.field public static final kDeviceType_Control:I = 0x1

.field public static final kDeviceType_MIDI:I = 0x2

.field public static final kDeviceType_Unknown:I = -0x1


# instance fields
.field mCardNum:I

.field mDeviceDir:I

.field mDeviceNum:I

.field mDeviceType:I

.field final synthetic this$0:Lcom/android/internal/alsa/AlsaDevicesParser;


# direct methods
.method public constructor <init>(Lcom/android/internal/alsa/AlsaDevicesParser;)V
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 64
    iput-object p1, p0, this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, mCardNum:I

    .line 60
    iput v0, p0, mDeviceNum:I

    .line 61
    iput v0, p0, mDeviceType:I

    .line 62
    iput v0, p0, mDeviceDir:I

    .line 64
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Z
    .registers 16
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v4, 0x0

    .line 74
    .local v4, "kToken_LineNum":I
    const/4 v2, 0x1

    .line 75
    .local v2, "kToken_CardNum":I
    const/4 v3, 0x2

    .line 76
    .local v3, "kToken_DeviceNum":I
    const/4 v5, 0x3

    .line 77
    .local v5, "kToken_Type0":I
    const/4 v6, 0x4

    .line 78
    .local v6, "kToken_Type1":I
    const/4 v7, 0x5

    .line 80
    .local v7, "kToken_Type2":I
    const/4 v10, 0x0

    .line 81
    .local v10, "tokenOffset":I
    const/4 v0, 0x0

    .line 82
    .local v0, "delimOffset":I
    const/4 v9, 0x0

    .line 84
    .local v9, "tokenIndex":I
    :goto_9
    # getter for: Lcom/android/internal/alsa/AlsaDevicesParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;
    invoke-static {}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v11

    invoke-virtual {v11, p1, v0}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v10

    .line 85
    const/4 v11, -0x1

    if-ne v10, v11, :cond_16

    .line 149
    const/4 v11, 0x1

    :goto_15
    return v11

    .line 88
    :cond_16
    # getter for: Lcom/android/internal/alsa/AlsaDevicesParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;
    invoke-static {}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v11

    invoke-virtual {v11, p1, v10}, Lcom/android/internal/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v0

    .line 89
    const/4 v11, -0x1

    if-ne v0, v11, :cond_25

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 92
    :cond_25
    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "token":Ljava/lang/String;
    packed-switch v9, :pswitch_data_de

    .line 146
    :cond_2c
    :goto_2c
    :pswitch_2c
    add-int/lit8 v9, v9, 0x1

    .line 147
    goto :goto_9

    .line 101
    :pswitch_2f
    :try_start_2f
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, mCardNum:I

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-eq v11, v12, :cond_2c

    .line 103
    add-int/lit8 v9, v9, 0x1

    goto :goto_2c

    .line 108
    :pswitch_40
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, mDeviceNum:I
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_46} :catch_47

    goto :goto_2c

    .line 140
    :catch_47
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v11, "AlsaDevicesParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to parse token "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/proc/asound/devices"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " token: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v11, 0x0

    goto :goto_15

    .line 112
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :pswitch_78
    :try_start_78
    const-string v11, "digital"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2c

    .line 114
    const-string v11, "control"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8c

    .line 115
    const/4 v11, 0x1

    iput v11, p0, mDeviceType:I

    goto :goto_2c

    .line 116
    :cond_8c
    const-string/jumbo v11, "raw"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    goto :goto_2c

    .line 122
    :pswitch_96
    const-string v11, "audio"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a2

    .line 123
    const/4 v11, 0x0

    iput v11, p0, mDeviceType:I

    goto :goto_2c

    .line 124
    :cond_a2
    const-string/jumbo v11, "midi"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 125
    const/4 v11, 0x2

    iput v11, p0, mDeviceType:I

    .line 126
    iget-object v11, p0, this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    const/4 v12, 0x1

    # setter for: Lcom/android/internal/alsa/AlsaDevicesParser;->mHasMIDIDevices:Z
    invoke-static {v11, v12}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$102(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z

    goto/16 :goto_2c

    .line 131
    :pswitch_b6
    const-string v11, "capture"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c9

    .line 132
    const/4 v11, 0x0

    iput v11, p0, mDeviceDir:I

    .line 133
    iget-object v11, p0, this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    const/4 v12, 0x1

    # setter for: Lcom/android/internal/alsa/AlsaDevicesParser;->mHasCaptureDevices:Z
    invoke-static {v11, v12}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$202(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z

    goto/16 :goto_2c

    .line 134
    :cond_c9
    const-string/jumbo v11, "playback"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 135
    const/4 v11, 0x1

    iput v11, p0, mDeviceDir:I

    .line 136
    iget-object v11, p0, this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    const/4 v12, 0x1

    # setter for: Lcom/android/internal/alsa/AlsaDevicesParser;->mHasPlaybackDevices:Z
    invoke-static {v11, v12}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$302(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    :try_end_db
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_db} :catch_47

    goto/16 :goto_2c

    .line 95
    nop

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2f
        :pswitch_40
        :pswitch_78
        :pswitch_96
        :pswitch_b6
    .end packed-switch
.end method

.method public textFormat()Ljava/lang/String;
    .registers 4

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCardNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mDeviceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v1, p0, mDeviceType:I

    packed-switch v1, :pswitch_data_68

    .line 171
    :goto_34
    iget v1, p0, mDeviceDir:I

    packed-switch v1, :pswitch_data_74

    .line 183
    :goto_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 158
    :pswitch_3e
    const-string v1, " N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 161
    :pswitch_44
    const-string v1, " Audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 164
    :pswitch_4a
    const-string v1, " Control"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 167
    :pswitch_50
    const-string v1, " MIDI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 173
    :pswitch_56
    const-string v1, " N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 176
    :pswitch_5c
    const-string v1, " Capture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 179
    :pswitch_62
    const-string v1, " Playback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 156
    :pswitch_data_68
    .packed-switch -0x1
        :pswitch_3e
        :pswitch_44
        :pswitch_4a
        :pswitch_50
    .end packed-switch

    .line 171
    :pswitch_data_74
    .packed-switch -0x1
        :pswitch_56
        :pswitch_5c
        :pswitch_62
    .end packed-switch
.end method
