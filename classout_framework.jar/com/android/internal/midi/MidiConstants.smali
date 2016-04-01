.class public final Lcom/android/internal/midi/MidiConstants;
.super Ljava/lang/Object;
.source "MidiConstants.java"


# static fields
.field public static final CHANNEL_BYTE_LENGTHS:[I

.field public static final STATUS_ACTIVE_SENSING:B = -0x2t

.field public static final STATUS_CHANNEL_MASK:B = 0xft

.field public static final STATUS_CHANNEL_PRESSURE:B = -0x30t

.field public static final STATUS_COMMAND_MASK:B = -0x10t

.field public static final STATUS_CONTINUE:B = -0x5t

.field public static final STATUS_CONTROL_CHANGE:B = -0x50t

.field public static final STATUS_END_SYSEX:B = -0x9t

.field public static final STATUS_MIDI_TIME_CODE:B = -0xft

.field public static final STATUS_NOTE_OFF:B = -0x80t

.field public static final STATUS_NOTE_ON:B = -0x70t

.field public static final STATUS_PITCH_BEND:B = -0x20t

.field public static final STATUS_POLYPHONIC_AFTERTOUCH:B = -0x60t

.field public static final STATUS_PROGRAM_CHANGE:B = -0x40t

.field public static final STATUS_RESET:B = -0x1t

.field public static final STATUS_SONG_POSITION:B = -0xet

.field public static final STATUS_SONG_SELECT:B = -0xdt

.field public static final STATUS_START:B = -0x6t

.field public static final STATUS_STOP:B = -0x4t

.field public static final STATUS_SYSTEM_EXCLUSIVE:B = -0x10t

.field public static final STATUS_TIMING_CLOCK:B = -0x8t

.field public static final STATUS_TUNE_REQUEST:B = -0xat

.field public static final SYSTEM_BYTE_LENGTHS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, CHANNEL_BYTE_LENGTHS:[I

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, SYSTEM_BYTE_LENGTHS:[I

    return-void

    .line 52
    :array_12
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x3
    .end array-data

    .line 55
    :array_24
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowRunningStatus(B)Z
    .registers 2
    .param p0, "command"    # B

    .prologue
    .line 104
    const/16 v0, -0x80

    if-lt p0, v0, :cond_a

    const/16 v0, -0x10

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static cancelsRunningStatus(B)Z
    .registers 2
    .param p0, "command"    # B

    .prologue
    .line 110
    const/16 v0, -0x10

    if-lt p0, v0, :cond_a

    const/16 v0, -0x9

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static getBytesPerMessage(B)I
    .registers 4
    .param p0, "statusByte"    # B

    .prologue
    .line 69
    and-int/lit16 v0, p0, 0xff

    .line 70
    .local v0, "statusInt":I
    const/16 v1, 0xf0

    if-lt v0, v1, :cond_d

    .line 72
    sget-object v1, SYSTEM_BYTE_LENGTHS:[I

    and-int/lit8 v2, v0, 0xf

    aget v1, v1, v2

    .line 77
    :goto_c
    return v1

    .line 73
    :cond_d
    const/16 v1, 0x80

    if-lt v0, v1, :cond_1a

    .line 75
    sget-object v1, CHANNEL_BYTE_LENGTHS:[I

    shr-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, -0x8

    aget v1, v1, v2

    goto :goto_c

    .line 77
    :cond_1a
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static isAllActiveSensing([BII)Z
    .registers 7
    .param p0, "msg"    # [B
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "goodBytes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, p2, :cond_10

    .line 93
    add-int v3, p1, v2

    aget-byte v0, p0, v3

    .line 94
    .local v0, "b":B
    const/4 v3, -0x2

    if-eq v0, v3, :cond_d

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 92
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 98
    .end local v0    # "b":B
    :cond_10
    if-nez v1, :cond_14

    const/4 v3, 0x1

    :goto_13
    return v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method
